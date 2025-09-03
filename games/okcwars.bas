'OKC WARS

'A Dope Wars clone
'By Ben Miller
'For PicoCalc

CLS

'Drugs Array
Dim drugs(9,4)
Dim drugslist(9) As String = ("Weed","Cocaine","LSD","Meth","Xanax","Heroin","Tranq","Fentanyl","Extacy","Shrooms")

'weed
drugs(0,0) = 0    'quant
drugs(0,1) = 0    'paid
drugs(0,2) = 150   'start
drugs(0,3) = 350  'end
drugs(0,4) = 0    'day price

'cocaine
drugs(1,0) = 0    'quant
drugs(1,1) = 0    'paid
drugs(1,2) = 9000   'start
drugs(1,3) = 20000 'end
drugs(1,4) = 0    'day price

'lsd
drugs(2,0) = 0    'quant
drugs(2,1) = 0    'paid
drugs(2,2) = 400   'start
drugs(2,3) = 750  'end
drugs(2,4) = 0    'day price

'meth
drugs(3,0) = 0    'quant
drugs(3,1) = 0    'paid
drugs(3,2) = 50   'start
drugs(3,3) = 250  'end
drugs(3,4) = 0    'day price

'xanax
drugs(4,0) = 0    'quant
drugs(4,1) = 0    'paid
drugs(4,2) = 5   'start
drugs(4,3) = 55  'end
drugs(4,4) = 0    'day price

'heroin
drugs(5,0) = 0    'quant
drugs(5,1) = 0    'paid
drugs(5,2) = 3000   'start
drugs(5,3) = 7000  'end
drugs(5,4) = 0    'day price

'tranq
drugs(6,0) = 0    'quant
drugs(6,1) = 0    'paid
drugs(6,2) = 5   'start
drugs(6,3) = 20  'end
drugs(6,4) = 0    'day price

'fentanyl
drugs(7,0) = 0    'quant
drugs(7,1) = 0    'paid
drugs(7,2) = 55   'start
drugs(7,3) = 150 'end
drugs(7,4) = 0    'day price

'extacy
drugs(8,0) = 0    'quant
drugs(8,1) = 0    'paid
drugs(8,2) = 50   'start
drugs(8,3) = 250  'end
drugs(8,4) = 0    'day price

'shrooms
drugs(9,0) = 0    'quant
drugs(9,1) = 0    'paid
drugs(9,2) = 200   'start
drugs(9,3) = 450  'end
drugs(9,4) = 0    'day price

'Player Stats
lifetotal = 100
usedinv = 0
totalinv = 100
loan = 2200
cash = 2000
day = 1
duration$ = ""
durval = 0
name$ = ""
selection = 2
loanvig = 17
location$ = "South Side"
cart = 0
cartq = 0
guns = 0
bankbalance = 0
interest = 5

'locals
Dim locals(6) As string = ("Edmond", "The Village", "Paseo", "Nichols Hills", "Brick Town", "South Side", "Plaza")

'Randomizer
Dim nums(10)

'Get Players Name
GUI Setup 1
GUI frame 1, "OKC WARS - Name", 5, 5, 310, 310, RGB(red)
GUI textbox 2, 60, 150, 200, 25, RGB(red), RGB(black)
GUI caption 3, "Name?", 155, 120, C, RGB(red), RGB(black)
GUI button 4, "OK", 127, 283, 55, 25, RGB(black), RGB(red)

'Get Game Duration
GUI Setup 2
GUI frame 5, "OKC WARS - Game Length", 5, 5, 310, 310, RGB(red)
GUI textbox 6, 60, 150, 200, 25, RGB(red), RGB(black)
GUI caption 7, "Number of Days?", 155, 120, C, RGB(red), RGB(black)
GUI button 8, "OK", 127, 283, 55, 25, RGB(black), RGB(red)

