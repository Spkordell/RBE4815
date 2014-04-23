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
10: !TODO remove leftover


/POS


/END
