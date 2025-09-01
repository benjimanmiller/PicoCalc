'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/14

Dim CM(15)=(RGB(0,0,0),RGB(0,0,255),RGB(0,64,0),RGB(0,64,255),RGB(0,128,0),RGB(0,128,255),RGB(0,255,0),RGB(0,255,255),RGB(255,0,0),RGB(255,0,255),RGB(255,64,0),RGB(255,64,255),RGB(255,128,0),RGB(255,128,255),RGB(255,255,0),RGB(255,255,255))
W=0:E=Sqr(3):F=Sqr(7):Dim S(180)

For I=0 To 180: S(I)=Sin(Rad(2*I)): Next

For X=0 To 319
 For Y=0 To 240
   K=32:G=0

   For H=1 To 2
     A=(X+180)/K: B=Y/K: C=Int(A): D=Int(B)
     G=G+(FNS(C,D)+FNS(C+1,D)+FNS(C,D+1)+FNS(C+1,D+1))
     K=K/2
   Next

   G=Int((G+W+X/320)/3)*15
   If G=0 Then
     G=7
     If (X+Y)/416>W Then G=1
   EndIf

   If Y<20*(S((X*.4+20)Mod 180)+3) Then
     G=6
     If S(((X+3*Y)/4+10)Mod 180)<W Then G=2
   EndIf

   Color CM(G)
   Pixel X,240-Y

   W=W+E-Int(W+E)
 Next
Next

Function FNS(U,V)
 Q=(U*E+V*F)-Int(U*E+V*F)
 T=1-(A-U)*(A-U)-(B-V)*(B-V)
 If T<=0 Then FNS=0 Else FNS=(3-2*T)*T*T*Q
End Function