'Main Screen
GUI Setup 3
GUI frame 9, "", 5, 5, 310, 310, RGB(red)
'Life and Inv
GUI caption 10, "", 14, 12, L, RGB(red), RGB(black)
'Loan and Cash
GUI caption 11, "", 14, 24, L, RGB(red), RGB(black)
GUI button 12, "Move", 14, 283, 45, 25, RGB(black), RGB(red)
GUI button 13, "Buy/Sell", 64, 283, 75, 25, RGB(black), RGB(red)
GUI button 14, "Inventory", 144, 283, 80, 25, RGB(black), RGB(red)
GUI button 15, "Bank/Loan", 229, 283, 80, 25, RGB(black), RGB(red)

spx = 210
capx = 180

GUI spinbox 20, spx, 60, 75, 20, RGB(red), RGB(black), 1, 0, 1000000
GUI caption 30, "1", capx, 64, R, RGB(red), RGB(black)
GUI spinbox 21, spx, 90, 75, 20, RGB(red), RGB(black), 1, 0, 1000000
GUI caption 31, "2", capx, 94, R, RGB(red), RGB(black)
GUI spinbox 22, spx, 120, 75, 20, RGB(red), RGB(black), 1, 0, 1000000
GUI caption 32, "3", capx, 124, R,  RGB(red), RGB(black)
GUI spinbox 23, spx, 150, 75, 20, RGB(red), RGB(black), 1, 0, 1000000
GUI caption 33, "4", capx, 154, R,  RGB(red), RGB(black)
GUI spinbox 24, spx, 180, 75, 20, RGB(red), RGB(black), 1, 0, 1000000
GUI caption 34, "5", capx, 184, R,  RGB(red), RGB(black)
GUI spinbox 25, spx, 210, 75, 20, RGB(red), RGB(black), 1, 0, 1000000
GUI caption 35, "6", capx, 214, R,  RGB(red), RGB(black)
GUI spinbox 26, spx, 240, 75, 20, RGB(red), RGB(black), 1, 0, 1000000
GUI caption 36, "7", capx, 244, R,  RGB(red), RGB(black)

'Move
GUI Setup 4
GUI frame 37, "OKC WARS - Move", 5 , 5, 310, 310, RGB(red)
GUI button 38, "Edmond", 105, 30, 120,25, RGB(black), RGB(red)
GUI button 39, "The Village", 105, 70,120, 25, RGB(black), RGB(red)
GUI button 40, "Paseo", 105, 110, 120, 25, RGB(black), RGB(red)
GUI button 41, "Nichols Hills", 105, 150, 120, 25, RGB(black), RGB(red)
GUI button 42, "Brick Town", 105, 190, 120, 25, RGB(black), RGB(red)
GUI button 43, "South Side", 105, 230,120, 25, RGB(black), RGB(red)
GUI button 44, "Plaza", 105, 270, 120,25, RGB(black), RGB(red)

'Inventory
GUI Setup 5
GUI frame 45, "OKC WARS - Inventory",5 , 5, 310, 310, RGB(red)
GUI caption 46, "", 155, 50, CM, RGB(red), RGB(black)
GUI caption 47, "", 155, 70, CM, RGB(red), RGB(black)
GUI caption 48, "", 155, 90, CM, RGB(red), RGB(black)
GUI caption 49, "", 155, 110, CM, RGB(red), RGB(black)
GUI caption 50, "", 155, 130, CM, RGB(red), RGB(black)
GUI caption 51, "", 155, 150, CM, RGB(red), RGB(black)
GUI caption 52, "", 155, 170, CM, RGB(red), RGB(black)
GUI caption 53, "", 155, 190, CM, RGB(red), RGB(black)
GUI caption 54, "", 155, 210, CM, RGB(red), RGB(black)
GUI caption 55, "", 155, 230, CM, RGB(red), RGB(black)
GUI caption 56, "", 155, 250, CM, RGB(red), RGB(black)
GUI button 57, "OK", 125, 283, 60, 25,RGB(black), RGB(red)

