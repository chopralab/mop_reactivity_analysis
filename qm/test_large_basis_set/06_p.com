%nprocshared=24
%mem=70GB
%chk=06_p.chk
#P opt freq m062x/DGDZVP geom=connectivity temperature=0.001

pyridone_1_acetic_acid_plus

1 1
 C                 -1.60060000    3.58460000   -0.37540000
 C                 -1.49210000    2.22960000   -0.74030000
 N                 -0.65430000    1.37590000   -0.07050000
 C                  0.12430000    1.85470000    0.95310000
 C                  0.06130000    3.20040000    1.35630000
 C                 -0.81670000    4.07130000    0.68680000
 O                 -0.90500000    5.26970000    1.03800000
 I                 -2.90500000    4.80750000   -1.38870000
 I                  1.23830000    3.84540000    2.91240000
 C                 -0.60890000   -0.03240000   -0.40530000
 C                  0.72390000   -0.46230000   -0.87540000
 O                  1.16550000   -0.06110000   -1.97530000
 O                  1.49650000   -1.27740000   -0.12210000
 H                 -1.27209570   -0.16166762   -1.23497545
 H                 -0.78581924   -0.56044024    0.50835917
 H                 -2.07528910    1.85832114   -1.55696546
 H                  0.79445892    1.18903442    1.45576923
 H                  2.42216128   -1.09052291   -0.29480827
 H                 -0.10954137    5.78545258    1.18914512

 1 2 2.0 6 1.0 8 1.0
 2 3 1.0 16 1.0
 3 4 1.0 10 1.0
 4 5 2.0 17 1.0
 5 6 1.0 9 1.0
 6 7 2.0
 7 19 1.0
 8
 9
 10 11 1.0 14 1.0 15 1.0
 11 12 2.0 13 1.0
 12
 13 18 1.0
 14
 15
 16
 17
 18
 19

