/PROG T1SYNC
/ATTR
/MN

1: !Get fourth digit
2: DO[112] = OFF;
3: LBL[33];
4: !Message[Waiting for computer - D4];
5: IF DI[108]=OFF, JMP LBL[33];
6: R[40]=DI[101];
7: R[41]=DI[102];
8: R[42]=DI[103];
9: R[43]=DI[104];
10: R[44]=DI[105];
11: R[45]=DI[106];
12: R[46]=DI[107];
13: Message[Digit 4 Read];

14: DO[112] = ON;
15: !wait for 108 to go off
16: LBL[500];
77: IF DI[108]=ON, JMP LBL[500];
20: DO[112] = OFF;
21: LBL[32];
22: !Message[Waiting for computer - D3];
23: IF DI[108]=OFF, JMP LBL[32];
24: R[33]=DI[101];
25: R[34]=DI[102];
26: R[35]=DI[103];
27: R[36]=DI[104];
28: R[37]=DI[105];
29: R[38]=DI[106];
30: R[39]=DI[107];
31: Message[Digit 3 Read];


31: DO[112] = ON;
15: !wait for 108 to go off
16: LBL[502];
77: IF DI[108]=ON, JMP LBL[502];
37: DO[112] = OFF;
38: LBL[31];
39: !Message[Waiting for computer - D2];
40: IF DI[108]=OFF, JMP LBL[31];
41: R[26]=DI[101];
42: R[27]=DI[102];
43: R[28]=DI[103];
44: R[29]=DI[104];
45: R[30]=DI[105];
46: R[31]=DI[106];
47: R[32]=DI[107];
48: Message[Digit 2 Read];


49: DO[112] = ON;
15: !wait for 108 to go off
16: LBL[503];
77: IF DI[108]=ON, JMP LBL[503];
55: DO[112] = OFF;
56: LBL[30];
57: !Message[Waiting for computer - D1];
58: IF DI[108]=OFF, JMP LBL[30];
59: R[24] = DI[101];
60: R[25] = DI[101];
61: Message[Digit 1 Read];


62: DO[112] = ON;
15: !wait for 108 to go off
16: LBL[504];
77: IF DI[108]=ON, JMP LBL[504];
68: DO[112] = OFF;
69: LBL[29];
70: !Message[Waiting for computer - S1];
71: IF DI[108]=OFF, JMP LBL[29];
72: R[70]=DI[101];
73: R[71]=DI[102];
74: R[72]=DI[103];
75: R[73]=DI[104];
76: R[74]=DI[105];
77: R[75]=DI[106];
78: R[76]=DI[107];

79: !Process first incoming second value

80: !if segment 2 is 0, must be a 2
81: IF R[71] = 0, JMP LBL[41];
82: !segment 6 and 7, Must be a 4
83: IF R[75] = 0 AND R[76] = 1, JMP LBL[42];
84: !segment 5 and 7, Must be a 0
85: IF R[74] = 1 AND R[76] = 0, JMP LBL[43];
86: !segment 6 and 7, Must be a 7
87: IF R[75] = 1 AND R[76] = 0, JMP LBL[44];
88: !segment 6 and 7, Must be a 1
89: IF R[75] = 0 AND R[76] = 0, JMP LBL[45];
90: !segment 5 and 6, Must be a 3
91: IF R[74] = 0 AND R[75] = 1, JMP LBL[46];
92: !segment 1 and 4, Must be a 5
93: IF R[70] = 0 AND R[73] = 0, JMP LBL[47];
94: !segment 4, Must be a 9
95: IF R[73] = 0, JMP LBL[48];
96: !segment 1, Must be a 6
97: IF R[70] = 0, JMP LBL[49];
98: !If made it here, first digit must be 8
99: R[61]=80;
100: LBL[40];
101: Message[Second 1 Read];

