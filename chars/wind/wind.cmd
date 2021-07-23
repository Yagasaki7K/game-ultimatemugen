
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = "some_name"
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /F, a    ;hold fwd while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands are given below. Delete, add, or modify as you wish.

;-| AI |--------------------------------------------------------

[Command]
name = "AI_1"
command = U,D,a+c,z,c+b,s
time = 1

[Command]
name = "AI_2"
command = U,B,a+c,z,c+b,s
time = 1

[Command]
name = "AI_3"
command = U,F,a+c,z,c+b,s
time = 1

[Command]
name = "AI_4"
command = U,D,a+c,x,c+b,s
time = 1

[Command]
name = "AI_5"
command = U,D,a+c,y,c+b,s
time = 1

[Command]
name = "AI_6"
command = U,D,x+c,z,c+b,s
time = 1

[Command]
name = "AI_7"
command = U,D,x+c,y,c+b,s
time = 1

[Command]
name = "AI_8"
command = U,D,x+c,a,c+b,s
time = 1

[Command]
name = "AI_9"
command = U,D,x+c,z,x+b,s
time = 1

[Command]
name = "AI_10"
command = U,D,x+c,z,y+b,s
time = 1

[Command]
name = "AI_11"
command = U,D,x+c,z,z+b,s
time = 1

[Command]
name = "AI_12"
command = U,B,x+c,z,z+y,s
time = 1

;-------------------------
[command]
name = "holywind"
command = ~D, DF, F, D, DF, F, c
time = 30

[command]
name = "holywind"
command = ~D, DF, F, D, DF, F, x+y
time = 30

[Command]
name = "yamimax"
command = ~D, B, D, B, x+y
time = 30

[Command]
name = "yami"
command = ~D, B, D, B, x
time = 30

[Command]
name = "yami"
command = ~D, B, D, B, y
time = 30

[Command]
name = "yawotomeMAX_ground" 
command = ~D, B, D, F, a+b
time = 30

[Command]
name = "yawotomeMAX_air" 
command = ~D, B, D, F, x+y
time = 30

[Command]
name = "yawotome_ground_A" 
command = ~D, B, D, F, a
time = 30

[Command]
name = "yawotome_ground_B" 
command = ~D, B, D, F, b
time = 30

[Command]
name = "yawotome_air_X" 
command = ~D, B, D, F, x
time = 30

[Command]
name = "yawotome_air_Y" 
command = ~D, B, D, F, y
time = 30

[Command]
name = "flyingattack_max" 
command = ~D, B, D, B, a+b
time = 30

[Command]
name = "flyingattack" 
command = ~D, B, D, B, a
time = 30

[Command]
name = "flyingattack" 
command = ~D, B, D, B, b
time = 30

;***************************************************

[Command]
name = "wanx"
command = ~F, D, DF, x
[Command]
name = "wany"
command = ~F, D, DF, y
[Command]
name = "kaze0"
command = ~B, D, F, x
time = 15
[Command]
name = "kaze1"
command = ~B, D, F, a
time = 15
[Command]
name = "kaze2"
command = ~B, D, F, y
time = 15
[Command]
name = "kaze3"
command = ~B, D, F, b
time = 15
[Command]
name = "aoix"
command = ~D, DB, B, x
[Command]
name = "aoiy"
command = ~D, DB, B, y
[Command]
name = "warpa"
command = ~F, D, B, F, a
time = 25
[Command]
name = "warpb"
command = ~F, D, B, F, b
time = 25
[Command]
name = "warpx"
command = ~F, D, B, F, x
time = 25
[Command]
name = "warpy"
command = ~F, D, B, F, y
time = 25

[Command]
name = "nucklea"
command = ~D, DB, B, a
[Command]
name = "nuckleb"
command = ~D, DB, B, b

[Command]
name = "longjump"
command = D, $U
time = 18

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "hop"
command = D,D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "ab"
command = a+b
time = 3

[Command]
name = "xy"
command = x+y
time = 3

[Command]
name = "ab"
command = a+b
time = 3

[Command]
name = "bc"
command = b+c
time = 3

;-| Hold Button |-----------------------------------------------------------

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_start"
command = /$s
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "dodge"
command = x+a
time = 1

