%chk=6_p.chk
%nprocshared=24
%mem=20GB
#p opt freq b3lyp/6-31g(d) geom=connectivity temperature=0.001

Title Card Required

1 2
 C                 -1.55760000   -0.54100000    2.32840000
 C                 -0.54280000   -0.84500000    1.17050000
 C                  0.48090000   -1.87240000    1.78300000
 C                 -1.25660000   -1.51860000   -0.05320000
 C                 -2.07890000   -0.53170000   -0.92170000
 C                 -1.24970000    0.71040000   -1.34000000
 C                 -0.54910000    1.43600000   -0.13930000
 C                 -1.57750000    2.27630000    0.69840000
 C                  0.47020000    2.49150000   -0.70900000
 N                  0.17760000    0.41480000    0.72020000
 O                  1.36340000    0.07650000    0.12620000
 H                 -1.92370000   -1.47890000    2.74620000
 H                 -1.05760000    0.03340000    3.10820000
 H                 -2.39620000    0.03340000    1.93510000
 H                  0.43490000   -1.82630000    2.87110000
 H                  0.22770000   -2.87930000    1.45100000
 H                  1.48870000   -1.62300000    1.45100000
 H                 -0.46100000   -1.88650000   -0.70110000
 H                 -1.98280000   -2.21430000    0.36710000
 H                 -2.31670000   -1.06320000   -1.84320000
 H                 -2.88120000   -0.16110000   -0.28370000
 H                 -0.44740000    0.32910000   -1.97170000
 H                 -1.96980000    1.42210000   -1.74390000
 H                 -1.39090000    2.12380000    1.76140000
 H                 -1.46460000    3.33340000    0.45770000
 H                 -2.59090000    1.95500000    0.45770000
 H                  0.96380000    3.00270000    0.11750000
 H                  1.21650000    1.98320000   -1.31950000
 H                 -0.06400000    3.21960000   -1.31950000
 H                  2.09266540    0.38547075    0.66870258

 1 2 1.0 12 1.0 13 1.0 14 1.0
 2 3 1.0 4 1.0 10 1.0
 3 15 1.0 16 1.0 17 1.0
 4 5 1.0 18 1.0 19 1.0
 5 6 1.0 20 1.0 21 1.0
 6 7 1.0 22 1.0 23 1.0
 7 8 1.0 9 1.0 10 1.0
 8 24 1.0 25 1.0 26 1.0
 9 27 1.0 28 1.0 29 1.0
 10 11 1.0
 11 30 1.0
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
 22
 23
 24
 25
 26
 27
 28
 29
 30

