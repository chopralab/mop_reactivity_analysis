%chk=30.chk
%nprocshared=24
%mem=80GB
#P opt freq m062x/6-311++g(d,p) geom=connectivity temperature=0.001

Title Card Required

0 1
 O                  0.69320000    3.97760000   -2.76310000
 S                 -0.35480000    2.76300000   -2.74940000
 C                 -0.10290000    1.73000000   -4.24570000
 C                  1.31960000    1.11790000   -4.28110000
 C                  1.58220000    0.23220000   -5.52670000
 C                  3.00630000   -0.36890000   -5.51840000
 C                 -0.12260000    1.76790000   -1.22470000
 C                 -0.31760000    2.60130000    0.06470000
 C                 -0.10870000    1.75310000    1.34970000
 C                 -0.29060000    2.58280000    2.63870000
 O                 -1.84140000    3.36530000   -2.77190000
 H                 -0.74920000    0.85400000   -4.19130000
 H                 -0.12150000    2.36690000   -5.13010000
 H                  2.00520000    1.96120000   -4.36390000
 H                  1.37840000    0.45010000   -3.42160000
 H                  0.89580000   -0.61130000   -5.45270000
 H                  1.53790000    0.89680000   -6.38960000
 H                  3.33590000   -0.50800000   -4.48880000
 H                  2.99750000   -1.33120000   -6.03020000
 H                  3.68970000    0.30860000   -6.03020000
 H                 -0.91880000    1.02650000   -1.15710000
 H                  0.91960000    1.45610000   -1.15670000
 H                  0.47300000    3.35170000    0.06240000
 H                 -1.36280000    2.91080000    0.06980000
 H                 -0.90450000    1.00820000    1.35650000
 H                  0.93420000    1.43640000    1.34020000
 H                 -0.41050000    1.91150000    3.48900000
 H                  0.58650000    3.21140000    2.79300000
 H                 -1.17610000    3.21140000    2.54430000

 1 2 2.0
 2 3 1.0 7 1.0 11 2.0
 3 4 1.0 12 1.0 13 1.0
 4 5 1.0 14 1.0 15 1.0
 5 6 1.0 16 1.0 17 1.0
 6 18 1.0 19 1.0 20 1.0
 7 8 1.0 21 1.0 22 1.0
 8 9 1.0 23 1.0 24 1.0
 9 10 1.0 25 1.0 26 1.0
 10 27 1.0 28 1.0 29 1.0
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
 22
 23
 24
 25
 26
 27
 28
 29

