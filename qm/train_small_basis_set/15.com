%chk=15.chk
%nprocshared=24
%mem=80GB
#p opt freq b3lyp/6-31g(d) geom=connectivity temperature=0.001

Title Card Required

0 1
 O                 -2.39108748    1.91230665    0.59000641
 C                 -1.89080000    0.92010000    0.00000000
 C                 -0.55295516    1.18966987   -0.53473658
 C                 -0.06073912    0.82259771   -1.81972622
 C                  1.24337965    1.12082840   -2.25822554
 C                  2.13028102    1.80905080   -1.42348881
 C                  1.70186123    2.19577107   -0.14814236
 C                  0.39558913    1.89105665    0.27709708
 C                 -2.77520000   -0.24870000    0.00000000
 C                 -2.37760000   -1.61640000    0.00000000
 C                 -3.29470000   -2.68440000    0.00000000
 C                 -4.67120000   -2.43490000    0.00000000
 C                 -5.12150000   -1.10940000    0.00000000
 C                 -4.19360000   -0.05160000    0.00000000
 H                 -0.71689658    0.28481972   -2.50406635
 H                  1.56927769    0.81623556   -3.25268925
 H                  3.14024004    2.04054257   -1.76184085
 H                  2.38328565    2.73249847    0.51176343
 H                  0.10625466    2.21197785    1.27786159
 H                 -1.31480000   -1.85850000    0.00000000
 H                 -2.93590000   -3.71370000    0.00000000
 H                 -5.38230000   -3.26100000    0.00000000
 H                 -6.19150000   -0.90170000    0.00000000
 H                 -4.59040000    0.96360000    0.00000000

 1 2 2.0
 2 3 1.0 9 1.0
 3 4 2.0 8 1.0
 4 5 1.0 15 1.0
 5 6 2.0 16 1.0
 6 7 1.0 17 1.0
 7 8 2.0 18 1.0
 8 19 1.0
 9 10 2.0 14 1.0
 10 11 1.0 20 1.0
 11 12 2.0 21 1.0
 12 13 1.0 22 1.0
 13 14 2.0 23 1.0
 14 24 1.0
 15
 16
 17
 18
 19
 20
 21
 22
 23
 24

