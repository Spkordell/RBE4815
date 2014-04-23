/PROG T1UPDIG
/ATTR
/MN


1: !Update the digital display
2: !Loop counter Variables
3: R[50]=1
3: LBL[50]
4: !if this segment is clear
5: !and it should be set
6: R[51]=R[50]+23
7: IF R[R[50]] = 0 and R[R[51]] = 1,CALL T1SETDIG
8: R[50]=R[50]+1
9: IF R[50] <= 23, JMP LBL[50]
10: !if the segment is set
11: !and should be clear
12: !remove the rod
13: R[54]=1
14: LBL[60]
15: R[55]=R[54]+23
16: IF R[R[54]] = 1 and R[R[55]] = 0,CALL T1CLRDIG
17: R[54]=R[54]+1
18: IF R[54] <= 23, JMP LBL[60]



/POS


/END
