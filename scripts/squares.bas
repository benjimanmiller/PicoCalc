'Squares

'Just draws squares on to the screen
'By Ben Miller
'For PicoCalc

CLS

Do
Randomize Timer

w = Int(Rnd * (MM.HRES \ 2))
h = Int(Rnd * (MM.VRES \ 2))
x = Int(Rnd * (MM.HRES - w))
y = Int(Rnd * (MM.VRES - h))
x1 = x + w
y1 = y + h
lw = 0
r = Int(Rnd * 255)
g = Int(Rnd * 255)
b = Int(Rnd * 255)
lc = RGB(r, g, b)
fc = RGB(r, g, b)

Box x, y, x1, y1, lw, lc, fc
Pause 300
Loop
