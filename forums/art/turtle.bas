'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066

Dim penx,peny,pen,pencolor,penheading As integer
Option angle degrees

CLS
TURTLE_reset
Do
 Print @(0,0) "Order: (1-19)"
 Input "0 to quit: "; dord
Loop Until dord >= 0 And dord < 20

Do
 If dord = 0 Then End

 dord = dord - 1
 dist = MM.HRES/2/(Sqr(2)^dord)

 CLS
 TURTLE_reset
 Text 220, 0,"Dragon Curve",,,,RGB(RED)
 Text 220,12,"Order:" + Str$(dord+1),,,,RGB(RED)
 TURTLE_pen_up   ' no line yet
 TURTLE_move MM.HRES * .25, MM.VRES * .55
 TURTLE_pen_down

 TURTLE_heading 90 - (dord Mod 8) * 45
 TURTLE_pen_colour RGB(red)
 DrawDragon(dord,1)

 TURTLE_heading 270 - (dord Mod 8) * 45
 TURTLE_pen_colour RGB(green)
 DrawDragon(dord,1)

 Do
   Text 220, 0,"Dragon Curve",,,,RGB(GREEN)
   Text 220,12,"Order:" + Str$(dord+1),,,,RGB(GREEN)
   Print @(0,0) "Order: (1-19)"
   Input "0 to quit: "; dord
 Loop Until dord >= 0 And dord < 20

Loop

Sub DrawDragon(ord, sig)
 If ord = 0 Then
   TURTLE_forward dist
 Else
   DrawDragon(ord-1,  1)
   TURTLE_turn_right 90 * sig
   DrawDragon(ord-1, -1)
 EndIf
End Sub

Sub TURTLE_reset
 penx=0
 peny=0
 pen=0
 penheading=0
 pencolor = RGB(black)
End Sub

Sub TURTLE_pen_up
 pen=0
End Sub

Sub TURTLE_pen_down
 pen=1
End Sub

Sub TURTLE_move(x,y)
 If pen=1 Then
   Line penx,peny,x,y,,pencolor
 EndIf
 penx = x
 peny = y
End Sub

Sub TURTLE_pen_colour(c)
 pencolor = c
End Sub

Sub TURTLE_heading(h)
 penheading = h
End Sub

Sub TURTLE_turn_right(a)
 Inc penheading,a
 If penheading>360.0 Then Inc penheading,-360.0
End Sub

Sub TURTLE_turn_left(a)
 Inc penheading,-a
 If penheading<0.0 Then Inc penheading,360.0
End Sub

Sub TURTLE_backward(l)
 Local x=penx-Sin(penheading)*l
 Local y=peny+Cos(penheading)*l
 If pen=1 Then Line penx,peny,x,y,1,pencolor
 penx=x
 peny=y
End Sub

Sub TURTLE_forward(l)
 Local x=penx+Sin(penheading)*l
 Local y=peny-Cos(penheading)*l
 If pen=1 Then Line penx,peny,x,y,1,pencolor
 penx=x
 peny=y
End Sub