'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/12

RX=MM.HRES:RY=MM.VRES:CX=RX\2:CY=RY\2
R1=111:R2=16:R3=131:K=CY/270

For Q=1 To 0 Step -0.01
 CLS
 For T=0 To 600 Step Q
   X=Int((R1+R2)*Cos(R2*T/R1)-R3*Cos((R1+R2)/R1*T))
   Y=Int((R1+R2)*Sin(R2*T/R1)-R3*Sin((R1+R2)/R1*T))
   Pixel X*K+CX, Y*K+CY
 Next T
Next Q
End