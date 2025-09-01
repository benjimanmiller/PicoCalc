'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/18

Dim CM(15)=(RGB(0,0,0),RGB(0,0,255),RGB(0,64,0),RGB(0,64,255),RGB(0,128,0),RGB(0,128,255),RGB(0,255,0),RGB(0,255,255),RGB(255,0,0),RGB(255,0,255),RGB(255,64,0),RGB(255,64,255),RGB(255,128,0),RGB(255,128,255),RGB(255,255,0),RGB(255,255,255))
Do :CLS
 For K=1 To 200
   Q=Int(Rnd*5+3): If Q=7 Then Q=30
   A=Rad(360/Q): S=Sin(A): C=Cos(A)
   X=Rnd*MM.HRes: Y=Rnd*MM.VRes
   R=Rnd*(Sqr(Y+X)/20)*20+16
   For L=-R/5 To R/5
     N=(Abs(L)<R/8)*Int(Rnd*16)
     U=R+L: V=U
     X1=X+U: Y1=Y+V
     For I=1 To Q
       T=V*C-U*S: U=V*S+U*C: V=T
       X2=X+U: Y2=Y+V
       Line X1,Y1,X2,Y2,,CM(N)
       X1=X2: Y1=Y2
     Next I
   Next
 Next
 Pause 1000
Loop