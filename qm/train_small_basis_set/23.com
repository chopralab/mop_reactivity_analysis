%chk=23.chk
%nprocshared=24
%mem=80GB
#P opt freq b3lyp/6-31g(d) geom=connectivity temperature=0.001

Title Card Required

0 1
 O                 -0.87200000   -1.05070000    1.47340000
 S                  0.26550000   -0.48300000    0.49930000
 C                  1.93460000   -0.82100000    1.16100000
 C                  2.41740000    0.58870000    1.57530000
 C                  1.76240000    1.65620000    0.65320000
 C                  0.25830000    1.34330000    0.49620000
 O                  0.11910000   -1.06210000   -0.98670000
 H                  1.87170000   -1.39610000    2.08480000
 H                  2.60540000   -1.14160000    0.36390000
 H                  2.03850000    0.76550000    2.58190000
 H                  3.48990000    0.62060000    1.38330000
 H                  1.83060000    2.61090000    1.17480000
 H                  2.21070000    1.54100000   -0.33360000
 H                 -0.22410000    1.72910000    1.39430000
 H                 -0.02750000    1.72660000   -0.48340000

 1 2 2.0
 2 3 1.0 6 1.0 7 2.0
 3 4 1.0 8 1.0 9 1.0
 4 5 1.0 10 1.0 11 1.0
 5 6 1.0 12 1.0 13 1.0
 6 14 1.0 15 1.0
 7
 8
 9
 10
 11
 12
 13
 14
 15

