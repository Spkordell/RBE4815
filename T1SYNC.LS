/PROG T1SYNC
/ATTR
/MN


1: !Fill R[24]-RR[46] with the current time - Incomplete
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


11: Message[PROGRAM END MESSAGE TEST]

/POS


/END
