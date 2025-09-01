'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/11

RX=MM.HRES:RY=MM.VRES:CX=RX\2:CY=RX\2

Do
 rs=Int(Rnd(1)*3)
 If rs=1 Then
   fx=CX:fy=0
 ElseIf rs=2 Then
   fx=0:fy=RY
 Else
   fx=RX:fy=RY
 EndIf
 x=(x+fx)\2
 y=(y+fy)\2
 Pixel x,y
Loop Until Inkey$<>""