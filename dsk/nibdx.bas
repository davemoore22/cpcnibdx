10 MODE 1
20 BORDER 0
30 INK 0,0
40 INK 1,26
50 INK 2, 24
60 PEN 1
70 LOCATE 1, 5
80 PRINT "NIBBLER DX by Dave Moore"
90 LOCATE 1, 6
100 PRINT "(DEMO VERSION 0.2)"
110 PEN 2
120 LOCATE 1, 8
130 PRINT "Full Version coming in 2024, with:"
140 LOCATE 1, 11
150 PRINT "* 10+ Fiendish Levels"
160 LOCATE 1, 12
170 PRINT "* Sound Effects and Music"
180 LOCATE 1, 13
190 PRINT "* Optional Arcade Mode Gameplay"
200 LOCATE 1, 14
210 PRINT "* Enhanced Graphics and Animations"
220 PEN 1
230 LOCATE 1, 25
240 PRINT "PRESS ANY KEY TO CONTINUE..."
250 CALL &BB18
260 MODE 0
270 BORDER 0
280 INK 0,0
290 INK 1,26
300 INK 2,0
310 INK 3,12
320 INK 4,24
330 INK 5,13
340 INK 6,4
350 INK 7,15
360 INK 8,3
370 INK 9,16
380 INK 10,25
390 INK 11,6
400 INK 12,17
410 INK 13,8
420 INK 14,1
430 INK 15,14
440 LOAD "NIBDX.SCR", &C000
450 RUN "NIBDX.BIN"