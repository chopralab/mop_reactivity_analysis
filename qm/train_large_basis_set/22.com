%chk=22.chk
%nprocshared=24
%mem=80GB
#P opt freq m062x/6-311++g(d,p) geom=connectivity temperature=0.001

Title Card Required

0 1
 O                 -0.09510000    2.91540000    1.37010000
 S                 -0.39510000    1.78320000    0.27920000
 C                  0.88450000    0.49730000    0.46700000
 C                  1.17330000    0.16180000   -1.01010000
 C                  1.21420000    1.48500000   -1.82220000
 C                  0.09230000    2.44540000   -1.35230000
 H                  1.80510000    0.92150000    0.86770000
 H                  0.46430000   -0.40700000    0.90720000
 H                  2.17480000   -0.26680000   -1.04620000
 H                  0.32150000   -0.41170000   -1.37570000
 H                  2.15950000    1.97030000   -1.57930000
 H                  0.98560000    1.22340000   -2.85540000
 H                  0.57210000    3.41760000   -1.23870000
 H                 -0.71760000    2.31800000   -2.07050000

 1 2 2.0
 2 3 1.0 6 1.0
 3 4 1.0 7 1.0 8 1.0
 4 5 1.0 9 1.0 10 1.0
 5 6 1.0 11 1.0 12 1.0
 6 13 1.0 14 1.0
 7
 8
 9
 10
 11
 12
 13
 14

