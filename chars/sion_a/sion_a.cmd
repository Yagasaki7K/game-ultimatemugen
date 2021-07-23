;------------------------------------------------------------------------------
;      Sion_Tatari's Command
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;　CPU起動コマンド
;------------------------------------------------------------------------------
[Command]
name = "CPU01"
command = F, F, F, F, F, F
time = 0
[Command]
name = "CPU02"
command = U, U, U, U, U, U
time = 0
[Command]
name = "CPU03"
command = D, D, D, D, D, D
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
command = B, B, B, B, B, B
time = 0
[Command]
name = "CPU21"
command = D, F, F, F, F, F
time = 0
[Command]
name = "CPU22"
command = U, U, F, U, U, U
time = 0
[Command]
name = "CPU23"
command = F, D, D, D, D, F
time = 0
[Command]
name = "CPU24"
command = F, D, DF, D, F, D
time = 0
[Command]
name = "CPU25"
command = U, D, DF,DB, D, U
time = 0
[Command]
name = "CPU26"
command = DF, B, DB, B, D, F
time = 0
[Command]
name = "CPU27"
command = DF, B, F, DF, F, B
time = 0
[Command]
name = "CPU28"
command = F, UB, B, UF, U, D
time = 0
[Command]
name = "CPU29"
command = D, B, DB, DF, D, U
time = 0
[Command]
name = "CPU30"
command = UF, D, F, B, F, D
time = 0
[Command]
name = "CPU31"
command = U, F, D, B, D, DF
time = 0
[Command]
name = "CPU32"
command = DF, B, DF, B, D, U
time = 0
[Command]
name = "CPU33"
command = F, D, B, F, F, F
time = 0
[Command]
name = "CPU34"
command = UF, DF, UF, B, F, F
time = 0
[Command]
name = "CPU35"
command = DB, B, DF, U, D, U
time = 0
[Command]
name = "CPU36"
command = UF, D, D, B, D, F
time = 0
[Command]
name = "CPU37"
command = U, DB, U, B, D, UF
time = 0
[Command]
name = "CPU38"
command = U, D, DB, U, F, U
time = 0
[Command]
name = "CPU39"
command = DB, D, UF, B, F, D
time = 0
[Command]
name = "CPU40"
command = B, B, DB, B, B, DB
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
Name    = "F + b"
Command = /F, b

[Command]
Name    = "F + c"
Command = /F, c

[Command]
Name    = "B + c"
Command = /B, c

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
Time = 18

[Command]
Name    = "214+z"
Command = ~D, DB, B, z
Time = 18

[Command]
Name    = "6+zc"
Command = ~F,z+c
Time = 15

[Command]
Name    = "ab"
Command = a+b
Time = 18

[Command]
Name    = "escape"
Command = a+z
Time = 18

[Command]
Name    = "escape2"
Command = B
Time = 1

[Command]
Name    = "escape2"
Command = D
Time = 1

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
name = "214+cz"
command = ~D, DB, B, c+z
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
Name    = "22+z"
Command = ~D, D, z
time = 15

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
Name    = "222+c"
Command = ~D, D, D, c
Time = 30


;------------------------------------------------------------------------------
; ラストアーク
;------------------------------------------------------------------------------

; 現在未搭載

[Command]
Name    = "?"
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
time=0
[command]
name="back"
command=B
time=0
[command]
name="up"
command=U
time=0
[command]
name="down"
command=D
time=0

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
Name    = "bhold"
Command = /$b
Time    = 1

[Command]
Name    = "chold"
Command = /$c
Time    = 1

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
; BH時　ブラックバレル
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2502
triggerall = command = "41236+c"
triggerall = statetype != A
Triggerall = Var(33) <= -1 || (power = 3000 && Var(38) >= 1000)
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || ((StateNo = 1030) && (Animelem <= 6))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit
Trigger5 = (StateNo = 1930 && Time >= 11)

;------------------------------------------------------------------------------
; ブラックバレル
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2500
triggerall = command = "41236+c"
Triggerall = Var(33) >= 1 || (Var(31) != 0 && power = 3000)
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || ((StateNo = 1030) && (Animelem <= 6))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit
Trigger5 = (StateNo = 1930 && Time >= 11)

;------------------------------------------------------------------------------
; BH時　
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2050
triggerall = command = "63214+c"
triggerall = statetype != A
Triggerall = Var(33) <= -1 || (power = 3000 && Var(38) >= 1000)
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || ((StateNo = 1030) && (Animelem <= 6))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit
Trigger5 = (StateNo = 1930 && Time >= 11)

