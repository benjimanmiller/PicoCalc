'Autorun

'My startup autorun script
'By Ben Miller
'For PicoCalc

CLS

Print "##############################"
Print "#      Cold's PicoCalc       #"
Print "#    Computing since 2025    #"
Print "##############################"
Memory
ds = MM.Info(disk size)\(1024)
fs = MM.Info(free space)\(1024)
per = (fs/ds)*100
speed = Val(MM.Info(cpuspeed))\1000000
Print ""
Print "CPU Speed: ";
Print speed;
Print "MHz"
Print ""
Print "Current Path: ";
Print MM.Info(path)
Print ""
Print "Disk Space: ";
Print Fix(ds);
Print " KBs"
Print "Remaining Space: ";
Print Fix(fs);
Print " KBs"
Print "Percentage Free: ";
Print Int(per);
Print "%"
Print ""
Print "What the fuck do you want?"

For i = 1 To 6
t = Rnd * 7000
Play tone t, t, 200
Pause 200
Next
