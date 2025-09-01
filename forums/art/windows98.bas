'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/6

FRAMEBUFFER CREATE
FRAMEBUFFER WRITE F
Dim COL(5)=(RGB(Black),RGB(Red),RGB(Green),RGB(Blue),RGB(Cyan),RGB(Yellow))

Do
 CLS RGB(Cyan)
 For R=0 To 6
   For C=0 To 12
     S=C*1.25+2.5: If C>6 Then S=16
     V=FNA(C+Q)
     X=80+C*12
     Y=40+R*(16+(C<7)*1)+V
     IC=(1+2*(R>3)+(C>9)*((R>3)+1))*(R Mod 3>0)*(C<6 Or C Mod 3>0)
     Clr=COL(IC)
     Z=S/2.5: If C>6 Then Z=V-FNA(C+Q+1)
     X0=X:Y0=Y
     X1=X+S*.8:Y1=Y-Z
     X2=X:Y2=Y+S
     X3=X+S*.8:Y3=Y+S-Z
     Triangle X0,Y0,X1,Y1,X2,Y2,Clr,Clr
     Triangle X1,Y1,X2,Y2,X3,Y3,Clr,Clr
   Next
 Next
 Text 160,200,"Windows 98","CM",5,1,0,RGB(Cyan)
 FRAMEBUFFER COPY F,N
 Pause 5
 Inc Q,0.5
Loop

Function FNA(A)
 FNA=Sin(A/2.23)*12
End Function
