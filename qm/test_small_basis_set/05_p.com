%nprocshared=24
%mem=70GB
%chk=05_p.chk
#P opt freq b3lyp/6-31g(d) geom=connectivity temperature=0.001

Benzene Sulfonyl Plus

1 1
 C                  1.48315558   -0.00373194   -0.09406052
 C                  2.15415006    1.17323694   -0.06123205
 C                  1.37780245    2.49976031    0.03478947
 C                  0.02362222    2.49013180    0.08646386
 C                 -0.73887148    1.15266713    0.04915942
 C                 -0.05568572   -0.01467326   -0.03534303
 S                 -0.93700976   -1.56057377   -0.07846530
 O                 -1.73474545   -1.70402507    1.14740731
 O                  0.15398229   -2.82059263   -0.18329297
 O                 -1.82698406   -1.58462914   -1.24769208
 H                  2.02256587   -0.92540718   -0.16077863
 H                  3.22334506    1.18083893   -0.10202753
 H                  1.90758699    3.42903776    0.06070770
 H                 -0.51578803    3.41180699    0.15318277
 H                 -1.80806629    1.14506489    0.08995971
 H                 -0.32133855   -3.65433672   -0.20654992
 H                 -1.30172547   -1.70775282    2.00419188

 1 2 2.0 6 1.0 11 1.0
 2 3 1.0 12 1.0
 3 4 2.0 13 1.0
 4 5 1.0 14 1.0
 5 6 2.0 15 1.0
 6 7 1.0
 7 8 2.0 9 1.0 10 2.0
 8 17 1.0
 9 16 1.0
 10
 11
 12
 13
 14
 15
 16
 17

