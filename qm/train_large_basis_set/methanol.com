%chk=methanol.chk
%nprocshared=24
%mem=10GB
#P opt freq m062x/6-311++g(d,p) geom=connectivity temperature=0.001

Title Card Required

0 1
 C                 -0.12989108    0.07214629    0.77283280
 H                  0.22672196   -0.93667834    0.77290856
 H                  0.22678181    0.57658849    1.64645887
 H                 -1.19989108    0.07220317    0.77280758
 O                  0.34683894    0.74615146   -0.39479108
 H                  0.02688706    1.65126514   -0.39485905

 1 2 1.0 3 1.0 4 1.0 5 1.0
 2
 3
 4
 5 6 1.0
 6