;------------------------------------------------------------------------------
;　名称未定
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2000
triggerall = command = "63214+c"
Triggerall = Var(33) >= 1 || (Var(31) != 0 && power = 3000)
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || ((StateNo = 1030) && (Animelem <= 6))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit
Trigger5 = (StateNo = 1930 && Time >= 11)

;------------------------------------------------------------------------------
; BH時　名称未定２
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2100
triggerall = command = "222+c"
triggerall = statetype != A
Triggerall = Var(33) <= -1 || (power = 3000 && Var(38) >= 1000)
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || ((StateNo = 1030) && (Animelem <= 6))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit
Trigger5 = (StateNo = 1930 && Time >= 11)

;------------------------------------------------------------------------------
;　名称未定２
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2100
triggerall = command = "222+c"
Triggerall = Var(33) >= 1 || (Var(31) != 0 && power = 3000)
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || ((StateNo = 1030) && (Animelem <= 6))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit
Trigger5 = (StateNo = 1930 && Time >= 11)

;------------------------------------------------------------------------------
;　デバッグ用コマンド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2000
triggerall = command = "?"
triggerall = statetype != A
Triggerall = Var(33) != 0
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415 || StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9))
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; エーテライトエア・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1030
triggerall = command = "623+a"
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; エーテライトエア・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1040
triggerall = command = "623+b" || (command= "623+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; エーテライトエア・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1050
triggerall = command = "623+c"
triggerall = statetype != A
triggerall = ((Power >= 1000) || (Var(33) != 0))
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || ((StateNo = 1030) && (Animelem <= 6))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit

;------------------------------------------------------------------------------
;　威嚇射撃・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "236+a"
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit

;------------------------------------------------------------------------------
;　威嚇射撃・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1010
triggerall = command = "236+b"
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit

;------------------------------------------------------------------------------
;　威嚇射撃・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1020
triggerall = command = "236+c"
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; カッティングシンク・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1930
triggerall = command = "421+a"
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1221
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; カッティングシンク・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1940
triggerall = command = "421+b" || (command= "421+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1221
Trigger3 = MoveContAct
Trigger4 = StateNo = 1930 && Time >= 11

;------------------------------------------------------------------------------
; カッティングシンク・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1950
triggerall = command = "421+c"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || ((StateNo = 1030) && (Animelem <= 6)) || StateNo = 1221
Trigger3 = MoveContAct
Trigger4 = StateNo = 1930 && Time >= 11

;------------------------------------------------------------------------------
; エーテライト・グランド・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1200
triggerall = command = "214+a"
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; エーテライト・グランド・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1210
triggerall = command = "214+b" || (command= "214+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; エーテライト・グランド・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1220
triggerall = command = "214+c"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || ((StateNo = 1030) && (Animelem <= 6))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit
Trigger5 = StateNo = 1930 && Time >= 11

;------------------------------------------------------------------------------
; スライドエア・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1500
triggerall = command = "214+a"
triggerall = statetype = A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 || StateNo = 624
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
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 || StateNo = 624
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; スライドエア・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1530
triggerall = command = "214+cz"
triggerall = statetype = A
triggerall = ((Power >= 1000) || (Var(33) != 0))
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 || StateNo = 624
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
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 || StateNo = 624
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; カッティングシンクエア・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1140
triggerall = command = "22+a"
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; カッティングシンクエア・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1150
triggerall = command = "22+b" || (command= "22+c" && Power < 1000 && Var(33) = 0)
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; カッティングシンクエア・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1160
triggerall = command = "22+c"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 214 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || ((StateNo = 1030) && (Animelem <= 6))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9)) || StateNo = 1221
Trigger4 = MoveHit
Trigger5 = StateNo = 1930 && Time >= 11

;------------------------------------------------------------------------------
; シールドバンカー
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 730
triggerall = command = "214+z"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 400 || StateNo = 410  || StateNo = 421 || StateNo = 214
Trigger2 = MoveContAct
Trigger4 = ((StateNo = 1940) && (Animelem = 9))
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; BLOOD HEAT
;------------------------------------------------------------------------------
[State -1]
Type = ChangeState
Value = 910
TriggerAll = Var(36) = 0
TriggerAll = Var(33) >= 1
TriggerAll = Var(31) = 0
TriggerAll = Command = "BLOOD HEAT"
TriggerAll = StateType != A
TriggerAll = Var(1) != 1
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
TriggerAll = Var(31) = 0
TriggerAll = Command = "BLOOD HEAT"
TriggerAll = Power >= 1000
TriggerAll = StateType != A
TriggerAll = Var(1) != 1
Trigger1 = Ctrl
Trigger2 = StateNo = 160 || StateNo = 161
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; 魔力開放
;------------------------------------------------------------------------------
[State -1]
Type = ChangeState
Value = 930
TriggerAll = Var(31) != 0
TriggerAll = Command = "BLOOD HEAT"
TriggerAll = Power >= 1000
TriggerAll = StateType != A
TriggerAll = Var(1) != 1
Trigger1 = Ctrl
Trigger2 = StateNo = 160 || StateNo = 161
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
;　威嚇射撃・リロード
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1011
triggerall = command = "22+z"
triggerall = statetype != A
TriggerAll = Var(1) != 1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 223 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421 || StateNo = 214
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 緊急回避
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 740
TriggerAll = Var(1) != 1
triggerall = command = "escape"
triggerall = command != "holdback"
TriggerAll = Var(31) = 0
trigger1 = statetype != A && (ctrl || stateno = 100)
trigger2 = (stateno = 150 || stateno = 151) && power >= 500

[State -1]
type = ChangeState
value = 741
TriggerAll = Var(1) != 1
triggerall = command = "escape" && command = "holdback"
TriggerAll = Var(31) = 0
trigger1 = statetype != A && (ctrl || stateno = 100)
trigger2 = (stateno = 150 || stateno = 151) && power >= 500

;------------------------------------------------------------------------------
; 直前避け
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 750
triggerall = command = "escape2"
triggerall = roundstate = 2 && statetype != A
triggerall = PrevStateNo != [700,750]
triggerall = prevstateno != [150,159]
triggerall = prevstateno != [5000,5199]
TriggerAll = Var(1) != 1
TriggerAll = Var(31) = 0
trigger1 = abs(enemynear,Pos X - Pos X)<= 90 && enemynear,MoveType = A && ctrl

;------------------------------------------------------------------------------
; 背負い投げ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
TriggerAll = Var(1) != 1
triggerall = ctrl = 1
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
TriggerAll = Var(1) != 1
triggerall = ctrl = 1
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
; 蹴り
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 216
TriggerAll = Var(1) != 1
triggerall = command = "F + b"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 400 || StateNo = 410 || StateNo = 220 || StateNo = 223
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContact
Trigger4 = ((StateNo = 1940) && (Animelem = 9))
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; エーテライト攻撃
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 225
TriggerAll = Var(1) != 1
triggerall = command = "F + c"
triggerall = statetype != A
Triggerall = Var(31) != 2
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 220 || StateNo = 223 || StateNo = 214
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContact
Trigger4 = ((StateNo = 1940) && (Animelem = 9))
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; エリアル
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 415
TriggerAll = Var(1) != 1
triggerall = command = "3+b"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 220 || StateNo = 223 || StateNo = 214
Trigger2 = MoveContact
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContact
Trigger4 = ((StateNo = 1940) && (Animelem = 9))
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; 立ち　シールド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 160
TriggerAll = Var(1) != 1
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger1 = Var(31) = 0
trigger2 = (((StateNo = [200,420]) || (StateNo = [160,161])) && (MoveContact))
Trigger2 = Var(31) = 0
trigger3 = statetype = S
Trigger3 = Enemy,NumHelper > 0 || Enemy,NumProj > 0
Trigger3 = InGuardDist
trigger3 = ctrl = 1 || StateNo = 160 || StateNo = 161
Trigger3 = Var(31) != 0
Trigger3 = power >= 500
trigger4 = statetype = S
Trigger4 = P2BodyDist X = [-80,80]
Trigger4 = EnemyNear,MoveType = A
Trigger4 = InGuardDist
trigger4 = ctrl = 1 || StateNo = 160 || StateNo = 161
Trigger4 = Var(31) != 0
Trigger4 = power >= 500

;------------------------------------------------------------------------------
; 屈　シールド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 161
TriggerAll = Var(1) != 1
triggerall = command = "z"
Trigger1 = Var(31) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (((StateNo = [200,420]) || (StateNo = [160,161])) && (MoveContact))
Trigger2 = Var(31) = 0
trigger3 = statetype = C
Trigger3 = Enemy,NumHelper > 0 || Enemy,NumProj > 0
Trigger3 = InGuardDist
trigger3 = ctrl = 1 || StateNo = 160 || StateNo = 161
Trigger3 = Var(31) != 0
Trigger3 = power >= 500
trigger4 = statetype = C
Trigger4 = P2BodyDist X = [-80,80]
Trigger4 = EnemyNear,MoveType = A
Trigger4 = InGuardDist
trigger4 = ctrl = 1 || StateNo = 160 || StateNo = 161
Trigger4 = Var(31) != 0
Trigger4 = power >= 500

;------------------------------------------------------------------------------
; 空　シールド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 162
TriggerAll = Var(1) != 1
triggerall = command = "z"
Trigger1 = Var(31) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (((StateNo = [600,620]) || (StateNo = 162)) && (MoveContact))
Trigger2 = Var(31) = 0
trigger3 = statetype = A
Trigger3 = Enemy,NumHelper > 0 || Enemy,NumProj > 0
Trigger3 = InGuardDist
trigger3 = ctrl = 1 || StateNo = 162
Trigger3 = Var(31) != 0
Trigger3 = power >= 500
trigger4 = statetype = A
Trigger4 = P2BodyDist X = [-80,80]
Trigger4 = P2BodyDist Y = [-80,80]
Trigger4 = EnemyNear,MoveType = A
Trigger4 = InGuardDist
trigger4 = ctrl = 1 || StateNo = 162
Trigger4 = Var(31) != 0
Trigger4 = power >= 500

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
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 421
Trigger2 = MoveContAct
Trigger2 = StateNo = 160 || StateNo = 161
Trigger2 = MoveContact

;------------------------------------------------------------------------------
; ハイジャンプ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 920
trigger1 = command = "29"
trigger1 = statetype = S
trigger1 = ctrl = 1
TriggerAll = Var(1) != 1
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
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 || StateNo = 624
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct
Trigger4 = StateNo = 1950
Trigger4 = MoveHit

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
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 || StateNo = 624
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct
Trigger4 = StateNo = 1950
Trigger4 = MoveHit

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
Trigger4 = StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 220 || StateNo = 223 || StateNo = 214
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || ((StateNo = 1221) && (HitCount=4))
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 1940) && (HitCount=2))
Trigger6 = MoveHit

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
TriggerAll = Var(1) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 215 || StateNo = 400 || StateNo = 220 || StateNo = 223 || StateNo = 214
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || ((StateNo = 1221) && (HitCount=4))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (HitCount=2))
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; 立ち　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 221
triggerall = command = "c"
triggerall = command != "holddown"
TriggerAll = Var(1) != 1
Triggerall = Var(19)%10 = 0
TriggerAll = Var(1) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 214
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || ((StateNo = 1221) && (HitCount=4))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (HitCount=2))
Trigger4 = MoveHit

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
Trigger4 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 410 || StateNo = 220 || StateNo = 223 || StateNo = 214
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || ((StateNo = 1221) && (HitCount=4))
Trigger5 = MoveContAct
Trigger6 = ((StateNo = 1940) && (HitCount=2))
Trigger6 = MoveHit

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
TriggerAll = Var(1) != 1
trigger1 = statetype = C
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 220 || StateNo = 223 || StateNo = 214
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || ((StateNo = 1221) && (HitCount=4))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (HitCount=2))
Trigger4 = MoveHit

