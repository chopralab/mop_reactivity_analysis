%chk=9.chk
%nprocshared=24
%mem=80GB
#P opt freq m062x/6-311++g(d,p) geom=connectivity temperature=0.001

Title Card Required

0 1
 C                  2.04760000   -0.76400000   -1.28740000
 C                  1.50730000   -0.00800000   -0.03480000
 N                  2.02410000    1.38700000   -0.02710000
 O                  1.60580000    2.12330000   -1.09020000
 C                 -0.05370000   -0.01740000    0.00040000
 C                  2.05420000   -0.69290000    1.25390000
 H                  1.97620000   -1.83900000   -1.12180000
 H                  1.45500000   -0.49070000   -2.16040000
 H                  3.08940000   -0.49070000   -1.45540000
 H                  2.62680000    1.81170000    0.66310000
 H                  1.32790000    1.53590000   -1.79680000
 H                 -0.39370000   -0.01940000    1.03600000
 H                 -0.43390000    0.87040000   -0.50510000
 H                 -0.42310000   -0.90960000   -0.50510000
 H                  2.00530000   -1.77570000    1.13860000
 H                  3.08920000   -0.39100000    1.41450000
 H                  1.45070000   -0.39100000    2.10990000

 1 2 1.0 7 1.0 8 1.0 9 1.0
 2 3 1.0 5 1.0 6 1.0
 3 4 1.0 10 1.0
 4 11 1.0
 5 12 1.0 13 1.0 14 1.0
 6 15 1.0 16 1.0 17 1.0
 7
 8
 9
 10
 11
 12
 13
 14
 15
 16
 17

