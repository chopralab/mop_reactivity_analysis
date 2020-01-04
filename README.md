# 2-Methoxy propylene (MOP) Reactivity Analysis

This project holds the files of the paper entitled [Graph-based machine learning predicts and interprets diagnostic isomer-selective ion-molecule reactions using tandem mass spectrometry](https://chemrxiv.org/articles/Graph_Based_Machine_Learning_Interprets_Diagnostic_Isomer-Selective_Ion-Molecule_Reactions_in_Tandem_Mass_Spectrometry/11466183). It is divided in to two directories which hold the two type types of models described in this work: one based on quantum chemical proton affinity calculations (**QM**), and the other based on graph-based machine learning (**ML**). Applications for such methods include identification of impurities and drug metabolites in complex mixtures.

## Quantum Mechanics (QM)

This model is based on calculating the *proton affinity (PA)* of a molecule and comparing it to that of MOP. Note that since the proton affinity of a compound is always exothermic, it is typically written as a positive quantity thereby making it equal and opposite to the free energy change of the reaction. If the *PA* for the analyte is greater than that of MOP, then this models 'predicts' that the diagnostic ion will form and otherwise it will not form. To calculate this value, an isodesmic reaction scheme is used, a description of each is given is given below.

### Isodesmic reaction scheme

An isodesmic reaction is described as a reaction where the bonds broken and formed are of the same type. In this case, this 'bond type' is that of between an atom and a proton where this atom has an open lone-pair of electrons. This bond is 'formed' with the analyte being studied and broken in a reference analyte where the proton affinity has been previously measured. This allows us to use a free energy cycle (shown below) to calculate an accurate measure of the proton affinity for the analyte.

#### Free energy cycle for the isodesmic reaction method

In the following equations, the *f* superscript is used to denote a quantity that can be calculated using a **QM** methodology. This is equivalent to the free energy of formation for the given quantity. The *A* subscript describes a quantity for the analyte and *R* denotes a quantity where the *proton affinity* is known. The protonated forms of these compounds is notated with *AH+* and *RH+*, respectively. This known quantity is described by a *M* superscript. Similarly, the *C* superscript denotes a quantity calculated using **Density Functional Theory** (see next section for details).

![Thermodynamic energy cycle](thermodynamic_free_cycle.svg)

##### Performing the calculation

The **Perl** script *calculate_proton_affinity_isodesmic.pl* can be used to perform this calculation. The arguments are as follows: the known proton affinity (in kcal/mol) of a reference analyte, the log file for the neutral reference analyte, the log file for the protonated reference analyte, the log file for the neutral analyte, and the log file for the protonated neutral analyte. The reference analyte should be protonated on the same atom as the analyte (for example ammonia should be used to calculate the proton affinity of an amine). An example invocation is given below:

```bash
perl calculate_proton_affinity_isodesmic.pl 204.0 ammonia.log ammonia_p.log 01.log 01_p.log
```

The result will be in kCal/mol. The [NIST Webbook](https://webbook.nist.gov/) is a great source of proton affinity values. Ammonia is used for all nitrogen protonations, methanol is used for all oxygen protonations, benzene is used when an aromatic ring is protonated, and 2-methyl propene is used for calculating the proton affinity of MOP.

### Density Functional Theory Details

To obtain values for the free energies of formation for all species shown above, we used the program [Gaussian16](http://gaussian.com/), the [M06-2x](https://en.wikipedia.org/wiki/Minnesota_functionals) functional, and the 6-311++G(d,p) basis set. Since previous calculations used the B3LYP functional and 6-31G(d) basis set, we have included reference calculations for the analytes in question. These two types of calculations are labeled as *large_basis_set* and *small_basis_set*, respectively. The **Perl** script *check_for_negative_freq.pl* is provided to ensure that all minimized structures do not contain negative frequencies.

## Machine Learning (ML)

The **ML** directory contains all the training data, testing data, machine learning code, and machine learning results after bootstrapping. Each subdirectory contains various portions of the these parts.

### Analytes subdirectory

This directory contains 3 **SMILES** files:

- *first36.smi* The original 36 reactions used to train all models.

- *test_set_14.smi* The 14 test reactions.

- *full_training_set.smi* A concatenation of the above two files

### Scripts subdirectory

The scripts in this directory are written in a combination of **Julia** and **Python**. The **Julia** scripts require the installation of the [DecisionTree.jl](https://github.com/bensadeghi/DecisionTree.jl) and [CodecBase](https://github.com/bicycle1885/CodecBase.jl) packages to function properly. The **Python** scripts require [RDkit] (http://rdkit.org/) to function. A description of each script is given below:

- *convert_to_morgan_custom.py* Takes two arguments: the **SMI** file for fingerprinting and the radius for the Morgan algorithm. It outputs compressed fingerprints of bitlength 2048 in the **CSV** format to **stdout**.

- *make_fp_svg_custom.py* Takes two arguments: the **SMI** used for input, the radius used for fingerprinting, and the bit for which you want to make an **SVG** image.

- *make_predictions.jl* Used to create the decision tree models and bootstrap them. It expects two files to be present: *train.csv*, and *test.csv*. This file should be run in a unique directory for each experiment as it output several files (described in the next section). This script should be run directly by the julia interpreter, *not* via the **include** mechanism.

- *bootstrap.jl*, *decode.jl*, and *prepare_data.jl*: these are support files for the *make_predictions.jl* script and should be left in place. Their names are self-descriptive.

- *model.jl* and *decision_tree.jl*: legacy files that can be removed and are provided for reference.

### The train36_predict14 subdirectory

This directory contains results for four different radius cutoffs using the decision tree model. The input files (*train.csv* and *test.csv*) are created using the *convert_to_morgan_custom.py* script. All results in these directories (each respective to a fingerprint radius) are created by the *make_predictions.jl* and a breif description of each is given below:

- *results.csv*: Each column represents a bootstrapped prediction for the test compounds (14 in total), the self score of the model (accuracy on the training set), and the Kappa value for the training set, and the diagnostic product ratio cutoff used to train the model. Each row has a different diagnostic product ratio cutoff.

- *set_bits.csv* The bits set during fingerprinting for the training set. This file is required to run other machine learning models.

- *set_bits_test.csv* The same bits as above, but for the test set. Also required for other models to run.

### The other_models subdirectory

This directory contains **R** code used to generate the results for additional models other than decision trees. *commands.R* requires three libraries: *tidyverse*, *parallel*, and *caret*. It must be run **after** the *make_predictions.jl* script as it requires the *set_bits.csv*  and *set_bits_test.csv* files to be created for all fingerprint radii. This script will create **CSV** files for all the models tested in our work: *glm.csv*, *knn.csv*, *pls.csv*, and *reglog.csv*. Additionally, it will read the *results.csv* created by the **Julia** scripts to create a "dt.csv" file. Each file has the following columns: compound ID, radius value, and the 9 cutoff values. Each row contains the test compound ID, the radius used, and the probability as calculated by each model trained with a cutoff. The Kappa value for the each model is also reported as row. These files compose the tables shown in the supporting information of the paper.
