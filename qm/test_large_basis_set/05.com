%nprocshared=24
%mem=70GB
%chk=05.chk
#p opt freq m062x/6-311++g(d,p) geom=connectivity temperature=0.001

Benzene Sulfonyl

0 1
 C                  1.48288938   -0.00021034   -0.09185620
 C                  2.15527169    1.17603057   -0.06141967
 C                  1.38042908    2.50373682    0.03031383
 C                  0.02618542    2.49587723    0.08060674
 C                 -0.73788534    1.15923976    0.04602117
 C                 -0.05602396   -0.00914160   -0.03470740
 S                 -0.93917079   -1.55408605   -0.07468598
 O                 -1.13047835   -2.04462938    1.29735368
 O                 -0.06197020   -2.67425903   -0.94911815
 O                 -2.24894166   -1.35332442   -0.71023236
 H                  2.02125405   -0.92270755   -0.15559295
 H                  3.22451671    1.18223600   -0.10112589
 H                  1.91130944    3.43243944    0.05434475
 H                 -0.51217923    3.41837441    0.14434413
 H                 -1.80713030    1.15303426    0.08572884
 H                 -0.53827411   -3.50748751   -0.97067963

 1 2 2.0 6 1.0 11 1.0
 2 3 1.0 12 1.0
 3 4 2.0 13 1.0
 4 5 1.0 14 1.0
 5 6 2.0 15 1.0
 6 7 1.0
 7 8 2.0 9 1.0 10 2.0
 8
 9 16 1.0
 10
 11
 12
 13
 14
 15
 16