'Special Event
GUI Setup 6
GUI frame 58, "OKC WARS - Event!", 5 , 5, 310, 310, RGB(red)
GUI caption 59, "", 155, 250, CM, RGB(red), RGB(black)
GUI caption 60, "", 155, 250, CM, RGB(red), RGB(black)
GUI button 61, "Yes", 90, 283, 60, 25,RGB(black), RGB(red)
GUI button 62, "No", 160, 283, 60, 25, RGB(black), RGB(red)

'Bank
GUI Setup 7
GUI frame 63, "OKC WARS - Bank", 5, 5, 310, 310, RGB(red)
GUI caption 64, "1", 155, 90, CM, RGB(red), RGB(black)
GUI caption 65, "2", 155, 120, CM, RGB(red), RGB(black)
GUI button 66, "Withdraw/Deposit", 24, 283, 150, 25, RGB(black), RGB(red)
GUI button 67, "Leave", 204, 283, 70,25, RGB(black), RGB(red)
GUI spinbox 69, 80, 200, 150, 20, RGB(red), RGB(black), 10,  -100000000000, 100000000000

'Loan Shark
GUI Setup 8
GUI frame 70, "OKC WARS - Loan Shark", 5, 5, 310, 310, RGB(red)
GUI caption 71, "", 155, 90, CM, RGB(red), RGB(black)
GUI caption 72, "", 155, 120, CM, RGB(red), RGB(black)
GUI button 73, "Repay", 90, 283, 60, 25,RGB(black), RGB(red)
GUI button 74, "Leave", 160, 283, 55,25, RGB(black), RGB(red)
GUI spinbox 75, 80, 200, 150, 20, RGB(red), RGB(black), 10, -100000000000, 100000000000

'End
GUI Setup 9
GUI frame 76, "OKC WARS - The End", 5, 5, 310, 310, RGB(red)
GUI caption 77, "", 155, 90, CM, RGB(red), RGB(black)
GUI caption 78, "", 155, 120, CM, RGB(red), RGB(black)
GUI button 79, "Restart", 160, 283, 55,25, RGB(black), RGB(red)

'Screen Loops

'Name Screen
NameScreen:
Do
k$ = Inkey$

'Move Selection
If k$ <> "" Then

'up down
If Asc(k$) = 128 Or Asc(k$) = 129 Then
Play tone 800, 800, 200
If selection = 2 Then
selection = 4
GUI Bcolour RGB(orange), 4
ElseIf selection = 4 Then
selection = 2
GUI Bcolour RGB(red), 4
EndIf 'selection
EndIf 'up or dowm

'enter
If Asc(k$) = 13 Then
Play tone 1000, 1000, 200
If selection = 4 Then
GUI Page 2
GoTo DurScreen
ElseIf selection = 2 Then
GUI Page 2
GoTo DurScreen
EndIf 'selection
EndIf 'enter

'backspace
If Asc(k$) = 8 Then
Play tone 1300, 1300, 200
If selection = 2 Then
name$ = MID$(name$, 1, LEN(name$) - 1)
CtrlVal(2) = name$
EndIf 'selection
EndIf 'backspace


'name input
If Asc(k$) <> 128 And Asc(k$) <> 129 And Asc(k$) <> 8 Then
If selection = 2 Then
name$ = name$ + k$
CtrlVal(2) = name$
EndIf 'selection
EndIf 'Check

EndIf 'if keypress
Loop

'Duration
Durscreen:
selection = 6
Do
k$ = Inkey$

'Move Selection
If k$ <> "" Then

'up down
If Asc(k$) = 128 Or Asc(k$) = 129 Then
Play tone 800, 800, 200
If selection = 6 Then
selection = 8
GUI Bcolour RGB(orange), 8
ElseIf selection = 8 Then
selection = 6
GUI Bcolour RGB(red), 8
EndIf 'selection
EndIf 'up dowm

