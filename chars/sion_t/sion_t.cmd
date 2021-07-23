;------------------------------------------------------------------------------
;      Sion_Tatari's Command
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
Name    = "B + b"
Command = /B, b


[Command]
Name    = "F + c"
Command = /F, c

[Command]
Name    = "3+b"
Command = /DF, b

[Command]
Name    = "29"
Command = ~DB, UF
Time = 12

[Command]
Name    = "236+z"
Command = ~D, DF, F, z
Time = 20

[Command]
Name    = "214+z"
Command = ~D, DB, B, z
Time = 20

[Command]
Name    = "6+zc"
Command = ~F,z+c
Time = 20

[Command]
Name    = "BLOOD HEAT"
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
time = 18

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
Name    = "214+x"
Command = ~D, DB, B, x
time = 15

[Command]
Name    = "214+y"
Command = ~D, DB, B, y
time = 15

[Command]
Name    = "21421+x"
Command = ~D, DB, B, D, DB, x
time = 21

[Command]
Name    = "21421+x"
Command = ~D, DB, B, D, DB, y
time = 21

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
name = "xy"
command = x+y
time = 10

[Command]
name = "236+x"
command = ~D, DF, F, x
time = 12

[Command]
name = "236+y"
command = ~D, DF, F, y
time = 12

[Command]
name = "236236+x"
command = ~D, DF, F, D, DF, F, x
time = 18

[Command]
name = "236236+x"
command = ~D, DF, F, D, DF, F, y
time = 18

[Command]
name = "623+xy"
command = ~F, D, DF ,x+y
time = 18

[Command]
name = "623+x"
command = ~F, D, DF, x
time = 12

[Command]
name = "623+y"
command = ~F, D, DF, y
time = 12

[Command]
name = "421+a"
command = ~B, D, DB, a
time = 18

[Command]
name = "421+b"
command = ~B, D, DB, b
time = 18

[Command]
name = "421+c"
command = ~B, D, DB, c
time = 18
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
Name    = "41236+y"
Command = ~B, DB, D, DF, F, x
Time = 30

[Command]
Name    = "41236+y"
Command = ~B, DB, D, DF, F, y
Time = 30


;------------------------------------------------------------------------------
; ラストアーク
;------------------------------------------------------------------------------

; 現在未搭載


