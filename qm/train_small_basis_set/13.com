%chk=13.chk
%nprocshared=24
%mem=80GB
#P opt freq b3lyp/6-31g(d) geom=connectivity temperature=0.001

Title Card Required

0 1
 O                 -2.78580000    0.20390000    0.14870000
 C                 -2.11460000    1.22150000   -0.14700000
 N                 -2.77050000    2.32220000   -0.59790000
 O                 -4.06800000    2.38330000   -0.70240000
 C                 -0.69420000    1.20810000   -0.03840000
 C                  0.02580000   -0.01320000    0.01160000
 C                  1.43380000   -0.02440000    0.04620000
 C                  2.14790000    1.18610000    0.04760000
 C                  1.45390000    2.40700000    0.04410000
 C                  0.04780000    2.41670000    0.00650000
 H                 -2.26030000    3.14920000   -0.87340000
 H                 -4.45910000    2.40160000    0.17420000
 H                 -0.51280000   -0.96080000    0.02360000
 H                  1.97190000   -0.97200000    0.07200000
 H                  3.23790000    1.17820000    0.05130000
 H                  2.00630000    3.34630000    0.07060000
 H                 -0.47400000    3.37360000    0.01210000

 1 2 2.0
 2 3 1.0 5 1.0
 3 4 1.0 11 1.0
 4 12 1.0
 5 6 2.0 10 1.0
 6 7 1.0 13 1.0
 7 8 2.0 14 1.0
 8 9 1.0 15 1.0
 9 10 2.0 16 1.0
 10 17 1.0
 11
 12
 13
 14
 15
 16
 17

