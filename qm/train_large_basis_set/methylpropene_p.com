%chk=methylpropene_p.chk
%nprocshared=24
%mem=10GB
#p opt freq m062x/6-311++g(d,p) geom=connectivity temperature=0.001

Title Card Required

1 1
 C                 -1.85703280   -7.63945113   -1.57242621
 H                 -1.50037838   -8.64826113   -1.57242621
 H                 -1.50035996   -7.13505294   -0.69877471
 H                 -2.92703280   -7.63943795   -1.57242621
 C                 -1.34369059   -6.91349486   -2.82983118
 C                 -0.45849838   -7.66443981   -3.84181756
 H                  0.24858798   -8.27125814   -3.31579437
 H                 -1.07199894   -8.28615946   -4.45986427
 H                  0.06295172   -6.95766202   -4.45292717
 C                 -1.66824496   -5.61608992   -3.04885612
 H                 -0.79552945   -5.00674892   -2.93944320
 H                 -2.05672894   -5.50803447   -4.03996873
 H                 -2.40872875   -5.30911898   -2.34008775

 1 2 1.0 3 1.0 4 1.0 5 1.0
 2
 3
 4
 5 6 1.0 10 2.0
 6 7 1.0 8 1.0 9 1.0
 7
 8
 9
 10 11 1.0 12 1.0 13 1.0
 11
 12
 13

