.temp25

***Supply voltages***
Vin 1 0 pulse(0 1.8 0s 100p 100p 5n 10n)

***network***
R1 1 6 82.8m
R2 11 12 82.8m
R3 7 8 259u
R4 3 7 108.4u
L1 6 5 2.09p
L2 12 13 2.09p
C1 1 2 30.9f
C2 2 3 17.2f
C3 5 4 30.9f
C4 4 3 17.2f
C5 9 8 2.73f
C6 3 9 14.09f
C7 8 10 17.2f
C8 10 11 30.9f
C9 8 14 17.2f
C10 14 13 30.9f


**operation part**
.option post
.tran 1p 100n

**measure**
.measure tran tr trig v(1) val=0.9 rise=1 targ V(10) val=0.9 rise=1 
.measure tran tf trig v(1) val=0.9 fall=1 targ V(10) val=0.9 fall=1 

**plot**
.print V(12) V(1) I(Vin) I(L2)

**end**
.end
