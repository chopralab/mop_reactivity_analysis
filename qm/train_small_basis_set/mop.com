%nprocshared=24
%mem=10GB
%chk=mop.chk
#P opt freq b3lyp/6-31g(d) geom=connectivity temperature=0.001

MOP

0 1
 C                  0.47094048   -1.02444409   -0.65492732
 C                  1.31227384   -2.31267404   -0.71990243
 C                  1.08348685    0.18397009   -0.62192481
 O                 -0.95665337   -1.10334292   -0.62941735
 C                 -1.45937342   -1.07924194   -1.96792088
 H                  2.24871811   -2.15228713   -0.22771531
 H                  0.78563271   -3.10748586   -0.23428602
 H                  1.48703348   -2.57331800   -1.74285101
 H                  2.15168650    0.24300617   -0.64100970
 H                  0.49892399    1.07903908   -0.57678306
 H                 -1.06577723   -1.91241599   -2.51179867
 H                 -2.52757302   -1.13827813   -1.94883301
 H                 -1.16093116   -0.16899809   -2.44466857

 1 2 1.0 3 2.0 4 1.0
 2 6 1.0 7 1.0 8 1.0
 3 9 1.0 10 1.0
 4 5 1.0
 5 11 1.0 12 1.0 13 1.0
 6
 7
 8
 9
 10
 11
 12
 13

