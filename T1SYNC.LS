/PROG T1SYNC
/ATTR
/MN

1: !Get fourth digit
2: DO[112] = OFF;
3: LBL[33];
4: Message[Waiting for computer - D4];
5: IF DI[108]=OFF, JMP LBL[33];
6: R[40]=DI[101];
7: R[41]=DI[102];
8: R[42]=DI[103];
9: R[43]=DI[104];
10: R[44]=DI[105];
11: R[45]=DI[106];
12: R[46]=DI[107];
13: Message[D4=R[40]R[41]R[42]R[43]R[44]R[45]R[46]];

14: DO[112] = ON;
15: DO[112] = OFF;
16: LBL[32];
17: Message[Waiting for computer - D3];
18: IF DI[108]=OFF, JMP LBL[32];
19: R[33]=DI[101];
20: R[34]=DI[102];
21: R[35]=DI[103];
22: R[36]=DI[104];
23: R[37]=DI[105];
24: R[38]=DI[106];
25: R[39]=DI[107];
26: Message[D3=R[33]R[34]R[35]R[36]R[37]R[38]R[39]];

27: DO[112] = ON;
28: DO[112] = OFF;
29: LBL[31];
30: Message[Waiting for computer - D2];
31: IF DI[108]=OFF, JMP LBL[31];
32: R[26]=DI[101];
33: R[27]=DI[102];
34: R[28]=DI[103];
35: R[29]=DI[104];
36: R[30]=DI[105];
37: R[31]=DI[106];
38: R[32]=DI[107];
39: Message[D2=R[26]R[27]R[28]R[29]R[30]R[31]R[32]];

40: DO[112] = ON;
41: DO[112] = OFF;
42: LBL[30];
43: Message[Waiting for computer - D1];
44: IF DI[108]=OFF, JMP LBL[30];
45: R[24] = DI[101];
46: R[25] = DI[102];
47: Message[D1=R[24]R[25]];

48: DO[112] = ON;
49: DO[112] = OFF;
50: LBL[29];
51: Message[Waiting for computer - S1];
52: IF DI[108]=OFF, JMP LBL[29];
53: R[70]=DI[101];
54: R[71]=DI[102];
55: R[72]=DI[103];
56: R[73]=DI[104];
57: R[74]=DI[105];
58: R[75]=DI[106];
59: R[76]=DI[107];

60: !Process first incoming second value

61: !if segment 2 is 0, must be a 2
62: IF R[71] = 0, JMP LBL[41];
63: !segment 6 and 7, Must be a 4
64: IF R[75] = 0 AND R[76] = 1, JMP LBL[42];
65: !segment 5 and 7, Must be a 0
66: IF R[74] = 1 AND R[76] = 0, JMP LBL[43];
67: !segment 6 and 7, Must be a 7
68: IF R[75] = 1 AND R[76] = 0, JMP LBL[44];
69: !segment 6 and 7, Must be a 1
70: IF R[75] = 0 AND R[76] = 0, JMP LBL[45];
71: !segment 5 and 6, Must be a 3
72: IF R[74] = 0 AND R[75] = 1, JMP LBL[46];
73: !segment 1 and 4, Must be a 5
74: IF R[70] = 0 AND R[73] = 0, JMP LBL[47];
75: !segment 4, Must be a 9
76: IF R[73] = 0, JMP LBL[48];
77: !segment 1, Must be a 6
78: IF R[70] = 0, JMP LBL[49];
79: !If made it here, first digit must be 8
80: R[61]=80;

81: LBL[40];
82: Message[S1=R[61]]

83: DO[112] = ON;
84: DO[112] = OFF;
85: LBL[28];
86: Message[Waiting for computer - S2];
87: IF DI[108]=OFF, JMP LBL[28];
88: R[71]=DI[101];
89: R[72]=DI[102];
90: R[73]=DI[103];
91: R[74]=DI[104];
92: R[75]=DI[105];
93: R[76]=DI[106];
94: R[77]=DI[107];

95: !Process second incoming second value

96: !if segment 2 is 0, must be a 2
97: IF R[71] = 0, JMP LBL[1];
98: !segment 6 and 7, Must be a 4
99: IF R[75] = 0 AND R[76] = 1, JMP LBL[2];
100: !segment 5 and 7, Must be a 0
101: IF R[74] = 1 AND R[76] = 0, JMP LBL[3];
102: !segment 6 and 7, Must be a 7
103: IF R[75] = 1 AND R[76] = 0, JMP LBL[4];
104: !segment 6 and 7, Must be a 1
105: IF R[75] = 0 AND R[76] = 0, JMP LBL[5];
106: !segment 5 and 6, Must be a 3
107: IF R[74] = 0 AND R[75] = 1, JMP LBL[6];
108: !segment 1 and 4, Must be a 5
109: IF R[70] = 0 AND R[73] = 0, JMP LBL[7];
110: !segment 4, Must be a 9
111: IF R[73] = 0, JMP LBL[8];
112: !segment 1, Must be a 6
113: IF R[70] = 0, JMP LBL[9];
114: !If made it here, first digit must be 8
115: R[61]=80;
116: !Jump to end of this routine
117: JMP LBL[10];


118: Message[S1=R[61]]

119: LBL[41];
120: !first digit must be a 2
121: R[61]=20;
122: JMP LBL[40];

123: LBL[42];
124: !first digit must be a 4
125: R[61]=40;
126: JMP LBL[40];

127: LBL[43];
128: !If here, first digit must be a 0
129: R[61]=00;
130: JMP LBL[40];

131: LBL[44];
132: !first digit must be a 7
133: R[61]=70;
134: JMP LBL[40];

135: LBL[45];
136: !first digit must be a 1
137: R[61]=10;
138: JMP LBL[40];

139: LBL[46];
140: !first digit must be a 3
141: R[61]=30;
142: JMP LBL[40];

143: LBL[47];
144: !first digit must be a 5
145: R[61]=50;
146: JMP LBL[40];

147: LBL[48];
148: !first digit must be a 9
149: R[61]=90;
150: JMP LBL[40];

151: LBL[49];
152: !first digit must be a 6
153: R[61]=60;
154: JMP LBL[40];



155: !Below here are LBLs to set the second digit

156: LBL[1];
157: !second digit must be a 2
158: R[61]=R[61]+2;
159: JMP LBL[10];

160: LBL[2];
161: !second digit must be a 4
162: R[61]=R[61]+4;
163: JMP LBL[10];

164: LBL[3];
165: !If here, second digit must be a 0
166: R[61]=R[61];
167: JMP LBL[10];

168: LBL[4];
169: !second digit must be a 7
170: R[61]=R[61]+7;
171: JMP LBL[10];

172: LBL[5];
173: !second digit must be a 1
174: R[61]=R[61]+1;
175: JMP LBL[10];

176: LBL[6];
177: !second digit must be a 3
178: R[61]=R[61]+3;
179: JMP LBL[10];

180: LBL[7];
181: !second digit must be a 5
182: R[61]=R[61]+5;
183: JMP LBL[10];

184: LBL[8];
185: !second digit must be a 9
186: R[61]=R[61]+9;
187: JMP LBL[10];

188: LBL[9];
189: !second digit must be a 6
190: R[61]=R[61]+6;
191: JMP LBL[10];



192: LBL[10];
193: !prepare for next loop
194: DO[112] = ON;

/POS


/END
