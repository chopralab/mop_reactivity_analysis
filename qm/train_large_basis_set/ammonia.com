%nprocshared=24
%mem=10GB
%chk=ammonia.chk
#P opt freq m062x/6-311++g(d,p) geom=connectivity temperature=0.001

Title Card Required

0 1
 N                  0.01212121    1.03636362    0.00000000
 H                  0.34544310    0.09355053    0.00000000
 H                  0.34546031    1.50776380    0.81649673
 H                  0.34546031    1.50776380   -0.81649673

 1 2 1.0 3 1.0 4 1.0
 2
 3
 4

