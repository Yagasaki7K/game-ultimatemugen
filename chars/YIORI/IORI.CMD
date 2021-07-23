;CMD  iori 95~2k2+SVC  ver 1.59+
;--| CPU Motions |-------------------------
[command]
name = "AI1"
command = B,D,a+c,z,c+b,s
time = 1
[command]
name = "AI2"
command = B,F,c+b,z,c+z,x,s
time = 1
[command]
name = "AI3"
command = B,U,a+b,y,c+y,s,z,D
time = 1
[command]
name = "AI4"
command = B,B,a+y,c,z+x,s
time = 1
[command]
name = "AI5"
command = B,B,a+b,z,c+b,s
time = 1
[command]
name = "AI6"
command = D,B,z+b,z,c+x,s
time = 1
[command]
name = "AI7"
command = B,U,a+b,z,c+x,s
time = 1
[command]
name = "AI8"
command = B,F,a+b,c,c+x,s
time = 1
[Command]
name = "AI9"
command = U,D,F,F,B,B,s
time = 1
[Command]
name = "AI10"
command = U,D,F,F,B,F,s
time = 1
[Command]
name = "AI11"
command = U,D,F,F,B,D,s
time = 1
[Command]
name = "AI12"
command = U,D,F,F,B,U,s
time = 1
[Command]
name = "AI13"
command = U,D,F,F,U,B,s
time = 1
[Command]
name = "AI14"
command = U,D,F,F,D,B,s
time = 1
[Command]
name = "AI15"
command = U,D,F,F,F,B,s
time = 1
[Command]
name = "AI16"
command = U,D,U,F,B,B,s
time = 1
[Command]
name = "AI17"
command = U,D,D,F,B,B,s
time = 1
[Command]
name = "AI18"
command = D,D,F,F,B,B,s
time = 1
[Command]
name = "AI19"
command = U,U,F,F,B,B,s
time = 1
[Command]
name = "AI20"
command = U,B,F,F,B,B,s
time = 1
[Command]
name = "AI21"
command = UB, U, F, a+b,s
time = 1
[Command]
name = "AI22"
command = UB, U, F, b+c,s
time = 1
[Command]
name = "AI23"
command = UB, U, F, a+c,s
time = 1
[Command]
name = "AI24"
command = UF, U, B, x+y,s
time = 1
[Command]
name = "AI25"
command = UF, U, B, y+z,s
time = 1
[Command]
name = "AI26"
command = UF, U, B, x+z,s
time = 1
[Command]
name = "AI27"
command = UB, U, F, x+y,s
time = 1
[Command]
name = "AI28"
command = UB, U, F, y+z,s
time = 1
[Command]
name = "AI29"
command = UB, U, F, x+z,s
time = 1
[Command]
name = "AI30"
command = UF, U, B, a+b,s
time = 1
[Command]
name = "AI31"
command = UF, U, B, b+c,s
time = 1
[Command]
name = "AI32"
command = UF, U, B, a+c,s
time = 1
[Command]
name = "AI33"
command = UF, DB, UB,DF ,x,s
time = 1
[Command]
name = "AI34"
command = UF, DB, UB,DF ,y,s
time = 1
[Command]
name = "AI35"
command = UF, DB, UB,DF , z,s
time = 1

;-| Super Motions |--------------------
; Counter
[Command]   
name = "counter" 
command = x+a+y
time= 1

[Command]         
name = "armor"
command = b+a+y
time = 1

[Command]         
name = "turn"
command = a+b
time = 1

[Command]
name = "dizzy1"
command = B
time = 1

[Command]
name = "dizzy2"
command = F
time = 1

; 8 maiden rush
[Command]
name = "qcfqcb_z"
command = ~D,F,D,B,z
time= 25


[Command]
name = "qcfqcb_z2"
command = ~D,F,D,B,z
time= 25


[Command]
name = "qcfqcb_x"
command = ~D, DF, F, DF, D, DB,x
time= 25


[Command]
name = "qcfqcb_s"
command = ~D, DF, F, DF, D, DB,x
time= 25


; 8 maiden rush
[Command]
name = "qcfqcb_y"
command = ~D, DF, F, DF, D, DB,y
time= 25

[Command]
name = "qcfqcb_x2"
command = ~D, F, DF, D, DB,x
time= 25


[Command]
name = "qcfqcb_y2"
command = ~D, F, DF, D, DB,y
time= 25


[Command]
name = "qcbqcb_a" 
command = ~D, B, D, F, a
time = 25


[Command]
name = "qcbqcb_b" 
command = ~D, B, D, F, b
time = 25


; KOF98 DM
[Command]
name = "qcbqcb_x" 
command = ~D, B, D, F, x
time = 25


; KOF98 DM
[Command]
name = "qcbqcb_y" 
command = ~D, B, D, F, y
time = 25

; KOF 99 Scorch DM
[Command]
name = "qcfqcf_b"
command = ~D, DF, F, D, DF, b
time= 25

[Command]
name = "qcfqcf_b2"
command = ~D, F, D, DF, b
time= 25

; KOF 99 Scorch DM
[Command]
name = "qcfqcf_a"
command = ~D, DF, F, D, DF, a
time= 25

[Command]
name = "qcfqcf_a2"
command = ~D, F, D, DF, a
time= 25

; KOF 99 Scorch DM

[Command]
name = "qcfqcf_c"
command = ~D, DF, F, D, DF, c
time= 25

[Command]
name = "qcfqcf_c2"
command = ~D, F, D, DF, a+b
time= 25


[Command]
name = "3207x"
command = ~D,DF,F,D,DF,x
time= 25

[Command]
name = "3207y"
command = ~D,DF,F,D,DF,y
time= 25


[Command]
name = "3207x2"
command = ~D,F,D,DF,x
time= 25
[Command]
name = "3207y2"
command = ~D,F,D,F,y
time= 25


[Command]
name = "exceed"
command = ~D,DB,B,D,B,x+y
time= 25
[Command]
name = "exceed"
command = ~D,B,D,DB,x+y
time= 25
[Command]
name = "exceed"
command = ~D,B,D,B,x+y
time= 25
[Command]
name = "exceed"
command = ~D,DB,B,D,DB,c
time= 25
[Command]
name = "exceed"
command = ~D,DB,B,D,B,c
time= 25
[Command]
name = "exceed"
command = ~D,B,D,DB,c
time= 25
[Command]
name = "exceed"
command = ~D,B,D,B,c
time= 25


[Command]
name = "exceed2"
command = ~D,DF,F,D,DB,a+b
time= 25
[Command]
name = "exceed2"
command = ~D,DF,F,DF,D,B,a+b
time= 25
[Command]
name = "exceed2"
command = ~D,DF,F,D,B,a+b
time= 25
[Command]
name = "exceed2"
command = ~D,F,DF,D,DB,a+b
time= 25
[Command]
name = "exceed2"
command = ~D,F,D,DB,a+b
time= 25
[Command]
name = "exceed2"
command = ~D,F,DF,D,B,a+b
time= 25
[Command]
name = "exceed2"
command = ~D,F,D,B,a+b
time= 25
[Command]
name = "exceed2"
command = ~D,DF,F,DF,D,DB,c
time= 25
[Command]
name = "exceed2"
command = ~D,DF,F,D,DB,c
time= 25
[Command]
name = "exceed2"
command = ~D,DF,F,DF,D,B,c
time= 25
[Command]
name = "exceed2"
command = ~D,DF,F,D,B,c
time= 25
[Command]
name = "exceed2"
command = ~D,F,DF,D,DB,c
time= 25
[Command]
name = "exceed2"
command = ~D,F,D,DB,c
time= 25
[Command]
name = "exceed2"
command = ~D,F,DF,D,B,c
time= 25
[Command]
name = "exceed2"
command = ~D,F,D,B,c
time= 25


[Command]
name = "316"
command = ~D,DF,F,D,DF,F,D,DF,F,D,DF,F,c
time= 70
[Command]
name = "316"
command = ~D,F,D,F,D,F,D,F,x+y
time= 70
[Command]
name = "316"
command = ~D,F,D,F,D,F,D,F,c
time= 70

[Command]
name = "max2"
command = ~D,B,DB,D,DF,F,B,F,x+y
time= 70
[Command]
name = "max2"
command = ~D,DB,B,D,DF,F,B,F,x+y
time= 70
[Command]
name = "max2"
command = ~D,DB,B,DB,D,F,B,F,x+y
time= 70
[Command]
name = "max2"
command = ~D,B,D,DF,F,B,F,x+y
time= 70
[Command]
name = "max2"
command = ~D,DB,B,D,F,B,F,x+y
time= 70
[Command]
name = "max2"
command = ~D,B,DB,D,F,B,F,x+y
time= 70
[Command]
name = "max2"
command = ~D,B,F,B,c
time= 70
[Command]
name = "max2"
command = ~D,DB,B,DB,D,DF,F,B,F,c
time= 70
[Command]
name = "max2"
command = ~D,B,DB,D,DF,F,B,F,c
time= 70
[Command]
name = "max2"
command = ~D,DB,B,D,DF,F,B,F,c
time= 70
[Command]
name = "max2"
command = ~D,DB,B,DB,D,F,B,F,c
time= 70
[Command]
name = "max2"
command = ~D,B,D,DF,F,B,F,c
time= 70
[Command]
name = "max2"
command = ~D,DB,B,D,F,B,F,c
time= 70
[Command]
name = "max2"
command = ~D,B,DB,D,F,B,F,c
time= 70
[Command]
name = "max2"
command = ~D,B,D,F,B,F,c
time= 70
;-| Special Motions |-------------------------
[Command]
name = "ucut_x" 
command = ~F, D, DF, x
[Command]
name = "ucut_x" 
command = ~F, D, F, x

[Command]
name = "ucut_y"
command = ~F, D, DF, y
[Command]
name = "ucut_y" 
command = ~F, D, F, y

[Command]
name = "ucut_z"
command = ~F, D, DF, x+y
[Command]
name = "ucut_z"
command = ~F, D, DF, c
[Command]
name = "ucut_z"
command = ~F, D, F, x+y
[Command]
name = "ucut_z"
command = ~F, D, F, c

[Command]
name = "3p1_x"
command = ~D, DB, B, x

[Command]
name = "3p1_z" 
command = ~D, DB, B, y

[Command]
name = "3p1_x" 
command = ~D, B, x

[Command]
name = "3p1_z" 
command = ~D, B, y

[Command]
name = "scorch_a" 
command = ~F, D, DF, a

[Command]
name = "scorch_c"
command = ~F, D, DF, b

[Command]
name = "struggle"
command = B,F
time = 10

[command]
name = "Fireball_x" 
command = ~D, DF, F, x
time = 15

[Command]
name = "Fireball_z"
command = ~D, DF, F, y
time = 15

[Command]
name = "QCF_a" 
command = ~D, B, F, x
time = 15

[Command]
name = "QCF_c"
command = ~D, B, F, y
time = 15

[Command]
name = "QCF_a" 
command = ~D, DB, B, F, x
time = 15

[Command]
name = "QCF_c"
command = ~D, DB, B, F, y
time = 15

[Command]
name = "QCB_a" 
command = ~D, B, a
time = 15
[Command]
name = "QCB_c"
command = ~D, B, b
time = 15
[Command]
name = "QCB_a" 
command = ~D, DB, B, a
time = 15
[Command]
name = "QCB_c"
command = ~D, DB, B, b
time = 15

[Command]
name = "QCB_a2"
command = ~F,DF,D,B,a
time = 15
[Command]
name = "QCB_a2"
command = ~F,DF,D,DB,B,a
time = 15
[Command]
name = "QCB_c2"
command = ~F,DF,D,B,b
time = 15
[Command]
name = "QCB_c2"
command = ~F,DF,D,DB,B,b
time = 15

[Command]
name = "longjump"
command = D, $U
time = 18
;-| Double Tap |------------------------
[Command]
name = "FFD"
command = F,F,F
time = 17

[Command]
name = "FF"
command = F,F
time = 10

[Command]
name = "BB"
command = B,B
time = 10

