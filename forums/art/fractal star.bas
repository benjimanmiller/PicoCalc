' https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/8

Do
 CLS
 A=2*(.5-Rnd): B=2*(.5-Rnd)
 C=2*(.5-Rnd): D=2*(.5-Rnd)
 X=Rnd: Y=Rnd
Do
 SX=Pi*2*X: SY=Pi*2*Y
 SX4=Pi*4*X: SY4=Pi*4*Y
 X1=A*Sin(SX)+B*Sin(SX)*Cos(SY)+C*Sin(SX4)+D*Sin(Pi*6*X)*Cos(SY4)
 Y1=A*Sin(SY)+B*Sin(SY)*Cos(SX)+C*Sin(SY4)+D*Sin(Pi*6*Y)*Cos(SX4)
 NX=Int(100*X1+160): NY=Int(100*Y1+160)
 Pixel NX,NY
 X=X1: Y=Y1
Loop Until Inkey$<>""
Loop