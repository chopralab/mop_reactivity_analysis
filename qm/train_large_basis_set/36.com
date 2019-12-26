%chk=36.chk
%nprocshared=24
%mem=80GB
#P opt freq m062x/6-311++g(d,p) geom=connectivity temperature=0.001

Title Card Required

0 1
 O                 -3.45120000    3.72240000  -10.30970000
 S                 -3.62280000    5.12850000   -9.55630000
 C                 -5.35230000    5.15640000   -8.96420000
 C                 -2.61340000    5.00710000   -8.03240000
 C                 -1.10710000    4.91570000   -8.35830000
 C                 -0.22410000    4.84240000   -7.08570000
 C                  1.28280000    4.74840000   -7.43730000
 C                  2.19130000    4.68130000   -6.18280000
 C                  3.69890000    4.59030000   -6.54370000
 C                  4.60620000    4.52530000   -5.28550000
 C                  6.11660000    4.43420000   -5.63590000
 C                  7.02990000    4.36830000   -4.37940000
 C                  8.53890000    4.27710000   -4.74260000
 C                  9.46380000    4.21060000   -3.49640000
 C                 10.96350000    4.12000000   -3.86150000
 H                 -5.36330000    5.15660000   -7.87430000
 H                 -5.84800000    6.05460000   -9.33270000
 H                 -5.87680000    4.27480000   -9.33270000
 H                 -2.69070000    5.93980000   -7.47360000
 H                 -2.81890000    4.05740000   -7.53860000
 H                 -0.96890000    3.96800000   -8.87870000
 H                 -0.84920000    5.85200000   -8.85330000
 H                 -0.35800000    5.79080000   -6.56540000
 H                 -0.48100000    3.90710000   -6.58850000
 H                  1.41270000    3.79780000   -7.95460000
 H                  1.53340000    5.68180000   -7.94130000
 H                  2.06060000    5.63100000   -5.66410000
 H                  1.94310000    3.74680000   -5.67960000
 H                  3.82980000    3.63990000   -7.06110000
 H                  3.94670000    5.52410000   -7.04820000
 H                  4.47330000    5.47580000   -4.76870000
 H                  4.35660000    3.59150000   -4.78170000
 H                  6.24800000    3.48400000   -6.15370000
 H                  6.36490000    5.36830000   -6.13980000
 H                  6.90030000    5.31840000   -3.86110000
 H                  6.78320000    3.43410000   -3.87480000
 H                  8.66630000    3.32720000   -5.26170000
 H                  8.78340000    5.21140000   -5.24810000
 H                  9.33930000    5.16040000   -2.97630000
 H                  9.22220000    3.27610000   -2.99000000
 H                 11.55810000    4.08410000   -2.94870000
 H                 11.14110000    3.21770000   -4.44660000
 H                 11.24840000    4.99440000   -4.44660000

 1 2 2.0
 2 3 1.0 4 1.0
 3 16 1.0 17 1.0 18 1.0
 4 5 1.0 19 1.0 20 1.0
 5 6 1.0 21 1.0 22 1.0
 6 7 1.0 23 1.0 24 1.0
 7 8 1.0 25 1.0 26 1.0
 8 9 1.0 27 1.0 28 1.0
 9 10 1.0 29 1.0 30 1.0
 10 11 1.0 31 1.0 32 1.0
 11 12 1.0 33 1.0 34 1.0
 12 13 1.0 35 1.0 36 1.0
 13 14 1.0 37 1.0 38 1.0
 14 15 1.0 39 1.0 40 1.0
 15 41 1.0 42 1.0 43 1.0
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
 31
 32
 33
 34
 35
 36
 37
 38
 39
 40
 41
 42
 43

