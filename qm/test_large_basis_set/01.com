%nprocshared=24
%mem=70GB
%chk=01.chk
#P opt freq m062x/6-311++g(d,p) geom=connectivity temperature=0.001

imidazole neutral

0 1
 S                 -0.26111241    0.81505002   -1.06961072
 O                  0.29556392    1.60493084    0.29240975
 O                  0.29556386    1.59964283   -2.43468422
 N                 -1.97111241    0.81507109   -1.06961072
 C                 -2.78125647   -0.31663742   -1.06769630
 C                 -2.78145303    1.94664712   -1.07108163
 H                 -2.35708152   -1.31992040   -1.06634104
 C                 -4.12065626    1.53226472   -1.07025148
 H                 -2.35727886    2.94989176   -1.07257489
 H                 -4.99421037    2.17547426   -1.07102552
 N                  0.30886802   -0.79715733   -1.06648456
 C                  0.57945505   -1.56295615   -2.19672172
 C                  0.57884200   -1.55902231    0.06656186
 C                  1.02555028   -2.82232238   -0.34538891
 H                  0.43716161   -1.15727775    1.06903567
 H                  1.31670942   -3.64468578    0.29940616
 N                 -4.12046523    0.09739502   -1.06803934
 N                  1.02597895   -2.82473174   -1.78025823
 H                  0.46590012   -1.24285191   -3.21138351

 1 2 1.0 3 1.0 4 1.0 11 1.0
 2
 3
 4 5 1.0 6 1.0
 5 7 1.0 17 2.0
 6 8 2.0 9 1.0
 7
 8 10 1.0 17 1.0
 9
 10
 11 12 1.0 13 1.0
 12 18 2.0 19 1.0
 13 14 2.0 15 1.0
 14 16 1.0 18 1.0
 15
 16
 17
 18
 19

