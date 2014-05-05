/PROG T1UPSEC

/ATTR
/MN


1: !Update the second rods

2: !if current state equals actual - exit
3: IF R[60] = R[61], JMP LBL[900];
4: !otherwise

5: !Take rod out of actual
6: !move over rod
7: CALL T1OVRSEC(R[61]);
8: CALL T1OPEN;
9: !move down onto rod
10: L P[91] 500mm/sec FINE INC;
11: CALL T1CLOSE;
12: !move up above rod
13: L P[92] 500mm/sec FINE INC;

14: !Put rod into empty hole-current state
15: !move over empty hole
16: CALL T1OVRSEC(R[60]);
17: !move down onto rod
18: L P[91] 500mm/sec FINE INC;
19: CALL T1OPEN;
20: !move up above rod
21: L P[92] 500mm/sec FINE INC;

22: !Save new state
23: R[60] = R[61];

24: LBL[900];

/POS


P[91]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = -72.000 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};



P[92]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = 72.000 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};

/END
