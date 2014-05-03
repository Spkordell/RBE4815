/PROG T1CLRDIG
/ATTR
/MN

1: !clears a segment
2: CALL T1OPEN;
3: !move to digit to remove
4: CALL T1OVRDIG (R[54]);
5: !move down onto segment;
6: L P[24] 500mm/sec FINE INC;
7: CALL T1CLOSE;
8: !Move above segment;
9: L P[25] 500mm/sec FINE INC;

10: !Set digit as clear
11: R[R[54]] = 0;

12: !move to holder top
13: J P[26] 50% FINE;
14: !insert into holder
15: L P[27] 500mm/sec FINE;
16: CALL T1OPEN;
17: !move to holder top
18: J P[26] 50% FINE;


/POS

P[24]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = -68.000 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};


P[25]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = 68.000 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};


P[26]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 166.247 mm, Y = -355.424 mm, Z = 98.891 mm, W = 179.550 deg, P = 16.930 deg, R = 0.604 deg
};


P[27]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 144.314 mm, Y = -356.245 mm, Z = 26.801 mm, W = 179.550 deg, P = 16.930 deg, R = 0.604 deg
};

/END
