;------------------------------------------------------------------------------
;      Ciel's Command
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
;　CPU起動コマンド
;------------------------------------------------------------------------------
[Command]
name = "CPU01"
command = ~F, F, F, F, F, F
time = 0
[Command]
name = "CPU02"
command = ~U, U, U, U, U, U
time = 0
[Command]
name = "CPU03"
command = ~D, D, D, D, D, D
time = 0
[Command]
name = "CPU04"
command = F, D, F
time = 0
[Command]
name = "CPU05"
command = U, D, D
time = 0
[Command]
name = "CPU06"
command = D, B, B
time = 0
[Command]
name = "CPU07"
command = F, B, F
time = 0
[Command]
name = "CPU08"
command = F, U, B
time = 0
[Command]
name = "CPU09"
command = D, B, D
time = 0
[Command]
name = "CPU10"
command = U, D, F
time = 0
[Command]
name = "CPU11"
command = U, D, D, B
time = 0
[Command]
name = "CPU12"
command = D, B, F
time = 0
[Command]
name = "CPU13"
command = F, D, B
time = 0
[Command]
name = "CPU14"
command = U, D, U
time = 0
[Command]
name = "CPU15"
command = F, B, DF
time = 0
[Command]
name = "CPU16"
command = UF, D, D
time = 0
[Command]
name = "CPU17"
command = F, DB, DF
time = 0
[Command]
name = "CPU18"
command = F, D, DB
time = 0
[Command]
name = "CPU19"
command = B, D, UB
time = 0
[Command]
name = "CPU20"
command = ~B, B, B, B, B, B
time = 0
[Command]
name = "CPU21"
command = ~D, F, F, F, F, F
time = 0
[Command]
name = "CPU22"
command = ~U, U, F, U, U, U
time = 0
[Command]
name = "CPU23"
command = ~F, D, D, D, D, F
time = 0
[Command]
name = "CPU24"
command = ~F, D, DF, D, F, D
time = 0
[Command]
name = "CPU25"
command = ~U, D, DF,DB, D, U
time = 0
[Command]
name = "CPU26"
command = ~DF, B, DB, B, D, F
time = 0
[Command]
name = "CPU27"
command = ~DF, B, F, DF, F, B
time = 0
[Command]
name = "CPU28"
command = ~F, UB, B, UF, U, D
time = 0
[Command]
name = "CPU29"
command = ~D, B, DB, DF, D, U
time = 0
[Command]
name = "CPU30"
command = ~UF, D, F, B, F, D
time = 0
[Command]
name = "CPU31"
command = ~U, F, D, B, D, DF
time = 0
[Command]
name = "CPU32"
command = ~DF, B, DF, B, D, U
time = 0
[Command]
name = "CPU33"
command = F, D, B, F, F, F
time = 0
[Command]
name = "CPU34"
command = ~UF, DF, UF, B, F, F
time = 0
[Command]
name = "CPU35"
command = ~DB, B, DF, U, D, U
time = 0
[Command]
name = "CPU36"
command = ~UF, D, D, B, D, F
time = 0
[Command]
name = "CPU37"
command = ~U, DB, U, B, D, UF
time = 0
[Command]
name = "CPU38"
command = ~U, D, DB, U, F, U
time = 0
[Command]
name = "CPU39"
command = ~DB, D, UF, B, F, D
time = 0
[Command]
name = "CPU40"
command = ~B, B, DB, B, B, DB
time = 0
[Command]
Name    = "AI_41"
Command = a,a+c
time = 0
[Command]
Name    = "AI_42"
Command = b,c
time = 0
[Command]
Name    = "AI_43"
Command = b+c,b
time = 0
[Command]
Name    = "AI_44"
Command = b,b,c
time = 0
[Command]
Name    = "AI_45"
Command = b,c+a+z
time = 0
[Command]
Name    = "AI_46"
Command = b,z+D
time = 0
[Command]
Name    = "AI_47"
Command = b,x
time = 0
[Command]
Name    = "AI_48"
Command = z,D
time = 0
[Command]
Name    = "AI_49"
Command = a,a
time = 0
[Command]
Name    = "AI_50"
Command = b,a
time = 0

;------------------------------------------------------------------------------
; 特殊技
;------------------------------------------------------------------------------

