/PROG T1HOLDER
/ATTR
/MN

1: !Gets rod from holder
2: !checks holder sensor
3: !Pauses if no rod in holder
4: !LBL[55];
5: MESSAGE[Holder Empty];
6: !R[80] = RDI[5];
7: !IF R[80]=1, JMP LBL[55];
7: !WAIT DI[100] = OFF;
8: MESSAGE[Getting Rod From Holder];
9: CALL T1OPEN;
10: J P[28] 50% FINE;
11: L P[29] 500mm/sec FINE;
12: CALL T1CLOSE;
13: L P[28] 500mm/sec FINE;

/POS


P[28]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 544.973 mm, Y = -351.591 mm, Z = -70.325 mm, W = 179.550 deg, P = 16.930 deg, R = 0.604 deg
};


P[29]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 520.942 mm, Y = -352.490 mm, Z = -149.299 mm, W = 179.550 deg, P = 16.930 deg, R = 0.604 deg
};


/END
