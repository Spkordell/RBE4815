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
58: !Current seconds state
59: R[60]=0;
60: !Actual seconds state 
61: R[61]=0;
62: !LOOP COUNTERS
63: R[50]=1;
64: R[52]=1;
65: R[54]=1;
66:!MISC
67: R[51]=1;
68: R[53]=1;
69: R[55]=1;

70: LBL[20];
71: CALL T1UPDIG;
72: CALL T1UPSEC;
73: CALL T1SYNC;
74: JMP LBL[20];

/POS



/END