[Command]
Name    = "B + a"
Command = /B, a

[Command]
Name    = "B + b"
Command = /B, b

[Command]
Name    = "B + c"
Command = /B, c

[Command]
Name    = "D + c"
Command = /D, c

[Command]
Name    = "6+a"
Command = /F, a

[Command]
Name    = "29"
Command = ~DB, UF
Time = 12

[Command]
Name    = "6+zc"
Command = ~F,z+c
Time = 20

[Command]
Name    = "236+z"
Command = ~D, DF, F, z
Time = 20

[Command]
Name    = "214+z"
Command = ~D, DB, B, z
Time = 20

[Command]
Name    = "HEAT"
Command = ~D, D, D, z
Time = 30

[Command]
Name    = "a+b+c"
Command = a+b+c
Time = 10

;------------------------------------------------------------------------------
; 必殺技
;------------------------------------------------------------------------------

[Command]
name = "623+a"
command = ~F, D, DF, a
time = 18

[Command]
name = "623+b"
command = ~F, D, DF, b
ime = 18

[Command]
name = "623+c"
command = ~F, D, DF, c
time = 18

[Command]
name = "236+a"
command = ~D, DF, F, a
time = 15

[Command]
name = "236+b"
command = ~D, DF, F, b
time = 15

[Command]
name = "236+c"
command = ~D, DF, F, c
time = 15

[Command]
name = "214+a"
command = ~D, DB, B, a
time = 15

[Command]
name = "214+b"
command = ~D, DB, B, b
time = 15

[Command]
name = "214+c"
command = ~D, DB, B, c
time = 15

[Command]
name = "21421+x"
command = ~D, DB, B, D, DB, x
time = 15

[Command]
name = "21421+x"
command = ~D, DB, B, D, DB, y
time = 15

[Command]
name = "214+x"
command = ~D, DB, B, x
time = 15

[Command]
name = "214+y"
command = ~D, DB, B, y
time = 15

[Command]
Name    = "22+a"
Command = ~D, D, a
time = 15

[Command]
Name    = "22+b"
Command = ~D, D, b
time = 15

[Command]
Name    = "22+c"
Command = ~D, D, c
time = 15

[Command]
name    = "214+zc"
command = ~D, DB, B, c+z
time = 15

[Command]
name    = "236+zc"
command = ~D, DF, F, c+z
time = 15
;------------------------------------------------------------------------------
; アークドライブ
;------------------------------------------------------------------------------

[Command]
name = "41236+c"
command = ~B, DB, D, DF, F, c
time = 30

[Command]
Name    = "63214+c"
Command = ~F, DF, D, DB, B, c
Time = 30

[Command]
Name    = "2363214+c"
Command = ~D, DF, F, DF, D, DB, B, c
Time = 30

[Command]
Name    = "236236236236+c"
Command = ~D, DF, F, D, DF, F, D, DF, F, D, DF, F, c
Time = 60

[Command]
Name    = "222+c"
Command = ~D, D, D, c
Time = 30


;------------------------------------------------------------------------------
; ラストアーク
;------------------------------------------------------------------------------

; 現在未搭載


[Command]
Name    = "41236+z"
Command = ~B, DB, D, DF, F, z
Time = 30


;------------------------------------------------------------------------------
; 基本システム
;------------------------------------------------------------------------------

[Command]
name = "FF"
command = F,F
time = 10

[Command]
name = "BB"
command = B,B
time = 10

[Command]
name = "UU"
command = U,U
time = 10

[Command]
name = "recovery"
command = a
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1

[Command]
name = "start"
command = s
time = 1

[Command]
Name    = "bhold"
Command = /$b
Time    = 1

[Command]
Name    = "chold"
Command = /$c
Time    = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;==============================================================================
;消すと下の記述がパーになるので消さないこと

[Statedef -1]