'enter
If Asc(k$) = 13 Then
Play tone 1000, 1000, 200
If selection = 8 Then
GUI Page 3
GoTo MainScreen
ElseIf selection = 6 Then
GUI Page 3
GoTo MainScreen
EndIf 'selection
EndIf 'enter

'backspace
If Asc(k$) = 8 Then
Play tone 1300, 1300, 200
If selection = 6 Then
duration$ = MID$(duration$, 1, LEN(duration$ - 1))
durval = Val(duration$)
CtrlVal(6) = STR$(durval)
EndIf 'selection
EndIf 'backspace

'duration input
If Asc(k$) <> 128 And Asc(k$) <> 129 And Asc(k$) <> 8 Then
If selection = 6 Then
GUI Bcolour RGB(red), 8
duration$ = duration$ + k$
durval = Val(duration$)
CtrlVal(6) = STR$(durval)
EndIf 'selection
EndIf 'input

EndIf 'if keypress
Loop

'Mainscreen
Mainscreen:

If location$ = "Edmond" Or location$  = "Nichols Hills" Or location$ = "South Side" Then
GUI enable 15
ElseIf location$ <> "" Then
GUI disable 15
EndIf

'Randomizer
For i = 0 To 9
nums(i) = i
Next

For i = 9 To 1 Step - 1
j = Int(Rnd * (i + 1))
temp = nums(i)
nums(i) = nums(j)
nums(j) = temp
Next

li = 30
For i = 0 To 6
index = nums(i)
min = drugs(index, 2)
max = drugs(index, 3)
price = Int(Rnd * (max - min + 1)) + min
CtrlVal(li) = drugslist(index) + " - $" + Str$(price)
drugs(index, 4) = Int(price)
li = li + 1
Next

'none random entry point
MSNonRandom:

If day = Val(duration$) Then
GoTo EndScreen
EndIf

For i = 20 To 26
CtrlVal(i) = (drugs(nums(i - 20), 0))
Next

usedinv = 0
For i = 0 To 9
usedinv = usedinv + drugs(i, 0)
Next
cartq = 0

'Initial Values into GUI
CtrlVal(9) = "OKC WARS - Day:" + Str$(day) + "/" + Str$(durval) + " - " + location$

CtrlVal(10) = "Life: " + Str$(lifetotal) + " Inventory: " + Str$(usedinv) + "/" + Str$(totalinv)
CtrlVal(11) = "Loan: $" + Str$(Int(loan)) + " Cash: $"+ Str$(Int(cash))

'set selection
selection = 12
GUI Bcolour RGB(orange), selection

Do
k$ = Inkey$

'Move Selection
If k$ <> "" Then

'left
If Asc(k$) = 130 Then
If selection > 12 And selection < 16 Then
Play tone 500, 500, 200
GUI Bcolour RGB(red), selection
selection = selection - 1
GUI Bcolour RGB(orange), selection
ElseIf selection >= 20 Then

index = nums(selection - 20)
If CtrlVal(selection) > 0 Then
CtrlVal(selection) = CtrlVal(selection) - 1

cartq = cartq - 1
cart = cart - drugs(index, 4)

CtrlVal(10) = "Life: " + Str$(lifetotal) + " Inventory: " + Str$(usedinv) + "/" + Str$(totalinv) + " (" + Str$(cartq) + ")"
CtrlVal(11) = "Loan: $" + Str$(Int(loan)) + " Cash: $" + Str$(Int(cash)) + " ($" +  Str$(cart * -1) + ")"
EndIf 'cart

EndIf 'check
EndIf 'left

'right
If Asc(k$) = 131 Then
If selection < 15 Then
Play tone 700, 700, 200
GUI Bcolour RGB(red), selection
selection = selection + 1
GUI Bcolour RGB(orange), selection
ElseIf selection >= 20 Then
index = nums(selection - 20)

If (cart + drugs(index, 4)) <= cash Then
cartq = cartq + 1
If (cartq + usedinv) <= totalinv Then
cart = cart + drugs(index, 4)
CtrlVal(selection) = CtrlVal(selection) + 1

