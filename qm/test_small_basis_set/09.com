%nprocshared=24
%mem=70GB
%chk=09.chk
#p opt freq b3lyp/6-31g(d) geom=connectivity temperature=0.001

methylbenzophenone

0 1
 C                 -0.28260000   -0.04470000   -0.02540000
 C                  0.84580000   -0.88290000    0.00710000
 C                  2.11850000   -0.28480000    0.02370000
 C                  2.24550000    1.11610000    0.01650000
 C                  1.12510000    2.00830000   -0.00410000
 C                 -0.13610000    1.35400000   -0.02810000
 C                  1.35190000    3.45420000   -0.00130000
 C                  0.60189022    4.60769863    0.50792761
 O                  2.43293117    3.77379517   -0.55968247
 C                 -0.04620400    4.72335051    1.77200853
 C                 -0.75077345    5.87369592    2.17767898
 C                 -0.83592162    6.98235819    1.32778885
 C                 -0.21552267    6.93070256    0.07514087
 C                  0.48064174    5.77298950   -0.31585774
 C                  0.68700000   -2.35390000    0.00790000
 H                 -1.26197876   -0.47504073   -0.04829345
 H                  2.99478703   -0.89855056    0.04190161
 H                  3.22930110    1.53672607    0.02694503
 H                 -1.01998573    1.95665712   -0.04932282
 H                  0.00500660    3.89460915    2.44689016
 H                 -1.22201981    5.89994031    3.13795919
 H                 -1.36899999    7.85866535    1.63244147
 H                 -0.27056578    7.77110808   -0.58485065
 H                  0.94439003    5.76217193   -1.28007789
 H                  1.52430303   -2.80329648   -0.48389918
 H                  0.63458752   -2.70643219    1.01679741
 H                 -0.21273381   -2.61579025   -0.50861968

 1 2 2.0 6 1.0 16 1.0
 2 3 1.0 15 1.0
 3 4 2.0 17 1.0
 4 5 1.0 18 1.0
 5 6 2.0 7 1.0
 6 19 1.0
 7 8 1.0 9 2.0
 8 10 2.0 14 1.0
 9
 10 11 1.0 20 1.0
 11 12 2.0 21 1.0
 12 13 1.0 22 1.0
 13 14 2.0 23 1.0
 14 24 1.0
 15 25 1.0 26 1.0 27 1.0
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

