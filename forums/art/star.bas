'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/11

RX=MM.HRES:RY=MM.VRES:CX=RX\2:CY=RY\2
RR1=150:RR2=-50:RR3=30:K=0.45:Q=0.1

For R1=RR1 To 187 Step 5
 For R2=RR2 To 240 Step 5
   Q=Rnd*2
   For R3=RR3 To 240 Step 5
     COL=Int(Rnd*&hFFFFFF)
     For T=0 To 600 Step Q
       X=Int((R1+R2)*Cos(R2*T/R1)-R3*Cos((R1+R2)/R1*T))
       Y=Int((R1+R2)*Sin(R2*T/R1)-R3*Sin((R1+R2)/R1*T))
       Pixel X*K+CX, Y*K+CY, COL
     Next T
   Next R3
   Pause 1000: CLS
 Next R2
Next R1
End