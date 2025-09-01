'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/2

' AART.BAS based on article on Hackaday and Twitter post by Martin Kleppe@aemkei
' https://hackaday.com/2021/04/13/alien-art-drawn-with-surprisingly-simple-math/
' https://twitter.com/aemkei/status/1378106731386040322
' https://twitter.com/redsteamengine/status/1378868421723623425
' https://bbcmic.ro/# post by baffinsquid / bbcmicrobot
'
' CMM2 port by Womble, 13 April 2021, v1.0
' PicoCalc port by adcockm, 18 June 2025
'

'Recommended Program Practice
Option EXPLICIT          ' Variables must be typed
Option DEFAULT NONE      ' Variables must be declared

CLS

Dim FLOAT X
Dim FLOAT Y
Dim FLOAT YSKIP = 25

'---------------------------------------

Print "Alien Art"
For Y=0 To (319-YSKIP)
  For X=0 To 319
     ' Pattern Variations
     ' IF (X XOR Y) MOD 3 = 0 THEN
     ' IF (X XOR Y) MOD 5 = 0 THEN
     If (X Xor Y) Mod 9 = 0 Then     'original pattern from twitter
     ' IF (X XOR Y) MOD 17 = 0 THEN
     ' IF (X XOR Y) MOD 33 = 0 THEN
        Pixel X,Y+YSKIP
     End If
  Next X
Next Y

Print "Pause until ESC is pressed"
Do : Loop Until Inkey$=Chr$(27)
CLS

'---------------------------------------

Print "Sierpinski triangles"
For Y=0 To (319-YSKIP)
  For X=0 To 319
     ' Pattern Variations
     If (X Or Y) Mod 7 = 0 Then
     ' IF (X OR Y) MOD 17 = 0 THEN
     ' IF (X OR Y) MOD 29 = 0 THEN
        Pixel X,Y+YSKIP
     End If
  Next X
Next Y

Print "Pause until ESC is pressed"
Do : Loop Until Inkey$=Chr$(27)
CLS

'---------------------------------------

Print "Circular Patterns"
For Y=0 To (319-YSKIP)
  For X=0 To 319
     ' Pattern Variations
     ' Enclose logical operations in ()
     ' IF ((X * Y) AND 24) = 0 THEN
     ' IF ((X * Y) AND 47) = 0 THEN
     If ((X * Y) And 64) = 0 Then
        Pixel X,Y+YSKIP
     End If
  Next X
Next Y

Print "Pause until ESC is pressed"
Do : Loop Until Inkey$=Chr$(27)
CLS

'---------------------------------------

Print "Steps"
For Y=0 To (319-YSKIP)
  For X=0 To 319
     ' Pattern Variations
     If (X Xor Y) < 77 = 0 Then
     ' IF (X XOR Y) < 120 = 0 THEN
     ' IF (X XOR Y) < 214 = 0 THEN
        Pixel X,Y+YSKIP
     End If
  Next X
Next Y

Print "Pause until ESC is pressed"
Do : Loop Until Inkey$=Chr$(27)
CLS

'---------------------------------------

Print "Beams"
For Y=1 To (319-YSKIP)
  For X=1 To 319
     ' Pattern Variations
     If (X Xor 2) Mod Y = 0 Then
     ' IF (X XOR 31) MOD Y = 0 THEN
     ' IF (X XOR 64) MOD Y = 0 THEN
        Pixel X-1,Y+YSKIP-1
     End If
  Next X
Next Y

Print "Pause until ESC is pressed"
Do : Loop Until Inkey$=Chr$(27)
CLS

'---------------------------------------

Print "Vanishing Point"
For Y=0 To 150
  For X=0 To 319
     If (((X-128) * 64) Mod (Y-151)) = 0 Then
        Pixel X,Y+YSKIP
     End If
  Next X
Next Y

Print "Pause until ESC is pressed"
Do : Loop Until Inkey$=Chr$(27)
CLS

'---------------------------------------

Print "Chequer"
For Y=0 To (319-YSKIP)
  For X=0 To 319
     ' Pattern Variations
     ' IF ((X XOR Y) AND 23) = 0 THEN
     If ((X Xor Y) And 32) = 0 Then
     ' IF ((X XOR Y) AND 72) = 0 THEN
        Pixel X,Y+YSKIP
     End If
  Next X
Next Y

Print "Pause until ESC is pressed"
Do : Loop Until Inkey$=Chr$(27)
CLS

'---------------------------------------

Print "Noise"
For Y=1 To (150-YSKIP)
  For X=1 To 319
     If ((X * Y) ^ 4) Mod 7 = 0 Then
        Pixel X-1,Y+YSKIP-1
     End If
  Next X
Next Y

Print "Pause until ESC is pressed"
Do : Loop Until Inkey$=Chr$(27)
CLS

'---------------------------------------

Print "Rotate"
For Y=1 To (319-YSKIP)
  For X=1 To 319
     If (X Mod Y) Mod 4 = 0 Then
        Pixel X-1,Y+YSKIP-1
     End If
  Next X
Next Y

Print "Pause until ESC is pressed"
Do : Loop Until Inkey$=Chr$(27)
CLS

'---------------------------------------

Print "Red Steam Engines Favourite"
For Y=1 To (319-YSKIP)
  For X=1 To 319
     If (((X * Y) And 243) And ((X Xor Y) And 243)) = 0 Then
        Pixel X-1,Y+YSKIP-1
     End If
  Next X
Next Y

Print "Pause until ESC is pressed"
Do : Loop Until Inkey$=Chr$(27)
CLS

'---------------------------------------

Print "Red Steam Engines No.2"
For Y=1 To (319-YSKIP)
  For X=1 To 319
     If (((X * Y) And 255) And ((X \ Y) And 255)) = 0 Then
        Pixel X-1,Y+YSKIP-1
     End If
  Next X
Next Y

Print "Pause until ESC is pressed"
Do : Loop Until Inkey$=Chr$(27)
CLS

'---------------------------------------

' (abs(x+y)^abs(x-y)+1)**37 % 7) * 255

Print "Foldsters Example from Python"
For Y=1 To (319-YSKIP)
  For X=1 To 319
     If ((Abs(X + Y) Xor Abs(X - Y) +1) ^ 37 Mod 7) * 255 = 0 Then
        Pixel X-1,Y+YSKIP-1
     End If
  Next X
Next Y

Print "Pause until ESC is pressed"
Do : Loop Until Inkey$=Chr$(27)
CLS

'---------------------------------------

' End Program