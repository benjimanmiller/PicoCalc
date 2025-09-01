'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/20

CLS
x0=MM.HRES/2: y0=MM.VRES/2
z =2

DO
 n=(INT(RND*7)+1)*7000+1000
 a=(INT(RND*18)+3)+10
 b=INT(RND*19)/10+0.1
 c=-(INT(RND*4)+1)*10
   FOR i=1 TO 3
     Clr=INT(RND*&hFFFF00)+&hFF
     Tracery
   NEXT i
 Clr=0
 Tracery
LOOP WHILE INKEY$=""

SUB Tracery
x=x0: y=y0
FOR j=1 TO n
 PIXEL x+63, y+42, Clr
 u=y-SGN(x-x0)*(ABS(b*(x-x0)-c))^1/z
 w=a-x+x0: x=u: y=w
NEXT j
END SUB

