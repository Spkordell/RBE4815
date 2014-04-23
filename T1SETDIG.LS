/PROG T1SETDIG
/ATTR
/MN

1: !Sets a digit
2: !find digit to remove
3!loop counter
4: R[52]=1
5: LBL[52]
6: !if this segment is set
7: !and it should be clear
8: R[53]=R[52]+23
9: IF R[R[52]] = 1 and R[R[53]] = 0,JMP LBL[53]
10: R[52]=R[52]+1
11: IF R[52] <= 23, JMP LBL[52]
12: CALL T1HOLDER
13: JMP LBL[54]
14:LBL[53]
15:!Need to pick up digit to remove
16:LBL[54]
17!Place digit in position

/POS


/END