CtrlVal(10) = "Life: " + Str$(lifetotal) + " Inventory: " + Str$(usedinv) + "/" + Str$(totalinv) + " (" + Str$(cartq) + ")"
CtrlVal(11) = "Loan: $" + Str$(Int(loan)) + " Cash: $" + Str$(Int(cash)) + " ($" + Str$(cart * -1) + ")"
EndIf 'cartq
EndIf 'cart

EndIf 'check
EndIf 'right

'up
If Asc(k$) = 128 Then
Play tone 800, 800, 200
If selection >= 12 And selection <= 15 Then
GUI Bcolour RGB(red), selection
selection = 26
GUI Bcolour RGB(orange), selection
GUI Fcolour RGB(black), selection
ElseIf selection >= 21 Then
GUI Bcolour RGB(black), selection
GUI Fcolour RGB(red), selection
selection = selection - 1
GUI Bcolour RGB(orange), selection
GUI Fcolour RGB(black), selection

EndIf 'check
EndIf 'up

'down
If Asc(k$) = 129 Then
Play tone 800, 800, 200
If selection = 26 Then
GUI Bcolour RGB(black), selection
GUI Fcolour RGB(red), selection
selection = 13
GUI Bcolour RGB(orange), selection
ElseIf selection < 26 And selection >= 20  Then
GUI Bcolour RGB(black), selection
GUI Fcolour RGB(red), selection
selection = selection + 1
GUI Bcolour RGB(orange), selection
GUI Fcolour RGB(black), selection

EndIf 'check
EndIf 'down

'enter
If Asc(k$) = 13 Then
Play tone 1000, 1000, 200

'move
If selection = 12 Then
GUI Bcolour RGB(red), selection
GUI Page 4
GoTo MoveScreen

'buy sell
ElseIf selection = 13 Then

For i = 0 To 6

If CtrlVal(i + 20) <> 0 Then
avg = ((drugs(nums(i), 0) * drugs(nums(i), 1)) + (CtrlVal(i + 20)) *  drugs(nums(i), 4)) / (CtrlVal(i + 20) + (drugs(nums(i), 0)))
drugs(nums(i), 1) = avg
EndIf

drugs(nums(i), 0) = CtrlVal(i + 20)
Next

usedinv = 0
For i = 0 To 9
usedinv = usedinv + drugs(i, 0)
Next

cartq = 0
cash = cash - cart
CtrlVal(10) = "Life: " + Str$(lifetotal) + " Inventory: " + Str$(usedinv) + "/" + Str$(totalinv)
CtrlVal(11) = "Loan: $" + Str$(Int(loan)) + " Cash: $" + Str$(Int(cash))
cart = 0

'inventory
ElseIf selection = 14 Then
GUI Bcolour RGB(red), selection
GUI Page 5
GoTo InvScreen

'bank and loan
ElseIf selection = 15 Then
If location$ = "Edmond" Or location$  = "Nichols Hills" Then
GUI Bcolour RGB(red), selection
GUI Page 7
GoTo BankScreen
ElseIf location$ = "South Side" Then
GUI Bcolour RGB(red), selection
GUI Page 8
GoTo LoanScreen
ElseIf location$ <> "" Then

EndIf 'selection

EndIf 'check
EndIf 'enter

EndIf 'keypress
Loop

'MoveScreen
MoveScreen:

selection = 43
GUI Bcolour RGB(orange), selection
CtrlVal(37) = "OKC WARS - Move - " + location$

Do
k$ = Inkey$
If k$ <> "" Then

'up
If Asc(k$) = 128 Then
Play tone 800, 800, 200
If selection > 38 And selection <= 44 Then
GUI Bcolour RGB(red), selection
GUI Fcolour RGB(black), selection
selection = selection - 1
GUI Bcolour RGB(orange), selection
GUI Fcolour RGB(black), selection