[Command]
Name    = "?"
Command = ~DF, B, DB, D, DF, F, DB, z
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
; クルーエル・ブラッド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2200
triggerall = command = "41236+c"
triggerall = var(33) != 0;power >= 3000
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; １７分割
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2100
triggerall = command = "41236+y"
triggerall = var(33) != 0;power >= 3000
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
triggerAll = NumHelper(1301) + NumHelper(1311) + NumHelper(1321) + NumHelper(1601) + NumHelper(1611) + NumHelper(1621) + NumHelper(2101) + NumHelper(2105) = 0
triggerAll = NumHelper(1701) + NumHelper(1711) + NumHelper(1721) + NumHelper(2001) + NumHelper(2051) + NumHelper(3001) = 0
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; BH時　ナイト　オン　ザ　ブラッドラウアー
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2402
triggerall = command = "63214+c"
triggerall = statetype != A
Triggerall = Var(33) <= -1
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; ナイト　オン　ザ　ブラッドライアー
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2400
triggerall = command = "63214+c"
triggerall = var(33) != 0;power >= 3000
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; BH時　ブラックバレル
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2550
triggerall = command = "63214+c"
triggerall = statetype != A
Triggerall = Var(33) <= -1
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; ブラックバレル
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2500
triggerall = command = "63214+c"
triggerall = var(33) != 0;power >= 3000
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; ?
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3200
triggerall = command = "?"
triggerall = statetype != A
Triggerall = Var(33) <= -1
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415 || StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; テラーニュース（マリス）・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "623+a"
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; テラーニュース（マリス）・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1010
triggerall = command = "623+b" || (command= "623+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; テラーニュース（マリス）・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1020
triggerall = command = "623+c"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; カッティングシンク・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1930
triggerall = command = "421+a"
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; カッティングシンク・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1940
triggerall = command = "421+b" || (command= "421+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; カッティングシンク・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1950
triggerall = command = "421+c"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; エーテライトエア・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1030
triggerall = command = "623+a"
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; エーテライトエア・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1040
triggerall = command = "623+b" || (command= "623+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; エーテライトエア・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1050
triggerall = command = "623+c"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; テラーニュース（ライ）・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1100
triggerall = command = "236+a"
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; テラーニュース（ライ）・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1110
triggerall = command = "236+b" || (command= "236+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; テラーニュース（ライ）・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1120
triggerall = command = "236+c"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 名称未定・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1140
triggerall = command = "236+a"
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 名称未定・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1150
triggerall = command = "236+b" || (command= "236+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 名称未定・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1160
triggerall = command = "236+c"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; エーテライト・グランド・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1200
triggerall = command = "214+a"
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; エーテライト・グランド・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1210
triggerall = command = "214+b" || (command= "214+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; エーテライト・グランド・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1220
triggerall = command = "214+c"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; レプリカントコンダクター・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1320
triggerall = command = "21421+x"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
triggerAll = NumHelper(1301) + NumHelper(1311) + NumHelper(1321) + NumHelper(1601) + NumHelper(1611) + NumHelper(1621) + NumHelper(2101) + NumHelper(2105) = 0
triggerAll = NumHelper(1701) + NumHelper(1711) + NumHelper(1721) + NumHelper(2001) + NumHelper(2051) + NumHelper(3001) = 0
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; レプリカントコンダクター・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1300
triggerall = command = "214+x" && Var(31) = 0
triggerall = statetype != A
TriggerAll = Var(1) != 1
triggerAll = NumHelper(1301) + NumHelper(1311) + NumHelper(1321) + NumHelper(1601) + NumHelper(1611) + NumHelper(1621) + NumHelper(2101) + NumHelper(2105) = 0
triggerAll = NumHelper(1701) + NumHelper(1711) + NumHelper(1721) + NumHelper(2001) + NumHelper(2051) + NumHelper(3001) = 0
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; レプリカントコンダクター・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1310
triggerall = command = "214+y"
triggerall = statetype != A
TriggerAll = Var(1) != 1
triggerAll = NumHelper(1301) + NumHelper(1311) + NumHelper(1321) + NumHelper(1601) + NumHelper(1611) + NumHelper(1621) + NumHelper(2101) + NumHelper(2105) = 0
triggerAll = NumHelper(1701) + NumHelper(1711) + NumHelper(1721) + NumHelper(2001) + NumHelper(2051) + NumHelper(3001) = 0
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 閃鞘七夜２・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1625
triggerall = (command = "21421+x" && Var(31) = 2) || (command = "623+xy" && Var(31) = 0)
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
TriggerAll = Var(1) != 1
triggerAll = NumHelper(1301) + NumHelper(1311) + NumHelper(1321) + NumHelper(1601) + NumHelper(1611) + NumHelper(1621) + NumHelper(2101) + NumHelper(2105) = 0
triggerAll = NumHelper(1701) + NumHelper(1711) + NumHelper(1721) + NumHelper(2001) + NumHelper(2051) + NumHelper(3001) = 0
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
;　閃鞘七夜２・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1605
triggerall = command = "623+x"
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
triggerAll = NumHelper(1301) + NumHelper(1311) + NumHelper(1321) + NumHelper(1601) + NumHelper(1611) + NumHelper(1621) + NumHelper(2101) + NumHelper(2105) = 0
triggerAll = NumHelper(1701) + NumHelper(1711) + NumHelper(1721) + NumHelper(2001) + NumHelper(2051) + NumHelper(3001) = 0
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
;　閃鞘七夜２・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1615
triggerall = command = "623+y"
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
triggerAll = NumHelper(1301) + NumHelper(1311) + NumHelper(1321) + NumHelper(1601) + NumHelper(1611) + NumHelper(1621) + NumHelper(2101) + NumHelper(2105) = 0
triggerAll = NumHelper(1701) + NumHelper(1711) + NumHelper(1721) + NumHelper(2001) + NumHelper(2051) + NumHelper(3001) = 0
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; ファンブルコード・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1400
triggerall = command = "22+a" || command = "22+b" || (command= "22+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
triggerAll = NumHelper(1401) + NumHelper(1421) = 0
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; ファンブルコード・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1420
triggerall = command = "22+c"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
Triggerall = Var(31) = 2
triggerAll = NumHelper(1401) + NumHelper(1421) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; スライドエア・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1500
triggerall = command = "214+a"
triggerall = statetype = A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; スライドエア・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1510
triggerall = command = "214+b" || (command= "214+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype = A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; スライドエア・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1520
triggerall = command = "214+c"
triggerall = statetype = A
triggerall = ((Power >= 1000) || (Var(33) != 0))
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 閃鞘七夜・強
;------------------------------------------------------------------------------
;[State -1]
;type = ChangeState
;value = 1620
;triggerall = command = "xy"
;triggerall = ((Power >= 1000) || (Var(33) != 0))
;triggerall = statetype != A
;Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
;triggerAll = NumHelper(1301) + NumHelper(1311) + NumHelper(1321) + NumHelper(1601) + NumHelper(1611) + NumHelper(1621) + NumHelper(2101) + NumHelper(2105) = 0
;trigger1 = ctrl = 1
;Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 421
;Trigger2 = MoveContAct
;Trigger3 = StateNo = 160 || StateNo = 161
;Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; レプリカントコンダクター（セルケト）・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1720
triggerall = command = "236236+x"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
triggerAll = NumHelper(1301) + NumHelper(1311) + NumHelper(1321) + NumHelper(1601) + NumHelper(1611) + NumHelper(1621) + NumHelper(2101) + NumHelper(2105) = 0
triggerAll = NumHelper(1701) + NumHelper(1711) + NumHelper(1721) + NumHelper(2001) + NumHelper(2051) + NumHelper(3001) = 0
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; レプリカントコンダクター（セルケト）・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1700
triggerall = (command = "236+x" && Var(31) = 0) || (command = "214+x" && Var(31) = 2)
triggerall = statetype != A
TriggerAll = Var(1) != 1
triggerAll = NumHelper(1301) + NumHelper(1311) + NumHelper(1321) + NumHelper(1601) + NumHelper(1611) + NumHelper(1621) + NumHelper(2101) + NumHelper(2105) = 0
triggerAll = NumHelper(1701) + NumHelper(1711) + NumHelper(1721) + NumHelper(2001) + NumHelper(2051) + NumHelper(3001) = 0
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; レプリカントコンダクター（セルケト）・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1710
triggerall = command = "236+y"
triggerall = statetype != A
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
triggerAll = NumHelper(1301) + NumHelper(1311) + NumHelper(1321) + NumHelper(1601) + NumHelper(1611) + NumHelper(1621) + NumHelper(2101) + NumHelper(2105) = 0
triggerAll = NumHelper(1701) + NumHelper(1711) + NumHelper(1721) + NumHelper(2001) + NumHelper(2051) + NumHelper(3001) = 0
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; バッドニュース（ライ）・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1820
triggerall = command = "236236+x"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; バッドニュース（ライ）・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1800
triggerall = command = "236+x"
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; バッドニュース（ライ）・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1810
triggerall = command = "236+y"
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; クリーチャーチャンネル・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1900
triggerall = command = "214+a"
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; クリーチャーチャンネル・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1910
triggerall = command = "214+b" || (command= "214+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; クリーチャーチャンネル・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1920
triggerall = command = "214+c"
triggerall = statetype != A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; クリーチャーチャンネル・空弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1905
triggerall = command = "214+a"
triggerall = statetype = A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct
;------------------------------------------------------------------------------
; クリーチャーチャンネル・空中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1915
triggerall = command = "214+b" || (command= "214+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype = A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; クリーチャーチャンネル・空強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1925
triggerall = command = "214+c"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype = A
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; シールドバンカー
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 730
triggerall = command = "214+z"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 400 || StateNo = 410  || StateNo = 420
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; BLOOD HEAT
;------------------------------------------------------------------------------
[State -1]
Type = ChangeState
Value = 910
TriggerAll = Var(36) = 0
TriggerAll = Var(33) >= 1
TriggerAll = Command = "BLOOD HEAT"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = StateNo = 160 || StateNo = 161
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; HEAT 強制開放
;------------------------------------------------------------------------------
[State -1]
Type = ChangeState
Value = 900
TriggerAll = Var(33) = 0
TriggerAll = Command = "BLOOD HEAT"
TriggerAll = Power >= 1000
TriggerAll = StateType != A
TriggerAll = Var(1) != 1
Trigger1 = Ctrl
Trigger2 = StateNo = 160 || StateNo = 161
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; 背負い投げ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl = 1
TriggerAll = Var(1) != 1
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;------------------------------------------------------------------------------
; 外又ふうの蹴り
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 810
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl = 1
TriggerAll = Var(1) != 1
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;------------------------------------------------------------------------------
; 空中投げ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 820
triggerall = command = "c"
triggerall = statetype = A
TriggerAll = Var(1) != 1
trigger1 = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger2 = ctrl
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger3 = StateNo = 600
trigger3 = ((command = "holdfwd") || (command = "holdback"))
trigger3 = MoveContact
trigger4 = StateNo = 610
trigger4 = ((command = "holdfwd") || (command = "holdback"))
trigger4 = MoveContact

;------------------------------------------------------------------------------
;　フラワーキック
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 215
triggerall = command = "B + b"
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 400 || StateNo = 410 || StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1940
Trigger3 = MoveContact

;------------------------------------------------------------------------------
; エーテライト攻撃
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 225
triggerall = command = "F + c"
triggerall = statetype != A
Triggerall = Var(31) != 2
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 420
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1940
Trigger3 = MoveContact

;------------------------------------------------------------------------------
; エリアル
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 415
triggerall = command = "3+b"
TriggerAll = Var(1) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 420
Trigger2 = MoveContact
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1940
Trigger3 = MoveContact
;------------------------------------------------------------------------------
; 立ち　シールド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 160
triggerall = command = "z"
TriggerAll = Var(1) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,420]) && (MoveContact))

;------------------------------------------------------------------------------
; 屈　シールド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 161
triggerall = command = "z"
TriggerAll = Var(1) != 1
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,420]) && (MoveContact))

;------------------------------------------------------------------------------
; 空　シールド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 162
triggerall = command = "z"
TriggerAll = Var(1) != 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,620]) && (MoveContact))

;------------------------------------------------------------------------------
; ダッシュ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 100
TriggerAll = Var(1) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl =1
;Trigger2 = StateNo = 160
;Trigger2 = MoveContact

;------------------------------------------------------------------------------
; バックステップ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 105
TriggerAll = Var(1) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 420 || StateNo = 421
;Trigger2 = MoveContAct
;Trigger2 = StateNo = 160 || StateNo = 161 || StateNo = 1940
;Trigger2 = MoveContact

;------------------------------------------------------------------------------
; ハイジャンプ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 920
trigger1 = command = "29"
trigger1 = statetype = S
trigger1 = ctrl = 1
;Trigger2 = StateNo = 160
;Trigger2 = MoveContact

;------------------------------------------------------------------------------
; 空中ダッシュ
;------------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 110
triggerall = command = "FF"
triggerall = statetype = A
Triggerall = Var(23) = 0 
TriggerAll = Var(1) != 1
trigger1 = ctrl =1
trigger1 = stateno != 110
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
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
triggerall = statetype = A
Triggerall = Var(23) = 0 
TriggerAll = Var(1) != 1
trigger1 = stateno != 115
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
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
TriggerAll = Var(1) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(4) > 0))
trigger3 = ((StateNo = 200) && (MoveContact))
Trigger4 =  StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 420 
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221 || StateNo = 1940
Trigger5 = MoveContAct

