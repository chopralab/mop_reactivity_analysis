%chk=34.chk
%nprocshared=24
%mem=80GB
#P opt freq m062x/6-311++g(d,p) geom=connectivity temperature=0.001

Title Card Required

0 1
 O                 -1.72280000   -1.82910000    1.07960000
 S                 -0.51120000   -1.68170000    0.03420000
 C                 -1.17100000   -2.20270000   -1.49590000
 C                 -1.09710000   -1.50910000   -2.63600000
 C                 -0.16270000    0.05770000   -0.01060000
 C                  1.16540000    0.49130000    0.18390000
 C                  1.46480000    1.86630000    0.19380000
 C                  0.44060000    2.81500000    0.01540000
 C                 -0.88480000    2.38880000   -0.18580000
 C                 -1.18510000    1.01330000   -0.20090000
 H                 -1.71450000   -3.10230000   -1.78470000
 H                 -2.00900000   -1.22630000   -3.16190000
 H                 -0.12500000   -1.22630000   -3.03980000
 H                  1.96260000   -0.23810000    0.32680000
 H                  2.49300000    2.19730000    0.34010000
 H                  0.67380000    3.87960000    0.03310000
 H                 -1.67760000    3.12290000   -0.32970000
 H                 -2.21280000    0.68720000   -0.36050000

 1 2 2.0
 2 3 1.0 5 1.0
 3 4 2.0 11 1.0
 4 12 1.0 13 1.0
 5 6 2.0 10 1.0
 6 7 1.0 14 1.0
 7 8 2.0 15 1.0
 8 9 1.0 16 1.0
 9 10 2.0 17 1.0
 10 18 1.0
 11
 12
 13
 14
 15
 16
 17
 18

