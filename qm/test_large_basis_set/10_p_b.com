%nprocshared=24
%mem=70GB
%chk=10_p_b.chk
#p opt freq m062x/6-311++g(d,p) geom=connectivity temperature=0.001

Nitro quinoline n oxide

1 1
 C                 -0.83010000   -0.69020000    0.09700000
 C                 -2.22500000   -0.37940000    0.19860000
 N                 -2.64820000    0.90590000    0.19420000
 C                 -1.79720000    1.94590000    0.09580000
 C                 -0.41850000    1.71390000   -0.00690000
 C                  0.11370000    0.39360000   -0.01010000
 C                 -0.49490000   -2.07240000    0.11120000
 C                 -1.47340000   -3.07700000    0.21870000
 C                 -2.82970000   -2.73680000    0.31640000
 C                 -3.20620000   -1.38630000    0.30640000
 N                  1.46530000    0.27110000   -0.11390000
 O                  2.24287912    1.25134332   -0.35314177
 O                  2.06227336   -0.72150423    0.00063764
 H                 -2.17326837    2.94763476    0.09604655
 H                  0.24818537    2.54720649   -0.08455888
 H                  0.53397273   -2.35688691    0.03779630
 H                 -1.18096810   -4.10623815    0.22593945
 H                 -3.57259517   -3.50252837    0.39805069
 H                 -4.23968617   -1.11930161    0.38068458
 H                  3.02216610   -0.70724861   -0.00100733

 1 2 2.0 6 1.0 7 1.0
 2 3 1.0 10 1.0
 3 4 2.0
 4 5 1.0 14 1.0
 5 6 2.0 15 1.0
 6 11 1.0
 7 8 2.0 16 1.0
 8 9 1.0 17 1.0
 9 10 2.0 18 1.0
 10 19 1.0
 11 12 1.0 13 2.0
 12
 13 20 1.0
 14
 15
 16
 17
 18
 19
 20

