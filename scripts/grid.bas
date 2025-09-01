CLS

col = 20
row = 20
cw = MM.HRES / col
ch = MM.VRES / row

For i = 1 To col - 1
x = Int(i * cw)
Line x, 0, x, MM.VRES, 1, RGB(white)
Next

For j = 1 To row - 1
y = Int(j * ch)
Line 0, y, MM.HRES, y, 1, RGB(white)
Next
