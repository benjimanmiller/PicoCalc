' https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/13

Option BASE 0

'Define color lookup table
Dim integer c(15)
c(0) =&H000000
c(1) =&H0000FF:c(2) =&H004000:c(3) =&H0040FF:c(4) =&H008000:c(5) =&H0080FF
c(6) =&H00FF00:c(7) =&H00FFFF:c(8) =&HFF0000:c(9) =&HFF00FF:c(10)=&HFF4000
c(11)=&HFF40FF:c(12)=&HFF8000:c(13)=&HFF80FF:c(14)=&HFFFF00:c(15)=&HFFFFFF

'Set up the Spirograph parameters
r1 = (MM.VRES/8)*3  '180 '90
r2 = (MM.VRES/8)    '60 '30
p =  (MM.VRES/8)*2  '120 '60

'Set up the rotation parameters
cx = MM.HRES/2  '320 or 160
cy = MM.VRES/2+1'240 or 120
angle = 0

Do
  If Rnd<0.5 Then CLS
  p = Rnd * (MM.VRES/4)
  angle_step = Rnd*3

  For i = 1 To 15
    colr = Int(Rnd*16)
    sa = Sin(angle)
    ca = Cos(angle)

    'Calculate the Spirograph path
    For t = 0 To 360 Step 1
       a = (r1-r2)/r2
       x = (r1-r2)*Cos(t) + p*Cos(a*t)
       y = (r1-r2)*Sin(t) - p*Sin(a*t)

       'Rotate the coordinates and draw a pixel
       xp = cx + Int(x*ca - y*sa)
       yp = cy + Int(x*sa + y*ca)
       Pixel xp, yp, c(colr)

   Next t
   'Update the angle and wait a bit before redrawing
   angle = angle + angle_step

  Next i

Loop Until Inkey$ <> ""