;-| 2/3 Button Combination |-----------------
[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1
[Command]
name = "recovery";Extra recovery commands (optional)
command = c
time = 1

[Command]
name = "ab"   ;knock down
command = y+b
time = 1

[Command]         
name = "ay"   ;st
command = a+y
time = 1
[Command]         
name = "xb"   ;mode
command = x+b
time = 1

[Command]
name = "dodge"   
command = a+x
time = 1

;-| Dir + Button |-----------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1
;-| Single Button |----------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = c
time = 1

[Command]
name = "c"
command = b
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

[Command]
name = "s"
command = s
time = 1

;-| Hold Button |------------------------
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

;-| Hold Dir |---------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1
;--------------------------------------
; Commands
[Statedef -1]
;Counter mode
[State -1]
type = ChangeState
value = 12000
triggerall = power >= 3000 + var(20)*100
triggerall = var(55) = 0
triggerall = var(14) < 1 && var(3) < 1
triggerall = var(16) < 1
triggerall = ctrl 
triggerall = statetype != A
trigger1 = command = "counter"
trigger2 = command = "holdfwd"
trigger2 = command = "z"

;Armor mode
[State -1]
type = ChangeState
value = 13000
triggerall = power >= 3000 + var(20)*100
triggerall = var(55) = 0
triggerall = var(14) < 1 && var(3) < 1
triggerall = var(16) < 1
triggerall = ctrl 
triggerall = statetype != A
trigger1 = command = "armor"
trigger2 = command = "holdback"
trigger2 = command = "z"

;2k2 mode
[State -1]
type = ChangeState
value = 1991
triggerall = power >= 1000 + var(20)*100
triggerall = var(55) = 0
triggerall = var(14) < 1 && var(3) < 1
triggerall = var(16) < 1
triggerall = ctrl 
triggerall = statetype != A
trigger1 = command = "xb" || (command = "ay" && var(59) < -1)
trigger2 = command = "holddown"
trigger2 = command = "z"
[State -1]
type = ChangeState
value = 1990
triggerall = command = "xb" || (command = "holddown" && command = "z") || (command = "ay" && var(59) < -1)
triggerall = var(16) < 1
triggerall = var(14) < 1 && var(3) < 1
triggerall = var(55) = 0
triggerall = power >= 2000 + var(20)*100 && movecontact > 0
trigger1 = stateno = 212 && time = [6,8]
trigger2 = stateno = 200 && time = [7,10]
trigger3 = stateno = 230 && time = [7,10]
trigger4 = stateno = 450
trigger4 = animtime >= -20
trigger4 = animtime <= -17
trigger5 = stateno = 235
trigger5 = animtime >= -22
trigger5 = animtime <= -19
trigger6 = stateno = 236 && time = [10,13]
trigger7 = stateno = 240
trigger7 = animtime >= -21
trigger7 = animtime <= -19
trigger8 = stateno = 202
trigger9 = stateno = 245 && time = [4,13]
trigger10 = stateno = 250 && time = [9,14]
trigger11 = stateno = 216
trigger11 = time >= 21
trigger11 = time <= 32
trigger12 = stateno = 11000
trigger12 = animtime >= -25
trigger12 = animtime <= -20
trigger13 = stateno = 251
trigger13 = animtime <= -9
trigger14 = stateno = 400 && time = [6,8]
trigger15 = stateno = 217
trigger15 = time >= 17 && time <= 27
trigger16 = stateno = 430 && time > 5 && time < 10
trigger17 = stateno = 11001 && time = [4,9]
trigger18 = stateno = 420 && time = [6,11]
trigger19 = stateno = 215 && time = [19,29]
trigger20 = stateno = 218 && time = [25,36]
trigger21 = stateno = 225 && time = [4,10]
trigger22 = stateno = 220 && time = [11,18]

;--------exceed1
[State -1]
type = ChangeState
value = 3500
triggerall = command != "holdfwd" && var(51) = 0
triggerall = command = "exceed" && command != "hold_a" && command != "hold_b"
triggerall = var(55) = 0
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 104
trigger12 = stateno = 217 && movecontact > 0
trigger12 = time >= 17 && time <= 27
trigger13 = stateno = 430 && time > 5 && time < 10
trigger14 = statetype = S
trigger14 = ctrl
;--------exceed2
[State -1]
type = ChangeState
value = 3600
triggerall = command != "holdfwd" && var(51) = 0
triggerall = command = "exceed2" && command != "hold_x" && command != "hold_y"
triggerall = var(55) = 0
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 104
trigger12 = stateno = 217 && movecontact > 0
trigger12 = time >= 17 && time <= 27
trigger13 = stateno = 430 && time > 5 && time < 10
trigger14 = statetype = S
trigger14 = ctrl

[State -1]        ;max2
type = ChangeState
value = 2219
triggerall = command = "max2"
triggerall = command != "holdback" && command != "hold_a" && command != "hold_b"
triggerall = power >= 1000 + var(20)*100 && var(3) > 0
triggerall = var(55) = 0
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 104
trigger12 = stateno = 217 && movecontact > 0
trigger12 = time >= 17 && time <= 27
trigger13 = stateno = 430 && time > 5 && time < 10
trigger14 = statetype != A
trigger14 = ctrl

[State -1]        ;darkness scorch
type = ChangeState
value = 2600
triggerall = command = "3207x" && command != "hold_a" && command != "hold_b" && command != "hold_y"
triggerall = command != "holdback"
triggerall = power >= 1000 + var(20)*100 || var(3) > 0
triggerall = var(55) = 0
triggerall = var(14) < 1
triggerall = var(16) < 1
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 104
trigger12 = stateno = 217 && movecontact > 0
trigger12 = time >= 17 && time <= 27
trigger13 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 2600
trigger1 = command = "3207x" || command = "3207x2"
trigger1 = command != "holdback" && command != "hold_a" && command != "hold_b" && command != "hold_y"
trigger1 = power >= 1000 + var(20)*100 || var(3) > 0
trigger1 = var(55) = 0
trigger1 = var(14) < 1
trigger1 = var(16) < 1
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 2610
triggerall = command = "3207y" && command != "hold_a" && command != "hold_b" && command != "hold_x"
triggerall = command != "holdback"
triggerall = power >= 1000 + var(20)*100 || var(3) > 0
triggerall = var(55) = 0
triggerall = var(14) < 1
triggerall = var(16) < 1
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 104
trigger12 = stateno = 217 && movecontact > 0
trigger12 = time >= 17 && time <= 27
trigger13 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 2610
trigger1 = command = "3207y" || command = "3207y2"
trigger1 = command != "holdback" && command != "hold_a" && command != "hold_b" && command != "hold_x"
trigger1 = power >= 1000 + var(20)*100 || var(3) > 0
trigger1 = var(55) = 0
trigger1 = var(14) < 1
trigger1 = var(16) < 1
trigger1 = statetype = S
trigger1 = ctrl

[State -1]        ;darkness scorch(c)
type = ChangeState
value = 2599
triggerall = command = "3207x" && command != "hold_a" && command != "hold_b" && command != "hold_y"
triggerall = command != "holdback"
triggerall = var(55) = 0
triggerall = var(14) > 0
triggerall = var(16) < 1
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 1000
trigger12 = stateno = 1020
trigger13 = stateno = 1030
trigger14 = stateno = 1038
trigger15 = stateno = 1040
trigger16 = stateno = 1037
trigger17 = stateno = 251
trigger17 = movecontact > 0
trigger17 = animtime <= -9
trigger18 = stateno = 104
trigger19 = stateno = 217 && movecontact > 0
trigger19 = time >= 17 && time <= 27
trigger20 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 2599
trigger1 = command = "3207x" || command = "3207x2"
trigger1 = command != "holdback" && command != "hold_a" && command != "hold_b" && command != "hold_y"
trigger1 = var(55) = 0
trigger1 = var(14) > 0
trigger1 = var(16) < 1
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 2609
triggerall = command = "3207y" && command != "hold_a" && command != "hold_b" && command != "hold_x"
triggerall = command != "holdback"
triggerall = var(55) = 0
triggerall = var(14) > 0
triggerall = var(16) < 1
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 1000
trigger12 = stateno = 1020
trigger13 = stateno = 1030
trigger14 = stateno = 1038
trigger15 = stateno = 1040
trigger16 = stateno = 1037
trigger17 = stateno = 251
trigger17 = movecontact > 0
trigger17 = animtime <= -9
trigger18 = stateno = 104
trigger19 = stateno = 217 && movecontact > 0
trigger19 = time >= 17 && time <= 27
trigger20 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 2609
trigger1 = command = "3207y" || command = "3207y2"
trigger1 = command != "holdback" && command != "hold_a" && command != "hold_b" && command != "hold_x"
trigger1 = var(55) = 0
trigger1 = var(14) > 0
trigger1 = var(16) < 1
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------------
;KOF98 Fireball DM(counter)
[State -1]
type = ChangeState
value = 7599
triggerall = command = "qcbqcb_x" || command = "qcbqcb_y"
triggerall = command != "holdback" && command != "hold_a" && command != "hold_b"
triggerall = var(14) > 0
triggerall = var(55) = 0
triggerall = NumHelper(7602) < 1 && NumHelper(7610) < 1
triggerall = var(16) < 1
trigger1 = statetype = S
trigger1 = IsHelper = 0
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 1000
trigger13 = stateno = 1020
trigger14 = stateno = 1030
trigger15 = stateno = 1038
trigger16 = stateno = 1040
trigger17 = stateno = 1037
trigger18 = stateno = 251
trigger18 = movecontact > 0
trigger18 = animtime <= -9
trigger19 = stateno = 104
trigger20 = stateno = 217 && movecontact > 0
trigger20 = time >= 17 && time <= 27
trigger21 = stateno = 430 && time > 5 && time < 10
;-------------------------------------
;KOF98 Fireball DM
[State -1]
type = ChangeState
value = 7600
triggerall = command != "holdback" && command != "hold_a" && command != "hold_b"
triggerall = (command = "qcbqcb_x" && power >= 1000 + var(20)*100) || ((command = "qcbqcb_x" || command = "qcbqcb_y") && var(3) > 0)
triggerall = var(55) = 0
triggerall = var(14) < 1
triggerall = var(16) < 1
triggerall = NumHelper(7602) < 1 && NumHelper(7610) < 1
trigger1 = statetype = S
trigger1 = IsHelper = 0
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 104
trigger13 = stateno = 217 && movecontact > 0
trigger13 = time >= 17 && time <= 27
trigger14 = stateno = 430 && time > 5 && time < 10
;---------------------------------------
;KOF98 Fireball DM
[State -1]
type = ChangeState
value = 7700
triggerall = command = "qcbqcb_y" && command != "hold_a" && command != "hold_b"
triggerall = command != "holdback"
triggerall = power >= 2000 + var(20)*100
triggerall = var(55) = 0
triggerall = var(14) < 1 && var(3) < 1
triggerall = var(16) < 1
triggerall = NumHelper(7602) < 1 && NumHelper(7610) < 1
trigger1 = statetype = S
trigger1 = IsHelper = 0
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 104
trigger13 = stateno = 217 && movecontact > 0
trigger13 = time >= 17 && time <= 27
trigger14 = stateno = 430 && time > 5 && time < 10
;-------------------------------------
;Scorch DM
[State -1]
type = ChangeState
value = 7021
triggerall = command = "qcfqcf_c" && command != "hold_x" && command != "hold_y"
triggerall = command != "holdback"
triggerall = var(55) = 0
triggerall = power >= 3000 + var(20)*100
triggerall = var(14) < 1 && var(3) < 1
triggerall = var(16) < 1
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 104
trigger12 = stateno = 217 && movecontact > 0
trigger12 = time >= 17 && time <= 27
trigger13 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 7021
trigger1 = command = "qcfqcf_c" || command = "qcfqcf_c2"
trigger1 = command != "holdback" && command != "hold_x" && command != "hold_y"
trigger1 = var(55) = 0
trigger1 = power >= 3000 + var(20)*100
trigger1 = var(14) < 1 && var(3) < 1
trigger1 = var(16) < 1
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------------
;Scorch DM
[State -1]
type = ChangeState
value = 7011
triggerall = command = "qcfqcf_b" && command != "hold_x" && command != "hold_y" && command != "hold_a"
triggerall = command != "holdback"
triggerall = power >= 2000 + var(20)*100
triggerall = var(55) = 0
triggerall = var(14) < 1 && var(3) < 1
triggerall = var(16) < 1
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 104
trigger12 = stateno = 217 && movecontact > 0
trigger12 = time >= 17 && time <= 27
trigger13 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 7011
trigger1 = command = "qcfqcf_b" || command = "qcfqcf_b2"
trigger1 = command != "holdback" && command != "hold_x" && command != "hold_y" && command != "hold_a"
trigger1 = power >= 2000 + var(20)*100
trigger1 = var(55) = 0
trigger1 = var(14) < 1 && var(3) < 1
trigger1 = var(16) < 1
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------
;Scorch DM     (counter)
[State -1]
type = ChangeState
value = 6999
triggerall = command = "qcfqcf_a" || command = "qcfqcf_b"
triggerall = command != "holdback" && command != "hold_x" && command != "hold_y"
triggerall = var(55) = 0
triggerall = var(14) > 0
triggerall = var(16) < 1
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 1000
trigger12 = stateno = 1020
trigger13 = stateno = 1030
trigger14 = stateno = 1038
trigger15 = stateno = 1040
trigger16 = stateno = 1037
trigger17 = stateno = 251
trigger17 = movecontact > 0
trigger17 = animtime <= -9
trigger18 = stateno = 104
trigger19 = stateno = 217 && movecontact > 0
trigger19 = time >= 17 && time <= 27
trigger20 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 6999
trigger1 = command = "qcfqcf_a" || command = "qcfqcf_b" || command = "qcfqcf_a2" || command = "qcfqcf_b2"
trigger1 = command != "holdback" && command != "hold_x" && command != "hold_y"
trigger1 = var(55) = 0
trigger1 = var(14) > 0
trigger1 = var(16) < 1
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------
;Scorch DM
[State -1]
type = ChangeState
value = 7000
triggerall = command != "holdback" && command != "hold_x" && command != "hold_y"
triggerall = (command = "qcfqcf_a" && power >= 1000 + var(20)*100) || ((command = "qcfqcf_a" || command = "qcfqcf_b") && var(3) > 0)
triggerall = var(55) = 0
triggerall = var(14) < 1
triggerall = var(16) < 1
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 104
trigger12 = stateno = 217 && movecontact > 0
trigger12 = time >= 17 && time <= 27
trigger13 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 7000
trigger1 = command != "holdback" && command != "hold_x" && command != "hold_y"
trigger1 = ((command = "qcfqcf_a" || command = "qcfqcf_a2") && power >= 1000 + var(20)*100) || ((command = "qcfqcf_a" || command = "qcfqcf_a2" || command = "qcfqcf_b" || command = "qcfqcf_b2") && var(3) > 0)
trigger1 = var(55) = 0
trigger1 = var(14) < 1
trigger1 = var(16) < 1
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------
; 8 maiden rush level 3 (start)
[State -1]
type = ChangeState
value = 2400
triggerall = command = "qcfqcb_z" && command != "hold_a" && command != "hold_b"
triggerall = command != "holdfwd"
triggerall = (power >= 3000 + var(20)*100 && var(3) < 1) || (power >= 1000 + var(20)*100 && var(3) > 0)
triggerall = var(55) = 0
triggerall = var(14) < 1
triggerall = var(16) < 1
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 104
trigger12 = stateno = 217 && movecontact > 0
trigger12 = time >= 17 && time <= 27
trigger13 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 2400
trigger1 = command = "qcfqcb_z" || command = "qcfqcb_z2"
trigger1 = command != "holdfwd" && command != "hold_a" && command != "hold_b"
trigger1 = (power >= 3000 + var(20)*100 && var(3) < 1) || (power >= 1000 + var(20)*100 && var(3) > 0)
trigger1 = var(55) = 0
trigger1 = var(14) < 1
trigger1 = var(16) < 1
trigger1 = statetype = S
trigger1 = ctrl
[State -1]
type = ChangeState
value = 2400
triggerall = command = "qcfqcb_z" || command = "qcfqcb_z2"
triggerall = command != "holdfwd" && command != "hold_a" && command != "hold_b"
triggerall = var(3) > 0 && power >= 2000 + var(20)*100
triggerall = var(55) = 0 && var(14) < 1 && var(16) < 1
trigger1 = stateno = 510 && time > 8 && time < 24
trigger2 = stateno = 511 && time > 7 && time < 23
trigger3 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
trigger4 = stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040
trigger5 = stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111
trigger5 = movecontact > 0

; 8 maiden rush level 1 (start,counter)
[State -1]
type = ChangeState
value = 1999
triggerall = command = "qcfqcb_x" || command = "qcfqcb_y"
triggerall = command != "holdfwd" && command != "hold_a" && command != "hold_b"
triggerall = var(55) = 0
triggerall = var(14) > 0
triggerall = var(16) < 1
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 1000
trigger12 = stateno = 1020
trigger13 = stateno = 1030
trigger14 = stateno = 1038
trigger15 = stateno = 1040
trigger16 = stateno = 1037
trigger17 = stateno = 251
trigger17 = movecontact > 0
trigger17 = animtime <= -9
trigger18 = stateno = 104
trigger19 = stateno = 217 && movecontact > 0
trigger19 = time >= 17 && time <= 27
trigger20 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 1999
trigger1 = command = "qcfqcb_x" || command = "qcfqcb_y" || command = "qcfqcb_x2" || command = "qcfqcb_y2"
trigger1 = command != "holdfwd" && command != "hold_a" && command != "hold_b"
trigger1 = var(55) = 0
trigger1 = var(14) > 0
trigger1 = var(16) < 1
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = varset
triggerall = command = "qcfqcb_x" || command = "qcfqcb_y" || command = "qcfqcb_x2" || command = "qcfqcb_y2"
triggerall = command != "holdfwd" && command != "hold_a" && command != "hold_b"
triggerall = power >= 2000 + var(20)*100 || (var(3) > 0 && power >= 1000 + var(20)*100)
triggerall = var(55) = 0 && var(14) < 1 && var(16) < 1
trigger1 = stateno = 510 && time > 8 && time < 24
trigger2 = stateno = 511 && time > 7 && time < 23
trigger3 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
var(45) = 15
persistent = 0
[State -1]
type = varset
trigger1 = command = "qcfqcb_s"
trigger1 = command != "holdfwd" && var(45) = 0 && movecontact > 0
trigger1 = power >= 2000 + var(20)*100 || (var(3) > 0 && power >= 1000 + var(20)*100)
trigger1 = var(55) = 0 && var(14) < 1 && var(16) < 1
trigger1 = stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040
var(45) = 15
ignorehitpause = 1
persistent = 0
[State -1]
type = varset
trigger1 = command = "qcfqcb_x" || command = "qcfqcb_y" || command = "qcfqcb_x2" || command = "qcfqcb_y2"
trigger1 = command != "holdfwd" && movecontact > 0 && command != "hold_a" && command != "hold_b"
trigger1 = var(3) > 0 && power >= 1000 + var(20)*100
trigger1 = var(55) = 0 && var(14) < 1 && var(16) < 1
trigger1 = stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111
var(45) = 15
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = 1998
triggerall = command = "qcfqcb_x" || command = "qcfqcb_y" || command = "qcfqcb_x2" || command = "qcfqcb_y2"
triggerall = command != "holdfwd" && command != "hold_a" && command != "hold_b"
triggerall = power >= 2000 + var(20)*100 || (var(3) > 0 && power >= 1000 + var(20)*100)
triggerall = var(55) = 0 && var(14) < 1 && var(16) < 1
trigger1 = stateno = 510 && time > 8 && time < 24
trigger2 = stateno = 511 && time > 7 && time < 23
trigger3 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
[State -1]
type = ChangeState
value = 1998
trigger1 = command = "qcfqcb_s"
trigger1 = command != "holdfwd" && movecontact > 0
trigger1 = power >= 2000 + var(20)*100 || (var(3) > 0 && power >= 1000 + var(20)*100)
trigger1 = var(55) = 0 && var(14) < 1 && var(16) < 1
trigger1 = stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040
[State -1]
type = ChangeState
value = 1998
trigger1 = command = "qcfqcb_x" || command = "qcfqcb_y" || command = "qcfqcb_x2" || command = "qcfqcb_y2"
trigger1 = command != "holdfwd" && movecontact > 0 && command != "hold_a" && command != "hold_b"
trigger1 = var(3) > 0 && power >= 1000 + var(20)*100
trigger1 = var(55) = 0 && var(14) < 1 && var(16) < 1
trigger1 = stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111

; 8 maiden rush 95
[State -1]
type = ChangeState
value = 1994
triggerall = command = "qcbqcb_a" || command = "qcbqcb_b"
triggerall = command != "holdback" && command != "hold_x" && command != "hold_y"
triggerall = power >= 1500 + var(20)*100
triggerall = var(55) = 0
triggerall = var(14) < 1 && var(3) < 1
triggerall = var(16) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 104
trigger13 = stateno = 217 && movecontact > 0
trigger13 = time >= 17 && time <= 27
trigger14 = stateno = 430 && time > 5 && time < 10

; 8 maiden rush level 1 (start)
[State -1]
type = ChangeState
value = 2000
triggerall = command != "holdfwd" && command != "hold_a" && command != "hold_b"
triggerall = (command = "qcfqcb_x" && power >= 1000 + var(20)*100) || ((command = "qcfqcb_x" || command = "qcfqcb_y") && var(3) > 0)
triggerall = var(55) = 0
triggerall = var(14) < 1
triggerall = var(16) < 1
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 104
trigger12 = stateno = 217 && movecontact > 0
trigger12 = time >= 17 && time <= 27
trigger13 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 2000
trigger1 = command != "holdfwd" && command != "hold_a" && command != "hold_b"
trigger1 = ((command = "qcfqcb_x" || command = "qcfqcb_x2") && power >= 1000 + var(20)*100) || ((command = "qcfqcb_x" || command = "qcfqcb_x2" || command = "qcfqcb_y" || command = "qcfqcb_y2") && var(3) > 0)
trigger1 = var(55) = 0
trigger1 = var(14) < 1
trigger1 = var(16) < 1
trigger1 = statetype = S
trigger1 = ctrl

; 8 maiden rush level 2 (start)
[State -1]
type = ChangeState
value = 2500
triggerall = command = "qcfqcb_y" && command != "hold_a" && command != "hold_b" && command != "hold_x"
triggerall = command != "holdfwd"
triggerall = power >= 2000 + var(20)*100
triggerall = var(55) = 0
triggerall = var(14) < 1 && var(3) < 1
triggerall = var(16) < 1
trigger1 = stateno = 212
trigger1 = movecontact > 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger3 = movecontact > 0
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger7 = animtime >= -23
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 104
trigger12 = stateno = 217 && movecontact > 0
trigger12 = time >= 17 && time <= 27
trigger13 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 2500
trigger1 = command = "qcfqcb_y" || command = "qcfqcb_y2"
trigger1 = command != "holdfwd" && command != "hold_a" && command != "hold_b" && command != "hold_x"
trigger1 = power >= 2000 + var(20)*100
trigger1 = var(55) = 0
trigger1 = var(14) < 1 && var(3) < 1
trigger1 = var(16) < 1
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------2k2 mode---------
[State -1]
type = varset
triggerall = command = "QCB_a2"||command = "QCB_c2"||command = "QCB_a"||command = "QCB_c" || command = "3p1_x" || command = "3p1_z"
triggerall = var(55) = 0 && var(3) > 0 && var(50) = 0
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
var(50) = 15
ignorehitpause = 1
persistent = 0
[State -1]
type = varset
triggerall = command = "ucut_x" || command = "ucut_y" || command = "scorch_a" || command = "scorch_c" || command = "QCF_a" || command = "QCF_c" || command = "Fireball_x" || command = "Fireball_z"
triggerall = var(55) = 0 && var(3) > 0 && var(50) = 0
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
var(50) = 15
ignorehitpause = 1
persistent = 0
[State -1]
type = varset
triggerall = var(55) = 0 && var(3) > 0 && var(50) = 0 && movecontact > 0
trigger1 = (stateno = 510 && time > 8 && time < 24) || (stateno = 511 && time > 7 && time < 23) || ((stateno = 516 || stateno = 520) && time > 11 && time < 27)||(stateno = 301 && time > 3 && time < 9)
trigger1 = command = "QCB_a" || command = "QCB_c"
trigger2 = stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040||(stateno = 301 && time > 3 && time < 9)
trigger2 = command = "QCB_a" || command = "QCB_c"
trigger3 = stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111||(stateno = 301 && time > 3 && time < 9)
trigger3 = command = "ucut_x" || command = "ucut_y"
trigger4 = stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040 || stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111
trigger4 = command = "3p1_x" || command = "3p1_z"
trigger5 = stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111 || stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040
trigger5 = command = "scorch_a" || command = "scorch_c"
trigger6 = stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111 || stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040||(stateno = 301 && time > 3 && time < 9)
trigger6 = command = "Fireball_x" || command = "Fireball_z"
trigger6 = numprojID(7000) = 0
trigger7 = (stateno = 510 && time > 8 && time < 24) || (stateno = 511 && time > 7 && time < 23) || ((stateno = 516 || stateno = 520) && time > 11 && time < 27)
trigger7 = command = "ucut_x" || command = "ucut_y" || command = "scorch_a" || command = "scorch_c"
trigger8 = (stateno = 510 && time > 8 && time < 24) || (stateno = 511 && time > 7 && time < 23) || ((stateno = 516 || stateno = 520) && time > 11 && time < 27)
trigger8 = command = "Fireball_x" || command = "Fireball_z"
trigger8 = numprojID(7000) = 0
var(50) = 15
ignorehitpause = 1
persistent = 0
;---------------------------------------2k2 mode 2-------
[State -1]
type = varadd
trigger1 = var(3) > 0 && var(50) = 15
var(3) = -128
ignorehitpause = 1
persistent = 0
;-------------------------------------------------
;Choke Slam
[State -1]
type = ChangeState
value = 4400
triggerall = command = "QCB_a2" && command != "hold_x" && command != "hold_b" && command != "hold_y"
triggerall = command != "holdfwd"
triggerall = var(55) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 251
trigger12 = animtime <= -9
trigger12 = var(14) > 0
trigger12 = movecontact > 0
trigger13 = stateno = 104
trigger14 = stateno = 217 && movecontact > 0
trigger14 = time >= 17 && time <= 27
trigger15 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 4400
triggerall = command = "QCB_a2"; && command != "hold_x" && command != "hold_b" && command != "hold_y"
;triggerall = command != "holdfwd"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
[State -1]
type = ChangeState
value = 4400
triggerall = command = "QCB_a2" || command = "QCB_a"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = ((stateno = 510 && time > 8 && time < 24) || (stateno = 511 && time > 7 && time < 23) || ((stateno = 516 || stateno = 520) && time > 11 && time < 27)) && movecontact > 0
trigger2 = (stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040) && movecontact > 0
trigger3 = stateno = 301 && time > 3 && time < 9 && movecontact > 0
;---------------------------------------------------
;Choke Slam
[State -1]
type = ChangeState
value = 4733
triggerall = command = "QCB_c2" && command != "hold_x" && command != "hold_a" && command != "hold_y"
triggerall = command != "holdfwd"
triggerall = var(55) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 251
trigger12 = animtime <= -9
trigger12 = var(14) > 0
trigger12 = movecontact > 0
trigger13 = stateno = 104
trigger14 = stateno = 217 && movecontact > 0
trigger14 = time >= 17 && time <= 27
trigger15 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 4733
triggerall = command = "QCB_c2"; && command != "hold_x" && command != "hold_a" && command != "hold_y"
;triggerall = command != "holdfwd"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
[State -1]
type = ChangeState
value = 4733
triggerall = command = "QCB_c2" || command = "QCB_c"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = ((stateno = 510 && time > 8 && time < 24) || (stateno = 511 && time > 7 && time < 23) || ((stateno = 516 || stateno = 520) && time > 11 && time < 27)) && movecontact > 0
trigger2 = (stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040) && movecontact > 0
trigger3 = stateno = 301 && time > 3 && time < 9 && movecontact > 0
;---------------------------------------
;Choke Slam
[State -1]
type = ChangeState
value = 4000
triggerall = command = "QCB_a" && command != "hold_x" && command != "hold_b" && command != "hold_y"
triggerall = command != "holdfwd"
triggerall = var(55) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 251
trigger12 = animtime <= -9
trigger12 = var(14) > 0
trigger12 = movecontact > 0
trigger13 = stateno = 104
trigger14 = stateno = 217 && movecontact > 0
trigger14 = time >= 17 && time <= 27
trigger15 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 4000
triggerall = command = "QCB_a"; && command != "hold_x" && command != "hold_b" && command != "hold_y"
;triggerall = command != "holdfwd"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
;---------------------------------------------------
;Choke Slam
[State -1]
type = ChangeState
value = 4333
triggerall = command = "QCB_c" && command != "hold_x" && command != "hold_a" && command != "hold_y"
triggerall = command != "holdfwd"
triggerall = var(55) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 251
trigger12 = animtime <= -9
trigger12 = var(14) > 0
trigger12 = movecontact > 0
trigger13 = stateno = 104
trigger14 = stateno = 217 && movecontact > 0
trigger14 = time >= 17 && time <= 27
trigger15 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 4333
triggerall = command = "QCB_c"; && command != "hold_x" && command != "hold_a" && command != "hold_y"
;triggerall = command != "holdfwd"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
;-----------------------------------------
;Choke Slam
;[State -1]
;type = ChangeState
;value = 4500
;triggerall = command = "QCB_a" && command != "hold_x" && command != "hold_b" && command != "hold_y"
;triggerall = command != "holdfwd"
;triggerall = var(55) = 0
;trigger1 = stateno = 510 && time > 8 && time < 24
;trigger2 = stateno = 511 && time > 7 && time < 23
;trigger3 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
;-----------------------------------------
;Choke Slam
;[State -1]
;type = ChangeState
;value = 4833
;triggerall = command = "QCB_c" && command != "hold_x" && command != "hold_a" && command != "hold_y"
;triggerall = command != "holdfwd"
;triggerall = var(55) = 0
;trigger1 = stateno = 510 && time > 8 && time < 24
;trigger2 = stateno = 511 && time > 7 && time < 23
;trigger3 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
;-----------------------------------
;Scorch A  
[State -1]
type = ChangeState
value = 299
triggerall = command = "scorch_a" && command != "hold_x" && command != "hold_b" && command != "hold_y"
triggerall = command != "holdback"
triggerall = var(55) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 251
trigger12 = animtime <= -9
trigger12 = var(14) > 0
trigger12 = movecontact > 0
trigger13 = stateno = 104
trigger14 = stateno = 217 && movecontact > 0
trigger14 = time >= 17 && time <= 27
;trigger15 = stateno = 510 && time > 8 && time < 24
;trigger16 = stateno = 511 && time > 7 && time < 23
;trigger17 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
trigger15 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 299
triggerall = command = "scorch_a"; && command != "hold_x" && command != "hold_b" && command != "hold_y"
;triggerall = command != "holdback"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
trigger20 = movecontact > 0
trigger20 = stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111 || stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040
trigger21 = ((stateno = 510 && time > 8 && time < 24) || (stateno = 511 && time > 7 && time < 23) || ((stateno = 516 || stateno = 520) && time > 11 && time < 27)) && movecontact > 0
;-----------------------------------
;Scorch C
[State -1]
type = ChangeState
value = 305
triggerall = command = "scorch_c" && command != "hold_x" && command != "hold_a" && command != "hold_y"
triggerall = command != "holdback"
triggerall = var(55) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 251
trigger12 = animtime <= -9
trigger12 = var(14) > 0
trigger12 = movecontact > 0
trigger13 = stateno = 104
trigger14 = stateno = 217 && movecontact > 0
trigger14 = time >= 17 && time <= 27
;trigger15 = stateno = 510 && time > 8 && time < 24
;trigger16 = stateno = 511 && time > 7 && time < 23
;trigger17 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
trigger15 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 305
triggerall = command = "scorch_c"; && command != "hold_x" && command != "hold_a" && command != "hold_y"
;triggerall = command != "holdback"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
trigger20 = movecontact > 0
trigger20 = stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111 || stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040
trigger21 = ((stateno = 510 && time > 8 && time < 24) || (stateno = 511 && time > 7 && time < 23) || ((stateno = 516 || stateno = 520) && time > 11 && time < 27)) && movecontact > 0
;-------------------------------
;Grab Over (con)
[State -1]
type = ChangeState
value = 2999
triggerall = var(55) = 0
triggerall = command != "holdback"
triggerall = command = "QCF_a"
triggerall = movecontact > 0
trigger1 = stateno = 212
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 251
trigger11 = animtime <= -9
trigger11 = var(14) > 0
trigger12 = stateno = 217
trigger12 = time >= 17 && time <= 27
;trigger13 = stateno = 510 && time > 8 && time < 24
;trigger14 = stateno = 511 && time > 7 && time < 23
;trigger15 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
trigger13 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 2999
triggerall = command = "QCF_a"
triggerall = command != "holdback" && movecontact > 0
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
;--------------------------------
;Grab Over
[State -1]
type = ChangeState
value = 3000
triggerall = command = "QCF_a" && command != "hold_a" && command != "hold_b" && command != "hold_y"
triggerall = command != "holdback"
triggerall = var(55) = 0
triggerall = movecontact = 0
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = stateno = 510 && time > 8 && time < 24
;trigger3 = stateno = 511 && time > 7 && time < 23
;trigger4 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
trigger2 = stateno = 430 && time > 5 && time < 10
trigger3 = stateno = 236 && time = [10,13]
[State -1]
type = ChangeState
value = 3000
triggerall = command = "QCF_a" && command != "hold_a" && command != "hold_b" && command != "hold_y"
triggerall = command != "holdback" && movecontact = 0
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
;----------------------------------
;Grab Over  (miss)
[State -1]
type = ChangeState
value = 3201
triggerall = command = "QCF_c" && command != "hold_a" && command != "hold_b" && command != "hold_x"
triggerall = command != "holdback"
triggerall = var(55) = 0
triggerall = movecontact > 0
trigger1 = stateno = 212
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 235
trigger3 = animtime >= -22
trigger3 = animtime <= -19
trigger4 = stateno = 236 && time = [10,13]
trigger5 = stateno = 240
trigger5 = animtime >= -21
trigger5 = animtime <= -19
trigger6 = stateno = 202
trigger7 = stateno = 245
trigger7 = animtime <= -20
trigger8 = stateno = 250
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 251
trigger11 = animtime <= -9
trigger11 = var(14) > 0
trigger12 = stateno = 217
trigger12 = time >= 17 && time <= 27
;trigger13 = stateno = 510 && time > 8 && time < 24
;trigger14 = stateno = 511 && time > 7 && time < 23
;trigger15 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
trigger13 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 3201
trigger1 = command = "QCF_c" && command != "hold_a" && command != "hold_b" && command != "hold_x"
trigger1 = command != "holdback"
trigger1 = var(55) = 0
trigger1 = p2movetype = H
trigger1 = statetype = S
trigger1 = ctrl
[State -1]
type = ChangeState
value = 3201
triggerall = command = "QCF_c" && command != "hold_a" && command != "hold_b" && command != "hold_x"
triggerall = command != "holdback"
triggerall = movecontact > 0 || p2movetype = H
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
;--------------------------------
;Grab Over
[State -1]
type = ChangeState
value = 3200
triggerall = command = "QCF_c" && command != "hold_a" && command != "hold_b" && command != "hold_x"
triggerall = command != "holdback"
triggerall = var(55) = 0
triggerall = movecontact = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = stateno = 240
trigger3 = animtime >= -21
trigger3 = animtime <= -19
trigger4 = stateno = 216
trigger4 = time >= 21
trigger4 = time <= 32
trigger5 = stateno = 11000
trigger5 = animtime >= -25
trigger5 = animtime <= -20
;trigger6 = stateno = 510 && time > 8 && time < 24
;trigger7 = stateno = 511 && time > 7 && time < 23
;trigger8 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
trigger6 = stateno = 430 && time > 5 && time < 10
trigger7 = stateno = 236 && time = [10,13]
[State -1]
type = ChangeState
value = 3200
triggerall = command = "QCF_c" && command != "hold_a" && command != "hold_b" && command != "hold_x"
triggerall = command != "holdback" && movecontact = 0
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
;---------------------------------
;Oni Yaki Z
[State -1]
type = ChangeState
value = 1050
triggerall = command = "ucut_z" && command != "hold_a" && command != "hold_b"
triggerall = command != "holdback"
triggerall = power >= 500 + var(20)*100
triggerall = var(16) < 1
triggerall = var(55) = 0
triggerall = var(14) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 251
trigger11 = animtime <= -9
trigger11 = var(14) > 0
trigger11 = movecontact > 0
trigger12 = stateno = 104
trigger13 = stateno = 217 && movecontact > 0
trigger13 = time >= 17 && time <= 27
trigger14 = stateno = 510 && time > 8 && time < 24 && power >= 1000 + var(20)*100
trigger15 = stateno = 511 && time > 7 && time < 23 && power >= 1000 + var(20)*100
trigger16 = (stateno = 516 || stateno = 520) && time > 11 && time < 27 && power >= 1000 + var(20)*100
trigger17 = stateno = 430 && time > 5 && time < 10
;-----------------------------------
;Oni Yaki X
[State -1]
type = ChangeState
value = 1030
triggerall = command = "ucut_x" && command != "hold_a" && command != "hold_b" && command != "hold_y"
triggerall = command != "holdback"
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 251
trigger12 = animtime <= -9
trigger12 = var(14) > 0
trigger12 = movecontact > 0
trigger13 = stateno = 104
trigger14 = stateno = 217 && movecontact > 0
trigger14 = time >= 17 && time <= 27
;trigger15 = stateno = 510 && time > 8 && time < 24
;trigger16 = stateno = 511 && time > 7 && time < 23
;trigger17 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
trigger15 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 1030
triggerall = command = "ucut_x"; && command != "hold_a" && command != "hold_b" && command != "hold_y"
;triggerall = command != "holdback"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
[State -1]
type = ChangeState
value = 1030
triggerall = command = "ucut_x" && command != "hold_a" && command != "hold_b" && command != "hold_y"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = (stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111) && movecontact > 0
trigger2 = stateno = 301 && time > 3 && time < 9 && movecontact > 0
trigger3 = ((stateno = 510 && time > 8 && time < 24) || (stateno = 511 && time > 7 && time < 23) || ((stateno = 516 || stateno = 520) && time > 11 && time < 27)) && movecontact > 0
;----------------------------------
;Oni Yaki Y
[State -1]
type = ChangeState
value = 1040
triggerall = command = "ucut_y" && command != "hold_a" && command != "hold_b" && command != "hold_x"
triggerall = command != "holdback"
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = stateno = 250
trigger8 = movecontact > 0
trigger9 = stateno = 216
trigger9 = time >= 21
trigger9 = time <= 32
trigger10 = stateno = 11000
trigger10 = animtime >= -25
trigger10 = animtime <= -20
trigger11 = stateno = 251
trigger11 = animtime <= -9
trigger11 = var(14) > 0
trigger11 = movecontact > 0
trigger12 = stateno = 104
trigger13 = stateno = 217 && movecontact > 0
trigger13 = time >= 17 && time <= 27
;trigger14 = stateno = 510 && time > 8 && time < 24
;trigger15 = stateno = 511 && time > 7 && time < 23
;trigger16 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
trigger14 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 1040
triggerall = command = "ucut_y"; && command != "hold_a" && command != "hold_b" && command != "hold_x"
;triggerall = command != "holdback"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
[State -1]
type = ChangeState
value = 1040
triggerall = command = "ucut_y" && command != "hold_a" && command != "hold_b" && command != "hold_x"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = (stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111) && movecontact > 0
trigger2 = stateno = 301 && time > 3 && time < 9 && movecontact > 0
trigger3 = ((stateno = 510 && time > 8 && time < 24) || (stateno = 511 && time > 7 && time < 23) || ((stateno = 516 || stateno = 520) && time > 11 && time < 27)) && movecontact > 0
;------------------------------------
; Aoi Hana - light (start)
[State -1]
type = ChangeState
value = 510
triggerall = command = "3p1_x" && command != "hold_a" && command != "hold_b" && command != "hold_y"
triggerall = var(55) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 251
trigger12 = animtime <= -9
trigger12 = var(14) > 0
trigger12 = movecontact > 0
trigger13 = stateno = 104
trigger14 = stateno = 217 && movecontact > 0
trigger14 = time >= 17 && time <= 27
trigger15 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 510
triggerall = command = "3p1_x"; && command != "hold_a" && command != "hold_b" && command != "hold_y"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
trigger20 = (stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040) && movecontact > 0
trigger21 = (stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111) && movecontact > 0
;----------------------------------
; Aoi Hana - heavy (start)
[State -1]
type = ChangeState
value = 520
triggerall = command = "3p1_z" && command != "hold_a" && command != "hold_b" && command != "hold_x"
triggerall = var(55) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 251
trigger12 = animtime <= -9
trigger12 = var(14) > 0
trigger12 = movecontact > 0
trigger13 = stateno = 104
trigger14 = stateno = 217 && movecontact > 0
trigger14 = time >= 17 && time <= 27
trigger15 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 520
triggerall = command = "3p1_z"; && command != "hold_a" && command != "hold_b" && command != "hold_x"
triggerall = var(55) = 0 && var(3) > -128
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
trigger20 = (stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040) && movecontact > 0
trigger21 = (stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111) && movecontact > 0
;----------------------------------
;Yamabari_x
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Fireball_x" && command != "hold_a" && command != "hold_b" && command != "hold_y"
triggerall = command != "holdback"
triggerall = var(55) = 0
triggerall = numprojID(7000) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 251
trigger12 = animtime <= -9
trigger12 = var(14) > 0
trigger12 = movecontact > 0
trigger13 = stateno = 104
trigger14 = stateno = 217 && movecontact > 0
trigger14 = time >= 17 && time <= 27
trigger15 = stateno = 430 && time > 5 && time < 10
;trigger15 = stateno = 510 && time > 8 && time < 24
;trigger16 = stateno = 511 && time > 7 && time < 23
;trigger17 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Fireball_x"; && command != "hold_a" && command != "hold_b" && command != "hold_y"
triggerall = var(55) = 0 && var(3) > -128
;triggerall = command != "holdback"
triggerall = numprojID(7000) = 0
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
trigger20 = stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111 || stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040||(stateno = 301 && time > 3 && time < 9)
trigger20 = movecontact > 0
trigger21 = ((stateno = 510 && time > 8 && time < 24) || (stateno = 511 && time > 7 && time < 23) || ((stateno = 516 || stateno = 520) && time > 11 && time < 27)) && movecontact > 0
;--------------------------------
;Fireball_Z
[State -1]
type = ChangeState
value = 1020
triggerall = numprojID(7000) = 0
triggerall = var(55) = 0
triggerall = command != "holdback"
triggerall = command = "Fireball_z" && command != "hold_a" && command != "hold_b" && command != "hold_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 212
trigger2 = movecontact > 0
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 235
trigger4 = animtime >= -22
trigger4 = animtime <= -19
trigger4 = movecontact > 0
trigger5 = stateno = 236 && time = [10,13]
trigger6 = stateno = 240
trigger6 = animtime >= -21
trigger6 = animtime <= -19
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger8 = animtime >= -23
trigger8 = stateno = 245
trigger8 = animtime <= -20
trigger9 = stateno = 250
trigger9 = movecontact > 0
trigger10 = stateno = 216
trigger10 = time >= 21
trigger10 = time <= 32
trigger11 = stateno = 11000
trigger11 = animtime >= -25
trigger11 = animtime <= -20
trigger12 = stateno = 251
trigger12 = animtime <= -9
trigger12 = var(14) > 0
trigger12 = movecontact > 0
trigger13 = stateno = 104
trigger14 = stateno = 217 && movecontact > 0
trigger14 = time >= 17 && time <= 27
trigger15 = stateno = 430 && time > 5 && time < 10
;trigger15 = stateno = 510 && time > 8 && time < 24
;trigger16 = stateno = 511 && time > 7 && time < 23
;trigger17 = (stateno = 516 || stateno = 520) && time > 11 && time < 27
[State -1]
type = ChangeState
value = 1020
triggerall = command = "Fireball_z"; && command != "hold_a" && command != "hold_b" && command != "hold_x"
triggerall = var(55) = 0 && var(3) > -128
;triggerall = command != "holdback"
triggerall = numprojID(7000) = 0
trigger1 = stateno = 212
trigger1 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime < -20 || animtime > -17
trigger3 = stateno = 240
trigger3 = animtime < -21 || animtime > -19
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger5 = stateno = 245
trigger5 = animtime < -23 || animtime > -20
trigger6 = stateno = 250
trigger6 = movecontact = 0
trigger7 = stateno = 216
trigger7 = time < 21 || time > 32
trigger8 = stateno = 11000
trigger8 = animtime < -25 || animtime > -20
trigger9 = stateno = 251
trigger9 = animtime > -9 || var(14) < 0 || movecontact = 0
trigger10 = stateno = 217
trigger10 = time < 17 || time > 27 || movecontact = 0
trigger11 = stateno = 430
trigger11 = time <= 5 || time >= 10
trigger12 = stateno = 400
trigger13 = stateno = 420
trigger14 = stateno = 225
trigger15 = stateno = 220
trigger16 = stateno = 230
trigger17 = stateno = 200
trigger18 = stateno = 215 && movecontact > 0 && time = [19,29]
trigger19 = stateno = 218 && movecontact > 0 && time = [25,36]
trigger20 = stateno = 4600 || stateno = 4611 || stateno = 4100 || stateno = 4111 || stateno = 1030 || stateno = 1037 || stateno = 1038 || stateno = 1040||(stateno = 301 && time > 3 && time < 9)
trigger20 = movecontact > 0
trigger21 = ((stateno = 510 && time > 8 && time < 24) || (stateno = 511 && time > 7 && time < 23) || ((stateno = 516 || stateno = 520) && time > 11 && time < 27)) && movecontact > 0
;---------------------------------
;shadow attack                            
[State -1]
type = ChangeState
value = 8300
trigger1 = numhelper(8301) < 1
trigger1 = var(55) = 0 && var(59) > -2
trigger1 = (var(53) = 0 && var(56) > 0) || (var(53) = 1 && power >= 1000 + var(20)*100 && var(14) < 1 && var(16) < 1)
trigger1 = ctrl
trigger1 = statetype != A
trigger1 = command = "ay"
;-----------------------------------
;shadow attack(active)                            
[State -1]
type = helper
id = 8301
stateno = 8301
ownpal = 1
name = "iori's shadow"
triggerall = var(55) = 0 && var(59) > -2
triggerall = (var(53) = 0 && var(56) > 0) || (var(53) = 1 && power >= 1000 + var(20)*100 && var(14) < 1 && var(16) < 1)
triggerall = numhelper(8301) < 1
triggerall = command = "ay"
triggerall = alive
trigger1 = movetype != H
trigger1 = stateno != 0 && stateno != 1999 && stateno != 6999
trigger1 = stateno != 7599 && stateno != 130 && stateno != 131
trigger1 = stateno != 132 && stateno != 150 && stateno != 151
trigger1 = stateno != 152 && stateno != 153 && stateno != 154
trigger1 = stateno != 155 && stateno != 195 && stateno != 196
trigger1 = stateno != 5000 && stateno != 5001 && stateno != 5010
trigger1 = stateno != 5011 && stateno != 5020 && stateno != 5030
trigger1 = stateno != 5035 && stateno != 5050 && stateno != 5070
trigger1 = stateno != 5071 && stateno != 5080 && stateno != 5081
trigger1 = stateno != 5100 && stateno != 5101 && stateno != 5110
trigger1 = stateno != 5120 && stateno != 5200 && stateno != 170
trigger1 = stateno != 175 && stateno != 190 && stateno != 191 && stateno != 5201
trigger1 = stateno != 5150 && stateno != 5500 && stateno != 5900
trigger1 = stateno != 180 && stateno != 181 && stateno != 182 && stateno != 2022
trigger1 = stateno != 184 && stateno != 185 && stateno != 191
trigger1 = stateno != 183 && stateno != 192 && stateno != 193
trigger1 = stateno != 2000 && stateno != 2001 && stateno != 2010
trigger1 = stateno != 2020 && stateno != 9004 && stateno != 2002
trigger1 = stateno != 2019 && stateno != 2500 && stateno != 2501
trigger1 = stateno != 2510 && stateno != 2502 && stateno != 2512
trigger1 = stateno != 2400 && stateno != 2401 && stateno != 2402
trigger1 = stateno != 2403 && stateno != 2404 && stateno != 7600
trigger1 = stateno != 7601 && stateno != 7700 && stateno != 7701
trigger1 = stateno != 7800 && stateno != 7801 && stateno != 7000
trigger1 = stateno != 7001 && stateno != 7002 && stateno != 7100
trigger1 = stateno != 7101 && stateno != 7011 && stateno != 7012
trigger1 = stateno != 7013 && stateno != 7111 && stateno != 7021
trigger1 = stateno != 7022 && stateno != 7023 && stateno != 7222
trigger1 = stateno != 1405 && stateno != 1505 && stateno != 1309
trigger1 = stateno != 1310 && stateno != 1311 && stateno != 1312
trigger1 = stateno != 5304 && stateno != 5305 && stateno != 5306
trigger1 = stateno != 5307 && stateno != 5308 && stateno != 7003
trigger1 = stateno != 2599 && stateno != 2600 && stateno != 2609
trigger1 = stateno != 2610 && stateno != 2700 && stateno != 2710
trigger1 = stateno != 1994 && stateno != 1996 && stateno != 1997
trigger1 = stateno != 4733 && stateno != 4400 && stateno != 2219
trigger1 = stateno != 2220
trigger2 = Vel Y > 0
trigger2 = (Pos Y >= -10 && stateno = 5050) || (Pos Y >= -20 && stateno = 5071)
trigger3 = stateno = 5100
trigger4 = stateno = 5110 && time < 3 && prevstateno = 5071
;--------------------------------
;KnockDown                            
[State -1]
type = ChangeState
value = 11000
triggerall = ctrl
triggerall = var(55) = 0
triggerall = statetype != A && command != "holdup"
trigger1 = command = "b"
trigger1 = command = "holddown"
trigger2 = command = "ab"
;--------------------------------
; turn
[State -1]
type = ChangeState
value = 249
triggerall = ctrl
triggerall = var(55) = 0
trigger1 = command = "turn"
trigger1 = statetype != A

;Roll back AB (during guard)      ;°¡µåÄµ½½µÚ±¸¸£±â
[State -1]
type = ChangeState
value = 1303
triggerall = command = "dodge"
triggerall = command = "holdback"
triggerall = var(55) = 0
triggerall = var(16) < 1
triggerall = var(14) < 1
triggerall = power >= 500 + var(20)*100
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 151
trigger4 = stateno = 153

;KNOCK AB (during guard)   ;°¡µåÄµ½½³¯¸®±â
[State -1]
type = ChangeState
value = 1320
triggerall = command = "ab"
triggerall = var(16) < 1
triggerall = var(14) < 1
triggerall = var(55) = 0
triggerall = power >= 1000 + var(20)*100
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 151
trigger4 = stateno = 153

;knock AB (during airguard)
[State -1]
type = ChangeState
value = 651
triggerall = command = "ab"
triggerall = var(16) < 1
triggerall = var(14) < 1
triggerall = var(55) = 0
triggerall = power >= 1000 + var(20)*100
trigger1 = stateno = 154
trigger2 = stateno = 155

;Roll fwd AB (during guard)
[State -1]
type = ChangeState
value = 1302
triggerall = command = "dodge"
triggerall = var(16) < 1
triggerall = var(14) < 1
triggerall = var(55) = 0
triggerall = power >= 1000 + var(20)*100
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = command = "holdfwd"
trigger3 = stateno = 150
trigger4 = command = "holdfwd"
trigger4 = stateno = 152
trigger5 = stateno = 151
trigger6 = stateno = 153
trigger7 = command = "holdfwd"
trigger7 = stateno = 151
trigger8 = command = "holdfwd"
trigger8 = stateno = 153
;Roll fwd (during attack)
[State -1]
type = ChangeState
value = 1306
triggerall = command = "dodge"
triggerall = var(16) < 1
triggerall = var(14) < 1
triggerall = var(55) = 0
triggerall = power >= 500 + var(20)*100 && movecontact > 0
trigger1 = stateno = 212 && time = [6,8]
trigger2 = stateno = 200 && time = [7,10]
trigger3 = stateno = 230 && time = [7,10]
trigger4 = stateno = 450
trigger4 = animtime >= -20
trigger4 = animtime <= -17
trigger5 = stateno = 235
trigger5 = animtime >= -22
trigger5 = animtime <= -19
trigger6 = stateno = 236 && time = [10,13]
trigger7 = stateno = 240
trigger7 = animtime >= -21
trigger7 = animtime <= -19
trigger8 = stateno = 202
trigger9 = stateno = 245 && time = [4,13]
trigger10 = stateno = 250 && time = [9,14]
trigger11 = stateno = 216
trigger11 = time >= 21
trigger11 = time <= 32
trigger12 = stateno = 11000
trigger12 = animtime >= -25
trigger12 = animtime <= -20
trigger13 = stateno = 251
trigger13 = animtime <= -9
trigger14 = stateno = 400 && time = [6,8]
trigger15 = stateno = 217
trigger15 = time >= 17 && time <= 27
trigger16 = stateno = 430 && time > 5 && time < 10
trigger17 = stateno = 11001 && time = [4,9]
trigger18 = stateno = 420 && time = [6,11]
trigger19 = stateno = 215 && time = [19,29]
trigger20 = stateno = 218 && time = [25,36]
trigger21 = stateno = 225 && time = [4,10]
trigger22 = stateno = 220 && time = [11,18]

; Roll forward                              
[State -1]
type = ChangeState
value = 1300
triggerall = command = "holdfwd" && command != "holdup"
triggerall = statetype = S
triggerall = var(55) = 0
triggerall = ctrl
trigger1 = command = "dodge"
trigger2 = command = "b"

; Roll Backwards
[State -1]
type = ChangeState
value = 1301
triggerall = var(55) = 0
triggerall = command = "holdback" && command != "holdup"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "dodge"
trigger2 = command = "b"
;-------------------------------------
; Throw Z
[State -1]
type = ChangeState
value = 1400
triggerall = var(55) = 0
triggerall = statetype = S && command != "holdup"
trigger1 = command = "holdfwd"
trigger1 = command = "y"
trigger1 = stateno != 100
trigger1 = P2bodydist X < 6
trigger1 = P2bodydist Y >= -10
trigger1 = P2movetype != H
trigger1 = ctrl
trigger2 = command = "holdback"
trigger2 = P2bodydist Y >= -10
trigger2 = command = "y"
trigger2 = stateno != 100
trigger2 = P2bodydist X < 6 
trigger2 = P2movetype != H
trigger2 = ctrl

; Throw c
[State -1]
type = ChangeState
value = 1500
triggerall = var(55) = 0
triggerall = statetype = S && command != "holdup"
trigger1 = command = "holdfwd"
trigger1 = command = "c"
trigger1 = stateno != 100
trigger1 = P2bodydist X < 6
trigger1 = P2bodydist Y >= -10
trigger1 = P2movetype != H
trigger1 = ctrl
trigger2 = command = "holdback"
trigger2 = command = "c"
trigger2 = stateno != 100
trigger2 = P2bodydist X < 6
trigger2 = P2bodydist Y >= -10
trigger2 = P2movetype != H
trigger2 = ctrl
;-----------------------------------
; Dodge
[State -1]
type = ChangeState
value = 1305
triggerall = var(55) = 0
triggerall = statetype = S
triggerall = command != "holdfwd" && command != "holdup"
triggerall = command != "holdback" && command != "holddown"
triggerall = ctrl
trigger1 = command = "dodge"
trigger2 = command = "b"
;-------------------------------------
;Axe kick  (single)
[State -1]
type = ChangeState
value = 215
triggerall = var(55) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown" && command != "holdup"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact = 0
trigger2 = stateno = 450
trigger2 = animtime >= -20
trigger2 = animtime <= -17
trigger3 = movecontact = 0
trigger3 = stateno = 11000
trigger3 = animtime >= -25
trigger3 = animtime <= -20
trigger4 = movecontact = 0
trigger4 = stateno = 245
trigger4 = animtime >= -23
trigger4 = animtime <= -20
trigger5 = stateno = 430 && time > 5 && time < 10
;-------------------------------------
;Axe kick   (2kc)
[State -1]
type = ChangeState
value = 216
triggerall = var(55) = 0
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = command != "holddown" && command != "holdup"
triggerall = movecontact > 0
trigger1 = stateno = 202
trigger2 = stateno = 212
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 11000
trigger4 = animtime >= -25
trigger4 = animtime <= -20
trigger5 = stateno = 430 && time > 5 && time < 10
[State -1]
type = ChangeState
value = 216
trigger1 = var(55) = 0
trigger1 = command = "c" || command = "a"
trigger1 = command = "holdfwd"
trigger1 = command != "holddown" && command != "holdup"
trigger1 = movecontact > 0
trigger1 = stateno = 240
trigger1 = animtime >= -21
trigger1 = animtime <= -19

[State -1]
type = ChangeState
value = 218
triggerall = var(55) = 0
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = command != "holddown" && command != "holdup"
triggerall = movecontact = 0
trigger1 = stateno = 450
trigger1 = animtime >= -20
trigger1 = animtime <= -17
trigger2 = stateno = 11000
trigger2 = animtime >= -25
trigger2 = animtime <= -20
trigger3 = stateno = 430 && time > 5 && time < 10
trigger4 = stateno = 245
trigger4 = animtime >= -23
trigger4 = animtime <= -20
trigger5 = statetype != A
trigger5 = ctrl
[State -1]
type = ChangeState
value = 218
trigger1 = var(55) = 0
trigger1 = command = "c" || command = "a"
trigger1 = command = "holdfwd"
trigger1 = command != "holddown" && command != "holdup"
trigger1 = movecontact = 0
trigger1 = stateno = 240
trigger1 = animtime >= -21
trigger1 = animtime <= -19

;Axe kick   (2k1c)
[State -1]
type = ChangeState
value = 217
triggerall = var(55) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown" && command != "holdup"
triggerall = movecontact > 0
trigger1 = stateno = 202
trigger2 = stateno = 212
trigger3 = stateno = 450
trigger3 = animtime >= -20
trigger3 = animtime <= -17
trigger4 = stateno = 11000
trigger4 = animtime >= -25
trigger4 = animtime <= -20
trigger5 = stateno = 430 && time > 5 && time < 10

;Jump_B Over
[State -1]
type = ChangeState
value = 612
triggerall = statetype = A
triggerall = var(55) = 0
triggerall = ctrl
trigger1 = command = "holdback" && command = "a"
trigger2 = p2dist x < 0
trigger2 = command = "fwd_a"

;RunFwd LOW
[State -1]
type = ChangeState
value = 104
triggerall = var(55) = 0
trigger1 = command = "FFD"
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = var(55) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------
;RunB
[State -1]
type = ChangeState
value = 105
triggerall = var(55) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------------
; charge                             
[State -1]
type = ChangeState
value = 1309
triggerall = var(14) < 1 && var(3) < 1
triggerall = var(55) = 0
triggerall = var(16) < 1
triggerall = power < 3000 + var(20)*100
triggerall = ctrl
triggerall = statetype != A && command != "holddown"
trigger1 = command = "hold_x" && command = "hold_a" && command = "hold_y"
trigger2 = command = "hold_z"
;-------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = var(55) = 0
triggerall = p2bodydist X > 18
triggerall = command != "holddown" && command != "holdup" && command != "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 && command != "holdback"
trigger2 = animtime > -9
trigger3 = stateno = 200
trigger3 = movecontact > 0
trigger3 = animtime >= -9
trigger4 = stateno = 200
trigger4 = movecontact = 0
trigger4 = animtime >= -5
trigger5 = stateno = 430 && command != "holdback"
trigger5 = animtime >= -10
trigger6 = stateno = 202
trigger6 = movecontact > 0
trigger6 = animtime >= -7
trigger7 = stateno = 202
trigger7 = movecontact = 0
trigger7 = animtime >= -3
trigger8 = stateno = 230
trigger8 = time >= 8
;-------------------------------------
;Stand_A Close
[State -1]
type = ChangeState
value = 212
triggerall = command = "a"
triggerall = var(55) = 0
triggerall = p2bodydist X <= 18 && P2dist X >= 0
triggerall = command != "holddown" && command != "holdup" && command != "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 && command != "holdback"
trigger2 = animtime > -9
trigger3 = stateno = 430 && command != "holdback"
trigger3 = animtime >= -10
trigger4 = stateno = 202
trigger4 = movecontact > 0
trigger4 = animtime >= -7
trigger5 = stateno = 202
trigger5 = movecontact = 0
trigger5 = animtime >= -3
;------------------------------------
;Stand_C
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = var(55) = 0
triggerall = command != "holddown" && command != "holdup"
triggerall = P2bodydist X > 25
trigger1 = statetype != A
trigger1 = ctrl
;-------------------------------------
;Stand_C (close)
[State -1]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = var(55) = 0
triggerall = command != "holddown" && command != "holdup"
triggerall = P2bodydist X <= 25 && P2dist X >= 0
trigger1 = statetype != A
trigger1 = ctrl
;--------------------------------------
;Stand_fwd_X
[State -1]
type = ChangeState
value = 235
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown" && command != "holdup"
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = animtime >= -23
trigger2 = stateno = 245 
trigger2 = animtime <= -20
trigger3 = stateno = 212
trigger3 = movecontact > 0
trigger4 = stateno = 202
trigger4 = movecontact > 0
trigger5 = stateno = 11000
trigger5 = animtime >= -25
trigger5 = animtime <= -20
trigger6 = stateno = 450
trigger6 = animtime >= -20
trigger6 = animtime <= -17
trigger7 = stateno = 430 && time > 5 && time < 10
trigger8 = stateno = 240
trigger8 = animtime >= -21
trigger8 = animtime <= -19
        
;Stand_X (close)
[State -1]
type = ChangeState
value = 202
triggerall = command = "x"
triggerall = command != "holddown" && command != "holdup" && command != "holdfwd"
triggerall = p2bodydist X <= 18 && P2dist X >= 0
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 && command != "holdback"
trigger2 = animtime > -9
trigger3 = stateno = 202
trigger3 = movecontact > 0
trigger3 = animtime >= -7
trigger4 = stateno = 202
trigger4 = movecontact = 0
trigger4 = animtime >= -3
trigger5 = stateno = 430 && command != "holdback"
trigger5 = animtime >= -10

;Stand_X
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown" && command != "holdup" && command != "holdfwd"
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400 && command != "holdback"
trigger2 = animtime > -9
trigger3 = stateno = 430 && command != "holdback"
trigger3 = animtime >= -10
trigger4 = stateno = 202
trigger4 = movecontact > 0
trigger4 = animtime >= -7
trigger5 = stateno = 202
trigger5 = movecontact = 0
trigger5 = animtime >= -3
trigger6 = stateno = 230
trigger6 = movecontact > 0
trigger6 = animtime >= -6
trigger7 = stateno = 230
trigger7 = movecontact = 0
trigger7 = animtime >= -3
;-------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown" && command != "holdup"
triggerall = P2bodydist X > 25
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
;-------------------------------------
;Stand_Y (close)
[State -1]
type = ChangeState
value = 245
triggerall = command = "y"
triggerall = command != "holddown" && command != "holdup"
triggerall = P2bodydist X <= 25 && P2dist X >= 0
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
;------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact > 0
trigger2 = animtime > -9
trigger3 = stateno = 430
trigger3 = animtime >= -10
trigger4 = stateno = 202
trigger4 = movecontact > 0
trigger4 = animtime >= -7
trigger5 = stateno = 202
trigger5 = movecontact = 0
trigger5 = animtime >= -3
trigger6 = stateno = 200
trigger6 = movecontact > 0
trigger6 = time > 7
trigger7 = stateno = 200
trigger7 = movecontact = 0
trigger7 = time > 10
;---------------------------------------
;Crouch_C
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = animtime > -9
trigger3 = stateno = 430 && movecontact > 0
trigger3 = animtime >= -10
trigger4 = stateno = 430 && movecontact = 0
trigger4 = animtime >= -8
trigger5 = stateno = 230
trigger5 = movecontact > 0
trigger5 = animtime >= -6
trigger6 = stateno = 230
trigger6 = movecontact = 0
trigger6 = animtime >= -3
trigger7 = stateno = 202
trigger7 = movecontact > 0
trigger7 = animtime >= -7
trigger8 = stateno = 202
trigger8 = movecontact = 0
trigger8 = animtime >= -3
;--------------------------------------
;Crouch_Z
[State -1]
type = ChangeState
value = 450
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl

;Jump_Z
[State -1]
type = ChangeState
value = 650
triggerall = var(55) = 0
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "ab"
trigger2 = command = "b"
;------------------------------------
;Jump_C
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
triggerall = var(55) = 0
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
triggerall = var(55) = 0
trigger1 = statetype = A
trigger1 = ctrl
;------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
triggerall = var(55) = 0
trigger1 = statetype = A
trigger1 = ctrl
;-----------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
triggerall = var(55) = 0
trigger1 = statetype = A
trigger1 = ctrl
;-------------------------------------
; Taunt
[State -1]
type = ChangeState
value = 195
triggerall = var(55) = 0
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;--------------------------------------------------------------------------
;   AI action
;--------------------------------------------------------------------------

[State -2, 0]  ;ai start
type = varset
triggerall = var(55) = 0
triggerall = var(58) < 0 || var(58) > 0
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
trigger32 = command = "AI32"
trigger33 = command = "AI33"
trigger34 = command = "AI34"
trigger35 = command = "AI35"
var(55) = 1

; win, stop moving
[State -2]
type = ChangeState
value = 0
triggerall = var(55) = 1
triggerall = statetype != A
triggerall = ctrl
trigger1 = Win = 1 || roundstate > 2
;--------------------------------------
; °øÁß³«¹ý
[State -2]
type = ChangeState
value = 5210
triggerall = var(55) = 1
triggerall = Vel Y > 0
triggerall = Pos Y < -10
triggerall = Pos Y >= -110
triggerall = p2movetype = A
triggerall = stateno = 5050
triggerall = var(47) != 2
trigger1 = random <= 300
trigger1 = alive
trigger1 = canrecover

;RunFwd LOW
[State -1]
type = ChangeState
value = 104
triggerall = var(55) = 1
trigger1 = p2bodydist X <= 200
trigger1 = p2bodydist X >= 100
trigger1 = p2movetype != A
trigger1 = random <= 5
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------
; Áö»ó³«¹ý
[State -2]
type = ChangeState
value = 5201
triggerall = var(55) = 1
triggerall = Vel Y > 0
triggerall = p2movetype = A
triggerall = alive
triggerall = random <= 900
trigger1 = Pos Y >= -10
trigger1 = stateno = 5050
trigger1 = canrecover
trigger2 = Pos Y >= -20
trigger2 = stateno = 5071

;Counter mode                    Ä«¿îÅÍ
[state -2]
type = ChangeState
value = 12000
triggerall = var(58) > 2 || var(58) < 1
triggerall = power >= 3000 + var(20)*100
triggerall = p2statetype != L   
triggerall = ctrl 
triggerall = var(55) = 1
triggerall = var(14) < 1
triggerall = var(16) < 1
triggerall = statetype != A
triggerall = random <= 40
trigger1 = p2bodydist X <= 25 && P2bodydist X >= -25

;Armor mode                         ¾Æ¸Ó
[state -2]
type = ChangeState
value = 13000
triggerall = var(58) > 2 || var(58) < 1
triggerall = power >= 3000 + var(20)*100
triggerall = p2statetype != L   
triggerall = var(55) = 1
triggerall = var(14) < 1
triggerall = var(16) < 1
triggerall = ctrl 
triggerall = statetype != A
triggerall = random <= 50
trigger1 = p2bodydist X <= 25 && P2bodydist X >= -25
; MAX¸ðµå
[State -1]
type = ChangeState
value = 1991
triggerall = var(58) > 2 || var(58) < 1
triggerall = var(55) = 1
triggerall = var(14) < 1 && var(3) < 1
triggerall = var(16) < 1 && p2movetype != A
triggerall = ctrl 
triggerall = statetype != A && p2life > 150
trigger1 = power >= 3000 + var(20)*100
trigger1 = p2bodydist X > 108 && random < 200
trigger2 = power >= 2000 + var(20)*100 && power < 3000 + var(20)*100
trigger2 = p2bodydist X > 108 && random < 100
;--------ÀÚ¿°
[State -1]
type = ChangeState
value = 3600
triggerall = var(58) > 2 || var(58) < 1
triggerall = var(51) = 0 
triggerall = var(55) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = p2name != "BigWomen"
triggerall = p2name != "CADILLACS"
triggerall = p2name != "Madgear"
triggerall = p2name != "DARK WARRIOR2"
triggerall = p2name != "Onslaught"
triggerall = p2name != "Apocalypse"
triggerall = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
triggerall = p2stateno != 153 && p2stateno != 154 && p2stateno != 130
triggerall = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
triggerall = p2stateno != 5120 && p2stateno != 120
triggerall = p2statetype != A
triggerall = p2statetype != L   
triggerall = p2movetype != H  
triggerall = p2bodydist Y >= -5
triggerall = p2bodydist X <= 19 && p2bodydist X > -40
triggerall = (p2movetype = A && random <= 400) || (p2movetype != A && random <= 500)
trigger1 = power < 1000 + var(20)*100 && p2life > 80
trigger2 = power >= 1000 + var(20)*100 && power < 2000 + var(20)*100 && p2life > 170
trigger3 = power >= 2000 + var(20)*100 && power < 3000 + var(20)*100 && p2life > 400
trigger4 = power >= 3000 + var(20)*100 && p2life > 620
;--------ÇÇÀÇÆøÁÖ
[State -1]
type = ChangeState
value = 3500
triggerall = var(58) > 2 || var(58) < 1
triggerall = var(51) = 0 
triggerall = var(55) = 1
triggerall = P2bodydist Y >= -70
triggerall = statetype != A
triggerall = ctrl
triggerall = p2dist X >= -85
triggerall = p2dist X <= 85
triggerall = p2movetype = A
trigger1 = power < 1000 + var(20)*100 && p2life > 80
trigger1 = random <= 300
trigger2 = power >= 1000 + var(20)*100 && power < 2000 + var(20)*100 && p2life > 270
trigger2 = random <= 300
trigger3 = power >= 2000 + var(20)*100 && power < 3000 + var(20)*100 && p2life > 400
trigger3 = random <= 300
trigger4 = power >= 3000 + var(20)*100 && p2life > 720
trigger4 = random <= 300

[State -1]        ;¿°±¸
type = ChangeState
value = 2219
trigger1 = var(58) > 1 || var(58) < 1
trigger1 = p2bodydist X > 210 && p2bodydist Y > -1
trigger1 = power >= 1000 + var(20)*100 && var(3) > 0 && p2statetype != A
trigger1 = var(55) = 1 && enemynear, vel Y > -1 && ctrl && p2statetype != L
trigger1 = p2life > 200 && random < 350 && statetype != A
;-----------------------------------
;KOF98 Fireball DM                   ·¾2ÆÈÁÖ¹è
[state -2]
type = ChangeState
value = 7700
triggerall = power >= 2000 + var(20)*100
triggerall = var(55) = 1
triggerall = NumHelper(7602) < 1
triggerall = var(14) < 1 && var(3) < 1
triggerall = p2statetype != L   
triggerall = var(16) < 1
triggerall = ctrl 
triggerall = statetype != A
trigger1 = p2life <= 5 && p2dist x > 150
trigger1 = random <= 5
trigger2 = random <= 0
;------------------------------------
;KOF98 Fireball DM                   ·¾1ÆÈÁÖ¹è
[state -2]
type = ChangeState
value = 7600
triggerall = power >= 1000 + var(20)*100 || var(3) > 0
triggerall = var(55) = 1
triggerall = NumHelper(7602) < 1
triggerall = var(14) < 1
triggerall = p2statetype != L   
triggerall = var(16) < 1
triggerall = ctrl 
triggerall = statetype != A
trigger1 = p2life <= 5 && p2dist x > 150
trigger1 = random <= 5
trigger2 = random <= 0
;-------------------------------------
;KOF98 Fireball DM(counter)            Ä«¿îÅÍ ÆÈÁÖ¹è
[state -2]
type = ChangeState
value = 7599
triggerall = var(14) > 0
triggerall = p2statetype != L   
triggerall = var(55) = 1
triggerall = NumHelper(7602) < 1
triggerall = var(16) < 1
triggerall = statetype != A
trigger1 = stateno = 1000
trigger1 = p2stateno = [150,154]
trigger1 = random <= 300
trigger1 = time = 10
trigger2 = stateno = 1020
trigger2 = p2stateno = [150,154]
trigger2 = random <= 300
trigger2 = time = 10
trigger3 = stateno = 1030
trigger3 = moveguarded > 0
trigger3 = random <= 300
trigger4 = stateno = 1038
trigger4 = moveguarded > 0
trigger4 = random <= 300
trigger5 = stateno = 1037
trigger5 = moveguarded > 0
trigger5 = time = 3
trigger5 = random <= 300
trigger6 = p2bodydist X <= 100
trigger6 = random <= 0
trigger6 = ctrl
trigger7 = p2bodydist X > 200
trigger7 = random <= 3
trigger7 = ctrl
;-------------------------------------
;Scorch DM                                 ·¾3¾Æ±Í
[state -2]
type = ChangeState
value = 7021
triggerall = power >= 3000 + var(20)*100
triggerall = var(55) = 1
triggerall = var(14) < 1 && var(3) < 1
triggerall = p2statetype != L   
triggerall = p2bodydist Y >= -70
triggerall = p2bodydist X >= 0 && p2dist X < 320
triggerall = var(16) < 1
triggerall = statetype != A
triggerall = ctrl || stateno = 1310 || stateno = 1312
trigger1 = NumHelper(8301) = 1
trigger1 = var(58) > 2 || var(58) < 1
trigger1 = p2life >= 725
trigger1 = p2movetype = H 
trigger1 = p2stateno != 5000
trigger1 = p2statetype = A 
trigger1 = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
trigger1 = p2stateno != 153 && p2stateno != 154 && p2stateno != 130
trigger1 = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
trigger1 = random <= 500
trigger2 = var(58) > 2 || var(58) < 1
trigger2 = p2bodydist Y <= -20
trigger2 = NumHelper(8301) = 1
trigger2 = p2life >= 725
trigger2 = p2movetype = H 
trigger2 = p2stateno = 5020
trigger2 = p2statetype = A 
trigger2 = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
trigger2 = p2stateno != 153 && p2stateno != 154 && p2stateno != 130
trigger2 = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
trigger2 = random <= 500
trigger3 = var(58) > 2 || var(58) < 1
trigger3 = p2stateno = 3010
trigger3 = p2bodydist Y <= -160
trigger3 = p2life >= 725
trigger4 = random <= 15
trigger4 = p2bodydist X > 200
trigger4 = p2life >= 725
trigger5 = p2bodydist X > 210 && p2bodydist Y > -70
trigger5 = ctrl
trigger5 = p2life > 600 && random < 25
trigger5 = p2stateno != 5020 && p2stateno != 5030 && p2stateno != 5035
trigger5 = p2stateno != 5040 && p2stateno != 5050
;-----------------------------------
;Scorch DM                             ·¾2¾Æ±Í
[state -2]
type = ChangeState
value = 7011
triggerall = power >= 2000 + var(20)*100
triggerall = var(55) = 1
triggerall = var(14) < 1 && var(3) < 1
triggerall = p2bodydist Y >= -70
triggerall = p2bodydist X >= 0 && p2dist X < 320
triggerall = var(16) < 1
triggerall = p2statetype != L   
triggerall = statetype != A
triggerall = ctrl || stateno = 1310 || stateno = 1312
trigger1 = var(58) > 2 || var(58) < 1
trigger1 = NumHelper(8301) = 1 
trigger1 = p2life >= 455
trigger1 = p2movetype = H 
trigger1 = p2stateno != 5000
trigger1 = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
trigger1 = p2stateno != 153 && p2stateno != 154 && p2stateno != 130
trigger1 = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
trigger1 = p2statetype = A 
trigger1 = random <= 500
trigger2 = var(58) > 2 || var(58) < 1
trigger2 = p2bodydist Y <= -20
trigger2 = NumHelper(8301) = 1 
trigger2 = p2life >= 455
trigger2 = p2movetype = H 
trigger2 = p2stateno = 5020
trigger2 = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
trigger2 = p2stateno != 153 && p2stateno != 154 && p2stateno != 130
trigger2 = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
trigger2 = p2statetype = A 
trigger2 = random <= 500
trigger3 = var(58) > 2 || var(58) < 1
trigger3 = p2stateno = 3010
trigger3 = p2life >= 455
trigger3 = p2bodydist Y <= -160
trigger4 = p2bodydist X > 210 && p2bodydist Y > -70
trigger4 = ctrl
trigger4 = p2life > 400 && random < 25
trigger4 = p2stateno != 5020 && p2stateno != 5030 && p2stateno != 5035
trigger4 = p2stateno != 5040 && p2stateno != 5050

[State -1]        ;Ä«¿îÅÍ ¾îµÒ»èÈ÷±â
type = ChangeState
value = 2599
triggerall = var(55) = 1
triggerall = var(14) > 0
triggerall = var(16) < 1
triggerall = frontedgedist < 116
trigger1 = stateno = 1000
trigger1 = p2movetype = H
trigger1 = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
trigger1 = p2stateno != 153 && p2stateno != 154 && p2stateno != 130
trigger1 = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
trigger1 = random <= 950
trigger1 = time = 10
trigger2 = stateno = 1020
trigger2 = p2movetype = H
trigger2 = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
trigger2 = p2stateno != 153 && p2stateno != 154 && p2stateno != 130
trigger2 = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
trigger2 = random <= 950
trigger2 = time = 10
;------------------------------------
;Scorch DM     (counter)                Ä«¿îÅÍ ¾Æ±Í
[state -2]
type = ChangeState
value = 6999
triggerall = var(55) = 1
triggerall = var(14) > 0
triggerall = var(16) < 1
triggerall = p2bodydist Y >= -70
triggerall = p2bodydist X >= 0 && p2dist X < 320
triggerall = stateno != 6999
triggerall = p2statetype != L
triggerall = statetype != A
trigger1 = p2stateno != 5000
trigger1 = NumHelper(8301) = 1 
trigger1 = p2movetype = H 
trigger1 = p2statetype = A 
trigger1 = random <= 500
trigger1 = ctrl 
trigger2 = stateno = 1000
trigger2 = p2movetype = H
trigger2 = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
trigger2 = p2stateno != 153 && p2stateno != 154 && p2stateno != 130
trigger2 = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
trigger2 = random <= 950
trigger2 = time = 10
trigger3 = stateno = 1020
trigger3 = p2movetype = H
trigger3 = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
trigger3 = p2stateno != 153 && p2stateno != 154 && p2stateno != 130
trigger3 = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
trigger3 = random <= 950
trigger3 = time = 10
trigger4 = stateno = 1030
trigger4 = movehit > 0
trigger4 = random <= 100
trigger5 = stateno = 1038
trigger5 = movehit > 0
trigger5 = random <= 100
trigger6 = p2stateno = 3010
trigger6 = p2bodydist X > 100
trigger6 = p2bodydist Y > -200
trigger6 = random <= 900
trigger6 = ctrl
trigger7 = p2bodydist Y >= -20
trigger7 = p2stateno = 5020
trigger7 = NumHelper(8301) = 1 
trigger7 = p2movetype = H 
trigger7 = p2statetype = A 
trigger7 = random <= 600
trigger7 = ctrl 
trigger8 = p2bodydist X > 200
trigger8 = p2bodydist Y >= -10
trigger8 = random <= 100
trigger8 = p2movetype != A
trigger8 = ctrl
trigger9 = p2stateno = 3010
trigger9 = p2bodydist Y <= -160
trigger9 = ctrl
trigger10 = p2bodydist X > 210 && p2bodydist Y > -70
trigger10 = ctrl
trigger10 = p2life > 200 && random < 25
trigger10 = p2stateno != 5020 && p2stateno != 5030 && p2stateno != 5035
trigger10 = p2stateno != 5040 && p2stateno != 5050

;-----------------------------------
;Scorch DM                             ·¾1¾Æ±Í  
[state -2]
type = ChangeState
value = 7000
triggerall = power >= 1000 + var(20)*100 || var(3) > 0
triggerall = var(55) = 1
triggerall = p2bodydist Y >= -70
triggerall = p2statetype != L   
triggerall = p2bodydist X >= 0 && p2dist X < 320
triggerall = var(14) < 1
triggerall = var(16) < 1
triggerall = statetype != A
triggerall = ctrl || stateno = 1310 || stateno = 1312
triggerall = p2life >= 185
triggerall = var(58) > 1 || var(58) < 1
triggerall = NumHelper(8301) = 1 
triggerall = p2movetype = H 
triggerall = p2statetype = A 
triggerall = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
triggerall = p2stateno != 153 && p2stateno != 154 && p2stateno != 130
triggerall = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
trigger1 = p2stateno != 5000
trigger2 = p2stateno = 5020
trigger2 = p2bodydist Y <= -20
trigger3 = p2bodydist X > 210 && p2bodydist Y > -70
trigger3 = ctrl
trigger3 = p2life > 200 && random < 25
trigger3 = p2stateno != 5020 && p2stateno != 5030 && p2stateno != 5035
trigger3 = p2stateno != 5040 && p2stateno != 5050

[State -1]      ;95ÆÈÄ¡³à
type = ChangeState
value = 1994
trigger1 = p2statetype != L && p2movetype != H && enemy,vel y >= 0
trigger1 = NumHelper(8301) = 0
trigger1 = power >= 1500 + var(20)*100
trigger1 = var(55) = 1
trigger1 = var(14) < 1 && var(3) < 1
trigger1 = var(16) < 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X < 228 && p2bodydist X > 130
trigger1 = random < 20

; 8 maiden rush level 1 (start,counter)       Ä«¿îÅÍ ÆÈÄ¡³à
[state -2]
type = ChangeState
value = 1999
triggerall = var(55) = 1 && enemy,vel y >= 0
triggerall = var(14) > 0
triggerall = var(16) < 1
triggerall = p2statetype != L   
triggerall = statetype != A
triggerall = ctrl 
triggerall = NumHelper(8301) = 0
triggerall = p2bodydist X < 50 && p2bodydist X > -100
trigger1 = p2movetype = A
trigger1 = random <= 100
trigger2 = stateno = 1030
trigger2 = movehit > 0
trigger2 = random <= 100
trigger3 = stateno = 1038
trigger3 = movehit > 0
trigger3 = random <= 100
trigger4 = stateno = 1000
trigger4 = time = 10
trigger4 = random <= 400
trigger5 = stateno = 1020
trigger5 = time = 10
trigger5 = random <= 400
trigger6 = p2stateno = 3010
trigger6 = p2movetype = H
trigger6 = p2bodydist Y > -70 
trigger6 = random <= 999
;---------------------------------
; 8 maiden rush level 3 (start)             ·¾3ÆÈÄ¡³à
[State -1]
type = ChangeState
value = 2400
triggerall = var(58) > 2 || var(58) < 1
triggerall = (power >= 3000 + var(20)*100 && var(3) < 1) || (power >= 1000 + var(20)*100 && var(3) > 0)
triggerall = var(55) = 1 && enemy,vel y >= 0
triggerall = var(14) < 1
triggerall = var(16) < 1
triggerall = p2statetype != L   
triggerall = statetype != A
triggerall = ctrl
triggerall = p2stateno != [150,153]
triggerall = p2bodydist X < 50 && p2bodydist X > -100
triggerall = p2bodydist Y > -10
triggerall = (p2movetype = A && p2bodydist X > -50) || (p2movetype != A && random < 100)
trigger1 = random <= 100-ifelse(var(3)>0,50,0)
trigger1 = p2life >= 720
trigger2 = random <= 120-ifelse(var(3)>0,60,0)
trigger3 = roundno = 3
trigger3 = p2life >= 400
trigger3 = random <= 400-ifelse(var(3)>0,300,0)
trigger4 = p2life >= 900
trigger4 = random <= 750-ifelse(var(3)>0,650,0)
trigger5 = p2stateno = 3010
trigger5 = p2movetype = H
trigger5 = p2bodydist Y > -70 
trigger5 = random <= 300

; 8 maiden rush level 2 (start)        ·¾2ÆÈÄ¡³à
[State -1]
type = ChangeState
value = 2500
triggerall = var(58) > 1 || var(58) < 1
triggerall = power >= 2000 + var(20)*100
triggerall = var(55) = 1 && enemy,vel y >= 0
triggerall = var(14) < 1 && var(3) < 1
triggerall = p2statetype != L   
triggerall = var(16) < 1
triggerall = statetype != A
triggerall = ctrl 
triggerall = p2bodydist X < 50 && p2bodydist X > -100
triggerall = p2bodydist Y > -80
triggerall = p2movetype = A
trigger1 = roundno = 2 || roundno = 3
trigger1 = p2life >= 300 && p2life < 450
trigger1 = random <= 100
trigger2 = p2life >= 450 && p2life < 900
trigger2 = random <= 150
trigger3 = p2life >= 900
trigger3 = random <= 900
trigger4 = p2stateno = 3010
trigger4 = p2movetype = H
trigger4 = p2bodydist Y > -70 
trigger4 = random <= 999

; 8 maiden rush level 1 (start)            ·¾1ÆÈÄ¡³à
[state -2]
type = ChangeState
value = 2000
triggerall = power >= 1000 + var(20)*100 || var(3) > 0
triggerall = var(55) = 1 && enemy,vel y >= 0
triggerall = var(14) < 1
triggerall = p2statetype != L   
triggerall = NumHelper(8301) = 0
triggerall = var(16) < 1
triggerall = statetype != A
triggerall = ctrl 
triggerall = p2bodydist X < 50 && p2bodydist X > -100
triggerall = p2bodydist Y > -80
triggerall = p2movetype = A
trigger1 = power >= 1500 + var(20)*100
trigger1 = random <= ceil((30-ifelse(var(58)=1,20,0))/ifelse(var(3)>0,2,1))
trigger2 = power >= 3000 + var(20)*100
trigger2 = random <= ceil((100-ifelse(var(58)=1,90,0))/ifelse(var(3)>0,2,1))
trigger3 = p2life >= 900
trigger3 = random <= ceil((990-ifelse(var(58)=1,980,0))/ifelse(var(3)>0,2,1))
trigger4 = p2stateno = 3010
trigger4 = p2movetype = H
trigger4 = p2bodydist Y > -70 
trigger4 = random <= ceil((999-ifelse(var(58)=1,989,0))/ifelse(var(3)>0,2,1))
;--------------------------------------
;Grab Over                  ¾à¼³Ç³(C)
[state -2]
type = ChangeState
value = 3000
triggerall = var(58) > 1 || var(58) < 1
triggerall = p2name != "BigWomen"
triggerall = p2name != "CADILLACS"
triggerall = p2name != "Madgear"
triggerall = p2name != "DARK WARRIOR2"
triggerall = p2name != "Onslaught"
triggerall = p2name != "Apocalypse"
triggerall = var(55) = 1 && stateno != 52
triggerall = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
triggerall = p2stateno != 153 && p2stateno != 154
triggerall = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
triggerall = p2stateno != 5120 && p2stateno != 120
triggerall = p2statetype != A
triggerall = p2statetype != L   
triggerall = p2movetype != H
triggerall = p2stateno != 140
triggerall = enemynear,stateno != 130 || (enemynear,stateno = 130 && enemynear,prevstateno != 150 && enemynear,prevstateno != 152)
triggerall = statetype != A
triggerall = movecontact = 0
triggerall = statetype = S
triggerall = p2bodydist Y >= -5
triggerall = ctrl 
triggerall = p2bodydist X <= 5 && p2bodydist X > -36
trigger1 = p2movetype = A
trigger1 = random <= 800
trigger2 = p2movetype != A
trigger2 = random <= 700
;----------------------------------
;Oni Yaki Z                        ex±Í½Å
[state -2]
type = ChangeState
value = 1050
triggerall = var(58) > 2 || var(58) < 1
triggerall = power >= 500 + var(20)*100
triggerall = var(16) < 1
triggerall = var(55) = 1
triggerall = p2statetype != L   
triggerall = var(14) < 1
triggerall = statetype != A
triggerall = ctrl 
triggerall = p2movetype = A
trigger1 = p2bodydist X <= 40 && p2bodydist X >= -50
trigger1 = p2bodydist Y >= -10
trigger1 = power >= 2900 + var(20)*100
trigger1 = random <= 180
trigger2 = p2bodydist X <= 40 && p2bodydist X >= -50
trigger2 = p2bodydist Y >= -10
trigger2 = power < 2900 + var(20)*100
trigger2 = random <= 120
trigger3 = p2bodydist X <= 70
trigger3 = p2dist X > 55
trigger3 = p2bodydist Y >= -110 && enemy,vel x >= 0
trigger3 = power >= 2900 + var(20)*100
trigger3 = random <= 180

; Roll forward                  ³ë¸Ö ¾Õ±¸¸£±â
[state -2]
type = ChangeState
value = 1300
triggerall = statetype != A
triggerall = p2statetype != L   
triggerall = var(55) = 1
triggerall = ctrl
triggerall = p2movetype = A && facing != enemynear,facing
triggerall = frontedgedist > 80
trigger1 = p2bodydist X <= 30
trigger1 = random <= 30
trigger2 = p2bodydist X <= 10
trigger2 = p2bodydist Y <= -330
trigger2 = p2movetype = A
trigger2 = backedgedist <= 10
trigger2 = random <= 300

; Roll Backwards               ³ë¸Ö µÚ±¸¸£±â
[state -2]
type = ChangeState
value = 1301
triggerall = var(55) = 1
triggerall = p2statetype != L   
triggerall = statetype = S
triggerall = ctrl
triggerall = p2dist X > 20
trigger1 = p2bodydist X <= 40
trigger1 = p2bodydist Y <= -330
trigger1 = p2movetype = A
trigger1 = random <= 990
;--------------------------------------
;Oni Yaki Y                           °­ ±Í½Å(C)
[state -2]
type = ChangeState
value = 1040
triggerall = var(58) > 1 || var(58) < 1
triggerall = var(55) = 1
triggerall = statetype != A
triggerall = ctrl 
triggerall = p2statetype != L   
triggerall = p2movetype = A
trigger1 = p2bodydist X <= 30 && p2bodydist X >= -50
trigger1 = p2bodydist Y >= -10
trigger1 = random <= 200
trigger2 = p2bodydist X <= 70
trigger2 = p2dist X > 55
trigger2 = p2bodydist Y >= -110 && enemy,vel x >= 0
trigger2 = random <= 200
;-------------------------------------
;Oni Yaki X                        ¾à ±Í½Å(C)
[state -2]
type = ChangeState
value = 1030
triggerall = var(55) = 1
triggerall = statetype != A
triggerall = ctrl 
triggerall = p2statetype != L   
trigger1 = p2bodydist X <= 70
trigger1 = p2dist X >= 56
trigger1 = p2bodydist Y >= -100 && enemy,vel x >= 0
trigger1 = p2movetype = A
trigger1 = random <= ifelse(var(58) = 1,60,180)
trigger2 = p2bodydist X < 20 && p2bodydist X >= -50
trigger2 = p2bodydist Y >= -10
trigger2 = p2movetype = A
trigger2 = random <= ifelse(var(58) = 1,60,180)

; Do Jumping      Á¡ÇÁ
[state -2]
type = ChangeState
value = 40
triggerall = var(55) = 1
triggerall = ctrl
triggerall = statetype = S
triggerall = stateno != 100 || (stateno = 100 && random < 3)
trigger1 = p2statetype != L
trigger1 = random <= 2
trigger1 = p2statetype = A
trigger2 = p2statetype != L
trigger2 = random <= 3
trigger2 = p2statetype = S
trigger2 = p2bodydist X >= 60
trigger3 = p2statetype != L
trigger3 = p2statetype != A
trigger3 = p2bodydist X >= 50
trigger3 = p2bodydist X <= 100
trigger3 = var(16) > 20
trigger3 = random <= 100
trigger4 = p2statetype != L
trigger4 = p2statetype != A
trigger4 = p2bodydist X >= 50
trigger4 = p2bodydist X <= 100
trigger4 = random <= 4
trigger5 = p2statetype != L
trigger5 = random <= 20
trigger5 = p2statetype != A
trigger5 = p2bodydist X <= 20
trigger6 = p2statetype != L
trigger6 = p2statetype != A
trigger6 = p2bodydist X > 100
trigger6 = p2bodydist X <= 200
trigger6 = var(16) > 20
trigger6 = random <= 100
trigger7 = p2statetype != L
trigger7 = p2statetype != A
trigger7 = p2bodydist X > 100
trigger7 = p2bodydist X <= 225
trigger7 = random <= 50
trigger8 = p2statetype != L
trigger8 = p2statetype != A
trigger8 = p2bodydist X > 225
trigger8 = random <= 140
trigger9 = p2stateno = 5120
trigger9 = p2bodydist X <= 25
trigger9 = p2movetype != H
trigger9 = random <= 200
trigger10 = p2bodydist Y < -80 && p2bodydist Y > -125 && p2bodydist X <= 15 && p2bodydist X >= -30
trigger10 = random < 20
;------------------------------------
; Aoi Hana - light (start)          ¾à±ÔÈ­(C)
[state -2]
type = ChangeState
value = 510
triggerall = var(55) = 1
triggerall = statetype != A
triggerall = p2statetype != L   
triggerall = ctrl 
trigger1 = p2bodydist X >= 70
trigger1 = p2bodydist X <= 80
trigger1 = random <= 30
;------------------------------------
; Aoi Hana - heavy (start)          °­±ÔÈ­(C)
[state -2]
type = ChangeState
value = 520
triggerall = var(55) = 1
triggerall = statetype != A
triggerall = p2statetype != L   
triggerall = ctrl 
trigger1 = p2bodydist X >= 90
trigger1 = p2bodydist X <= 100
trigger1 = random <= 30
;------------------------------------
;shadow attack                       ¼­¼­ ±×¸²ÀÚ     
[state -2]
type = ChangeState
value = 8300
triggerall = numhelper(8301) < 1 && var(59) >= 0
triggerall = var(55) = 1 && ((var(56) > 0 && var(53) = 0) || (var(53) = 1 && power >= 2000 + var(20)*100 && var(14) < 1 && var(16) < 1))
triggerall = p2statetype != L   
triggerall = ctrl
triggerall = statetype != A
triggerall = p2bodydist X <= 100
trigger1 = p2movetype != A
trigger1 = random <= 5
trigger2 = p2movetype = A
trigger2 = random <= 10

;KNOCK AB (during guard)   ;°¡µåÄµ½½³¯¸®±â
[state -2]
type = ChangeState
value = 1320
triggerall = var(58) > 1 || var(58) < 1
triggerall = var(16) < 1
triggerall = p2statetype != L   
triggerall = var(14) < 1
triggerall = var(55) = 1
triggerall = statetype != A
triggerall = power >= 1000 + var(20)*100
triggerall = p2bodydist X <= 60 && p2bodydist X >= -50 && p2bodydist Y >= -65
trigger1 = stateno = 150 || stateno = 152
trigger1 = p2movetype = A
trigger1 = random <= 50
trigger2 = stateno = 150 || stateno = 152
trigger2 = gethitvar(hittime) >= 20
trigger2 = random <= 100
trigger3 = stateno = 150 || stateno = 152
trigger3 = life <= 100 || var(28) > 25
trigger3 = random <= 500

;knock AB (during airguard)
[State -1]
type = ChangeState
value = 651
triggerall = var(58) > 1 || var(58) < 1
triggerall = var(16) < 1
triggerall = var(14) < 1
triggerall = var(55) = 1
triggerall = power >= 1000 + var(20)*100
triggerall = p2bodydist X <= 30 && p2bodydist X >= -50 && p2bodydist Y >= -100
triggerall = statetype = A && p2bodydist Y < 65
triggerall = p2movetype = A
triggerall = p2statetype != A
trigger1 = stateno = 154 || stateno = 155
trigger1 = random <= 200
trigger2 = stateno = 154 || stateno = 155
trigger2 = life <= 100
trigger2 = random <= 400
;------------------------------------
; Dodge                      Á¦ÀÚ¸®È¸ÇÇ
[state -2]
type = ChangeState
value = 1305
triggerall = var(58) > 3 || var(58) < 1
triggerall = var(55) = 1
triggerall = p2statetype != L
triggerall = statetype = S
triggerall = var(16) < 1
triggerall = ctrl
triggerall = p2bodydist X > 0 && p2bodydist X <= 250
triggerall = p2bodydist Y >= -80
trigger1 = p2bodydist X <= 30
trigger1 = p2movetype = A
trigger1 = (p2statetype != A && random <= 200) || (p2statetype = A && random <= 30)
trigger2 = p2movetype = A
trigger2 = p2bodydist X > 30
trigger2 = (p2statetype != A && random <= 300) || (p2statetype = A && random <= 45)
trigger3 = p2bodydist X > 200
trigger3 = (p2statetype != A && random <= 100) || (p2statetype = A && random <= 15)

[state -2];°¡µåÄµ½½ ´ë½¬
type = varset
triggerall = var(58) > 2 || var(58) < 1
triggerall = var(55) = 1 && time = 1
triggerall = var(16) < 1 && var(14) < 1
triggerall = stateno = 150 || stateno = 152
triggerall = power >= 212 + var(20)*100
trigger1 = p2bodydist X > 20
trigger1 = p2bodydist X <= 100
trigger1 = p2movetype = A
trigger1 = random <= 200
trigger2 = p2bodydist X > 20
trigger2 = p2bodydist X <= 100
trigger2 = gethitvar(hittime) >= 15
trigger2 = random <= 400
trigger3 = p2bodydist X > 50
trigger3 = life < 100
trigger3 = random <= 600
var(12) = 1
ignorehitpause = 1

;Roll fwd AB (during guard)     °¡µåÄµ½½ ¾Õ±¸¸£±â
[state -2]
type = ChangeState
value = 1302
triggerall = var(58) > 1 || var(58) < 1
triggerall = var(16) < 1
triggerall = var(14) < 1 && time >= 1
triggerall = p2statetype != L && var(12) = 0
triggerall = var(55) = 1 && p2bodydist Y > -51
triggerall = power >= 1000 + var(20)*100
triggerall = stateno = 150 || stateno = 152
trigger1 = p2bodydist X <= 100
trigger1 = p2movetype = A
trigger1 = random <= 50
trigger2 = p2bodydist X <= 100
trigger2 = gethitvar(hittime) >= 20
trigger2 = random <= 100
trigger3 = p2bodydist X > 100
trigger3 = life < 100
trigger3 = random <= 500

;air guard     °øÁß °¡µå
[state -2]
type = ChangeState
value = 132
trigger1 = statetype = A
trigger1 = var(55) = 1
trigger1 = ctrl
trigger1 = p2movetype = A
trigger1 = p2bodydist X > 75
ctrl = 1

;Jump_B Over                ¹éÇÕ
[state -2]
type = ChangeState
value = 612
triggerall = statetype = A
triggerall = p2statetype != L   
triggerall = var(55) = 1
triggerall = ctrl
triggerall = (p2dist X <= 0 && frontedgedist < 40) || (p2dist X <= 10 && frontedgedist > 39)
triggerall = p2bodydist Y <= 100
trigger1 = p2statetype = A
trigger1 = vel Y > 0
trigger2 = vel Y > 1
trigger2 = pos Y >= -65
trigger2 = p2statetype = C
trigger3 = p2statetype = S
trigger3 = vel Y > 1
trigger3 = random <= 300
;-----------------------------------
;RunFwd                        Àü¹æ´ë½¬
[state -2]
type = ChangeState
value = 100
triggerall = var(58) > 1 || var(58) < 1
triggerall = var(55) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 40 && stateno != 100 && prevstateno != 100
triggerall = p2movetype != A
trigger1 = var(16) >= 100
trigger1 = p2bodydist X >= 150
trigger2 = p2movetype != A
trigger2 = p2bodydist X >= 100
trigger2 = random <= 400
trigger3 = var(16) >= 40
trigger3 = p2bodydist X >= 150
;----------------------------------
;RunB                          ¹é´ë½¬
[state -2]
type = ChangeState
value = 105
triggerall = var(55) = 1
triggerall = statetype != A
triggerall = backedgedist >= 100
triggerall = ctrl
triggerall = NumHelper(8301) = 0
trigger1 = p2stateno = 5120
trigger1 = p2bodydist X <= 20
trigger1 = p2movetype != H
trigger1 = random <= 200
trigger2 = p2stateno = 3010
trigger2 = p2bodydist X >= 100
trigger2 = p2bodydist X <= 150
trigger2 = p2bodydist Y >= -50
trigger2 = random <= 900
trigger3 = power >= 1000 + var(20)*100
trigger3 = var(55) = 1 && var(56) < 3
trigger3 = p2movetype = H && p2statetype = A
trigger3 = p2bodydist X > 50 && p2bodydist X < 200
trigger3 = random <= 200
;----------------------------------
; charge                        ±â¸ðÀ¸±â     
[state -2]
type = ChangeState
value = 1309
triggerall = var(58) > 1 || var(58) < 1
triggerall = var(14) < 1 && prevstateno != 1309 && prevstateno != 100
triggerall = var(55) = 1 && prevstateno != 1310 && prevstateno != 1312
triggerall = var(16) < 1 && prevstateno != 1311
triggerall = p2bodydist X > 115
triggerall = power < 3000 + var(20)*100
triggerall = ctrl
triggerall = stateno != 1309 && var(3) < 1
triggerall = statetype != A
triggerall = p2movetype != A
trigger1 = p2stateno = 7605 || p2stateno = 7705 || p2stateno = 7805
trigger1 = random <= 600
trigger2 = p2statetype = L   
trigger2 = random <= 800
trigger3 = p2stateno = 5000
trigger3 = numhelper(8301) = 1
trigger4 = p2stateno = 5020
trigger4 = numhelper(8301) = 1
trigger4 = p2bodydist Y > -20
;-----------------------------------
;Stand_A Close              ±ÙÁ¢ ¼­¼­ ¾àÅ±
[state -2]
type = ChangeState
value = 212
triggerall = var(55) = 1
triggerall = P2bodydist Y >= -10
triggerall = p2bodydist X <= 18 && p2dist X >= 0
triggerall = p2statetype != L   
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(58) > 1 || var(58) < 1
trigger1 = random <= 250
trigger2 = var(58) < 2
trigger2 = random <= 50
;------------------------------------
;Stand_Y                       ¿ø°Å¸® ¼­¼­ °­¼Õ
[state -2]
type = ChangeState
value = 240
triggerall = P2bodydist Y >= -40
triggerall = var(55) = 1
triggerall = p2statetype != L   
triggerall = statetype != A
triggerall = ctrl
triggerall = p2bodydist X >= 30
triggerall = p2bodydist X <= 50
trigger1 = numhelper(8301) = 0
trigger1 = random <= 100
trigger2 = numhelper(8301) = 1
trigger2 = power < 1000 + var(20)*100
trigger2 = random <= 100
trigger3 = var(58) < 2
trigger3 = NumHelper(8301) = 1 
trigger3 = p2movetype = H 
trigger3 = p2statetype = A 
trigger3 = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
trigger3 = p2stateno != 153 && p2stateno != 154 && p2stateno != 130
trigger3 = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
trigger3 = p2bodydist Y <= -20
;---------------------------------
;Stand_Y (close)            ±ÙÁ¢ ¼­¼­ °­¼Õ
[state -2]
type = ChangeState
value = 245
triggerall = p2bodydist X <= 25 && p2dist X >= 0
triggerall = P2bodydist Y >= -40
triggerall = p2statetype != L
triggerall = var(55) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = p2stateno != 1406
trigger1 = numhelper(8301) = 0 || (numhelper(8301) = 1 && p2stateno != 5000 && p2stateno != 5020 && power < 1000)
trigger1 = p2movetype = H
trigger1 = random <= 999
trigger2 = p2stateno != [150,153]
trigger2 = p2stateno != [130,131]
trigger2 = p2stateno != 11
trigger2 = p2stateno != 20
trigger2 = p2stateno != 140
trigger2 = p2movetype = I
trigger2 = random <= 500
trigger3 = numhelper(8301) = 0 || (numhelper(8301) = 1 && p2stateno != 5000 && p2stateno != 5020 && power < 1000)
trigger3 = random <= 100
trigger4 = numhelper(8301) = 1
trigger4 = power < 1000 + var(20)*100
trigger4 = p2movetype = H
trigger4 = random <= 999
trigger5 = numhelper(8301) = 1
trigger5 = power < 1000 + var(20)*100
trigger5 = random <= 100
trigger6 = var(58) < 2
trigger6 = NumHelper(8301) = 1 && p2stateno != 5000 && p2stateno != 5020 && power < 1000
trigger6 = p2movetype = H
trigger6 = p2statetype = A 
trigger6 = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
trigger6 = p2stateno != 153 && p2stateno != 154 && p2stateno != 130
trigger6 = p2stateno != 131 && p2stateno != 140 && p2stateno != 132
trigger6 = p2bodydist Y <= -20
;----------------------------------
;Crouch_C                     ¾É¾Æ °­Å±
[state -2]
type = ChangeState
value = 420
triggerall = var(55) = 1
triggerall = P2bodydist Y >= -10
triggerall = p2statetype != L   
triggerall = ctrl
triggerall = statetype != A
trigger1 = p2bodydist X >= 65
trigger1 = p2bodydist X <= 75
trigger1 = random <= 5
;--------------------------------
;Jump_C                  Á¡ÇÁ °­Å±
[state -2]
type = ChangeState
value = 620
triggerall = var(55) = 1
triggerall = ctrl 
triggerall = statetype = A
triggerall = p2bodydist X > -1
triggerall = var(47) != 2
triggerall = p2bodydist X <= 130
trigger1 = random <= 300
trigger1 = vel Y > 0.5
trigger2 = p2statetype = A
trigger2 = random <= 800
trigger3 = stateno = 2041
trigger3 = p2statetype != C
trigger3 = var(18) = 1
trigger3 = time > 5
trigger3 = random <= 300
trigger4 = p2movetype = A && p2bodydist X <= 80 && p2statetype = A
trigger4 = random <= 990
trigger5 = p2movetype = A && p2bodydist X <= 80 && p2statetype != A && vel y > -3
trigger5 = random <= 990
;----------------------------------
;Jump_Y                 Á¡ÇÁ °­¼Õ
[state -2]
type = ChangeState
value = 640
triggerall = var(55) = 1
triggerall = p2statetype != L   
triggerall = ctrl 
triggerall = statetype = A
triggerall = p2bodydist X > -1
triggerall = p2bodydist X <= 128
triggerall = var(47) != 2
trigger1 = pos Y < -70
trigger1 = vel Y > 0
trigger1 = random <= 500
trigger2 = stateno = 2041
trigger2 = p2statetype != C
trigger2 = time > 5
trigger2 = var(18) = 1
trigger2 = random <= 500
trigger3 = stateno = 2041
trigger3 = p2statetype = C
trigger3 = p2bodydist X >= 50 && var(8) = 2
trigger3 = time = 6
trigger3 = var(18) = 1
trigger3 = random <= 900
trigger4 = stateno = 2041
trigger4 = p2statetype = C
trigger4 = time = 6
trigger4 = var(18) = 1
trigger4 = random <= 900
trigger4 = p2bodydist X >= 25 && var(8) = 1
trigger5 = stateno = 2041
trigger5 = p2statetype = C
trigger5 = time > 6
trigger5 = var(18) = 1
trigger5 = random <= 500
;-----------------------------------
; Throw Z                  ¹ßÀâ±â
[state -2]
type = ChangeState
value = 1500
triggerall = var(58) > 1 || var(58) < 1
triggerall = p2statetype != L   
triggerall = var(55) = 1
triggerall = statetype != A
triggerall = p2bodydist X < 6
triggerall = p2bodydist X > -10
triggerall = p2bodydist y >= -10
triggerall = ctrl
triggerall = P2movetype != H
triggerall = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
triggerall = p2stateno != 153 && p2stateno != 140 
triggerall = p2stateno != 130 && p2stateno != 131 
trigger1 = random <= 500

; Throw Z                        ¼ÕÀâ±â
[state -2]
type = ChangeState
value = 1400
triggerall = var(58) > 1 || var(58) < 1
triggerall = var(55) = 1
triggerall = p2statetype != L   
triggerall = statetype != A
triggerall = p2bodydist X < 6
triggerall = p2bodydist X > -10
triggerall = p2bodydist y >= -10
triggerall = ctrl
triggerall = P2movetype != H
triggerall = p2stateno != 150 && p2stateno != 151 && p2stateno != 152
triggerall = p2stateno != 153 && p2stateno != 140 
triggerall = p2stateno != 130 && p2stateno != 131 
trigger1 = random <= 999
;-----------------------------------
; Taunt            µµ¹ß
[state -2]
type = ChangeState
value = 195
triggerall = power >= 1000 + var(20)*100
triggerall = var(55) = 1 && var(56) < 3 && var(14) < 1 && var(16) < 1
triggerall = p2movetype != A   
triggerall = p2bodydist X > 200
triggerall = ctrl 
triggerall = statetype != A
trigger1 = p2stateno != 5110   
trigger1 = random <= 100
trigger2 = p2stateno = 5110   
trigger2 = random <= 200
;------------------------------------
;Fireball_Z                       °­ ¾îµÒ
[state -2]
type = ChangeState
value = 1020
triggerall = numprojID(7000) = 0
triggerall = p2movetype != A
triggerall = var(55) = 1
triggerall = p2statetype != L   
triggerall = statetype != A
triggerall = ctrl 
trigger1 = p2bodydist X >= 200
trigger1 = random <= 200
trigger2 = p2bodydist X >= 55
trigger2 = p2bodydist X <= 100
trigger2 = p2statetype = C
trigger2 = random <= 200
trigger3 = numhelper(8301) != 0
trigger3 = random <= 220
trigger3 = p2stateno = [150,155]
;-----------------------------------
;Fireball_X                      ¾à ¾îµÒ
[state -2]
type = ChangeState
value = 1000
triggerall = numprojID(7000) = 0
triggerall = var(55) = 1
triggerall = p2movetype != A
triggerall = p2statetype != L   
triggerall = statetype != A
triggerall = ctrl 
trigger1 = p2bodydist X >= 200
trigger1 = random <= 200
trigger2 = numhelper(8301) != 0
trigger2 = random <= 220
trigger2 = p2stateno = [150,155]
;----------------------------------
;Choke Slam                        °­ ±Ý¿ù
[state -2]
type = ChangeState
value = 4333
triggerall = var(55) = 1
triggerall = p2statetype != L
triggerall = p2stateno != 5050
triggerall = p2movetype != A && p2movetype != H
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100 || (stateno = 100 && random < 50)
trigger1 = p2bodydist X >= 150
trigger1 = random <= 110
;------------------------------------
;Scorch C                            ´Ü¹ß °­Á¶Áñ
[state -2]
type = ChangeState
value = 305
triggerall = var(55) = 1 && numtarget(2010) = 0 && numtarget(2510) = 0
triggerall = p2movetype != A && p2statetype != L && numtarget(2402) = 0
triggerall = statetype != A
triggerall = ctrl && stateno != 100
triggerall = p2bodydist X >= 100
triggerall = p2bodydist X <= 190
triggerall = p2bodydist Y >= -20
trigger1 = random <= 40

;Crouch_A  ¾É¾Æ ¾àÅ±
[State -1]
type = ChangeState
value = 400
triggerall = var(55) = 1
triggerall = p2bodydist X < 50 && p2bodydist X > 25
triggerall = p2statetype != L   
triggerall = statetype != A && p2statetype != A
triggerall = ctrl
triggerall = p2stateno != 1406
triggerall = numhelper(8301) = 0 || p2stateno != 5020
triggerall = var(58) > 1 || var(58) < 0
trigger1 = p2movetype = H
trigger1 = random <= 100
trigger2 = p2stateno = [150,151]
trigger2 = random <= 100
trigger3 = p2movetype = I
trigger3 = random <= 100

[State -1] ;¾É¾Æ ¾à¼Õ
type = ChangeState
value = 430
triggerall = var(55) = 1
triggerall = p2bodydist X < 47 && p2bodydist X > 25
triggerall = p2statetype != L   
triggerall = statetype != A && p2statetype != A
triggerall = ctrl
triggerall = p2stateno != 1406
triggerall = numhelper(8301) = 0 || p2stateno != 5020
triggerall = var(58) > 1 || var(58) < 0
trigger1 = p2movetype = H
trigger1 = random <= 80
trigger2 = p2stateno = [150,151]
trigger2 = random <= 80
trigger3 = p2movetype = I
trigger3 = random <= 80

[State -1] ;´Ù¿î±×¸²ÀÚ
type = helper
id = 8301
stateno = 8301
ownpal = 1
name = "iori's shadow"
triggerall = var(55) = 1
triggerall = (var(53) = 0 && var(56) > 0) || (var(53) = 1 && power >= 2000 + var(20)*100 && var(14) < 1 && var(16) < 1)
triggerall = numhelper(8301) < 1 && var(59) >= 0
triggerall = alive
triggerall = p2bodydist X < 120 && p2dist X >= 0
triggerall = random < 20 || (p2movetype = A && random < 200)
trigger1 = Vel Y > 0
trigger1 = (Pos Y >= -10 && stateno = 5050) || (Pos Y >= -20 && stateno = 5071)
trigger2 = stateno = 5100
trigger3 = stateno = 5110 && time < 2 && prevstateno = 5071

;     ÇÏ´Ü °¡µå
[state -2]
type = ChangeState
value = 131
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = var(55) = 1
triggerall = p2dist X > 0
triggerall = p2bodydist Y >= -80
triggerall = ctrl
trigger1 = p2movetype = A && p2bodydist X <= 250
trigger1 = p2statetype != A && gametime%30 < 25
trigger2 = p2movetype != A && random < 500
trigger2 = enemynear,numproj > 0

;        °¡µå
[state -2]
type = ChangeState
value = 130
triggerall = statetype != A
triggerall = p2statetype != L   
triggerall = var(55) = 1
triggerall = p2dist X > 0
triggerall = p2bodydist Y >= -80
triggerall = ctrl
trigger1 = p2movetype = A && p2bodydist X <= 250
trigger1 = p2statetype = A || gametime%30 >= 25
trigger2 = p2movetype != A
trigger2 = enemynear,numproj > 0
