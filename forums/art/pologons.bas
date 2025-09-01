'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/17

Dim CM(15)=(RGB(0,0,0),RGB(0,0,255),RGB(0,64,0),RGB(0,64,255),RGB(0,128,0),RGB(0,128,255),RGB(0,255,0),RGB(0,255,255),RGB(255,0,0),RGB(255,0,255),RGB(255,64,0),RGB(255,64,255),RGB(255,128,0),RGB(255,128,255),RGB(255,255,0),RGB(255,255,255))
CX=MM.HRes\2:CY=MM.VRes\2
Dim PX(6),PY(6)

R=128
D=2*R :S=R*Sqr(3)
K=512^2
For V=-20 To 20
 For H=-19 To 18
   CC=1+Abs(V*H/4)Mod 15
   I=0
   For L=-Pi To Pi Step Pi/3
     A=R+(1 And V)*R+H*D+Sin(L)*R
     B=V*S+Cos(L)*R
     C=K/(A*A+B*B)
     X=CX+B*C :Y=CY+A*C
     PX(I)=X:PY(I)=Y
     Inc I
   Next
   Line GRAPH PX(),PY(),CM(CC)
 Next
Next