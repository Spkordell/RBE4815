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
13: Message[Read Digit 4];

14: DO[112] = ON;
15: TIMER [1]=RESET;
16: TIMER [1]=START;
17: WAIT TIMER [1] > 0.1;
18: DO[112] = OFF;
19: LBL[32];
20: Message[Waiting for computer - D3];
21: IF DI[108]=OFF, JMP LBL[32];
22: R[33]=DI[101];
23: R[34]=DI[102];
24: R[35]=DI[103];
25: R[36]=DI[104];
26: R[37]=DI[105];
27: R[38]=DI[106];
28: R[39]=DI[107];
29: Message[Read Digit 3];

30: DO[112] = ON;
31: TIMER [1]=RESET;
32: TIMER [1]=START;
33: WAIT TIMER [1] > 0.1;
34: DO[112] = OFF;
35: LBL[31];
36: Message[Waiting for computer - D2];
37: IF DI[108]=OFF, JMP LBL[31];
38: R[26]=DI[101];
39: R[27]=DI[102];
40: R[28]=DI[103];
41: R[29]=DI[104];
42: R[30]=DI[105];
43: R[31]=DI[106];
44: R[32]=DI[107];
45: Message[Read Digit 2];

46: DO[112] = ON;
47: TIMER [1]=RESET;
48: TIMER [1]=START;
49: WAIT TIMER [1] > 0.1;
50: DO[112] = OFF;
51: LBL[30];
52: Message[Waiting for computer - D1];
53: IF DI[108]=OFF, JMP LBL[30];
54: R[24] = DI[101];
55: R[25] = DI[102];
56: Message[Read Digit 1];

57: DO[112] = ON;
58: TIMER [1]=RESET;
59: TIMER [1]=START;
60: WAIT TIMER [1] > 0.1;
61: DO[112] = OFF;
62: LBL[29];
63: Message[Waiting for computer - S1];
64: IF DI[108]=OFF, JMP LBL[29];
65: R[70]=DI[101];
66: R[71]=DI[102];
67: R[72]=DI[103];
68: R[73]=DI[104];
69: R[74]=DI[105];
70: R[75]=DI[106];
71: R[76]=DI[107];

72: !Process first incoming second value

73: !if segment 2 is 0, must be a 2
74: IF R[71] = 0, JMP LBL[41];
75: !segment 6 and 7, Must be a 4
76: IF R[75] = 0 AND R[76] = 1, JMP LBL[42];
77: !segment 5 and 7, Must be a 0
78: IF R[74] = 1 AND R[76] = 0, JMP LBL[43];
79: !segment 6 and 7, Must be a 7
80: IF R[75] = 1 AND R[76] = 0, JMP LBL[44];
81: !segment 6 and 7, Must be a 1
82: IF R[75] = 0 AND R[76] = 0, JMP LBL[45];
83: !segment 5 and 6, Must be a 3
84: IF R[74] = 0 AND R[75] = 1, JMP LBL[46];
85: !segment 1 and 4, Must be a 5
86: IF R[70] = 0 AND R[73] = 0, JMP LBL[47];
87: !segment 4, Must be a 9
88: IF R[73] = 0, JMP LBL[48];
89: !segment 1, Must be a 6
90: IF R[70] = 0, JMP LBL[49];
91: !If made it here, first digit must be 8
92: R[61]=80;
93: LBL[40];
94: Message[Read Second 1];

95: DO[112] = ON;
96: TIMER [1]=RESET;
97: TIMER [1]=START;
98: WAIT TIMER [1] > 0.1;
99: DO[112] = OFF;
100: LBL[28];
101: Message[Waiting for computer - S2];
102: IF DI[108]=OFF, JMP LBL[28];
103: R[71]=DI[101];
104: R[72]=DI[102];
105: R[73]=DI[103];
106: R[74]=DI[104];
107: R[75]=DI[105];
108: R[76]=DI[106];
109: R[77]=DI[107];

110: !Process second incoming second value

111: !if segment 2 is 0, must be a 2
112: IF R[71] = 0, JMP LBL[1];
113: !segment 6 and 7, Must be a 4
114: IF R[75] = 0 AND R[76] = 1, JMP LBL[2];
115: !segment 5 and 7, Must be a 0
116: IF R[74] = 1 AND R[76] = 0, JMP LBL[3];
117: !segment 6 and 7, Must be a 7
118: IF R[75] = 1 AND R[76] = 0, JMP LBL[4];
119: !segment 6 and 7, Must be a 1
120: IF R[75] = 0 AND R[76] = 0, JMP LBL[5];
121: !segment 5 and 6, Must be a 3
122: IF R[74] = 0 AND R[75] = 1, JMP LBL[6];
123: !segment 1 and 4, Must be a 5
124: IF R[70] = 0 AND R[73] = 0, JMP LBL[7];
125: !segment 4, Must be a 9
126: IF R[73] = 0, JMP LBL[8];
127: !segment 1, Must be a 6
128: IF R[70] = 0, JMP LBL[9];
129: !If made it here, first digit must be 8
130: R[61]=80;
131: !Jump to end of this routine
132: JMP LBL[10];

133: !Below here are LBLs to set the first digit

134: LBL[41];
135: !first digit must be a 2
136: R[61]=20;
137: JMP LBL[40];

138: LBL[42];
139: !first digit must be a 4
140: R[61]=40;
141: JMP LBL[40];

142: LBL[43];
143: !If here, first digit must be a 0
144: R[61]=00;
145: JMP LBL[40];

146: LBL[44];
147: !first digit must be a 7
148: R[61]=70;
149: JMP LBL[40];

150: LBL[45];
151: !first digit must be a 1
152: R[61]=10;
153: JMP LBL[40];

154: LBL[46];
155: !first digit must be a 3
156: R[61]=30;
157: JMP LBL[40];

158: LBL[47];
159: !first digit must be a 5
160: R[61]=50;
161: JMP LBL[40];

162: LBL[48];
163: !first digit must be a 9
164: R[61]=90;
165: JMP LBL[40];

166: LBL[49];
167: !first digit must be a 6
168: R[61]=60;
169: JMP LBL[40];



170: !Below here are LBLs to set the second digit

171: LBL[1];
172: !second digit must be a 2
173: R[61]=R[61]+2;
174: JMP LBL[10];

175: LBL[2];
176: !second digit must be a 4
177: R[61]=R[61]+4;
178: JMP LBL[10];

179: LBL[3];
180: !If here, second digit must be a 0
181: R[61]=R[61];
182: JMP LBL[10];

183: LBL[4];
184: !second digit must be a 7
185: R[61]=R[61]+7;
186: JMP LBL[10];

187: LBL[5];
188: !second digit must be a 1
189: R[61]=R[61]+1;
190: JMP LBL[10];

191: LBL[6];
192: !second digit must be a 3
193: R[61]=R[61]+3;
194: JMP LBL[10];

195: LBL[7];
196: !second digit must be a 5
197: R[61]=R[61]+5;
198: JMP LBL[10];

199: LBL[8];
200: !second digit must be a 9
201: R[61]=R[61]+9;
202: JMP LBL[10];

203: LBL[9];
204: !second digit must be a 6
205: R[61]=R[61]+6;
206: JMP LBL[10];

207: LBL[10];
208: !prepare for next loop
209: DO[112] = ON;
210: TIMER [1]=RESET;
211: TIMER [1]=START;
212: WAIT TIMER [1] > 0.1;
213: Message[Read Second 2];
214: Message[Sync Done];

/POS


/END
