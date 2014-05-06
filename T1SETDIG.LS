/PROG T1SETDIG
/ATTR
/MN

1: !Sets a digit
2: !find digit to remove
3: !loop counter
4: R[52]=1;
5: LBL[52];
6: !if this segment is set
7: !and it should be clear
8: R[53]=R[52]+23;
9: IF R[R[52]] = 1 and R[R[53]] = 0,JMP LBL[53];
10: R[52]=R[52]+1;
11: IF R[52] <= 23, JMP LBL[52];
12: CALL T1HOLDER;
12: JMP LBL[54];
13: LBL[53];
14: !pick up digit to remove
15: !move over digit
16: CALL T1OVRDIG(R[52]);
17: CALL T1OPEN;
18: !move down onto digit
19: L P[24] 500mm/sec FINE INC;
20: CALL T1CLOSE;
21: !move up over the digit
22: L P[25] 500mm/sec FINE INC;

23: !change state of digit to be clear
24: R[R[52]]=0;

25: LBL[54];
26: !Place segment in position
27: !Move over segment to place
28: CALL T1OVRDIG(R[50]);
29: !Move segment down
30: L P[24] 500mm/sec FINE INC;
31: CALL T1OPEN;
32: !move back up
33: L P[25] 500mm/sec FINE INC;


34: !change state of digit to be set
35: R[R[50]]=1;

/POS


P[24]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = -70.000 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};



P[25]{
GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, , 0, 01 ',
	X = 0.000 mm, Y = 0.000 mm, Z = 70.000 mm, W = 0.000 deg, P = 0.000 deg, R = 0.000 deg
};


/END
