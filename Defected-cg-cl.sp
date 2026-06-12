.temp25

***Supply voltages***
Vin 1 0 pulse(0 1.8 0s 100p 100p 5n 10n)

***network***
R1 1 9 82m
R2 3 4 -214u
R3 4 5 259u
R4 11 13 82m
L1 9 8 2.09p
L2 13 12 2.09p
C1 1 2 30.9f
C2 2 3 17.2f
C3 7 3 17.2f
C4 8 7 30.9f
C5 6 5 2.73f
C6 3 6 64f
C7 5 10 17.2f
C8 10 11 30.9f
C9 13 12 30.9f
C10 5 13 17.2f


**operation part**
.option post
.tran 1p 100n

**measure**
.measure tran tr trig v(1) val=0.9 rise=1 targ V(10) val=0.9 rise=1 
.measure tran tf trig v(1) val=0.9 fall=1 targ V(10) val=0.9 fall=1 

.measure tran Pavg AVG par('V(1)*I(Vin)') from 0 to 100n

**plot**
.print V(10) I(L2)
