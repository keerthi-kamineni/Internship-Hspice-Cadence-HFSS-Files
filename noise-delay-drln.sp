.temp 27
.include /home/vlsi/Desktop/OIP-k.d.s.k/Library/22nm_HP.pm

***Supply***
V1a g 0 pulse(0 0.8 0 100p 100p 5n 10n)
Vdd x 0 0.8
V1v 6 0 DC 1

**driver**
Mp 1 G X X pmos w=88n l=22n
Mn 1 G 0 0 nmos w=44n l=22n

***network***
R1 1 2 82.8m
R2 6 7 82.8m
R3 4 5 354u
R4 4 9 0.136m
L1 2 3 2.09p
L2 7 8 2.09p
L3 9 4 1.901e-20
C1 1 4 11.55f
C2 3 4 11.55f
C3 5 6 11.55f
C4 5 8 11.55f
C5 10 5 3.73f
Cl1 3 0 1f
Cl2 8 0 1f

**operation part**
.option post
.tran 1p 100n

**measure**
.PROBE V(1) V(3) V(4) V(9) V(5) V(7) V(8) I(R4) I(C1) 

**end**
.end