EndIf 'check
EndIf 'up

'down
If Asc(k$) = 129 Then
Play tone 600, 600, 200
If selection >= 38 And selection < 44 Then
GUI Bcolour RGB(red), selection
GUI Fcolour RGB(black), selection
selection = selection + 1
GUI Bcolour RGB(orange), selection
GUI Fcolour RGB(black), selection

EndIf 'check
EndIf 'down

'enter
If Asc(k$) = 13 Then
Play tone 1000, 1000, 200
i = selection - 38
If location$ <> locals(i) Then
GUI Bcolour RGB(red), selection
location$ = locals(i)
day = day + 1
loan = Int(loan + (loan * loanvig / 100))
cart = 0
If bankbalance > 0 Then
bankbalance = Int(bankbalance + (bankbalance * interest / 100))
EndIf

GUI Page 3
GoTo MainScreen
EndIf 'local
EndIf 'enter

EndIf 'input
Loop

'InvScreen
InvScreen:

selection = 57
GUI Bcolour RGB(orange), selection

For i = 0 To 9
CtrlVal(i + 46) = drugslist(i) + " - Avg $" + Str$(drugs(i, 1)) +": " + Str$(drugs(i, 0))
Next

CtrlVal(56) = "Guns: " + Str$(guns)

Do
k$ = Inkey$
If k$ <> "" Then
If Asc(k$) = 13 Then
Play tone 1000, 1000, 200
GUI Bcolour RGB(red), selection
GUI Page 3
GoTo MSNonRandom
EndIf 'enter
EndIf 'input
Loop

'event
EventScreen:

Do
k$ = Inkey$
If k$ <> "" Then

EndIf 'input
Loop


'bank
BankScreen:

selection = 66
Play tone 800, 800, 200
GUI Bcolour RGB(orange), selection

CtrlVal(64) = "Current Balance: $" + Str$(bankbalance)
CtrlVal(65) = "Cash: $" + Str$(cash)

Do
k$ = Inkey$
If k$ <> "" Then

' left
If Asc(k$) = 130 Then
If selection > 66 And selection <= 67 Then
Play tone 700, 700, 200
GUI Bcolour RGB(red), selection
selection = selection - 1
GUI Bcolour RGB(orange), selection

ElseIf selection = 69 Then
If -CtrlVal(69) < bankbalance Then
CtrlVal(69) = CtrlVal(69) - 10
CtrlVal(64) = "Current Balance: $" + Str$(bankbalance) + " ($" + Str$(CtrlVal(69)) + ")"
CtrlVal(65) = "Cash: $" + Str$(cash) + " ($" + Str$(CtrlVal(69) * -1) + ")"

EndIf 'check

EndIf ' selection
EndIf ' left

'right
If Asc(k$) = 131 Then
If selection < 67 And selection >= 66 Then
Play tone 700, 700, 200
GUI Bcolour RGB(red), selection
selection = selection + 1
GUI Bcolour RGB(orange), selection

ElseIf selection = 69 Then
If CtrlVal(69) < cash Then
CtrlVal(69) = CtrlVal(69) + 10
CtrlVal(64) = "Current Balance: $" + Str$(bankbalance) + " ($" + Str$(CtrlVal(69)) + ")"
CtrlVal(65) = "Cash: $" + Str$(cash) + " ($" + Str$(CtrlVal(69) * -1 ) + ")"
EndIf 'check

EndIf ' selection
EndIf 'right

'up
If Asc(k$) = 128 Then
If selection >= 66 And selection <= 67 Then
Play tone 600, 600, 200
GUI Bcolour RGB(red), selection
selection = 69
GUI Bcolour RGB(orange), selection
GUI Fcolour RGB(black), selection

EndIf ' selection
EndIf 'up

'down
If Asc(k$) = 129 Then
If selection = 69 Then
Play tone 600, 600, 200
GUI Bcolour RGB(red), selection
selection = 66
GUI Bcolour RGB(orange), selection

