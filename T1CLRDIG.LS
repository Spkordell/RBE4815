/PROG T1CLRDIG
/ATTR
/MN

1: !clears a segment
2: CALL T1OPEN
3:!move to digit to remove
4: J P[R[54]] 50% FINE
5: !move down onto segment
6: L P[24] 500mm/sec FINE INC
7: CALL T1CLOSE
8: !Move above segment
9: L P[25] 500mm/sec FINE INC	
10: !move to holder top
11: J P[26] 50% FINE
12: !insert into holder
13: L P[27] 50% FINE
14: CALL T1OPEN
15: !move to holder top
16: J P[26] 50% FINE

/POS


/END
