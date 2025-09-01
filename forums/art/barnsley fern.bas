'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/7

Do
 Select Case Rnd
   Case Is < .01
       nX = 0
       nY = .16 * Y
   Case .01 To .08
       nX = .2 * X - .26 * Y
       nY = .23 * X + .22 * Y + 1.6
   Case .08 To .15
       nX = -.15 * X + .28 * Y
       nY = .26 * X + .24 * Y + .44
   Case Else
       nX = .85 * X + .04 * Y
       nY = -.04 * X + .85 * Y + 1.6
 End Select

 X = nX
 Y = nY

 pX= 320 * (X + 3) / 6
 pY = 320 - 320 * ((Y + 2) / 14)
 Pixel pX, pY

Loop Until Inkey$ <> ""