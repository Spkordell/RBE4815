/PROG T1OVRDIG
/ATTR
/MN

1: !moves arm over a digit
2: IF AR[1] = 1, JMP LBL[81];
3: IF AR[1] = 2, JMP LBL[82];
4: IF AR[1] = 3, JMP LBL[83];
5: IF AR[1] = 4, JMP LBL[84];
6: IF AR[1] = 5, JMP LBL[85];
7: IF AR[1] = 6, JMP LBL[86];
8: IF AR[1] = 7, JMP LBL[87];
9: IF AR[1] = 8, JMP LBL[88];
12: IF AR[1] = 9, JMP LBL[89];
13: IF AR[1] = 10, JMP LBL[90];
14: IF AR[1] = 11, JMP LBL[91];
15: IF AR[1] = 12, JMP LBL[92];
16: IF AR[1] = 13, JMP LBL[93];
17: IF AR[1] = 14, JMP LBL[94];
18: IF AR[1] = 15, JMP LBL[95];
19: IF AR[1] = 16, JMP LBL[96];
22: IF AR[1] = 17, JMP LBL[97];
23: IF AR[1] = 18, JMP LBL[98];
24: IF AR[1] = 19, JMP LBL[99];
25: IF AR[1] = 20, JMP LBL[100];
26: IF AR[1] = 21, JMP LBL[101];
27: IF AR[1] = 22, JMP LBL[102];
28: IF AR[1] = 23, JMP LBL[103];
29: JMP LBL[104];

30: !Pose calls follow
31: LBL[81];
32: J P[1] 50% FINE;
33: JMP LBL[80];

34: LBL[82];
35: J P[2] 50% FINE;
36: JMP LBL[80];

37: LBL[83];
38: J P[3] 50% FINE;
39: JMP LBL[80];

40: LBL[84];
41: J P[4] 50% FINE;
42: JMP LBL[80];

43: LBL[85];
44: J P[5] 50% FINE;
45: JMP LBL[80];

46: LBL[86];
47: J P[6] 50% FINE;
48: JMP LBL[80];

49: LBL[87];
50: J P[7] 50% FINE;
51: JMP LBL[80];

52: LBL[88];
53: J P[8] 50% FINE;
54: JMP LBL[80];

55: LBL[89];
56: J P[9] 50% FINE;
57: JMP LBL[80];

58: LBL[90];
59: J P[10] 50% FINE;
60: JMP LBL[80];

61: LBL[91];
62: J P[11] 50% FINE;
63: JMP LBL[80];

64: LBL[92];
65: J P[12] 50% FINE;
66: JMP LBL[80];

67: LBL[93];
68: J P[13] 50% FINE;
69: JMP LBL[80];

70: LBL[94];
71: J P[14] 50% FINE;
72: JMP LBL[80];

73: LBL[95];
74: J P[15] 50% FINE;
75: JMP LBL[80];

76: LBL[96];
77: J P[16] 50% FINE;
78: JMP LBL[80];

79: LBL[97];
80: J P[17] 50% FINE;
81: JMP LBL[80];

82: LBL[98];
83: J P[18] 50% FINE;
84: JMP LBL[80];

85: LBL[99];
86: J P[19] 50% FINE;
87: JMP LBL[80];

88: LBL[100];
89: J P[20] 50% FINE;
90: JMP LBL[80];

91: LBL[101];
92: J P[21] 50% FINE;
93: JMP LBL[80];

94: LBL[102];
95: J P[22] 50% FINE;
96: JMP LBL[80];

97: LBL[103];
98: J P[23] 50% FINE;
99: JMP LBL[80];

100: LBL[104];
101: MESSAGE[T1 - INVALID POSE NUMBER];

102: LBL[80];

/POS

P[1]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 565.122 mm, Y = -256.941 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};

P[2]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 616.643 mm, Y = -257.491 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};



P[3]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 569.296 mm, Y = -157.011 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -178.512 deg
};


P[4]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 613.533 mm, Y = -156.711 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -179.100 deg
};


P[6]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 619.518 mm, Y = -219.886 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[7]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 572.142 mm, Y = -219.886 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[10]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 569.296 mm, Y = -63.405 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};

P[11]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 620.453 mm, Y = -63.405 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};

P[13]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 620.453 mm, Y = -124.363 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[14]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 572.142 mm, Y = -124.363 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[17]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 569.296 mm, Y = 25.721 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[18]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 614.765 mm, Y = 25.721 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[20]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 614.765 mm, Y = -34.439 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -179.192 deg
};

P[21]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 572.142 mm, Y = -34.439 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};

P[5]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, -1 ',
	X = 509.403 mm, Y = -50.679 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = 90.000 deg
};


P[9]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, -1 ',
	X = 460.443 mm, Y = -50.679 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = 90.000 deg
};


P[12]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, -1 ',
	X = 509.403 mm, Y = 44.841 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = 90.000 deg
};


P[16]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, -1 ',
	X = 460.443 mm, Y = 44.841 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = 90.000 deg
};


P[19]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, -1 ',
	X = 509.403 mm, Y = 132.681 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = 90.000 deg
};


P[23]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, -1 ',
	X = 463.914 mm, Y = 137.014 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = 89.622 deg
};


P[8]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 676.138 mm, Y = -55.079 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -90.000 deg
};

P[15]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 676.138 mm, Y = 38.361 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -90.000 deg
};


P[22]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 676.138 mm, Y = 126.840 mm, Z = -121.690 mm, W = 179.589 deg, P = 0.000 deg, R = -90.000 deg
};

/END
