'Input Finder

'A simple script to output
'the current input as ASC.
'By Ben Miller
'For PicoCalc

CLS

Do
k$ = Inkey$
If k$ <> "" Then
Print k$ +": ";
Print Asc(k$)
EndIf
Loop
