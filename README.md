# VLSI_Project
Mod-9 down counter with asynchronous reset


In this project we use structural modeling for implementing the circuit. As it is mod-9 down counter it counts from the value 8 to 0, so we need four D-flip flops.The D-flip flops are converted into T-flip flops by adding a XOR gate at the input of the D-flip flop and taking one of the terminals as input terminal and the other terminal is connected to output of the flip flop. When we observe the truth table we can see that Q3 (output of fourth flip flop) becomes one when T3(input of third flip flop) becomes and(~Q0,~Q1,~Q2). So we use an and gate here. When Q2 alternates when Q1 and Q2 (outputs of second and third flip flops) 
becomes 0, so we use an and gate (and(~Q1, ~Q0)) here. Q1 alternates when Q0 is zero, so we and(~Q0, 1(enable)). For the asynchronous reset we make NOR(Q0,Q1,Q2,Q3) in order to reset the value to 8(1000) when the count reaches 0(0000).Now the circuit looks as shown in the circuit figure.
