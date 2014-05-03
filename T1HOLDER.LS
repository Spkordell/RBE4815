/PROG T1HOLDER
/ATTR
/MN

1: !Gets rod from holder
2: !checks holder sensor
3: !Pauses if no rod in holder
4: LBL[55]
5: Message[Holder Empty];
6: IF RDI[5]=ON, JMP LBL[55]
7: Message[Getting Rod From Holder];
8: CALL T1OPEN
9: J P[28] 50% FINE;
10: L P[29] 500mm/sec FINE;
11: CALL T1CLOSE

/POS


/END
