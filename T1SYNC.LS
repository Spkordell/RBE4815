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

50: !Get second seconds digit
51: DO[112] = ON
52: DO[112] = OFF



53: !prepare for next loop
54: DO[112] = ON

/POS


/END
