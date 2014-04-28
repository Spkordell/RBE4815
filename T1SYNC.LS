/PROG T1SYNC
/ATTR
/MN


1: !Get first digit
2: DO[106] = ON;
3: DO[105] = ON;
4: LBL[30];
5: Message[Waiting for computer];
6: IF DI[101]=OFF, JMP LBL[30];
7: R[24] = DI[102];
8: R[25] = DI[103];
9: DO[105] = OFF;
10: DO[106] = OFF;

11: !Get second digit
12: DO[107]=ON;
13: DO[105]=ON;
14: LBL[31];
15: Message[Waiting for computer];
16: IF DI[101]=OFF, JMP LBL[31];
17: R[26]=DI[102];
18: R[27]=DI[103];
19: R[28]=DI[104];
20: R[29]=DI[105];
21: R[30]=DI[106];
22: R[31]=DI[107];
23: R[32]=DI[108];
24: DO[105] = OFF;
25: DO[107] = OFF;

26: !Get third digit
27: DO[108]=ON;
28: DO[105]=ON;
29: LBL[32];
30: Message[Waiting for computer];
31: IF DI[101]=OFF, JMP LBL[32];
32: R[33]=DI[102];
33: R[34]=DI[103];
34: R[35]=DI[104];
35: R[36]=DI[105];
36: R[37]=DI[106];
37: R[38]=DI[107];
38: R[39]=DI[108];
39: DO[105] = OFF;
40: DO[108] = OFF;

41: !Get fourth digit
42: DO[109]=ON;
43: DO[105]=ON;
44: LBL[33];
45: Message[Waiting for computer];
46: IF DI[101]=OFF, JMP LBL[33];
47: R[40]=DI[102];
48: R[41]=DI[103];
49: R[42]=DI[104];
50: R[43]=DI[105];
51: R[44]=DI[106];
52: R[45]=DI[107];
53: R[46]=DI[108];
54: DO[105]=OFF;
55: DO[109]=OFF;

/POS


/END
