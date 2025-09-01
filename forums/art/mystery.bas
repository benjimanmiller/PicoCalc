'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/5

Do
CLS
For G=-Rnd*42 To 400
tt=Rnd*99:  qq=Rnd*99
uu=Rnd*320: vv=Rnd*320
A=Rnd*3
R=90/(1+Rnd*100)
Q=1+3*(.5+Rnd/2)
aa=1+3*Rnd^2: M=1
If Rnd*9<4 Then Q=R:T=0:qq=0:A=0:M=Pi/3:
aa=1
C=(1+3*Rnd^2)*R*R
Color Rnd*&hFFFFFF
For i=0 To C
  S=-Log(Rnd):  T=i*M
  U=S*R*Sin(T): V=S*Q*Cos(T)
  T=S*A
  X=U*Cos(T)+V*Sin(T)
  Y=V*Cos(T)-U*Sin(T)
  D=(X*X+Y*Y)/(R*R+Q*Q)
  Z=99*((2.7^-D)+.1)
  Z=Z*(Rnd-.5)^3
  y0=Y*Cos(tt)+Z*Sin(tt)
  Z=Z*Cos(tt)-Y*Sin(tt)
  x0=uu+X*Cos(qq)+y0*Sin(qq)
  y0=vv-X*Sin(qq)+y0*Cos(qq)
  Pixel x0,y0
Next
Next
Loop