102: DO[112] = ON;
15: !wait for 108 to go off
16: LBL[505];
77: IF DI[108]=ON, JMP LBL[505];
108: DO[112] = OFF;
109: LBL[28];
110: !Message[Waiting for computer - S2];
111: IF DI[108]=OFF, JMP LBL[28];
112: R[71]=DI[101];
113: R[72]=DI[102];
114: R[73]=DI[103];
115: R[74]=DI[104];
116: R[75]=DI[105];
117: R[76]=DI[106];
118: R[77]=DI[107];

119: !Process second incoming second value

120: !if segment 2 is 0, must be a 2
121: IF R[71] = 0, JMP LBL[1];
122: !segment 6 and 7, Must be a 4
123: IF R[75] = 0 AND R[76] = 1, JMP LBL[2];
124: !segment 5 and 7, Must be a 0
125: IF R[74] = 1 AND R[76] = 0, JMP LBL[3];
126: !segment 6 and 7, Must be a 7
127: IF R[75] = 1 AND R[76] = 0, JMP LBL[4];
128: !segment 6 and 7, Must be a 1
129: IF R[75] = 0 AND R[76] = 0, JMP LBL[5];
130: !segment 5 and 6, Must be a 3
131: IF R[74] = 0 AND R[75] = 1, JMP LBL[6];
132: !segment 1 and 4, Must be a 5
133: IF R[70] = 0 AND R[73] = 0, JMP LBL[7];
134: !segment 4, Must be a 9
135: IF R[73] = 0, JMP LBL[8];
136: !segment 1, Must be a 6
137: IF R[70] = 0, JMP LBL[9];
138: !If made it here, first digit must be 8
139: R[61]=80;
140: !Jump to end of this routine
141: JMP LBL[10];

143: !Below here are LBLs to set the first digit

144: LBL[41];
145: !first digit must be a 2
146: R[61]=20;
147: JMP LBL[40];

148: LBL[42];
149: !first digit must be a 4
150: R[61]=40;
151: JMP LBL[40];

152: LBL[43];
153: !If here, first digit must be a 0
154: R[61]=00;
155: JMP LBL[40];

156: LBL[44];
157: !first digit must be a 7
158: R[61]=70;
159: JMP LBL[40];

160: LBL[45];
161: !first digit must be a 1
162: R[61]=10;
163: JMP LBL[40];

164: LBL[46];
165: !first digit must be a 3
166: R[61]=30;
167: JMP LBL[40];

168: LBL[47];
169: !first digit must be a 5
170: R[61]=50;
171: JMP LBL[40];

172: LBL[48];
173: !first digit must be a 9
174: R[61]=90;
175: JMP LBL[40];

176: LBL[49];
177: !first digit must be a 6
178: R[61]=60;
179: JMP LBL[40];



180: !Below here are LBLs to set the second digit

181: LBL[1];
182: !second digit must be a 2
183: R[61]=R[61]+2;
184: JMP LBL[10];

185: LBL[2];
186: !second digit must be a 4
187: R[61]=R[61]+4;
188: JMP LBL[10];

189: LBL[3];
190: !If here, second digit must be a 0
191: R[61]=R[61];
192: JMP LBL[10];

193: LBL[4];
194: !second digit must be a 7
195: R[61]=R[61]+7;
196: JMP LBL[10];

197: LBL[5];
198: !second digit must be a 1
199: R[61]=R[61]+1;
200: JMP LBL[10];

201: LBL[6];
202: !second digit must be a 3
203: R[61]=R[61]+3;
204: JMP LBL[10];

205: LBL[7];
206: !second digit must be a 5
207: R[61]=R[61]+5;
208: JMP LBL[10];

209: LBL[8];
210: !second digit must be a 9
211: R[61]=R[61]+9;
212: JMP LBL[10];

213: LBL[9];
214: !second digit must be a 6
215: R[61]=R[61]+6;
216: JMP LBL[10];

217: LBL[10];
218: !prepare for next loop
219: DO[112] = ON;
220: !wait for 108 to go off
221: LBL[506];
222: IF DI[108]=ON, JMP LBL[506];
223: Message[Second 2 Read];
224: Message[Sync Done];

225: TIMER[1]=STOP;
226: TIMER[1]=RESET;
227: TIMER[1]=START;

/POS


/END
