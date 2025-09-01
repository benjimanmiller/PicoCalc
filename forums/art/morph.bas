'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/17

Dim CM(15)=(RGB(0,0,0),RGB(0,0,255),RGB(0,64,0),RGB(0,64,255),RGB(0,128,0),RGB(0,128,255),RGB(0,255,0),RGB(0,255,255),RGB(255,0,0),RGB(255,0,255),RGB(255,64,0),RGB(255,64,255),RGB(255,128,0),RGB(255,128,255),RGB(255,255,0),RGB(255,255,255))
W=MM.HRes:H=MM.VRes
C=-0.77:D=0.27015
For X%=0 To W Step 1
 For Y%=0 To H Step 1
   U=3*(X%-W/2)/W
   V=2*(Y%-H/2)/H
   I%=16
   Do
     I%=I%-1
     A=U*U:B=V*V
     T=A-B+C
     V=2*U*V+D
     U=T
   Loop Until A+B>2.2 Or I%<1
   Colour CM(I%)
   Pixel X%,Y%
   Pixel W-X%,H-Y%
 Next
Next