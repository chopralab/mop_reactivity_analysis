%chk=31_p.chk
%nprocshared=24
%mem=80GB
#P opt freq b3lyp/6-31g(d) geom=connectivity temperature=0.001

Title Card Required

1 1
 C                 -0.01900000    3.43710000   -6.20570000
 C                  0.67040000    2.74970000   -5.00450000
 C                 -0.23210000    2.72810000   -3.74410000
 C                  0.43150000    2.04880000   -2.52090000
 S                 -0.72730000    2.02920000   -1.10050000
 C                  0.17660000    1.25070000    0.29150000
 C                 -0.71280000    1.22320000    1.55890000
 C                 -0.03480000    0.54190000    2.77540000
 C                 -0.94620000    0.53400000    4.02430000
 O                 -0.90550000    3.56560000   -0.68060000
 H                 -0.40840000    2.67820000   -6.88430000
 H                 -0.83920000    4.05890000   -5.84690000
 H                  0.70460000    4.05890000   -6.73290000
 H                  0.81530000    1.70870000   -5.29350000
 H                  1.53040000    3.37030000   -4.75300000
 H                 -0.37880000    3.77100000   -3.46310000
 H                 -1.09030000    2.10710000   -4.00110000
 H                  0.60790000    1.02790000   -2.85960000
 H                  1.27480000    2.70070000   -2.29250000
 H                  0.34220000    0.19590000    0.07220000
 H                  1.01430000    1.88530000    0.58050000
 H                 -0.85970000    2.26520000    1.84300000
 H                 -1.57140000    0.60060000    1.30740000
 H                  0.10910000   -0.50260000    2.49870000
 H                  0.82490000    1.16120000    3.03160000
 H                 -1.15730000   -0.49550000    4.31360000
 H                 -0.44310000    1.04600000    4.84460000
 H                 -1.88090000    1.04600000    3.79530000
 H                 -0.13264122    4.11491820   -0.53047066

 1 2 1.0 11 1.0 12 1.0 13 1.0
 2 3 1.0 14 1.0 15 1.0
 3 4 1.0 16 1.0 17 1.0
 4 5 1.0 18 1.0 19 1.0
 5 6 1.0 10 2.0
 6 7 1.0 20 1.0 21 1.0
 7 8 1.0 22 1.0 23 1.0
 8 9 1.0 24 1.0 25 1.0
 9 26 1.0 27 1.0 28 1.0
 10 29 1.0
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

