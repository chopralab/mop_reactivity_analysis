%chk=18.chk
%nprocshared=24
%mem=80GB
#P opt freq b3lyp/6-31g(d) geom=connectivity temperature=0.001

Title Card Required

0 1
 C                  1.82900000   -0.65520000   -1.46860000
 C                  1.08520000    0.32100000   -0.52790000
 C                  1.96730000    1.52470000   -0.10270000
 C                  1.23140000    2.51010000    0.83720000
 N                  2.10730000    3.62980000    1.19170000
 H                  2.38270000   -1.38180000   -0.87410000
 H                  1.10640000   -1.17530000   -2.09750000
 H                  2.52220000   -0.09650000   -2.09750000
 H                  0.26480000    0.73710000   -1.11260000
 H                  0.87570000   -0.23910000    0.38340000
 H                  2.78650000    1.10680000    0.48250000
 H                  2.17840000    2.08160000   -1.01560000
 H                  0.40840000    2.94910000    0.27330000
 H                  1.03310000    1.98590000    1.77210000
 H                  3.09820000    3.47680000    1.31390000
 H                  1.72030000    4.55460000    1.31390000

 1 2 1.0 6 1.0 7 1.0 8 1.0
 2 3 1.0 9 1.0 10 1.0
 3 4 1.0 11 1.0 12 1.0
 4 5 1.0 13 1.0 14 1.0
 5 15 1.0 16 1.0
 6
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