[Command]
name = "ko"
command = y+b
time = 1
;-| Single Button |---------------------------------------------------------
[Command]
name = "y"
command = y
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
name = "a"
command = a
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.

[Statedef -1]

;---------------------------------------------------------------------------
;超必殺技
;---------------------------------------------------------------------------
;エデン
[State -1]
type = ChangeState
value = 4500
triggerall = command = "holywind"
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;---------------------------------------------------------------------------
;やおとめ_地上_MAX
[State -1, YAOTOME]
type = ChangeState
value = 3100
triggerall = command = "yawotomeMAX_ground"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;---------------------------------------------------------------------------
;やおとめ_空中_MAX
[State -1, YAOTOME]
type = ChangeState
value = 3150
triggerall = command = "yawotomeMAX_air"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;-----------------------------------------
;やおとめ_A
[State -1, Yaotome]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "yawotome_ground_A" 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact


;-----------------------------------------
;やおとめ_B
[State -1, Yaotome]
type = ChangeState
value = 3010
triggerall = power >= 1000
triggerall = command = "yawotome_ground_B" 
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;-----------------------------------------
;やおとめ_X
[State -1, Yaotome]
type = ChangeState
value = 3050
triggerall = power >= 1000
triggerall = command = "yawotome_air_X"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;-----------------------------------------
;やおとめ_Y
[State -1, Yaotome]
type = ChangeState
value = 3060
triggerall = power >= 1000
triggerall = command = "yawotome_air_Y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;---------------------------------------------------------------------------
;やみどうこく_MAX
[State -1, Yamidoukoku]
type = ChangeState
value = 3250
triggerall = command = "yamimax"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;やみどうこく
[State -1, Yamidoukoku]
type = ChangeState
value = 3200
triggerall = command = "yami"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;---------------------------------------------------------------------------
;シュトゥルム_MAX
[State -1, FlyingAttack]
type = ChangeState
value = 3350
triggerall = command = "flyingattack_max"
triggerall = power >= 2000
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

[State -1, FlyingAttack]
type = ChangeState
value = 3300
triggerall = command = "flyingattack"
triggerall = power >= 1000
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact



;===========================================================================
;必殺技
;---------------------------------------------------------------------------
;わんひょう
[State -1, wanhyo]
type = ChangeState
value = 1400
triggerall = command = "wanx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact


[State -1, wanhyo]
type = ChangeState
value = 1410
triggerall = command = "wany"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;------------------------------------------
;､よのかぜ
[State -1, YonoKaze]
type = ChangeState
value = 1000
triggerall = command = "kaze0"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

[State -1, YonoKaze]
type = ChangeState
value = 1010
triggerall = command = "kaze1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

[State -1, YonoKaze]
type = ChangeState
value = 1020
triggerall = command = "kaze2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

[State -1, YonoKaze]
type = ChangeState
value = 1030
triggerall = command = "kaze3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;---------------------------------------------------------------------------
;ひょうか_A
[State -1, Warp]
type = ChangeState
value = 1500
triggerall = command = "warpa"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;ひょうか_B
[State -1, Warp]
type = ChangeState
value = 1510
triggerall = command = "warpb"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;ひょうか_X
[State -1, Warp]
type = ChangeState
value = 1550
triggerall = command = "warpx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;ひょうか_Y
[State -1, Warp]
type = ChangeState
value = 1560
triggerall = command = "warpy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;----------------------------------------
;あおいばな
[State -1, Aoi]
type = ChangeState
value = 1300
triggerall = command = "aoix"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;あおいばな
[State -1, Aoi]
type = ChangeState
value = 1305
triggerall = command = "aoiy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

[State -1, Aoi]
type = ChangeState
value = 1310
triggerall = command = "y" || command = "x"
trigger1 = stateno = 1300 || stateno = 1305
trigger1 = animelem = 6, >= 1

[State -1, Aoi]
type = ChangeState
value = 1320
triggerall = command = "y" || command = "x"
trigger1 = animelem = 5, >= 1
trigger1 = stateno = 1310

;---
[State -1, Aoi]
type = ChangeState
value = 1330
triggerall = command = "a" || command = "b"
trigger1 = stateno = 1300 || stateno = 1305
trigger1 = animelem = 6, >= 1

