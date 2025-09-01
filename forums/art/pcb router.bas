'https://forum.clockworkpi.com/t/basic-programs-from-thebackshed-on-picocalc/18066/2

DefineFont #9
08300C08
00000000 00000000 00000000 667E3C18 C3C3C3C3 183C7E66
18181818 18181818 18181818 00000000 00FFFF00 00000000
18181818 00E0F038 00000000 18181818 00070F1C 00000000
00000000 38F0E000 18181818 00000000 1C0F0700 18181818
End DefineFont
Dim upSet(7)=(&hCB,&hFD,&h36,&hC3,&hCB,&
hCB,&h36,&h36)
Dim lfSet(7)=(&hA7,&hFD,&hA7,&h5A,&hA7,&
h5A,&hA7,&h5A)
Dim upEstr(79)

Font 9: CLS
Do
 lfE=0
 For i=0 To 79
   upE=upEstr(i)
   xxSet=upSet(upE) And lfSet(lfE)
   Do
     tmp=Int(Rnd*8)
   Loop Until xxSet And (1<<tmp)
   lfE=tmp
   upEstr(i)=tmp
   Color RGB(Green)
   If tmp=1 Then Colour RGB(Yellow)
   Print Chr$(tmp+48);
   Pause 1
 Next
Loop