;------------------------------------------------------------------------------
; 立ち　中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
TriggerAll = Var(1) != 1
Triggerall = Var(21)%10 = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 215 || StateNo = 400 || StateNo = 410  || StateNo = 420 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221 || StateNo = 1940
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 立ち　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
Triggerall = Var(19)%10 = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410  || StateNo = 420 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221 || StateNo = 1940
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 立ち　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 221
triggerall = command = "c"
triggerall = command != "holddown"
TriggerAll = Var(1) != 1
Triggerall = Var(31) = 0 
Triggerall = Var(19)%10 = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410  || StateNo = 420 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221 || StateNo = 1940
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 屈　弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
TriggerAll = Var(1) != 1
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
trigger3 = ((StateNo = 400) && (MoveContact))
Trigger4 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 410 || StateNo = 420 
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221 || StateNo = 1940
Trigger5 = MoveContAct

;------------------------------------------------------------------------------
; 屈　中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
TriggerAll = Var(1) != 1
Triggerall = Var(21)/10%10 = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 420 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221 || StateNo = 1940
Trigger3 = MoveContAct


;------------------------------------------------------------------------------
; 屈　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
Triggerall = Var(31) = 2
TriggerAll = Var(1) != 1
Triggerall = Var(19)/10%10 = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221 || StateNo = 1940
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 屈　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 421
triggerall = command = "c"
triggerall = command = "holddown"
Triggerall = Var(31) = 0
TriggerAll = Var(1) != 1
Triggerall = Var(19)/10%10 = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221 || StateNo = 1940
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 空　弱　上昇時
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 600
triggerall = ((command = "a") && (Vel Y <= 0))
TriggerAll = Var(1) != 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620 
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct

;------------------------------------------------------------------------------
; 空　弱　下降時
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 605
triggerall = ((command = "a") && (Vel Y > 0))
TriggerAll = Var(1) != 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
trigger4 = ((StateNo = 605) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger5 = ((StateNo = 605) && (MoveContact))
Trigger6 = StateNo = 610 || StateNo = 620 
Trigger6 = MoveContAct
Trigger7 = StateNo = 162
Trigger7 = MoveContAct
Trigger4 = StateNo = 110 || StateNo = 115

;------------------------------------------------------------------------------
; 空　中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
Triggerall = Var(21)/100%10 = 0 
TriggerAll = Var(1) != 1
trigger1 = statetype = A
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 620 
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct
Trigger4 = StateNo = 110 || StateNo = 115

;------------------------------------------------------------------------------
; 空　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
Triggerall = Var(19)/100%10 = 0 
TriggerAll = Var(1) != 1
trigger1 = statetype = A
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct
Trigger4 = StateNo = 110 || StateNo = 115


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
