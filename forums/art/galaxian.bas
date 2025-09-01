'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/19

Dim CM(15)=(RGB(0,0,0),RGB(0,0,255),RGB(0,64,0),RGB(0,64,255),RGB(0,128,0),RGB(0,128,255),RGB(0,255,0),RGB(0,255,255),RGB(255,0,0),RGB(255,0,255),RGB(255,64,0),RGB(255,64,255),RGB(255,128,0),RGB(255,128,255),RGB(255,255,0),RGB(255,255,255))
Text 160,0,"000000","CT",7,1
For R=0 To 2: Proc(16*R,238,6,1):Next
Proc(140,230,12,7):Proc(150,192,2,7):Proc(154,50,17,6)
For R=1 To 8
Proc(32*R,150,9,8):Proc(32*R,120,10,9):Proc(32*R,90,8,14)
Next
End

Sub Proc(X0,Y0,Q,C)
Color CM(C)
A=1:W=X0:U=W+2*Q
For X=1 To (Q+2)/2
 Y=Y0:I=1
 Do
   If I And A Then Box W,Y,2,2: Box U,Y,2,2
   Inc Y,-2:Inc I,I
 Loop Until I>A
 A=A*(Q+1-X)/X
 Inc W,2:Inc U,-2
Next
End Sub