;------------------------------------------------------------------------------
;　第七聖典・原罪救済
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2050
triggerall = command = "41236+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = Var(33) <= -1 || power >= 3000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&& animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 1302
Trigger8 = PrevStateNo = 1300 || PrevStateNo = 1321
Trigger9 = StateNo = 1400 || StateNo = 1410 || StateNo = 1500 || ((StateNo = 1520) && (StateType = S)) || StateNo = 1311
Trigger9 = MoveContact
Trigger10 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　第七聖典
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2000
triggerall = command = "41236+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = var(33) != 0 || power >= 3000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 1302
Trigger8 = PrevStateNo = 1300 || PrevStateNo = 1321
Trigger9 = StateNo = 1400 || StateNo = 1410 || StateNo = 1500 || ((StateNo = 1520) && (StateType = S)) || StateNo = 1311
Trigger9 = MoveContact
Trigger10 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　？
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2300
triggerall = command = "2363214+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = var(33) != 0 || power >= 3000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 1302
Trigger8 = PrevStateNo = 1300 || PrevStateNo = 1321
Trigger9 = StateNo = 1400 || StateNo = 1410 || StateNo = 1500 || ((StateNo = 1520) && (StateType = S)) || StateNo = 1311
Trigger9 = MoveContact
Trigger10 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　？
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2100
triggerall = command = "63214+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = var(33) <= -1 || power >= 3000
triggerall = statetype != A
trigger1 = ctrl = 1

;------------------------------------------------------------------------------
;　火葬式典
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2200
triggerall = command = "41236+c"
triggerall = var(59) = 0
triggerall = var(1) != 1 || power >= 3000
triggerall = var(33) != 0
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 411 || StateNo = 625
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger6 = StateNo = 1505 || StateNo = 1515 || StateNo = 1019
Trigger6 = MoveContAct
Trigger7 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
; ラストアーク
;------------------------------------------------------------------------------
[State -1]
type = Null;ChangeState
value = 3100
triggerall = command = "41236+z"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype != A
Triggerall = Var(33) <= -1 || power >= 3000
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || StateNo = 220 || StateNo = 223 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 421) && (statetype = C))
Trigger4 = MoveContact

;------------------------------------------------------------------------------
;　黒鍵投げ・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "214+a"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　黒鍵投げ・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1010
triggerall = command = "214+b"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　黒鍵投げ・王手
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1030
triggerall = command = "214+zc"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 1302
Trigger8 = PrevStateNo = 1300 || PrevStateNo = 1321
Trigger9 = StateNo = 1400 || StateNo = 1410 || StateNo = 1500 || ((StateNo = 1520) && (StateType = S)) || StateNo = 1311
Trigger9 = MoveContact
Trigger10 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　黒鍵投げ大乱舞
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1020
triggerall = command = "214+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 1302
Trigger8 = PrevStateNo = 1300 || PrevStateNo = 1321
Trigger9 = StateNo = 1400 || StateNo = 1410 || StateNo = 1500 || ((StateNo = 1520) && (StateType = S)) || StateNo = 1311
Trigger9 = MoveContact
Trigger10 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　黒鍵投げ・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1100
triggerall = command = "214+a"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 411 || StateNo = 625
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger7 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
;　黒鍵投げ・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1110
triggerall = command = "214+b"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 411 || StateNo = 625
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger7 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
;　黒鍵投げ・王手
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1130
triggerall = command = "214+zc"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 411 || StateNo = 625
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger6 = StateNo = 1505 || StateNo = 1515 || StateNo = 1019
Trigger6 = MoveContAct
Trigger7 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
;　黒鍵投げ大乱舞
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1120
triggerall = command = "214+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 411 || StateNo = 625
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger6 = StateNo = 1505 || StateNo = 1515 || StateNo = 1019
Trigger6 = MoveContAct
Trigger7 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
;　ブレードシンカー・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1400
triggerall = command = "623+a"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　ブレードシンカー・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1410
triggerall = command = "623+b"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　ブレードシンカー・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1420
triggerall = command = "623+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 1302
Trigger8 = PrevStateNo = 1300 || PrevStateNo = 1321
Trigger9 = StateNo = 1400 || StateNo = 1410 || StateNo = 1500 || ((StateNo = 1520) && (StateType = S)) || StateNo = 1311
Trigger9 = MoveContact
Trigger10 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　ハイロゥ・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1200
triggerall = command = "236+a"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　ハイロゥ・空弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1300
triggerall = command = "236+a"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 411 || StateNo = 625
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger7 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
;　ハイロゥ・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1210
triggerall = command = "236+b"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　ハイロゥ・空中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1310
triggerall = command = "236+b"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 411 || StateNo = 625
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger7 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
;　セブンスヘヴン
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1220
triggerall = command = "236+c" || command = "236+zc"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 1302
Trigger8 = PrevStateNo = 1300 || PrevStateNo = 1321
Trigger9 = StateNo = 1400 || StateNo = 1410 || StateNo = 1500 || ((StateNo = 1520) && (StateType = S)) || StateNo = 1311
Trigger9 = MoveContact
Trigger10 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　エンゼルハイロゥ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1330
triggerall = command = "236+zc"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 411 || StateNo = 625
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger6 = StateNo = 1505 || StateNo = 1515 || StateNo = 1019
Trigger6 = MoveContAct
Trigger7 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
;　空中ハイロゥ・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1320
triggerall = command = "236+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 411 || StateNo = 625
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger6 = StateNo = 1505 || StateNo = 1515 || StateNo = 1019
Trigger6 = MoveContAct
Trigger7 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
;　シエルサマー・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1500
triggerall = command = "22+a"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　シエルサマー・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1510
triggerall = command = "22+b"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　シエルサマー・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1520
triggerall = command = "22+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 220 || StateNo = 223
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact
Trigger7 = ((StateNo = 221) && (movetype = I))
Trigger8 = StateNo = 1302
Trigger8 = PrevStateNo = 1300 || PrevStateNo = 1321
Trigger9 = StateNo = 1400 || StateNo = 1410 || StateNo = 1500 || StateNo = 1311
Trigger9 = MoveHit
Trigger10 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　シエルサマー・空弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1505
triggerall = command = "22+a"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 411 || StateNo = 625
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger7 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
;　シエルサマー・空中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1515
triggerall = command = "22+b"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 411 || StateNo = 625
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger7 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
;　シエルサマー・空強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1525
triggerall = command = "22+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 411 || StateNo = 625
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger6 = StateNo = 1505 || StateNo = 1515 || StateNo = 1019
Trigger6 = MoveContAct
Trigger7 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
; シールドカウンター　立
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 700
triggerall = command = "236+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = S
Trigger1 = StateNo = 160
Trigger1 = MoveContAct

