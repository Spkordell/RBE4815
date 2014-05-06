/PROG T1UPSEC

/ATTR
/MN


1: LBL[2200];



2: R[61] = TIMER[1]+R[61];

3: !WAIT 2.000(sec);

3: TIMER[1] = STOP;
4: TIMER[1] = RESET;
5: TIMER[1] = START;

6: R[63] = R[61] MOD 1;
7: R[61] = R[61] - R[63];

8: IF R[61] > 59, JMP LBL[3000];
9: !R[61] = R[62];


10: !Update the second rods
11: !if current state equals actual - exit
12: IF R[60] = R[61], JMP LBL[900];
13: !otherwise
14: !Take rod out of actual
15: !move over rod
16: CALL T1OVRSEC(R[61]);
17: CALL T1OPEN;
18: !move down onto rod

19: IF R[61] >= 12 and R[61] < 45, JMP LBL[1100];
20: !else
21: L P[93] 500mm/sec FINE INC;
22: LBL[1102];

23: CALL T1CLOSE;
24: !move up above rod
25: IF R[61] >= 12 and R[61] < 45, JMP LBL[1105];
26: !else
27: L P[94] 500mm/sec FINE INC;
28: LBL[1106];

29: !Put rod into empty hole-current state
30: !move over empty hole
31: CALL T1OVRSEC(R[60]);
32: !move down onto rod

33: IF R[61] >= 12 and R[60] < 45, JMP LBL[1110];
34: !else
35: L P[93] 500mm/sec FINE INC;
36: LBL[1112];
37: CALL T1OPEN;
38: !move up above rod
39: IF R[61] >= 12 and R[60] < 45, JMP LBL[1120];
40: !else
41: L P[94] 500mm/sec FINE INC;
42: LBL[1122];

43: !Save new state
44: R[60] = R[61];

45: JMP LBL[900];

46: LBL[1100];
47: L P[91] 500mm/sec FINE INC;
48: JMP LBL[1102];

49: LBL[1105];
50: L P[92] 500mm/sec FINE INC;
51: JMP LBL[1106];

52: LBL[1110];
53: L P[91] 500mm/sec FINE INC;
54: JMP LBL[1112];

55: LBL[1120];
56: L P[92] 500mm/sec FINE INC;
57: JMP LBL[1122];

58: LBL[900];

59: !R[62] = TIMER[1]+R[61];

60: !R[63] = R[62] MOD 10;
61: !R[62] = R[62] - R[63];

62: !IF R[62] > 59, JMP LBL[3000];
63: !R[61] = R[62];

64: WAIT 0.100(sec);

65: JMP LBL[2200];

66: LBL[3000];


/POS


P[91]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = -74.000 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};


P[92]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = 74.000 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};

P[93]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = -83.000 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};



P[94]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = 83.000 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};

/END