;------------------------------------------------------------------------------
; 屈　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 421
triggerall = command = "c"
triggerall = command = "holddown"
TriggerAll = Var(1) != 1
Triggerall = Var(19)/10%10 = 0
TriggerAll = Var(1) != 1
trigger1 = statetype = C
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 220 || StateNo = 223 || StateNo = 214
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || ((StateNo = 1221) && (HitCount=4))
Trigger3 = MoveContAct
Trigger4 = ((StateNo = 1940) && (HitCount=2))
Trigger4 = MoveHit

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
Trigger4 = StateNo = 610 || StateNo = 620 || StateNo = 624
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct
Trigger6 = StateNo = 1950
Trigger6 = MoveHit

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
Trigger6 = StateNo = 610 || StateNo = 620 || StateNo = 624
Trigger6 = MoveContAct
Trigger7 = StateNo = 162
Trigger7 = MoveContAct
Trigger8 = StateNo = 110 || StateNo = 115
Trigger9 = StateNo = 1950
Trigger9 = MoveHit

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
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 620 || StateNo = 624
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct
Trigger4 = StateNo = 110 || StateNo = 115
Trigger5 = StateNo = 1950
Trigger5 = MoveHit

;------------------------------------------------------------------------------
; 空　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 622
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
Trigger5 = StateNo = 1950
Trigger5 = MoveHit

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
