%nprocshared=24
%mem=70GB
%chk=12.chk
#P opt freq m062x/6-311++g(d,p) geom=connectivity temperature=0.001

nitropyridine n oxide

0 1
 C                  1.39420000    2.37510000    0.00000000
 C                  2.06200000    1.13820000    0.00000000
 N                  1.35210000   -0.01680000    0.00000000
 C                 -0.00390000   -0.02730000    0.00000000
 C                 -0.71690000    1.18470000    0.00000000
 C                 -0.02550000    2.42410000    0.00000000
 N                 -0.69100000    3.59490000    0.00000000
 O                 -0.15290000    4.63330000    0.00000000
 O                 -1.96160000    3.65970000    0.00000000
 H                  1.95813963    3.28442508    0.00000000
 H                  3.13157977    1.10821474    0.00000000
 H                 -0.53151421   -0.95817231    0.00000000
 H                 -1.78682980    1.17244364    0.00000000

 1 2 2.0 6 1.0 10 1.0
 2 3 1.0 11 1.0
 3 4 2.0
 4 5 1.0 12 1.0
 5 6 2.0 13 1.0
 6 7 1.0
 7 8 2.0 9 1.0
 8
 9
 10
 11
 12
 13