;------------------------------------------------------------------------------
; シールドカウンター　屈
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 710
triggerall = command = "236+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = C
Trigger1 = StateNo = 161
Trigger1 = MoveContAct

;------------------------------------------------------------------------------
; シールドカウンター　空
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 720
triggerall = command = "236+c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = A
Trigger1 = StateNo = 162
Trigger1 = MoveContAct

;------------------------------------------------------------------------------
; シールドバンカー
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 730
triggerall = command = "214+z"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = ((StateNo = 421) && (statetype = C))
Trigger5 = MoveContact
Trigger6 = StateNo = [120,159]

;------------------------------------------------------------------------------
; BLOOD HEAT
;------------------------------------------------------------------------------
[State -1]
Type = ChangeState
Value = 910
triggerall = var(59) = 0
triggerall = var(1) != 1
TriggerAll = Var(36) = 0
TriggerAll = Var(33) >= 1 || power = [3000,4999]
TriggerAll = Command = "HEAT"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = StateNo = 160 || StateNo = 161
Trigger2 = MoveContAct
Trigger3 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159] 

;------------------------------------------------------------------------------
; HEAT 強制開放
;------------------------------------------------------------------------------
[State -1]
Type = ChangeState
Value = 900
triggerall = var(59) = 0
triggerall = var(1) != 1
TriggerAll = Var(33) = 0
TriggerAll = Command = "HEAT"
TriggerAll = Power = [1000,3999]
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = StateNo = 160 || StateNo = 161
Trigger2 = MoveContAct
Trigger2 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
;　背負い投げ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 810
triggerall = command = "c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "holdfwd" || command="holdback"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
Trigger2 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
; 空中投げ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 820
triggerall = command = "c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = command = "holdfwd" || command="holdback"
trigger1 = p2bodydist X < 5
trigger2 = StateNo = 600 || StateNo = 610 || StateNo = 620
trigger2 = ((command = "holdfwd") || (command = "holdback"))
trigger2 = p2bodydist X < 5
trigger2 = MoveHit

;------------------------------------------------------------------------------
;　かかと落とし
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 211
triggerall = command = "B + b"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact

