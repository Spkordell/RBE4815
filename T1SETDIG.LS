/PROG T1SETDIG
/ATTR
/MN

1: !Sets a digit
2: !find digit to remove
3: !loop counter
4: R[52]=1
5: LBL[52]
6: !if this segment is set
7: !and it should be clear
8: R[53]=R[52]+23
9: IF R[R[52]] = 1 and R[R[53]] = 0,JMP LBL[53]
10: R[52]=R[52]+1
11: IF R[52] <= 23, JMP LBL[52]
12: CALL T1HOLDER
12: JMP LBL[54]
13: LBL[53]
14: !pick up digit to remove
15: !move over digit
16: J P[R[52]] 50% FINE
17: CALL T1OPEN
18: !move down onto digit
19: L P[24] 50% FINE INC
20: CALL T1CLOSE
21: !move up over the digit
22: L P[25] 50% FINE INC
23: LBL[54]
24: !Place segment in position
25: !Move over segment to place
26: J P[R[50]] 50% FINE
27: !Move segment down
28: L P[24] 50% FINE INC
29: CALL T1OPEN
30: !move back up
31: L P[25] 50% FINE INC

/POS


/END
