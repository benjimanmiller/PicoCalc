'Sudoku

'A Dope Sudoku clone
'By Ben Miller
'For PicoCalc

CLS

col = 9
row = 9
cw = MM.HRES / col
ch = MM.VRES / row

Grid:
For i = 0 To col
x = Int(i * cw)
If i = 3 Then
Line x, 0, x, MM.VRES, 3, RGB(white)
ElseIf i = 6 Then
Line x, 0, x, MM.VRES, 3, RGB(white)
Else
Line x, 0, x, MM.VRES, 1, RGB(white)
EndIf
Next

For j = 0 To row
y = Int(j * ch)
If j = 3 Then
Line 0, y, MM.HRES, y, 3, RGB(white)
ElseIf j = 6 Then
Line 0, y, MM.HRES, y, 3, RGB(white)
Else
Line 0, y, MM.HRES, y, 1, RGB(white)
EndIf
Next

GoTo Grid
