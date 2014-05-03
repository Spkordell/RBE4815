/PROG T1MAIN
/ATTR
/MN

1: CALL HOMEPOS;
2: !Initialize clock state
3: !1st digit (1)
4: R[1]=1;
5: R[2]=1;
6: !second digit (2)
7: R[3]=1;
8: R[4]=0;
9: R[5]=1;
10: R[6]=1;
11: R[7]=0;
12: R[8]=1;
13: R[9]=1;
14: !third digit (0)
15: R[10]=1;
16: R[11]=1;
17: R[12]=1;
18: R[13]=1;
19: R[14]=1;
20: R[15]=1;
21: R[16]=0;
22: !fourth digit (0)
23: R[17]=1;
24: R[18]=1;
25: R[19]=1;
26: R[20]=1;
27: R[21]=1;
28: R[22]=1;
29: R[23]=0;
30: !Registers for actual time
31: !1st digit (1)
32: R[24]=1;
33: R[25]=1;
34: !second digit (2)
35: R[26]=1;
36: R[27]=0;
37: R[28]=1;
38: R[29]=1;
39: R[30]=0;
40: R[31]=1;
41: R[32]=1;
42: !third digit (0)
43: R[33]=1;
44: R[34]=1;
45: R[35]=1;
46: R[36]=1;
47: R[37]=1;
48: R[38]=1;
49: R[39]=0;
50: !fourth digit (0)
51: R[40]=1;
52: R[41]=1;
53: R[42]=1;
54: R[43]=1;
55: R[44]=1;
56: R[45]=1;
57: R[46]=0;
58: !LOOP COUNTERS
59: R[50]=1;
60: R[52]=1;
61: R[54]=1;
62:!MISC
63: R[51]=1;
64: R[53]=1;
65: R[55]=1;

66: LBL[20];
67: CALL T1SYNC;
68: CALL T1UPDIG;
69: CALL T1UPSEC;
70: JMP LBL[20];

/POS

P[1]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 565.122 mm, Y = -256.941 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};

P[2]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 616.643 mm, Y = -257.491 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[3]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 571.042 mm, Y = -157.011 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[4]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 619.518 mm, Y = -157.011 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[6]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 619.518 mm, Y = -219.886 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[7]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 572.142 mm, Y = -219.886 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[10]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 572.142 mm, Y = -63.405 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};

P[11]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 620.453 mm, Y = -63.405 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};

P[13]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 620.453 mm, Y = -124.363 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[14]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 572.142 mm, Y = -124.363 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[17]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 572.142 mm, Y = 25.721 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};

P[18]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 620.453 mm, Y = 25.721 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[20]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 620.453 mm, Y = -34.439 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};

P[21]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 572.142 mm, Y = -34.439 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -177.192 deg
};


P[5]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, -1 ',
	X = 509.403 mm, Y = -50.679 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = 90.000 deg
};


P[9]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, -1 ',
	X = 460.443 mm, Y = -50.679 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = 90.000 deg
};



P[12]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, -1 ',
	X = 509.403 mm, Y = 44.841 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = 90.000 deg
};


P[16]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, -1 ',
	X = 460.443 mm, Y = 44.841 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = 90.000 deg
};



P[19]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, -1 ',
	X = 509.403 mm, Y = 132.681 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = 90.000 deg
};



P[19]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, -1 ',
	X = 460.443 mm, Y = 132.681 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = 90.000 deg
};


P[8]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 676.138 mm, Y = -55.079 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -90.000 deg
};

P[15]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 676.138 mm, Y = 38.361 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -90.000 deg
};


P[22]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 676.138 mm, Y = 126.840 mm, Z = -156.864 mm, W = 179.589 deg, P = 0.000 deg, R = -90.000 deg
};


P[24]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = -57.792 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};



P[25]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = 57.792 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};


/END
