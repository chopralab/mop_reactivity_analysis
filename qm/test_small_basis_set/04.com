%nprocshared=24
%mem=80GB
%chk=04.chk
#p opt freq b3lyp/6-31g(d) geom=connectivity temperature=0.001

methionine_sulfoxide

0 1
 C                  2.00650000    1.54650000    1.00070000
 S                  1.81550000    0.05770000   -0.04270000
 C                  0.11660000    0.13390000   -0.72350000
 O                  1.79530000   -1.17440000    0.98230000
 C                 -0.04330000    1.31300000   -1.71280000
 C                 -1.44120000    1.40680000   -2.38460000
 C                 -1.55030000    2.63250000   -3.20650000
 O                 -0.66690000    2.86730000   -4.20830000
 O                 -2.44320000    3.48270000   -2.98610000
 N                 -1.69890000    0.24600000   -3.24980000
 H                  3.03629318    1.66703388    1.26508151
 H                  1.67439404    2.40706571    0.45845256
 H                  1.42061079    1.43683955    1.88929913
 H                 -0.53008107    0.34383436    0.10271496
 H                 -0.01926787   -0.76007918   -1.29554996
 H                  0.64699597    1.11971680   -2.50717590
 H                  0.05441669    2.20054449   -1.12321011
 H                 -2.16318587    1.43060180   -1.59525224
 H                 -0.79800331    3.75518464   -4.54899457
 H                 -2.45020248    0.45667878   -3.87522708
 H                 -0.87596613    0.03386884   -3.77684858

 1 2 1.0 11 1.0 12 1.0 13 1.0
 2 3 1.0 4 2.0
 3 5 1.0 14 1.0 15 1.0
 4
 5 6 1.0 16 1.0 17 1.0
 6 7 1.0 10 1.0 18 1.0
 7 8 1.0 9 2.0
 8 19 1.0
 9
 10 20 1.0 21 1.0
 11
 12
 13
 14
 15
 16
 17
 18
 19
 20
 21

