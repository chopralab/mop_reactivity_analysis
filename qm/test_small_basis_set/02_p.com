%nprocshared=24
%mem=70GB
%chk=02_p.chk
#p opt freq b3lyp/6-31g(d) geom=connectivity temperature=0.001

Nitro Quinoline 8 Plus

1 1
 C                 -0.69789311    3.15496916   -1.01232599
 C                 -0.24221041    1.94590971   -0.59751687
 C                  1.25979955    1.61376636   -0.69507968
 C                  2.12047061    2.53244961   -1.19568113
 C                  1.60478371    3.89069840   -1.66109659
 C                  0.28779304    4.19364750   -1.58024819
 N                  3.55802859    2.24242924   -1.30023192
 C                  4.39211966    3.12455807   -1.78208674
 C                  3.92780374    4.52320970   -2.27159752
 C                  2.62225998    4.88582282   -2.21643702
 N                  1.75653719    0.30495069   -0.24657855
 O                  2.89345348   -0.00649994   -0.45333963
 O                  0.92415238   -0.55200725    0.40331264
 H                 -1.74037353    3.38649337   -0.94501207
 H                 -0.92547789    1.22325653   -0.20277913
 H                 -0.06619299    5.14847202   -1.90873556
 H                  5.43089033    2.87492213   -1.84156315
 H                  4.64953975    5.21184723   -2.65860594
 H                  2.31039782    5.85148986   -2.55574396
 H                  3.90327302    1.35421520   -0.99711129

 1 2 2.0 6 1.0 14 1.0
 2 3 1.0 15 1.0
 3 11 1.0 4 2.0
 4 5 1.0 7 1.0
 5 6 2.0 10 1.0
 6 16 1.0
 7 8 2.0 20 1.0
 8 9 1.0 17 1.0
 9 10 2.0 18 1.0
 10 19 1.0
 11 12 2.0 13 1.0
 12
 13
 14
 15
 16
 17
 18
 19
 20

