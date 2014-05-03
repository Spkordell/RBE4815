/PROG T1SYNC
/ATTR
/MN

1: !Get fourth digit
2: DO[112] = OFF
3: LBL[33];
4: Message[Waiting for computer];
5: IF DI[108]=OFF, JMP LBL[33];
6: R[40]=DI[101];
7: R[41]=DI[102];
8: R[42]=DI[103];
9: R[43]=DI[104];
10: R[44]=DI[105];
11: R[45]=DI[106];
12: R[46]=DI[107];

13: !Get third digit
14: DO[112] = ON
15: DO[112] = OFF
16: LBL[32];
17: Message[Waiting for computer];
18: IF DI[108]=OFF, JMP LBL[32];
19: R[33]=DI[101];
20: R[34]=DI[102];
21: R[35]=DI[103];
22: R[36]=DI[104];
23: R[37]=DI[105];
24: R[38]=DI[106];
25: R[39]=DI[107];

26: !Get second digit
27: DO[112] = ON
28: DO[112] = OFF
29: LBL[31];
30: Message[Waiting for computer];
31: IF DI[108]=OFF, JMP LBL[31];
32: R[26]=DI[101];
33: R[27]=DI[102];
34: R[28]=DI[103];
35: R[29]=DI[104];
36: R[30]=DI[105];
37: R[31]=DI[106];
38: R[32]=DI[107];

39: !Get first digit
40: DO[112] = ON
41: DO[112] = OFF
42: LBL[30];
43: Message[Waiting for computer];
44: IF DI[108]=OFF, JMP LBL[30];
45: R[24] = DI[101];
46: R[25] = DI[102];

47: !Get first seconds digit
48: DO[112] = ON
49: DO[112] = OFF
50: LBL[29];
51: Message[Waiting for computer];
52: IF DI[108]=OFF, JMP LBL[29];
53: R[70]=DI[101];
54: R[71]=DI[102];
55: R[72]=DI[103];
56: R[73]=DI[104];
57: R[74]=DI[105];
58: R[75]=DI[106];
59: R[76]=DI[107];

60: !Process first incoming second value

61: !if segment 2 is 0, must be a 2
62: IF R[71] = 0, JMP LBL[41];
63: !segment 6 and 7, Must be a 4
64: IF R[75] = 0 AND R[76] = 1, JMP LBL[42];
65: !segment 5 and 7, Must be a 0
66: IF R[74] = 1 AND R[76] = 0, JMP LBL[43];
67: !segment 6 and 7, Must be a 7
68: IF R[75] = 1 AND R[76] = 0, JMP LBL[44];
69: !segment 6 and 7, Must be a 1
70: IF R[75] = 0 AND R[76] = 0, JMP LBL[45];
71: !segment 5 and 6, Must be a 3
72: IF R[74] = 0 AND R[75] = 1, JMP LBL[46];
73: !segment 1 and 4, Must be a 5
74:  R[70] = 0 AND R[73] = 0, JMP LBL[47];
75: !segment 4, Must be a 9
76: IF R[73] = 0, JMP LBL[48];
77: !segment 1, Must be a 6
78: IF R[70] = 0, JMP LBL[49];
79: !If made it here, first digit must be 8
80: R[61]=80

81: LBL[40];

82: !Get second seconds digit
83: DO[112] = ON
84: DO[112] = OFF
85: LBL[28];
86: Message[Waiting for computer];
87: IF DI[108]=OFF, JMP LBL[28];
88: R[71]=DI[101];
89: R[72]=DI[102];
90: R[73]=DI[103];
91: R[74]=DI[104];
92: R[75]=DI[105];
93: R[76]=DI[106];
94: R[77]=DI[107];

85: !Process second incoming second value



need to fix line numbers below this point



Need to process here

53: !prepare for next loop
54: DO[112] = ON



LBL[41];
!If here, first digit must be a 2
R[61]=20;
JMP LBL[40];

LBL[42];
!If here, first digit must be a 4
R[61]=40;
JMP LBL[40];

LBL[43];
!If here, first digit must be a 0
R[61]=00;
JMP LBL[40];

LBL[44];
!first digit must be a 7
R[61]=70;
JMP LBL[40];

LBL[45];
!first digit must be a 1
R[61]=10;
JMP LBL[40];

LBL[46];
!first digit must be a 3
R[61]=30;
JMP LBL[40];

LBL[47];
!first digit must be a 5
R[61]=50;
JMP LBL[40];

LBL[48];
!first digit must be a 9
R[61]=90;
JMP LBL[40];

LBL[49];
!first digit must be a 6
R[61]=60;
JMP LBL[40];


/POS


/END
