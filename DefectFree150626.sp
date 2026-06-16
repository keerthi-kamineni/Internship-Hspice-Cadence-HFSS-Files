.temp25

***Supply voltages***
Vin 1 0 pulse(0 1.8 0s 100p 100p 5n 10n)

***network***
R1 1 6 82.8m
R2 9 10 82.8m
R3 3 7 354u
L1 6 5 2.09p
L2 10 11 2.09p
C1 1 2 32.53f
C2 2 3 17.92f
C3 5 4 32.53f
C4 4 3 17.92f
C5 3 7 3.73f
C6 7 8 17.92f
C7 8 9 32.53f
C8 7 12 17.92f
C9 12 11 32.53f


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
