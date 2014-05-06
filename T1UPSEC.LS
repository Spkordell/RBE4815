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

10: IF R[61] >= 12 and R[61] < 45, JMP LBL[1100];
11: !else
12: L P[93] 500mm/sec FINE INC;
13: LBL[1102];

14: CALL T1CLOSE;
15: !move up above rod
16: IF R[61] >= 12 and R[61] < 45, JMP LBL[1105];
17: !else
18: L P[94] 500mm/sec FINE INC;
19: LBL[1106];

20: !Put rod into empty hole-current state
21: !move over empty hole
22: CALL T1OVRSEC(R[60]);
23: !move down onto rod

24: IF R[61] >= 12 and R[60] < 45, JMP LBL[1110];
25: !else
26: L P[93] 500mm/sec FINE INC;
27: LBL[1112];
18: CALL T1OPEN;
29: !move up above rod
30: IF R[61] >= 12 and R[60] < 45, JMP LBL[1120];
31: !else
32: L P[94] 500mm/sec FINE INC;
33: LBL[1122];

34: !Save new state
35: R[60] = R[61];

36: JMP LBL[900];

37: LBL[1100];
38: L P[91] 500mm/sec FINE INC;
39: JMP LBL[1102];

40: LBL[1105];
41: L P[92] 500mm/sec FINE INC;
42: JMP LBL[1106];

43: LBL[1110];
44: L P[91] 500mm/sec FINE INC;
45: JMP LBL[1112];

46: LBL[1120];
47: L P[92] 500mm/sec FINE INC;
48: JMP LBL[1122];

49: LBL[900];

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

P[93]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = -81.000 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};



P[94]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = 81.000 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};

/END