[State -1, Aoi]
type = ChangeState
value = 1340
triggerall = command = "a" || command = "b"
trigger1 = animelem = 9, >= 1
trigger1 = Var(16) = 1;竜巻HIT
trigger1 = stateno = 1330

;----------------------------------------
;よのかぜ
[State -1, YonoKaze]
type = ChangeState
value = 1600
triggerall = statetype = A
triggerall = Pos Y < -50
triggerall = command = "kaze0"
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 601
trigger2 = movecontact
trigger3 = stateno = 610 || stateno = 611
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 631
trigger5 = movecontact
trigger6 = stateno = 640 || stateno = 641
trigger6 = movecontact

[State -1, YonoKaze]
type = ChangeState
value = 1610
triggerall = statetype = A
triggerall = Pos Y < -50
triggerall = command = "kaze1"
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 601
trigger2 = movecontact
trigger3 = stateno = 610 || stateno = 611
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 631
trigger5 = movecontact
trigger6 = stateno = 640 || stateno = 641
trigger6 = movecontact

[State -1, YonoKaze]
type = ChangeState
value = 1620
triggerall = statetype = A
triggerall = Pos Y < -50
triggerall = command = "kaze2"
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 601
trigger2 = movecontact
trigger3 = stateno = 610 || stateno = 611
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 631
trigger5 = movecontact
trigger6 = stateno = 640 || stateno = 641
trigger6 = movecontact

[State -1, YonoKaze]
type = ChangeState
value = 1630
triggerall = statetype = A
triggerall = Pos Y < -50
triggerall = command = "kaze3"
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 601
trigger2 = movecontact
trigger3 = stateno = 610 || stateno = 611
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 631
trigger5 = movecontact
trigger6 = stateno = 640 || stateno = 641
trigger6 = movecontact

;----------------------------------------
;つむじ
[State -1, YonoKaze]
type = ChangeState
value = 1700
;triggerall = statetype = A
;triggerall = Pos Y < -30
triggerall = command = "nucklea"
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact
trigger12 = stateno = 600 || stateno = 601
trigger12 = movecontact
trigger13 = stateno = 610 || stateno = 611
trigger13 = movecontact
trigger14 = stateno = 630
trigger14 = movecontact
trigger15 = stateno = 631
trigger15 = movecontact
trigger16 = stateno = 640 || stateno = 641
trigger16 = movecontact

;つむじ
[State -1, YonoKaze]
type = ChangeState
value = 1750
;triggerall = statetype = A
;triggerall = Pos Y < -30
triggerall = command = "nuckleb"
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movecontact
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movecontact
trigger7 = stateno = 605
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 411
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact
trigger12 = stateno = 600 || stateno = 601
trigger12 = movecontact
trigger13 = stateno = 610 || stateno = 611
trigger13 = movecontact
trigger14 = stateno = 630
trigger14 = movecontact
trigger15 = stateno = 631
trigger15 = movecontact
trigger16 = stateno = 640 || stateno = 641
trigger16 = movecontact

;-------------------------------------------------------------------------------
;通常技
;-------------------------------------------------------------------------------
;Throw Y
[State -1, Throw]
type = ChangeState
value = 810
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist x  < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist x  < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;Throw B
[State -1, Throw]
type = ChangeState
value = 815
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist x  < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist x  < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Charge
[State -1, charge]
type = ChangeState
value = 280
trigger1 = command = "ab"
trigger1 = statetype != A
trigger1 = power != 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;前方回避
[State -1]
type = ChangeState
value = 900
trigger1 = command = "dodge" ||  command = "z"
trigger1 = command != "holdback"
trigger1 = statetype != A
trigger1 = ctrl

;ガードキャンセル_前方回避
[State -1]
type = ChangeState
value = 905
triggerall = command = "dodge" ||  command = "z"
triggerall = command != "holdback"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = stateno = 150 || stateno = 151
trigger2 = stateno = 152 || stateno = 153 

;後方回避
[State -1]
type = ChangeState
value = 910
trigger1 = command = "dodge" ||  command = "z"
trigger1 = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl

