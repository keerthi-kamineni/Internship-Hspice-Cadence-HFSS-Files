.temp25

***Supply voltages***
Vin 1 0 pulse(0 1.8 0s 100p 100p 5n 10n)

***network***
R1 1 7 82m
R2 3 4 354u
R3 9 12 82m
L1 7 6 2.09p
L2 12 10 2.09p
C1 1 2 32.53f
C2 2 3 17.92f
C3 5 3 17.92f
C4 6 5 32.53f
C5 3 4 3.73f
C6 4 8 17.92f
C7 8 9 32.53f
C8 4 11 17.92f
C9 11 10 32.53f


**operation part**
.option post
.tran 1p 100n

**measure**
.measure tran tr trig v(1) val=0.9 rise=1 targ V(10) val=0.9 rise=1 
.measure tran tf trig v(1) val=0.9 fall=1 targ V(10) val=0.9 fall=1 

.measure tran Pavg AVG par('V(1)*I(Vin)') from 0 to 100n

**plot**
.print V(12)

**end**
.end