;------------------------------------------------------------------------------
;　ナイフ攻撃
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 225
triggerall = command = "B + c"
triggerall = var(59) = 0
triggerall = var(1) != 1
Triggerall = Var(19)/100%10 = 0 
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 210 || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact

;------------------------------------------------------------------------------
;　黒鍵突き刺し
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 625
triggerall = command = "D + c"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct

;------------------------------------------------------------------------------
; 立ち　シールド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 160
triggerall = command = "z"
triggerall = var(1) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,420]) && (StateNo != 411) && (StateNo != 211) && (MoveContact))

;------------------------------------------------------------------------------
; 屈　シールド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 161
triggerall = command = "z"
triggerall = var(1) != 1
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,420]) && (StateNo != 411) && (StateNo != 211) && (MoveContact))

;------------------------------------------------------------------------------
; 空　シールド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 162
triggerall = command = "z"
triggerall = var(1) != 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,620]) && (MoveContact))
trigger3 = ((StateNo = 225) && (MoveContact))
trigger4 = ((StateNo = 411) && (MoveContact))
Trigger5 = ((StateNo = 1100) && (movetype = I))

;------------------------------------------------------------------------------
; ハイジャンプ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 930
triggerAll = command = "29"
triggerall = var(59) = 0
triggerall = var(1) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
;Trigger2 = StateNo = 160
;Trigger2 = MoveContact
Trigger2 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
; ダッシュ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 100
triggerAll = command = "FF"
triggerall = var(59) = 0
triggerall = var(1) != 1
trigger1 = statetype = S
trigger1 = ctrl =1
;Trigger2 = StateNo = 160
;Trigger2 = MoveContact
Trigger2 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
; バックステップ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = S
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 201 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1311
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 421) && (statetype = C))
Trigger4 = MoveContact
Trigger5 = StateNo = 730 && StateTime < 3 && PrevStateNo = [120,159]

;------------------------------------------------------------------------------
; 空中ダッシュ
;------------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 110
triggerall = command = "FF"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = A
Triggerall = Var(20) = 0 
trigger1 = ctrl =1
trigger1 = stateno != 110
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 || StateNo = 625
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 空中バックダッシュ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 115
triggerall = command = "BB"
triggerall = var(59) = 0
triggerall = var(1) != 1
triggerall = statetype = A
Triggerall = Var(20) = 0 
trigger1 = stateno != 115
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 || StateNo = 625
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 立ち　弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(59) = 0
triggerall = var(1) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 =  StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact

;------------------------------------------------------------------------------
; 立ち　中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(59) = 0
triggerall = var(1) != 1
Triggerall = Var(21)%10 = 0 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact

;------------------------------------------------------------------------------
; 立ち　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 230
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(59) = 0
triggerall = var(1) != 1
Triggerall = Var(19)%10 = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact

;------------------------------------------------------------------------------
; 屈　弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(59) = 0
triggerall = var(1) != 1
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact

;------------------------------------------------------------------------------
; 屈　中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(59) = 0
triggerall = var(1) != 1
Triggerall = Var(21)/10%10 = 0 
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 420 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact

;------------------------------------------------------------------------------
; 屈　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = var(59) = 0
triggerall = var(1) != 1
Triggerall = Var(19)/10%10 = 0 
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
Trigger4 = StateNo = 200 || StateNo = 201 || StateNo = 210 || (StateNo= 225&&animelemtime(5)>=0) || StateNo = 400 || StateNo = 410 || StateNo = 1311
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 421) && (statetype = C))
Trigger6 = MoveContact

;------------------------------------------------------------------------------
; 空　弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
triggerall = var(59) = 0
triggerall = var(1) != 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct

;------------------------------------------------------------------------------
; 空　中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
triggerall = var(59) = 0
triggerall = var(1) != 1
Triggerall = Var(21)/100%10 = 0 
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 620
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct

;------------------------------------------------------------------------------
; 空　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
Triggerall = Var(19)/100%10 = 0 
triggerall = var(1) != 1
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct

;------------------------------------------------------------------------------
; 挑発
;------------------------------------------------------------------------------
[State -1]
type = Null
value = 940
triggerall = command = "start"
triggerall = statetype = S
trigger1 = ctrl = 1

;------------------------------------------------------------------------------