;ガードキャンセル_後方回避
[State -1]
type = ChangeState
value = 915
triggerall = command = "dodge" ||  command = "z"
triggerall = command = "holdback"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = stateno = 150 || stateno = 151
trigger2 = stateno = 152 || stateno = 153 

;ふっとばし
[State -1, KO]
type = ChangeState
value = 250
triggerall = command = "ko" ||  command = "c"
trigger1 = statetype != A
trigger1 = ctrl

;ガードキャンセル_ふっとばし
[State -1, KO]
type = ChangeState
value = 252
triggerall = command = "ko" ||  command = "c"
triggerall = power >= 500
triggerall = statetype != A
trigger1 = stateno = 150 || stateno = 151
trigger2 = stateno = 152 || stateno = 153 

;空中ふっとばし
[State -1]
type = ChangeState
value = 255
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "ko" || command = "c"

;ガードキャンセル_空中ふっとばし
[State -1]
type = ChangeState
value = 257
triggerall = command = "ko" || command = "c"
triggerall = power >= 500
triggerall = statetype = A
trigger1 = stateno = 154

;---------------------------------------------------------------------------
;Standing A
[State -1, A-S]
type = ChangeState
value = 200
trigger1 = command = "x"
trigger1 = statetype = S
triggerall = ctrl

;-------------------------------------------------------------------
;Fw+A(Cancel)
[State -1, Command Attack 1]
type = ChangeState
value = 605
triggerAll = (command = "a") && (command = "holdfwd")
triggerAll = statetype = S
trigger1 = ctrl = 0
trigger1 = hitdefattr = SC,NA
trigger1 = movecontact
trigger1 = stateno !=605
trigger1 = Stateno !=607
trigger1 = stateno !=1600
trigger1 = stateno !=1601
trigger1 = stateno !=250
trigger1 = stateno !=252

;-------------------------------------------------------------------
;Fw+A
[State -1, Command Attack 1]
type = ChangeState
value = 607
triggerAll = (command = "a") && (command = "holdfwd")
triggerAll = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------

;Jump Down Y
[State -1, Jump Strong Punch]
type = ChangeState
value = 630
triggerall = (command = "y") && (command = "holddown")
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = A,NA
trigger2 = stateno = 600 || stateno = 601
trigger2 = movecontact
trigger3 = hitdefattr = A,NA
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = hitdefattr = A,NA
trigger4 = stateno = 611
trigger4 = movecontact
trigger5 = hitdefattr = A,NA
trigger5 = stateno = 631
trigger5 = movecontact
trigger6 = hitdefattr = A,NA
trigger6 = stateno = 640 || stateno = 641
trigger6 = movecontact

;---------------------------------------------------------------------------
;Standing A - Close
[State -1, A-S]
type = ChangeState
value = 210
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = P2BodyDist X <= 10
trigger1 = ctrl

;Standing A - Normal
[State -1, A-L]
type = ChangeState
value = 211
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = P2BodyDist X >= 10
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing C - Close
;[State -1, A-S]
;type = ChangeState
;value = 220
;trigger1 = command = "y"
;trigger1 = statetype = S
;trigger1 = P2BodyDist X <= 10
;trigger1 = ctrl

;Stand Y - Close
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x  <= 10

;Stand Y
[State -1, A-S]
type = ChangeState
value = 221
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = P2BodyDist X >= 10
trigger1 = ctrl

;Crouch B
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Crouch X
[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouch Y
[State -1, Crouching Strong Punch]
type = ChangeState
value = 411
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouch A
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;Crouch B
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;Jump X
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X != 0

;NeuJump X
[State -1, Jump Light Punch]
type = ChangeState
value = 601
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;Jump Y
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X != 0

;NeuJump Y
[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;Jump A
[State -1, Jump Light Kick]
type = ChangeState
value = 631
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;Jump B
[State -1, Jump Strong Kick]
type = ChangeState
value = 641
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X != 0

;Neu Jump B
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0



;---------------------------------------------------------------------------
;s
[State -1, Book]
type = ChangeState
value = 290;199
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Tap Up
;[State -1, hop]
;type = ChangeState
;value = 191
;trigger1 = command = "hop"
;trigger1 = statetype = S
;trigger1 = ctrl
