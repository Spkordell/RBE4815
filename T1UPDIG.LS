/PROG UPDATE_DIGIT
/ATTR
/MN


1: CALL HOMEPOS;
2: !Initialize clock state
3: !1st digit (1)
4: R[1]=1
5: R[2]=1
6: !second digit (2)
7: R[3]=1
8: R[4]=0
9: R[5]=1
10: R[6]=1
11: R[7]=0
12: R[8]=1
13: R[9]=1
14: !third digit (0)
15: R[10]=1
16: R[11]=1
17: R[12]=1
18: R[13]=1
19: R[14]=1
20: R[15]=1
21: R[16]=0
22: !fourth digit (0)
23: R[17]=1
24: R[18]=1
25: R[19]=1
26: R[20]=1
27: R[21]=1
28: R[22]=1
29: R[23]=0

30: !Registers for actual time
3: !1st digit (1)
4: R[24]=1
5: R[25]=1
6: !second digit (2)
7: R[26]=1
8: R[27]=0
9: R[28]=1
10: R[29]=1
11: R[30]=0
12: R[31]=1
13: R[32]=1
14: !third digit (0)
15: R[33]=1
16: R[34]=1
17: R[35]=1
18: R[36]=1
19: R[37]=1
20: R[38]=1
21: R[39]=0
22: !fourth digit (0)
23: R[40]=1
24: R[41]=1
25: R[42]=1
26: R[43]=1
27: R[44]=1
28: R[45]=1
29: R[46]=0



30: !Loop counter Variables
31: R[50]=1
32: R[51]=1
33: LBL[50]
34: !if this segment is set
35: !and it should be clear
35: R[52]=R[50]+23
34: IF R[R[50]] = 1 and R[R[52]] = 0,CALL FIND_EMPTY


35: R[50]=R[50]+1
36: R[51]=R[51]+1
37: IF R[50] <= 23, JMP LBL[50]






2:J P[1] 100% FINE;
3:L P[2] 100mm/sec FINE;
4: CALL GRIPCLOS;
5:L P[3] 100mm/sec CNT100;
6:J P[4] 100% CNT100;
8:L P[5] 100mm/sec CNT100;
7: CALL GRIPOPEN;
9:L P[6] 100mm/sec CNT100;
10:J P[7] 100% CNT100;
11: Message[PROGRAM END MESSAGE TEST]

/POS

P[1]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 0 ',
	X = 410.104 mm, Y = -289.376 mm, Z = -112.409 mm, W = -180.000 deg, P = -0.000 deg, R = -45.000 deg
};


/END