EndIf ' selection
EndIf ' down

' enter
If Asc(k$) = 13 Then

'deposit withdrawl
If selection = 66 Then
Play tone 1000, 1000, 200

bankbalance = bankbalance + CtrlVal(69)
cash = cash - CtrlVal(69)
CtrlVal(69) = 0
CtrlVal(64) = "Current Balance: $" + Str$(bankbalance)
CtrlVal(65) = "Cash: $" + Str$(cash)

ElseIf selection = 67 Then
GUI Bcolour RGB(red), selection
GUI Page 3
GoTo MSNonRandom


EndIf ' selection
EndIf ' enter


EndIf 'input
Loop

'loan
LoanScreen:

selection = 73
GUI Bcolour RGB(orange), selection
CtrlVal(71) = "Current Loan: $" + Str$(loan)
CtrlVal(72) = "Cash: $" + Str$(cash)

Do
k$ = Inkey$
If k$ <> "" Then

'left
If Asc(k$) = 130 Then
If selection = 74 Then
GUI Bcolour RGB(red), selection
selection = selection - 1
GUI Bcolour RGB(orange), selection

ElseIf selection = 75 Then
If CtrlVal(75) > 0 Then
CtrlVal(75) = CtrlVal(75) - 10
CtrlVal(71) = "Current Loan: $" + Str$(loan) + " ($" + Str$(CtrlVal(75)) + ")"
CtrlVal(72) = "Cash: $" + Str$(cash) + " ($" + Str$(CtrlVal(75) * -1) + ")"
EndIf 'check

EndIf 'selection
EndIf 'left

'right
If Asc(k$) = 131 Then
If selection = 73 Then
GUI Bcolour RGB(red), selection
selection = selection + 1
GUI Bcolour RGB(orange), selection

ElseIf selection = 75 Then
If CtrlVal(75) < loan Then
CtrlVal(75) = CtrlVal(75) + 10
CtrlVal(71) = "Current Loan: $" + Str$(loan) + " ($" + Str$(CtrlVal(75)) + ")"
CtrlVal(72) = "Cash: $" + Str$(cash) + " ($" + Str$(CtrlVal(75) * -1 ) + ")"
EndIf 'check

EndIf 'selection
EndIf 'right

'up
If Asc(k$) = 128 Then
If selection = 73 Or selection = 74 Then
GUI Bcolour RGB(red), selection
selection = 75
GUI Bcolour RGB(orange), selection
GUI Fcolour RGB(black), selection

EndIf 'selection
EndIf 'up

'down
If Asc(k$) = 129 Then
If selection = 75 Then
GUI Bcolour RGB(black), selection
GUI fcolour RGB(red), selection
selection = 73
GUI Bcolour RGB(orange), selection

EndIf 'selection
EndIf 'down

'enter
If Asc(k$) = 13 Then
If selection = 73 Then
loan = loan - CtrlVal(75)
cash = cash - CtrlVal(75)
CtrlVal(75) = 0
CtrlVal(71) = "Current Loan: $" + Str$(loan)
CtrlVal(72) = "Cash: $" + Str$(cash)

ElseIf selection = 74 Then
GUI Bcolour RGB(red), selection
GUI Page 3
GoTo MSNonRandom

EndIf 'selection
EndIf 'enter

EndIf 'input
Loop

'ending
EndScreen:

GUI Page 9
selection = 79
GUI Bcolour RGB(orange), selection

total = (cash + bankbalance) - loan
CtrlVal(77) = name$ + "'s Cash: $" + Str$(total)
CtrlVal(78) = "after " + duration$ + " days."

If lifetotal = 0 Then
CtrlVal(77) = name$ + " got killed"
CtrlVal(78) = "by the fucking cops!"
EndIf

Do
k$ = Inkey$
If k$ <> "" Then

If Asc(k$) = 13 Then
Exit
EndIf

EndIf 'input
Loop



'bottom line
