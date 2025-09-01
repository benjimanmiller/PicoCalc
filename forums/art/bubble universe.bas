'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/15

Dim CM(15)=(RGB(0,0,0),RGB(0,0,255),RGB(0,64,0),RGB(0,64,255),RGB(0,128,0),RGB(0,128,255),RGB(0,255,0),RGB(0,255,255),RGB(255,0,0),RGB(255,0,255),RGB(255,64,0),RGB(255,64,255),RGB(255,128,0),RGB(255,128,255),RGB(255,255,0),RGB(255,255,255))
CX=MM.HRes\2:CY=MM.VRes\2
SC=MM.VRes/4
r=(2*Pi)/25
x=0:v=0:t=0

FRAMEBUFFER LAYER
FRAMEBUFFER WRITE L
Do
 CLS
 col=1
 For i=50 To 80 Step 2
   For j=50 To 70 Step 1
     u=Sin(i+v)+Sin(r*i+x)
     v=Cos(i+v)+Cos(r*i+x)
     x=u+t
     Pixel CX+SC*u,CY+SC*v,CM(col)
   Next j
   Inc col: If col>15 Then col=1
 Next i
 Inc t,.025
 FRAMEBUFFER COPY L,N
Loop