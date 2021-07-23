; The CMD file.
;
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
;   name = some_name
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
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
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
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| AI Activation Commands |-----------------------------------------------
; From BBH
[Command]
name = "CPU0"
command = U,U,D,D,B,F,B,F,s,s
time = 0

[Command]
name = "CPU1"
command = U,U,D,D,B,F,B,F,a,a
time = 0

[Command]
name = "CPU2"
command = U,U,D,D,B,F,B,F,b,b
time = 0

[Command]
name = "CPU3"
command = U,U,D,D,B,F,B,F,c,c
time = 0

[Command]
name = "CPU4"
command = U,U,D,D,B,F,B,F,x,x
time = 0

[Command]
name = "CPU5"
command = U,U,D,D,B,F,B,F,y,y
time = 0

[Command]
name = "CPU6"
command = U,U,D,D,B,F,B,F,z,z
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,b
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,b,c
time = 0

[Command]
name = "CPU9"
command = U,U,D,D,B,F,B,F,a,c
time = 0

[Command]
name = "CPU10"
command = U,U,D,D,B,F,B,F,x,y
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B,F,B,F,y,z
time = 0

[Command]
name = "CPU12"
command = U,U,D,D,B,F,B,F,x,z
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,B,F,a,x
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,B,F,a,y
time = 0

[Command]
name = "CPU15"
command = U,U,D,D,B,F,B,F,a,z
time = 0


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "CoreSlam"
command = ~B, DB, D, DF, F, a+b
time = 55

[Command]
name = "Ship Guidance"
command = ~F, DF, D, DB, B, DB, D, DF, F, x+y
time = 55

[Command]
name = "Pummel"
command = ~D, DB, B, x+y

[Command]
name = "PaythePiper"
command = ~F, D, DF, x+y


[Command]
name = "crusher"
command = ~D, D , y+z

[Command]
name = "PerficStorm"
command = ~F, DF, D, DB, B, b+c
time = 55

[Command]
name = "Guns-slingers"
command = ~B, DB, D, DF, F, b+c
time = 15

[Command]
name = "BoomBoom1"
command = ~D, DB, B, a
time = 15

[Command]
name = "AnchorChain"
command = ~D, DB, B, b
time = 15

[Command]
name = "Spinach"
command = F, DF, D, DB, B, y+z
time = 25

[Command]
name = "BurgerTime"
command = y, x, a, b 
time = 75

[Command]
name = "SailorsHistory"
command = ~F, DF, D, DB, B, a+b
time = 15

[Command]
name = "Triple Team"
command = ~B, DB, D, DF, F, b+c 
time = 15

[Command]
name = "LightUmUp"
command = ~B, DB, D, DF, F, y+z 
time = 15

[Command]
name = "easysupyz"
command = y+z
time = 15

[Command]
name = "easysupxy"
command = x+y
time = 15

[Command]
name = "easysupbc"
command = b+c
time = 15

[Command]
name = "easysupab"
command = a+b
time = 15

;-| Special Motions |------------------------------------------------------


[Command]
name = "easypunch";Required (do not remove)
command = ~z,z
time = 15

[Command]
name = "easyupper";Required (do not remove)
command = ~x,x
time = 15

[Command]
name = "easywammy";Required (do not remove)
command = ~y,y
time = 15

[Command]
name = "easybomb";Required (do not remove)
command = ~a,a
time = 15

[Command]
name = "easychain";Required (do not remove)
command = ~b,b
time = 15

[Command]
name = "easycounter";Required (do not remove)
command = ~c,c
time = 15

[Command]
name = "Pipe"
command = ~D, DF, F, z
time = 20

[Command]
name = "underupper"
command = ~F, D, DF, y
time = 15

[Command]
name = "LovePopeye"
command = ~D, DF, F, y
time = 8

[Command]
name = "RollingPunchx"
command = ~D, DF, F, x

[Command]
name = "DiveBomb"
command = ~F, D, DF, z

[Command]
name = "Counter"
command = ~D, DB, B, c

[Command]
name = "Spin1"
command =  ~D ,DB, B, x
time = 15

[Command]
name = "SevenSeas"
command = ~D ,DB, B, y
time = 15

[Command]
name = "Spin2"
command = ~D ,DF, F, x
time = 15

[Command]
name = "Spin3"
command = ~D ,DB, B, z  
time = 15

[Command]
name = "Charge!"
command = ~67z 
time = 15

[Command]
name = "dragon1"
command = ~F, D ,DF, x

[Command]
name = "dragon3"
command = ~F, D ,DF, z

[Command]
name = "Thrust"
command = ~D, DF, F, z

[Command]
name = "Slam"
command = ~D, DF, F, c
time = 15

[Command]
name = "Slam3"
command = ~D, DF, F, a
time = 15

[Command]
name = "Fired-Up!"
command =  y+z 
time = 45

[Command]
name = "Doublewhammy"
command = ~B, D, DB, y
time = 15

[Command]
name = "Slam2"
command = ~D, DF, F, b
time = 15

[Command]
name = "Assist"
command = ~B, DB, D, DF, F, b 
time = 15

[Command]
name = "Assist2"
command = ~D, DF, F, c 
time = 15

[Command]
name = "Assist3"
command = ~D, D, c 
time = 10

[Command]
name = "Assist4"
command = ~D, D, a
time = 15

[Command]
name = "AssistHag"
command = ~D, D, b 
time = 15

[Command]
name = "Nephews"
command = ~D, D, z 
time = 15

[Command]
name = "Kidnap"
command = ~D, D, y 
time = 15

;[Command]
;name = "Come Here"
;command = ~D, DF, F, a
;time = 15

[Command]
name = "BRUTUS"
command = ~z, b, x
time = 45

[Command]
name = "Charge2!"
command = ~B, D, DB, z
time = 15


;-| Special Commands |-----------------------------------------------------

[Command]
name = "SuperJumpUp"
command = D, U

[Command]
name = "SuperJumpFwd"
command = D, UF

[Command]
name = "SuperJumpBck"
command = D, UB

[Command]
name = "UFRun"     
command = /UF, UF

[Command]
name = "UBRun"     
command = /UB, UB

[Command]
name = "DFRun"     
command = /DF, y+z

[Command]
name = "DBRun"     
command = /DB, y+z

[Command]
name = "FRun"     
command = /F, y+z

[Command]
name = "BRun"     
command = /B, y+z

[Command]
name = "URun"     
command = /U, y+z

[Command]
name = "DRun"     
command = y+z

[Command]
name = "FF"
command = /F,x+y
time = 10

[Command]
name = "BB"
command = /B,x+y
time = 10

[Command]
name = "HoldA"
command = /a

[Command]
name = "HoldB"
command = /b		

[Command]
name = "HoldC"
command = /c

[Command]
name = "HoldX"
command = /x

[Command]
name = "HoldY"
command = /y

[Command]
name = "HoldZ"
command = /z

[Command]
name = "Up"
command = U

[Command]
name = "Down"
command = D

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

[Command]
name = "airlaucher"
command = /DF, z
time = 1


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 5

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;AI Activation
[State -1]
type = null;VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
trigger9 = command = "CPU8"
trigger10 = command = "CPU9"
trigger11 = command = "CPU10"
trigger12 = command = "CPU11"
trigger13 = command = "CPU12"
trigger14 = command = "CPU13"
trigger15 = command = "CPU14"
trigger16 = command = "CPU15"
v = 13
value = 1


;AI Activation
[State -1]
type = VarSet
;triggerall = roundstate = 2
trigger1 = numhelper(9980) = 1;command = "CPU0"
v = 59
value = 1

;AI Activation
[State -1]
type = VarSet
;triggerall = roundstate = 2
trigger1 = numhelper(9981) = 1;command = "CPU0"
v = 59
value = 0

;:AI
;------------------------

;Supers

;Power Pummel
[State -1, ]
type = ChangeState
value = 4210
triggerall = stateno != 4210
triggerall = Var(13) = 1
triggerall = StateType = A
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = power >= 1000
trigger1 = p2Movetype = H
trigger1 = StateNo = 1471
trigger1 = p2bodyDist X <= 80
trigger1 = Pos y <= -50
trigger1 = random < 600
trigger1 = p2bodyDist Y <= 20
trigger1 = p2bodyDist Y >= -40
trigger2 = stateno = 2780
trigger2 = p2bodyDist X <= 110
trigger2 = Pos y <= -50
trigger2 = random < 600
trigger2 = p2bodyDist Y <= 20
trigger2 = p2bodyDist Y >= -40

;Perfect Storm
[State -1, ]
type = ChangeState
value = 2400
triggerall = stateno != 2400
triggerall = Var(13) = 1
triggerall = StateType = S || StateType = C
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = power >= 1000
triggerall = Ctrl = 1
trigger1 = p2Movetype = A
trigger1 =  Stateno = 0 ||stateno = 100 || stateno = 11
trigger1 = p2Dist y <= -50
trigger1 = p2Dist y >= -150
trigger1 = random < 100
trigger2 = StateNo = 4953;2780
trigger2 = p2bodyDist X <= 80
trigger2 = Movehit
trigger2 = random < 300


;Power Pummel
[State -1, ]
type = ChangeState
value = 3085
triggerall = stateno != 3085
triggerall = Var(13) = 1
triggerall = StateType = S || StateType = C || StateType = A
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = power >= 1000
triggerall = Ctrl = 1
trigger1 = p2Movetype = H
trigger1 = StateNo = 1432;2780
trigger1 = p2bodyDist X <= 80
trigger2 = p2Movetype = H
trigger2 = StateNo = 1471;2780
trigger2 = p2bodyDist X <= 80
trigger2 = Pos y <= -50
trigger2 = random < 300

;Power Pummel1
[State -1, ]
type = ChangeState
value = 2040
triggerall = stateno != 2040
triggerall = Var(13) = 1
triggerall = StateType = S || StateType = C
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = power >= 1000
triggerall = Ctrl = 1
trigger1 =  Stateno = 4953
trigger1 = random < 500
;trigger1 = p2Movetype = H
trigger1 = Movehit
trigger1 = AnimElem = 10
;trigger1 = P2bodydist y >= -50
trigger2 =  Stateno = 4806
trigger2 = random < 200
trigger2 = p2Movetype = H
trigger2 = Movehit
trigger2 = P2bodydist y <= -40

;---------------------
; Specials

;Quake Punch
[State -1, ]
type = ChangeState
value = 1035
triggerall = stateno != 1035
triggerall = Var(13) = 1
triggerall = StateType = S || StateType = C
triggerall = roundstate = 2
triggerall = movetype != H
trigger1 =  Stateno = 0 ||stateno = 100 || stateno = 11
trigger1 = p2movetype = A
trigger1 = p2bodyDist X >= 171
trigger1 = p2bodyDist X <= 300
trigger2 = Time >= 7
trigger2 = Movehit
trigger2 = stateno = 250
trigger2 = random < 300
trigger2 = p2bodyDist X <= 40
trigger2 = P2bodydist y >= -10

;Double Dash
[State -1, ]
type = ChangeState
value = 4953
triggerall = stateno != 4953
triggerall = Var(13) = 1
triggerall = StateType = S || StateType = C
triggerall = roundstate = 2
triggerall = movetype != H
trigger1 =  Stateno = 0 ||stateno = 100 || stateno = 11
trigger1 = p2movetype = A
trigger1 = p2bodyDist X >= 70
trigger1 = p2bodyDist X <= 100
trigger1 = Time >= 5
trigger2 = Movehit
trigger2 = Time >= 14
trigger2 = stateno = 250
trigger2 = random < 400
trigger2 = p2bodyDist X <= 100
trigger2 = P2bodydist y >= -50
trigger3 = Movehit
trigger3 = Time >= 5
trigger3 = stateno = 240
trigger3 = random < 400
trigger3 = p2bodyDist X <= 150
trigger3 = P2bodydist y >= -50

;Double Wammy
[State -1, ]
type = ChangeState
value = 4950
triggerall = stateno != 4950
triggerall = Var(13) = 1
triggerall = StateType = S || StateType = C
triggerall = roundstate = 2
triggerall = movetype != H
trigger1 =  Stateno = 0 ||stateno = 100 || stateno = 11
trigger1 = Time >= 7
trigger1 = p2bodyDist X >= 40
trigger1 = p2bodyDist X <= 50
trigger2 = Movehit
trigger2 = Time >= 14
trigger2 = stateno = 250
trigger2 = random < 500
trigger2 = p2bodyDist X <= 50
trigger2 = P2bodydist y >= -31
trigger3 = random < 400
;trigger3 = Time >= 14
trigger3 = Movehit;hitcount = 2
trigger3 = stateno = 450
trigger3 = p2bodyDist X <= 51

;Single Wammy
[State -1, ]
type = null;ChangeState
value = 4804
triggerall = stateno != 4804
triggerall = Var(13) = 1
triggerall = StateType = S || StateType = C
triggerall = roundstate = 2
triggerall = movetype != H
trigger1 = P2bodydist y >= -50
trigger1 = Time >= 14
trigger1 = stateno = 250
trigger1 = random < 200
trigger1 = p2bodyDist X <= 20

;TS Popeye
[State -1, ]
type = ChangeState
value = 4952
triggerall = stateno != 4952
triggerall = Var(13) = 1
triggerall = StateType = A
triggerall = roundstate = 2
triggerall = movetype != H
trigger1 = Movehit
trigger1 = stateno = 640
trigger1 = random < 200

;Quake Punch
[State -1, ]
type = ChangeState
value = 1432
triggerall = stateno != 1432
triggerall = Var(13) = 1
triggerall = StateType = S || StateType = C
triggerall = roundstate = 2
triggerall = movetype != H
trigger1 =  Stateno = 0 ||stateno = 100 || stateno = 11
trigger1 = p2movetype = A
trigger1 = p2bodyDist X >= 110
trigger1 = p2bodyDist X <= 170
;trigger2 = Time >= 10
trigger2 = Movehit;hitcount = 2
trigger2 = stateno = 250
trigger2 = Time >= 15
trigger2 = random < 600
trigger2 = Time >= 14
trigger3 = Movehit;hitcount = 2
trigger3 = stateno = 450
trigger4 = random < 500
trigger4 = Time >= 14
trigger4 = Movehit;hitcount = 2
trigger4 = stateno = 450
trigger4 = p2bodyDist X >= 41
;trigger4 = random < 700

;Quake Punch
[State -1, ]
type = ChangeState
value = 1470
triggerall = stateno != 1470
triggerall = Var(13) = 1
triggerall = StateType = A
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = Pos y <= -.5
;triggerall = ctrl = 1
trigger1 =  Stateno = 640
trigger1 = Movehit;hitcount = 2
trigger1 = random < 700
;trigger1 = Pos y >= -90
;trigger2 =  Stateno = 610
;trigger2 = Movehit;hitcount = 2
;trigger2 = random < 701
;trigger2 = Pos y <= -91;111
trigger2 =  Stateno = 660
trigger2 = Movehit;hitcount = 2
trigger2 = random < 400
trigger2 = Pos y >= -90
trigger3 =  stateno = 690 ||stateno = 720 || stateno = 50
trigger3 = random < 400
trigger3 = Pos y <= -80
trigger3 = p2Dist X >= 190
trigger3 = ctrl = 1

;Quake Punch
[State -1, ]
type = ChangeState
value = 4953
triggerall = stateno != 4953
triggerall = Var(13) = 1
triggerall = StateType = A
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = Pos y <= -.5
;triggerall = ctrl = 1
trigger1 =  Stateno = 240
trigger1 = Movehit;hitcount = 2
trigger1 = random < 700
trigger1 = Time >= 5
trigger1 =  Frontedgedist <= 90
;trigger2 = Movehit;hitcount = 2
;trigger2 = random < 701
;trigger2 = Pos y <= -91;111



;Quake Punch
[State -1, ]
type = ChangeState
value = 1310
triggerall = stateno != 1310
triggerall = Var(13) = 1
triggerall = statetype = S || StateType = C
triggerall = roundstate = 2
triggerall = movetype != H
trigger1 = random < 200
trigger1 =  Anim = 221
trigger1 = Movehit;hitcount = 2
trigger1 = Time >= 13
trigger1 = random < 300

[State -1, ]
type = ChangeState
value = 1070
triggerall = stateno != 1070
triggerall = Var(13) = 1
triggerall = statetype = S || StateType = C
triggerall = roundstate = 2
triggerall = movetype != H
trigger1 = stateno = 0 ||stateno = 100
trigger1 = P2stateno = 5050
trigger1 = P2dist x <= 90
;trigger1 = P2dist y >= -80
trigger1 = random < 500
trigger2 = stateno = 210
trigger2 = movehit = 0
trigger2 = P2dist x >= 60
trigger2 = Frontedgedist >= 70
trigger2 = Time >= 17
trigger2 = random < 200
trigger3 = stateno = 210
trigger3 = movehit = 0
trigger3 = P2dist x <= 70
trigger3 = Frontedgedist <= 69
trigger3 = random < 600
trigger3 = Time >= 17
trigger4 = stateno = 240
trigger4 = movehit = 0
trigger4 = P2dist x <= 70
trigger4 = Frontedgedist <= 99
trigger4 = random < 600
trigger4 = Time >= 12

;Quake Punch
[State -1, ]
type = ChangeState
value = 4801
triggerall = stateno != 4801
triggerall = Var(13) = 1
triggerall = statetype = S || StateType = C
triggerall = roundstate = 2
triggerall = movetype != H
;trigger1 =  P2dist x >= 191
trigger1 =  P2dist x <= 219
trigger1 =  P2dist x >= 150
trigger1 = stateno = 0 ||stateno = 100 ||stateno = 11
trigger1 = random < 100
trigger2 = Movehit
;trigger2 = Time >= 17
trigger2 = stateno = 250
trigger2 = Time >= 15
trigger2 = random < 300
trigger2 = p2bodyDist X <= 40
trigger3 =  P2dist x >= 110
trigger3 =  P2dist x <= 150
trigger3 = stateno = 0 ||stateno = 11
trigger3 = random < 300
trigger3 =  P2dist y >= -80

;Quake Punch
[State -1, ]
type = ChangeState
value = 3027
triggerall = stateno != 3027
triggerall = numhelper(3024) = 0
triggerall = numhelper(3029) = 0
triggerall = numhelper(3036) = 0
triggerall = numhelper(3047) = 0
triggerall = numhelper(3025) = 0
triggerall = roundstate = 2
triggerall = Var(13) = 1
triggerall = statetype = S || StateType = C
triggerall = roundstate != 4
triggerall = movetype != H
trigger1 =  P2dist x >= 220
trigger1 = stateno = 0 ||stateno = 100 ||stateno = 11
trigger1 = random <= 20

; Desintagrator Air
[State -1,]
type = ChangeState
value = 660
triggerall = StateType = A
triggerall = Var(13) = 1
triggerall = roundstate != 4
triggerall = stateno != 660
triggerall = p2dist y >= 70;200
triggerall = movetype != H
triggerall = roundstate = 2
triggerall = Ctrl = 1
trigger1 = Random <= 500
trigger1 = p2dist x <= 70
trigger1 = pos y <= -100
trigger1 = stateno = 690 ||stateno = 720 || stateno = 50
trigger2 = p2dist x <= 50
trigger2 = stateno = 2450 || stateno = 2451 || stateno = 2453
trigger3 = p2dist x <= 50
trigger3 = stateno = 720
trigger4 =  Stateno = 1470
trigger4 = p2dist x <= 90

; Desintagrator Air
[State -1,]
type = ChangeState
value = 2453
triggerall = StateType = A
triggerall = Var(13) = 1
triggerall = roundstate != 4
triggerall = stateno != 2453
triggerall = p2bodydist y <= -30;200
triggerall = movetype != H
triggerall = roundstate = 2
triggerall = Ctrl = 1
trigger1 = stateno = 640
trigger1 = p2dist x <= 70
trigger1 = MoveContact


;Power Pummel
[State -1, ]
type = ChangeState
value = 2453
triggerall = stateno != 2453
triggerall = Var(13) = 1
triggerall = StateType = A
triggerall = roundstate = 2
triggerall = movetype != H
triggerall = Pos y <= -50
trigger1 = stateno = 610
trigger1 = p2bodydist y <= -40
trigger1 = Movehit


;-------------------------------------

; Normal combos
[State -1, S. Short]
type = ChangeState
value = 100
triggerall = roundstate = 2
triggerall = Var(13) = 1
triggerall = stateno != 100
triggerall = statetype = S || StateType = C
triggerall = statetype != A
triggerall = movetype != H
triggerall = P2movetype != H
triggerall = ctrl = 1
triggerall = roundstate = 2
trigger1 = P2BodyDist X <= 135
trigger1 = stateno = 0
trigger1 = Time >= 1
;trigger2 = P2BodyDist X <= 85
;trigger2 = stateno = 100
;trigger2 = Time >= 10

[State -1, S. Short]
type = ChangeState
value = 200
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = movetype != H
triggerall = StateType = S; || StateType = C
triggerall = ctrl = 1
;triggerall = roundstate = 2
triggerall = stateno != 200
triggerall = P2StateNo != 3075
trigger1 = P2BodyDist X <= 40
trigger1 = prevstateno != 200 && prevstateno != 210 && prevstateno != 220 && prevstateno != 230 && prevstateno != 240 && prevstateno != 250
trigger2 = stateno = 0 ||stateno = 100
trigger2 = P2BodyDist X <= 40


[State -1, S. Strong]
type = ChangeState
value = 230
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = movetype != H
;triggerall = ctrl = 1
triggerall = StateType = S; || StateType = C
;triggerall = roundstate = 2
trigger1 = stateno = 200
trigger1 = MoveContact
trigger2 = stateno = 1001
trigger2 = MoveContact
;trigger1 = AnimElem = 7

[State -1, S. Fierce]
type = ChangeState
value = 210
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = movetype != H
;triggerall = ctrl = 1
triggerall = StateType = S; || StateType = C
;triggerall = roundstate = 2
trigger1 = stateno = 230
;trigger1 = AnimElem = 4
trigger1 = MoveContact


[State -1, S. Forward]
type = ChangeState
value = 240
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = movetype != H
;triggerall = ctrl = 1
triggerall = StateType = S; || StateType = C
;triggerall = roundstate = 2
trigger1 = stateno = 210
trigger1 = MoveContact
trigger2 = stateno = 1011
trigger2 = MoveContact
;trigger1 = AnimElem = 7

[State -1, S. Roundhousex]
type = ChangeState
value = 250
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = movetype != H
;triggerall = ctrl = 1
triggerall = StateType = S; || StateType = C
triggerall = random < 700
;trigger1 = stateno = 240
;trigger1 = movecontact
;trigger1 = Frontedgedist >= 60
;trigger1 = Time >= 15
trigger1 = stateno = 220
trigger1 = movecontact
trigger2 = stateno = 1021
trigger2 = MoveContact
trigger3 = stateno = 221
trigger3 = movecontact
trigger3 = Anim = 221
;trigger1 = Time >= 10

[State -1, S. Roundhouse]
type = ChangeState
value = 220
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = movetype != H
;triggerall = ctrl = 1
triggerall = StateType = S; || StateType = C
triggerall = random < 500
trigger1 = stateno = 240
trigger1 = movecontact
trigger1 = Frontedgedist >= 90
;trigger1 = Time >= 10
trigger2 = random < 500
trigger2 = stateno = 440
trigger2 = movecontact
trigger2 = p2Dist X <= 40
;trigger2 = Frontedgedist >= 90

[State -1, C. Jab]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = StateType = C
triggerall = movetype != H
;triggerall = ctrl = 1
;triggerall = roundstate = 2
triggerall = stateno != 400
trigger1 = P2BodyDist X <= 40
trigger1 = stateno = 0 ||stateno = 100 ||stateno = 11

[State -1, C. Short]
type = ChangeState
value = 430
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = StateType = C
triggerall = movetype != H
;triggerall = ctrl = 1
;triggerall = roundstate = 2
trigger1 = StateNo = 400
trigger1 = Movecontact
trigger2 = stateno = 0 ||stateno = 100 ||stateno = 11
trigger2 = P2StateNo = 3075
trigger2 = P2Dist X <= 30

[State -1, C. Strong]
type = ChangeState
value = 410
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = StateType = C
triggerall = movetype != H
;triggerall = ctrl = 1
;triggerall = roundstate = 2
trigger1 = stateno = 400
trigger1 = MoveContact
trigger2 = stateno = 430
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact

[State -1, C. Fierce]
type = ChangeState
value = 420
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = StateType = C || StateType = S
triggerall = movetype != H
;triggerall = ctrl = 1
;triggerall = roundstate = 2
trigger1 = random < 300
trigger1 = stateno = 240
trigger1 = movehit
trigger1 = Time >= 10


; Superjump Up
[State -1, Superjump Up]
type = ChangeState
value = 690
triggerall = roundstate = 2
triggerall = StateType = C || StateType = S
triggerall = var(13) = 1
triggerall = numhelper(455) = 0
triggerall = movetype != H
;triggerall = ctrl = 1
;triggerall = roundstate = 2
trigger1 = stateno = 420
trigger1 = p2movetype = H
trigger1 = Time = 5
trigger1 = movehit
;trigger2 = p2dist x >= 200

[State -1, C. Forward]
type = ChangeState
value = 440
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = StateType = C
triggerall = movetype != H
;triggerall = ctrl = 1
;triggerall = roundstate = 2
trigger1 = stateno = 410
trigger1 = MoveContact

[State -1, C. Roundhoused]
type = ChangeState
value = 450
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = numhelper(5554) = 0
triggerall = StateType = C || StateType = S
triggerall = movetype != H
;triggerall = ctrl = 1
trigger1 = random < 200
trigger1 = stateno = 440
trigger1 = movecontact
trigger1 = Frontedgedist >= 60
;trigger2 = movecontact
;trigger2 = Frontedgedist >= 60


;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = statetype = A
triggerall = StateNo != 600
triggerall = movetype != H
triggerall = ctrl = 1
;triggerall = roundstate = 2
triggerall = pos y <= -15
triggerall = Movetype != H
triggerall = Movetype != A
triggerall = Ctrl = 1
triggerall = p2bodydist y <= 60;75
triggerall = p2bodydist y >= -50;-75
trigger1 = p2dist x <= 50
trigger1 = pos y >= -75
trigger2 = stateno = 690
trigger2 = p2dist x <= 50
trigger3 = p2dist x <= 50
trigger3 = stateno = 720
trigger4 = p2dist x <= 70


;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = statetype = A
triggerall = movetype != H
;triggerall = ctrl = 1
;triggerall = roundstate = 2
triggerall = pos y <= -15
trigger1 = stateno = 630
trigger1 = MoveContact
trigger1 = Time >= 5
trigger1 = pos y <= -110
trigger2 = stateno = 660
trigger2 = MoveContact
trigger2 = pos y <= -150
trigger3 = stateno = 630
trigger3 = MoveContact
trigger3 = Time >= 0
trigger3 = pos y >= -109

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = statetype = A
triggerall = movetype != H
;triggerall = ctrl = 1
;triggerall = roundstate = 2
triggerall = pos y <= -15
trigger1 = stateno = 600
trigger1 = MoveHit


;Jump Medium Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = statetype = A
triggerall = movetype != H
;triggerall = ctrl = 1
;triggerall = roundstate = 2
triggerall = pos y <= -70
trigger1 = stateno = 610
trigger1 = MoveContact

;Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = statetype = A
triggerall = Frontedgedist <= 85
triggerall = pos y <= -40
triggerall = movetype != H
;triggerall = ctrl = 1
trigger1 = stateno = 640
trigger1 = MoveContact

;Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = roundstate = 2
triggerall = var(13) = 1
triggerall = statetype = A
triggerall = movetype != H
;triggerall = ctrl = 1
;triggerall = roundstate = 2
triggerall = pos y <= -15
triggerall = stateno != 650
trigger1 = stateno = 600
trigger1 = MoveContact
trigger2 = stateno = 610
trigger2 = MoveContact
trigger3 = stateno = 620
trigger3 = MoveContact
trigger4 = stateno = 630
trigger4 = MoveContact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = 660
trigger6 = MoveContact
trigger7 = stateno = 700
trigger7 = MoveContact
trigger8 = stateno = 620
trigger8 = MoveContact
trigger9 = stateno = 660
trigger9 = MoveContact
trigger9 = pos y >= -70

;===========================================================================

[State -1, ]
type = ChangeState
value = 4842
triggerall = Var(13) = 0
triggerall = command = "LightUmUp"
triggerall = StateType = S || StateType = C ||  StateType = A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
;trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 430
trigger12 = MoveContact
trigger13 = stateno = 440
trigger13 = MoveContact
trigger14 = stateno = 450
trigger14 = MoveContact
trigger15 = stateno = 450
trigger15 = MoveContact
trigger16 = stateno = 600
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact
trigger22 = stateno = 221
trigger22 = MoveContact
trigger23 = stateno = 100
trigger24 = stateno = 1040
trigger25 = stateno = 1045
trigger26 = stateno = 1040
trigger27 = stateno = 4804
trigger28 = stateno = 4805
trigger29 = stateno = 4806
trigger30 = stateno = 3050
trigger31 = stateno = 3053
trigger32 = stateno = 3056
trigger33 = stateno = 4041
trigger34 = stateno = 1431
trigger35 = stateno = 1432
trigger36 = stateno = 1250
trigger37 = stateno = 1470
trigger38 = stateno = 1471
trigger39 = stateno = 2780
trigger40 = stateno = 2784
trigger41 = stateno = 2453
trigger42 = stateno = 4952
trigger43 = stateno = 4953

[State -1, ]
type = ChangeState
value = 4842
triggerall = Var(13) = 0
triggerall = Var(59) = 1
triggerall = command = "easysupyz"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = StateType = S || StateType = C; ||  StateType = A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
;trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 430
trigger12 = MoveContact
trigger13 = stateno = 440
trigger13 = MoveContact
trigger14 = stateno = 450
trigger14 = MoveContact
trigger15 = stateno = 450
trigger15 = MoveContact
trigger16 = stateno = 600
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact
trigger22 = stateno = 221
trigger22 = MoveContact
trigger23 = stateno = 100
trigger24 = stateno = 1040
trigger25 = stateno = 1045
trigger26 = stateno = 1040
trigger27 = stateno = 4804
trigger28 = stateno = 4805
trigger29 = stateno = 4806
trigger30 = stateno = 3050
trigger31 = stateno = 3053
trigger32 = stateno = 3056
trigger33 = stateno = 4041
trigger34 = stateno = 1431
trigger35 = stateno = 1432
trigger36 = stateno = 1250
trigger37 = stateno = 1470
trigger38 = stateno = 1471
trigger39 = stateno = 2780
trigger40 = stateno = 2784
trigger41 = stateno = 2453
trigger42 = stateno = 4952
trigger43 = stateno = 4953

[State -1, ]
type = ChangeState
value = 4842
triggerall = Var(13) = 0
triggerall = Var(59) = 1
triggerall = command = "easysupxy"
triggerall = StateType = A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
;trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 430
trigger12 = MoveContact
trigger13 = stateno = 440
trigger13 = MoveContact
trigger14 = stateno = 450
trigger14 = MoveContact
trigger15 = stateno = 450
trigger15 = MoveContact
trigger16 = stateno = 600
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact
trigger22 = stateno = 221
trigger22 = MoveContact
trigger23 = stateno = 100
trigger24 = stateno = 1040
trigger25 = stateno = 1045
trigger26 = stateno = 1040
trigger27 = stateno = 4804
trigger28 = stateno = 4805
trigger29 = stateno = 4806
trigger30 = stateno = 3050
trigger31 = stateno = 3053
trigger32 = stateno = 3056
trigger33 = stateno = 4041
trigger34 = stateno = 1431
trigger35 = stateno = 1432
trigger36 = stateno = 1250
trigger37 = stateno = 1470
trigger38 = stateno = 1471
trigger39 = stateno = 2780
trigger40 = stateno = 2784
trigger41 = stateno = 2453
trigger42 = stateno = 4952
trigger43 = stateno = 4953

[State -1, ]
type = ChangeState
value = 2130
triggerall = Command = "PaythePiper"
triggerall = StateType = S 
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = StateNo = 210
trigger2 = Movecontact = 1
trigger3 = StateNo = 240
trigger4 = StateNo = 200
trigger4 = MoveContact
trigger5 = stateno = 440
trigger5 = MoveContact
trigger6 = stateno = 1270
trigger6 = MoveContact
trigger7 = stateno = 1290
trigger7 = MoveContact
trigger8 = stateno = 1300
trigger8 = MoveContact
trigger9 = Stateno = 1020
trigger9 = MoveContact
trigger10 = stateno = 440
trigger10 = MoveContact
trigger11 = stateno = 5110
trigger11 = MoveContact
trigger12 = stateno = 200
trigger12 = MoveContact
trigger13 = stateno = 210
trigger13 = MoveContact
trigger14 = stateno = 220
trigger14 = MoveContact
trigger15 = stateno = 230
trigger15 = MoveContact
trigger16 = stateno = 240
trigger16 = MoveContact
trigger17 = stateno = 250
trigger17 = MoveContact
trigger18 = stateno = 400
trigger18 = MoveContact
trigger19 = stateno = 410
trigger19 = MoveContact
trigger20 = stateno = 420
trigger20 = MoveContact
trigger21 = stateno = 430
trigger21 = MoveContact
trigger22 = stateno = 450
trigger22 = MoveContact
trigger23 = stateno = 3050
trigger24 = stateno = 3053
trigger25 = stateno = 3056
trigger26 = stateno = 4041
trigger27 = stateno = 221
trigger27 = MoveContact
trigger28 = stateno = 1431
trigger29 = stateno = 1432
trigger30 = stateno = 1250
trigger31 = stateno = 1470
trigger32 = stateno = 1471
trigger33 = stateno = 4953

[State -1, ]
type = ChangeState
value = 2130
triggerall = Var(59) = 1
triggerall = Command = "easysupxy"
triggerall = command = "holdback"
triggerall = StateType = S
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = StateNo = 210
trigger2 = Movecontact = 1
trigger3 = StateNo = 240
trigger4 = StateNo = 200
trigger4 = MoveContact
trigger5 = stateno = 440
trigger5 = MoveContact
trigger6 = stateno = 1270
trigger6 = MoveContact
trigger7 = stateno = 1290
trigger7 = MoveContact
trigger8 = stateno = 1300
trigger8 = MoveContact
trigger9 = Stateno = 1020
trigger9 = MoveContact
trigger10 = stateno = 440
trigger10 = MoveContact
trigger11 = stateno = 5110
trigger11 = MoveContact
trigger12 = stateno = 200
trigger12 = MoveContact
trigger13 = stateno = 210
trigger13 = MoveContact
trigger14 = stateno = 220
trigger14 = MoveContact
trigger15 = stateno = 230
trigger15 = MoveContact
trigger16 = stateno = 240
trigger16 = MoveContact
trigger17 = stateno = 250
trigger17 = MoveContact
trigger18 = stateno = 400
trigger18 = MoveContact
trigger19 = stateno = 410
trigger19 = MoveContact
trigger20 = stateno = 420
trigger20 = MoveContact
trigger21 = stateno = 430
trigger21 = MoveContact
trigger22 = stateno = 450
trigger22 = MoveContact
trigger23 = stateno = 3050
trigger24 = stateno = 3053
trigger25 = stateno = 3056
trigger26 = stateno = 4041
trigger27 = stateno = 221
trigger27 = MoveContact
trigger28 = stateno = 1431
trigger29 = stateno = 1432
trigger30 = stateno = 1250
trigger31 = stateno = 1470
trigger32 = stateno = 1471
trigger33 = stateno = 4953

[State 7800, 3]
type = palfx
triggerall = numhelper(9006)= 1
trigger1 = (time%3) = 1
invertall = 1
supermove = 1
time = 1
add = 200,00,0
sinadd = 500,500,500,206

[State 7800, 3]
type = palfx
triggerall = numhelper(9007)= 1
trigger1 = (time%3) = 1
invertall = 1
supermove = 1
time = 1
add = 200,00,0
sinadd = 500,500,500,206

[State -1, Spinning Piledriver Medium]
type = ChangeState
value = 2792;2790
triggerall = var(13) = 0
triggerall = command = "Spinach"
triggerall = TeamSide = 1
triggerall = StateType = S || StateType = C 
triggerall = numhelper(9000)= 1 
triggerall = numhelper(9002)= 0;|| numhelper(9002)= 0
triggerall = numhelper(7999)= 0
triggerall = numhelper(9006)= 0
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact
trigger16 = stateno = 4801

[State -1, Spinning Piledriver Medium]
type = ChangeState
value = 2792;2790
triggerall = command = "Spinach"
triggerall = TeamSide = 2
triggerall = StateType = S || StateType = C 
triggerall = numhelper(9003)= 1 
triggerall = numhelper(9005)= 0
triggerall = numhelper(7999)= 0
triggerall = numhelper(9007)= 0
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact
trigger16 = stateno = 4801

;--------------------------------------------------------------------------
; "Ship Guidance"
[State -1, "Ship Guidance"]
type = ChangeState
value = 2000
triggerall = command = "Ship Guidance"
triggerall = StateType = S || StateType = C 
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = movecontact  
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact
trigger16 = stateno = 600
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact
trigger22 = Stateno = 1390
trigger23 = Stateno = 1040
trigger24 = Stateno = 1050
trigger25 = Stateno = 1060 
trigger26 = Stateno = 1431
trigger27 = Stateno = 1432
trigger28 = stateno = 1250
trigger29 = stateno = 4953

;---------------------------------------------------------

;Assist Bomb
[State -1, Fired-Up!]
type = ChangeState
value = 1035
triggerall = command = "underupper"
triggerall = Statetype = S || StateType = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 425
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 450
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 430
trigger14 = MoveContact
trigger15 = stateno = 440
trigger15 = MoveContact
trigger16 = stateno = 1270
trigger16 = MoveContact
trigger17 = stateno = 1290
trigger17 = MoveContact
trigger18 = stateno = 1300
trigger18 = MoveContact
trigger19 = stateno = 221
trigger19 = MoveContact

;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 1040
triggerall = command = "DiveBomb"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 430
trigger11 = MoveContact
trigger12 = stateno = 440
trigger12 = MoveContact
trigger13 = stateno = 450
trigger13 = MoveContact
trigger14 = stateno = 221
trigger14 = MoveContact


;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 1250
triggerall = Command = "Pipe"
triggerall = StateType = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 400
trigger12 = MoveContact
trigger13 = stateno = 450
trigger13 = MoveContact
trigger14 = stateno = 221
trigger14 = MoveContact


;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 2040
triggerall = command = "Pummel"
triggerall = Statetype = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = Stateno = 200
trigger2 = Movecontact
trigger3 = Stateno = 210
trigger3 = Movecontact
trigger4 = StateNo = 220
trigger4 = Movecontact
trigger5 = StateNo = 230
trigger5 = Movecontact
trigger6 = StateNo = 240
trigger7 = StateNo = 250
trigger7 = Movehit = 1
trigger8 = StateNo = 1431
trigger9 = StateNo = 1300
trigger10 = StateNo = 1290
trigger10 = Movehit = 1
trigger11 = StateNo = 1300
trigger11 = Movehit = 1
trigger12 = stateno = 3050
trigger13 = stateno = 3053
trigger14 = stateno = 3056
trigger15 = stateno = 4041
trigger16 = stateno = 1431
trigger17 = stateno = 1432
trigger18 = stateno = 400
trigger18 = MoveContact
trigger19 = stateno = 410
trigger19 = MoveContact
trigger20 = stateno = 420
trigger20 = MoveContact
trigger21 = stateno = 430
trigger21 = MoveContact
trigger22 = stateno = 450
trigger22 = MoveContact
trigger23 = stateno = 221
trigger23 = MoveContact
trigger24 = stateno = 1001
trigger25 = stateno = 1011
trigger26 = stateno = 1021
trigger27 = stateno = 1250
trigger28 = stateno = 4801
trigger29 = stateno = 4953
trigger30 = stateno = 4806

[State -1, ]
type = ChangeState
value = 2040
triggerall = Var(59) = 1
triggerall = Command = "easysupxy"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = Statetype = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = Stateno = 200
trigger2 = Movecontact
trigger3 = Stateno = 210
trigger3 = Movecontact
trigger4 = StateNo = 220
trigger4 = Movecontact
trigger5 = StateNo = 230
trigger5 = Movecontact
trigger6 = StateNo = 240
trigger7 = StateNo = 250
trigger7 = Movehit = 1
trigger8 = StateNo = 1431
trigger9 = StateNo = 1300
trigger10 = StateNo = 1290
trigger10 = Movehit = 1
trigger11 = StateNo = 1300
trigger11 = Movehit = 1
trigger12 = stateno = 3050
trigger13 = stateno = 3053
trigger14 = stateno = 3056
trigger15 = stateno = 4041
trigger16 = stateno = 1431
trigger17 = stateno = 1432
trigger18 = stateno = 400
trigger18 = MoveContact
trigger19 = stateno = 410
trigger19 = MoveContact
trigger20 = stateno = 420
trigger20 = MoveContact
trigger21 = stateno = 430
trigger21 = MoveContact
trigger22 = stateno = 450
trigger22 = MoveContact
trigger23 = stateno = 221
trigger23 = MoveContact
trigger24 = stateno = 1001
trigger25 = stateno = 1011
trigger26 = stateno = 1021
trigger27 = stateno = 1250
trigger28 = stateno = 4801
trigger29 = stateno = 4953
trigger30 = stateno = 4806

;--------------------------------------------------------------------------
; "Ship Guidance"
[State -1, "Ship Guidance"]
type = ChangeState
value = 2000
triggerall = Var(59) = 1
triggerall = Command = "easysupxy"
triggerall = command = "holdfwd"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact
trigger16 = stateno = 600
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact
trigger22 = Stateno = 1390
trigger23 = Stateno = 1040
trigger24 = Stateno = 1050
trigger25 = Stateno = 1060
trigger26 = Stateno = 1431
trigger27 = Stateno = 1432
trigger28 = stateno = 1250
trigger29 = stateno = 4953

;----------------------------------------------------

[State -1,]
type = ChangeState
value = 1470
triggerall = command = "Spin1"
triggerall = StateType = S || StateType = C || StateType = A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
;trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 420
trigger12 = MoveContact
trigger13 = stateno = 430
trigger13 = MoveContact
trigger14 = stateno = 440
trigger14 = MoveContact
trigger15 = stateno = 240
trigger15 = MoveContact
trigger16 = stateno = 600
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact
trigger22 = stateno = 221
trigger22 = MoveContact
trigger23 = stateno = 450
trigger23 = MoveContact
trigger24 = stateno = 660
trigger25 = stateno = 4952
trigger25 = Anim != 960

;------------------------------------------
[State -1,AirRunUF]
type = ChangeState
value = 2450
triggerall = command = "FRun"
triggerall = statetype = A
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = Stateno = 600
trigger2 = MoveContact
trigger3 = Stateno = 610
trigger3 = MoveContact
trigger4 = Stateno = 620
trigger4 = MoveContact
trigger5 = Stateno = 630
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact


;------------------------------------------
[State -1,AirRunUF]
type = ChangeState
value = 2451
triggerall = command = "BRun"
triggerall = statetype = A
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = Stateno = 600
trigger2 = MoveContact
trigger3 = Stateno = 610
trigger3 = MoveContact
trigger4 = Stateno = 620
trigger4 = MoveContact
trigger5 = Stateno = 630
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact
trigger7 = stateno = 650
trigger7 = MoveContact
trigger8 = stateno = 660  

;------------------------------------------
[State -1,AirRunUF]
type = ChangeState
value = 2453
triggerall = command = "DRun"
triggerall = statetype = A
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = Stateno = 600
trigger2 = MoveContact
trigger3 = Stateno = 610
trigger3 = MoveContact
trigger4 = Stateno = 620
trigger4 = MoveContact
trigger5 = Stateno = 630
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact
trigger7 = stateno = 650
trigger7 = MoveContact
trigger8 = stateno = 660 
trigger9 = stateno = 4952

; Assist Wimpy
[State -1, ]
type = ChangeState
value = 3025
triggerall = Command = "Assist"
triggerall = numhelper(3024) = 0
triggerall = numhelper(3029) = 0
triggerall = numhelper(3036) = 0
triggerall = numhelper(3047) = 0
;triggerall = numhelper(4026) = 0
;triggerall = numhelper(4029) = 0
triggerall = numhelper(3025) = 0
trigger1 = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact


;---------------------------------------------------------------------------
; Assist Bluto
[State -1, ]
type = ChangeState
value = 3027
triggerall = Command = "Assist2"
triggerall = numhelper(3024) = 0
triggerall = numhelper(3029) = 0
triggerall = numhelper(3036) = 0
triggerall = numhelper(3047) = 0
triggerall = numhelper(3025) = 0
trigger1 = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
;trigger14 = stateno = 420
;trigger14 = MoveContact

;---------------------------------------------------------------------------

;Assist Bomb
[State -1, Fired-Up!]
type = ChangeState
value = 4210
triggerall = command = "CoreSlam"
triggerall = Power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610
trigger3 = MoveContact
trigger4 = stateno = 620
trigger4 = MoveContact
trigger5 = stateno = 630
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact
trigger7 = stateno = 650
trigger7 = MoveContact 
trigger8 = stateno = 1471
trigger8 = Pos y <= -.5 
trigger9 = stateno = 2780
trigger10 = stateno = 1380
trigger11 = stateno = 4952
trigger12 = stateno = 2453

;Assist Bomb
[State -1, Fired-Up!]
type = ChangeState
value = 4210
triggerall = command = "easysupab"
triggerall = command = "holdfwd"
triggerall = Power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610
trigger3 = MoveContact
trigger4 = stateno = 620
trigger4 = MoveContact
trigger5 = stateno = 630
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact
trigger7 = stateno = 650
trigger7 = MoveContact
trigger8 = stateno = 1471
trigger8 = Pos y <= -.5
trigger9 = stateno = 2780
trigger10 = stateno = 1380
trigger11 = stateno = 4952
trigger12 = stateno = 2453

;---------------------------------------------------------------------------

; Assist Bluto
[State -1,]
type = ChangeState
value = 3085
triggerall = Command = "SailorsHistory"
trigger1 = statetype = S || Statetype = C || Statetype = A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact
trigger16 = stateno = 600
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact
trigger22 = stateno = 1270
trigger22 = MoveContact
trigger23 = stateno = 1290
trigger23 = MoveContact
trigger24 = stateno = 1300
trigger24 = MoveContact
trigger25 = Stateno = 1020 
trigger25 = MoveContact
trigger26 = stateno = 3050
;trigger26 = MoveContact
trigger27 = Stateno = 3053
;trigger27 = MoveContact
trigger28 = Stateno = 3056
;trigger28 = MoveContact
trigger29 = stateno = 3060
;trigger29 = MoveContact
trigger30 = Stateno = 3062
;trigger30 = MoveContact
trigger31 = Stateno = 3064
;trigger31 = MoveContact
trigger32 = Stateno = 1390
trigger33 = Stateno = 1040
trigger34 = Stateno = 1050
trigger35 = Stateno = 1060
trigger36 = stateno = 4041
trigger37 = stateno = 221
trigger37 = MoveContact
trigger38 = stateno = 1431
trigger39 = stateno = 1432
trigger40 = stateno = 1250
trigger41 = stateno = 1470
trigger42 = stateno = 1471
trigger43 = stateno = 1310
trigger44 = stateno = 1312
trigger45 = stateno = 1330
trigger45 = stateno = 1380
trigger46 = stateno = 4801
trigger47 = stateno = 4802
trigger48 = stateno = 4810
trigger49 = stateno = 4824
trigger50 = stateno = 4827
trigger51 = stateno = 2453
trigger52 = stateno = 4953

; Assist Bluto
[State -1,]
type = ChangeState
value = 3085
triggerall = Var(59) = 1
triggerall = Command = "easysupab"
;triggerall = command = "holdback"
trigger1 = statetype = S || Statetype = C || Statetype = A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact
trigger16 = stateno = 600
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact
trigger22 = stateno = 1270
trigger22 = MoveContact
trigger23 = stateno = 1290
trigger23 = MoveContact
trigger24 = stateno = 1300
trigger24 = MoveContact
trigger25 = Stateno = 1020
trigger25 = MoveContact
trigger26 = stateno = 3050
;trigger26 = MoveContact
trigger27 = Stateno = 3053
;trigger27 = MoveContact
trigger28 = Stateno = 3056
;trigger28 = MoveContact
trigger29 = stateno = 3060
;trigger29 = MoveContact
trigger30 = Stateno = 3062
;trigger30 = MoveContact
trigger31 = Stateno = 3064
;trigger31 = MoveContact
trigger32 = Stateno = 1390
trigger33 = Stateno = 1040
trigger34 = Stateno = 1050
trigger35 = Stateno = 1060
trigger36 = stateno = 4041
trigger37 = stateno = 221
trigger37 = MoveContact
trigger38 = stateno = 1431
trigger39 = stateno = 1432
trigger40 = stateno = 1250
trigger41 = stateno = 1470
trigger42 = stateno = 1471
trigger43 = stateno = 1310
trigger44 = stateno = 1312
trigger45 = stateno = 1330
trigger45 = stateno = 1380
trigger46 = stateno = 4801
trigger47 = stateno = 4802
trigger48 = stateno = 4810
trigger49 = stateno = 4824
trigger50 = stateno = 4827
trigger51 = stateno = 2453
trigger52 = stateno = 4953


[State -1, ]
type = ChangeState
value = 2400
triggerall = command = "PerficStorm"
triggerall = StateType = S || Statetype = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 430
trigger11 = MoveContact
trigger12 = stateno = 450
trigger12 = MoveContact
trigger13 = StateNo = 1000 || StateNo = 1010 || StateNo = 1020
trigger14 = stateno = 1270
trigger15 = stateno = 1290
trigger16 = stateno = 1300
trigger17 = stateno = 3050
trigger18 = stateno = 3053
trigger19 = stateno = 3056
trigger20 = stateno = 4041
trigger21 = stateno = 221
trigger21 = MoveContact
trigger22 = stateno = 1431
trigger23 = stateno = 1432
trigger24 = stateno = 1001
trigger25 = stateno = 1011
trigger26 = stateno = 1021
trigger27 = stateno = 1250
trigger28 = stateno = 1471
trigger29 = stateno = 1470
trigger30 = stateno = 4801
trigger31 = stateno = 4802
trigger32 = stateno = 4810
trigger33 = stateno = 4824
trigger34 = stateno = 4827
trigger35 = stateno = 4805
trigger36 = stateno = 4953

[State -1, ]
type = ChangeState
value = 2400
triggerall = Var(59) = 1
triggerall = Command = "easysupbc"
triggerall = StateType = S || Statetype = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 430
trigger11 = MoveContact
trigger12 = stateno = 450
trigger12 = MoveContact
trigger13 = StateNo = 1000 || StateNo = 1010 || StateNo = 1020
trigger14 = stateno = 1270
trigger15 = stateno = 1290
trigger16 = stateno = 1300
trigger17 = stateno = 3050
trigger18 = stateno = 3053
trigger19 = stateno = 3056
trigger20 = stateno = 4041
trigger21 = stateno = 221
trigger21 = MoveContact
trigger22 = stateno = 1431
trigger23 = stateno = 1432
trigger24 = stateno = 1001
trigger25 = stateno = 1011
trigger26 = stateno = 1021
trigger27 = stateno = 1250
trigger28 = stateno = 1471
trigger29 = stateno = 1470
trigger30 = stateno = 4801
trigger31 = stateno = 4802
trigger32 = stateno = 4810
trigger33 = stateno = 4824
trigger34 = stateno = 4827
trigger35 = stateno = 4805
trigger36 = stateno = 4953

;---------------------------------------------------------------------------
; Assist Bluto
[State -1, ]
type = ChangeState
value = 3034
triggerall = Command = "Assist3"
triggerall = numhelper(3024) = 0
triggerall = numhelper(3029) = 0
triggerall = numhelper(3036) = 0
triggerall = numhelper(3047) = 0
triggerall = numhelper(3025) = 0
trigger1 = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
;trigger14 = stateno = 420
;trigger14 = MoveContact

;---------------------------------------------------------------------------

; Assist Bluto
[State -1, ]
type = ChangeState
value = 3046
triggerall = Command = "Assist4"
triggerall = numhelper(3024) = 0
triggerall = numhelper(3029) = 0
triggerall = numhelper(3036) = 0
triggerall = numhelper(3047) = 0
triggerall = numhelper(3025) = 0
trigger1 = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact

 
;---------------------------------------------------------------------------
; AssistHag
[State -1, ]
type = ChangeState
value = 3067
triggerall = Command = "AssistHag"
triggerall = numhelper(3024) = 0
triggerall = numhelper(3029) = 0
triggerall = numhelper(3036) = 0
triggerall = numhelper(3047) = 0
triggerall = numhelper(3025) = 0
trigger1 = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact


;---------------------------------------------------------------------------

; AssistHag
[State -1, ]
type = ChangeState
value = 4023
triggerall = Command = "LovePopeye" 
;triggerall = Life <= 450
triggerall = numhelper(7223) = 0
triggerall = numhelper(4224) = 0
;triggerall = numhelper(4029) = 0
;triggerall = numhelper(4031) = 0
trigger1 = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact

; Bluto
[State -1, ]
type = ChangeState
value = 4223
triggerall = Command = "Kidnap"
triggerall = statetype = S || Statetype = C
riggerall = numhelper(3024) = 0
triggerall = numhelper(3029) = 0
;triggerall = numhelper(3036) = 0
;triggerall = numhelper(3047) = 0
;triggerall = numhelper(3025) = 0
triggerall = numhelper(4028) = 1 || numhelper(4029) = 1 || numhelper(4030) = 1 
trigger1 = ctrl



;---------------------------------------------------------------------------

[State -1,]
type = ChangeState
value = 2110
triggerall = Command = "crusher"
triggerall = power >= 1000
triggerall = StateType = S || StateType = C
triggerall = numhelper(2109) = 0
trigger1 = ctrl
trigger2 = StateNo = 220
trigger2 = Movecontact = 1
trigger3 = StateNo = 1270
trigger4 = StateNo = 1290
trigger5 = StateNo = 1300
trigger6 = stateno = 440
trigger6 = MoveContact
trigger7 = stateno = 240
trigger8 = stateno = 450
trigger8 = MoveContact
trigger9 = stateno = 230
trigger9 = MoveContact
trigger10 = stateno = 200
trigger10 = MoveContact
trigger11 = stateno = 400
trigger11 = MoveContact
trigger12 = stateno = 410
trigger12 = MoveContact
trigger13 = stateno = 430
trigger13 = MoveContact
trigger14 = stateno = 445
trigger14 = MoveContact
trigger15 = stateno = 3024
trigger15 = !MoveContact
trigger16 = stateno = 420
trigger16 = MoveContact
trigger17 = stateno = 3050
trigger18 = stateno = 3053
trigger19 = stateno = 3056
trigger20 = stateno = 4041
trigger21 = stateno = 221
trigger21 = MoveContact
trigger22 = stateno = 1431
trigger23 = stateno = 1432
trigger23 = stateno = 1250
trigger24 = stateno = 4953

;----------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 1310
triggerall = command = "dragon1"
triggerall = StateType = S || StateType = C 
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 221
trigger15 = MoveContact
trigger16 = stateno = 250
trigger16 = MoveContact


;-----------------------------------------------

;  RollRecovery 
[State -1,]
type = ChangeState
value = 681
;trigger1 = ctrl
triggerall = pos Y >= 0
triggerall = roundstate = 2
triggerall = Alive = 1
triggerall = Life > 0
triggerall = Time >= 5
triggerall = Stateno = 5101 || Stateno = 5110 || Stateno = 5100
trigger1 = command = "holdback"
trigger2 = command = "holdfwd"

;---------------------------------------------------------------------------

[State -1,]
type = ChangeState
value = 2440
triggerall = command = "Guns-slingers"
triggerall = Statetype = A
triggerall = numhelper(9006) = 1 ||  numhelper(9007) = 1
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = Stateno = 600
trigger2 = MoveContact
trigger3 = Stateno = 610
trigger3 = MoveContact
trigger4 = Stateno = 620
trigger4 = MoveContact
trigger5 = Stateno = 630
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact
trigger7 = stateno = 650
trigger7 = MoveContact
trigger8 = Stateno = 1000
trigger8 = MoveContact
trigger9 = Stateno = 1010
trigger9 = MoveContact
trigger10 = Stateno = 1020
trigger10 = MoveContact
trigger11 = stateno = 3060
trigger12 = Stateno = 3062
trigger13 = Stateno = 3064
trigger14 = Stateno = 1040
trigger15 = Stateno = 1050
trigger16 = Stateno = 1060

;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 2781
triggerall = command = "Slam2"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = StateNo = 600
trigger2 = Movehit
trigger3 = Stateno = 610
trigger3 = Movehit
trigger4 = Stateno = 630
trigger4 = Movehit
trigger5 = Stateno = 640
trigger5 = Movehit

;---------------------------------------------------------------------------

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 2131
id = 961
;ignorehitpause =
;persistent =

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 0
id = 9370
;ignorehitpause =
;persistent =

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Anim != 44
id = 955
;ignorehitpause =
;persistent =

[State 0, RemoveExplod]
type = null;RemoveExplod
trigger1 = stateno != 2453
id = 961
;ignorehitpause =
;persistent =


; blue
[State 0, ]
type = Explod
trigger1 = (Time%3) = 1
trigger1 = p2stateno = 3075
anim = 937
;ID =
pos = -10,-3
postype = p2
facing = -1
vfacing = -1
bindtime = 1
vel = -1,0
accel = -.05,0
random = 10,10
removetime = 25
supermove = 999
;pausemovetime = 0
scale = .25, .25
sprpriority = -5
ontop = 0
;shadow = 0,0,0
;ownpal = 0
removeongethit = 1
;ignorehitpause = 0
;persistent = 1

; blue
[State 0, ]
type = Explod
trigger1 = (Time%3) = 1
trigger1 = p2stateno = 3100
anim = 937
;ID =
pos = -7,-52
postype = p2
facing = -1
vfacing = -1
bindtime = 1
vel = -1,0
accel = -.05,0
random = 10,10
removetime = 25
supermove = 999
;pausemovetime = 0
scale = .25, .25
sprpriority = -5
ontop = 0
;shadow = 0,0,0
;ownpal = 0
removeongethit = 1
;ignorehitpause = 0
;persistent = 1

[State 8017]
type = Helper
trigger1 = p2stateno = 3075 || p2stateno = 3100
trigger1 = numhelper(4052)= 0
;trigger1 = time = 0
id = 4052
helpertype = normal
postype = p2
pos = 0,0
stateno = 4052
;keyctrl = 0
ownpal = 1
;supermovetime = 9999


[State 9000, 1]
type = null;Explod
trigger1 = (Time%14) = 1
trigger1 = Anim = 2910
trigger1 = Parent,stateno != 2415
trigger1 = Parent,stateno != 2416
ID = 940
anim = 940;772
pos = 157,117
postype = left
ontop = 1
supermove = 99999
bindtime = -1
removetime = 25;-2
ownpal = 1
scale = 1.125,1.125
sprpriority = 5
ontop = 1

[State 9000, 1]
type = null;Explod
;trigger1 = (Time%44) = 1
trigger1 = numexplod(915) = 0
trigger1 = P2stateno = 3100
ID = 915
anim = 915;772
pos = 0,-50
postype = p2
ontop = 1
supermove = 99999
bindtime = -1
removetime = -2 ;28
ownpal = 1
scale = 1.125,1.125
sprpriority = 5
ontop = 1

[State 9000, 1]
type = null;Explod
;trigger1 = (Time%44) = 1
trigger1 = numexplod(755) = 0
trigger1 = P2stateno = 3075
ID = 755
anim = 755;772
pos = 0,0
postype = p2
ontop = 1
supermove = 99999
bindtime = -1
removetime = -2 ;28
ownpal = 1
scale = 1.125,1.125
sprpriority = 5
ontop = 1

[State 9000, 1]
type = Explod
trigger1 = (Time%44) = 1
trigger1 = Parent,stateno != 2414
trigger1 = Anim = 2910
;trigger1 = numexplod(1081) = 0
ID = 936
anim = 936;772
pos = 157,117
postype = left
ontop = 1
supermove = 99999
bindtime = -1
removetime = 145;-2
ownpal = 1
scale = 1.125,1.125
sprpriority = 5
ontop = 1

; blue
[State 0, ]
type = Explod
trigger1 = (Time%15) = 1
triggerall = Var(13) = 0
trigger1 = numhelper(7035)= 1
trigger1 = command = "HoldZ"
trigger1 = stateno != 4999 && stateno != 3023
anim = 937
;ID =
pos = -2,-15
postype = p1
facing = -1
vfacing = -1
bindtime = 1
vel = 0,-1
accel = 0,-.01
random = 20,20
removetime = 45
supermove = 999
;pausemovetime = 0
scale = .55, .55
sprpriority = -5
ontop = 1
;shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause = 0
;persistent = 1

; blue
[State 0, ]
type = null;Explod
trigger1 = (Time%15) = 1
triggerall = Var(13) = 0
trigger1 = numhelper(7035)= 1
trigger1 = command = "HoldY"
trigger1 = stateno != 4999 && stateno != 3023
anim = 938
;ID =
pos = -5,-15
postype = p1
facing = -1
vfacing = -1
bindtime = 1
vel = 0,-1
accel = 0,-.01
random = 20,20
removetime = 45
supermove = 999
;pausemovetime = 0
scale = .55, .55
sprpriority = -5
ontop = 1
;shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause = 0
;persistent = 1

"Glow!"
[State -1, Glow!]
type = null;PalFX
triggerall = Var(13) = 0
trigger1 = numhelper(7035)= 1
;trigger1 = command = "Charge!"
trigger1 = (Time%8) = 2 
Time = 4
add = 48, 69, 255 
persist = 1

[State 1473, NotHitBy]
type = HitOverride
;trigger1 = stateno >= 150
;trigger1 = command != "holdback" 
trigger1 = numhelper(9006) = 1 ||  numhelper(9007) = 1
attr = SCA, NA, SA, HA, NP, SP, HP, AT
time = 1
stateno = 1474


"BoomBoom"
;Fired-Up!
[State -1, Fired-Up!]
type = ChangeState
value = 4953
triggerall = command = "Charge2!"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 220
trigger11 = MoveContact
trigger12 = stateno = 420
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 250
trigger14 = MoveContact
trigger15 = stateno = 210
trigger15 = MoveContact
trigger16 = stateno = 221
trigger17 = stateno = 220

[State -1, ]
type = ChangeState
value = 1431
triggerall = Var(13) = 0
triggerall = command = "Spin3" || command = "Charge!"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
;trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 430
trigger12 = MoveContact
trigger13 = stateno = 440
trigger13 = MoveContact
trigger14 = stateno = 450
trigger14 = MoveContact
trigger15 = stateno = 450
trigger15 = MoveContact
;trigger16 = stateno = 221
trigger16 = MoveContact
trigger16 = stateno = 100
trigger17 = stateno = 221
;trigger18 = Time >= 5

;---------------------------------------------------------------------------
; Megaton Slap

[State -1, ]
type = ChangeState
value = 1070
triggerall = statetype = S
triggerall = command = "Spin2"
trigger1 = ctrl 
trigger2 = StateNo = 200
trigger2 = movehit
trigger3 = Stateno = 210
trigger3 = Movehit
trigger4 = Stateno = 230
trigger4 = Movehit
trigger5 = Stateno = 240
trigger5 = Movehit
trigger6 = StateNo = 600
trigger6 = Movehit
trigger7 = Stateno = 610
trigger7 = Movehit
trigger8 = Stateno = 630
trigger8 = Movehit
trigger9 = Stateno = 640
trigger9 = Movehit
trigger10 = stateno = 650
trigger10 = MoveContact
trigger11 = Stateno = 440
trigger11 = Movehit
trigger12 = Stateno = 221
trigger12 = Movecontact
trigger13 = Stateno = 1471
trigger13 = Movehit
trigger13 = Time >= 12
trigger14 = Stateno = 220
trigger15 = Stateno = 250

;------------------------------------------

[State -1, ]
type = null;ChangeState
value = 1020
triggerall = command = "RollingPunchx"
triggerall = Stateno != 740
trigger1 = ctrl


;--------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 2777
triggerall = command = "Slam"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = StateNo = 600
trigger2 = Movecontact
trigger3 = Stateno = 610
trigger3 = Movecontact
trigger4 = Stateno = 630
trigger4 = Movehit
trigger5 = Stateno = 640
trigger5 = Movecontact

;---------------------------------------------------------------------------
"BoomBoom"
;Fired-Up!
[State -1, Fired-Up!]
type = ChangeState
value = 3023
triggerall = command = "Fired-Up!"
;triggerall = numhelper(4998) = 0
triggerall = Power < 10000
;triggerall = Vel x = 0
;triggerall = Vel y = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact
trigger16 = stateno = 1270
trigger16 = MoveContact
trigger17 = stateno = 1290
trigger17 = MoveContact
trigger18 = stateno = 1300
trigger18 = MoveContact
 
;--------------------------

; Assist Brutus
[State -1,]
type = ChangeState
value = 4833
triggerall = Command = "Nephews"
triggerall = numhelper(4812) = 0
triggerall = numhelper(4813) = 0
triggerall = numhelper(4814) = 0
;triggerall = numhelper(3047) = 0
;triggerall = numhelper(3025) = 0
trigger1 = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact

;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 1040
triggerall = command = "DiveBomb"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 420
trigger10 = MoveContact
trigger11 = stateno = 430
trigger11 = MoveContact
trigger12 = stateno = 440
trigger12 = MoveContact
trigger13 = stateno = 450
trigger13 = MoveContact
trigger14 = stateno = 221
trigger14 = MoveContact

; Assist Brutus
[State -1,]
type = ChangeState
value = 4811
triggerall = Command = "Nephews"
triggerall = numhelper(4812) = 1 || numhelper(4813) = 1 || numhelper(4814) = 1
trigger1 = statetype = S || Statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact

;---------------------------------------------------------------------------

"BoomBoom"
;Fired-Up!
[State -1, Fired-Up!]
type = ChangeState
value = 3077
triggerall = command = "BurgerTime"
triggerall = numhelper(8030) = 0
triggerall = Var(13) = 0
triggerall = Power >= 5000
;triggerall = Vel x = 0
;triggerall = Vel y = 0
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact
trigger16 = stateno = 1270
trigger16 = MoveContact
trigger17 = stateno = 1290
trigger17 = MoveContact
trigger18 = stateno = 1300
trigger18 = MoveContact
trigger19 = stateno = 1431
trigger20 = stateno = 1432
trigger21 = stateno = 1250
trigger22 = stateno = 4953

"BoomBoom"
;Fired-Up!
[State -1, Fired-Up!]
type = ChangeState
value = 4999
triggerall = command = "Fired-Up!"
;triggerall = numhelper(4998) = 0
triggerall = Power >= 10000
;triggerall = Vel x = 0
;triggerall = Vel y = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact
trigger16 = stateno = 1270
trigger16 = MoveContact
trigger17 = stateno = 1290
trigger17 = MoveContact
trigger18 = stateno = 1300
trigger18 = MoveContact
 
;---------------------------------------------------------------------------
;Anchor Chain
[State -1, Fired-Up!]
type = ChangeState
value = 4801;3056
triggerall = command = "AnchorChain"
trigger1 = Statetype = S || StateType = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
;trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 425
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 450
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 430
trigger14 = MoveContact
trigger15 = stateno = 440
trigger15 = MoveContact
trigger16 = stateno = 1270
trigger16 = MoveContact
trigger17 = stateno = 1290
trigger17 = MoveContact
trigger18 = stateno = 1300
trigger18 = MoveContact
trigger19 = stateno = 221
trigger19 = MoveContact

;Anchor Chain
[State -1, Fired-Up!]
type = ChangeState
value = 4834;3056
triggerall = command = "AnchorChain"
triggerall = Statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610
trigger3 = MoveContact
trigger4 = stateno = 620
;trigger4 = MoveContact
trigger5 = stateno = 630
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact
trigger7 = stateno = 650
trigger7 = MoveContact

;---------------------------------------------------------------------------
;Counter
[State -1, Fired-Up!]
type = ChangeState
value = 4809;3056
triggerall = command = "Counter"
trigger1 = Statetype = S || StateType = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
;trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 425
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 450
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 430
trigger14 = MoveContact
trigger15 = stateno = 440
trigger15 = MoveContact
trigger16 = stateno = 1270
trigger16 = MoveContact
trigger17 = stateno = 1290
trigger17 = MoveContact
trigger18 = stateno = 1300
trigger18 = MoveContact
trigger19 = stateno = 221
trigger19 = MoveContact
 
;---------------------------------------------------------------------------
;Assist Bomb
[State -1, Fired-Up!]
type = ChangeState
value = 4851;3056
triggerall = command = "BoomBoom1"
triggerall = numhelper(7031) = 0
trigger1 = Statetype = S || StateType = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
;trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 425
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 450
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 430
trigger14 = MoveContact
trigger15 = stateno = 440
trigger15 = MoveContact
trigger16 = stateno = 1270
trigger16 = MoveContact
trigger17 = stateno = 1290
trigger17 = MoveContact
trigger18 = stateno = 1300
trigger18 = MoveContact
trigger19 = stateno = 221
trigger19 = MoveContact



;---------------------------------------------------------------------------
;Assist Bomb
[State -1, Fired-Up!]
type = ChangeState
value = 4850;3060
triggerall = command = "BoomBoom1"
triggerall = numhelper(7031) = 0
triggerall = NumHelper(8031) = 0
trigger1 = Statetype = A 
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
;trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 250
trigger7 = MoveContact
trigger8 = stateno = 400
trigger8 = MoveContact
trigger9 = stateno = 410
trigger9 = MoveContact
trigger10 = stateno = 425
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 450
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 430
trigger14 = MoveContact
trigger15 = stateno = 440
trigger15 = MoveContact
trigger16 = stateno = 600
trigger16 = MoveContact
trigger17 = stateno = 610
trigger17 = MoveContact
trigger18 = stateno = 620
trigger18 = MoveContact
trigger19 = stateno = 630
;trigger19 = MoveContact
trigger20 = stateno = 640
trigger20 = MoveContact
trigger21 = stateno = 650
trigger21 = MoveContact 

;-------------------------------------

;Assist Bomb
[State -1, Fired-Up!]
type = ChangeState
value = 4952;3060
triggerall = command = "Thrust"
triggerall = numhelper(7031) = 0
triggerall = NumHelper(8031) = 0
triggerall = numhelper(7723) = 0
trigger1 = Statetype = A
trigger1 = ctrl
trigger2= stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610
trigger3 = MoveContact
trigger4 = stateno = 620
trigger4 = MoveContact
trigger5 = stateno = 630
;trigger19 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact
trigger7 = stateno = 650
trigger7 = MoveContact

;---------------------------------------------------------------------------

[State -1, Power Drain]
type = ChangeState
value = 2785
triggerall = command = "Slam3"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = StateNo = 600
trigger2 = Movehit
trigger3 = Stateno = 610
trigger3 = Movehit
trigger4 = Stateno = 630
trigger4 = Movehit
trigger5 = Stateno = 640
trigger5 = Movehit

;---------------------------------------------------------------------------


"BoomBoom"
;Fired-Up!
[State -1, Fired-Up!]
type = ChangeState
value = 4950
triggerall = command = "Doublewhammy"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 220
trigger11 = MoveContact
trigger12 = stateno = 420
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 250
trigger14 = MoveContact
trigger15 = stateno = 210
trigger15 = MoveContact
trigger16 = stateno = 221
trigger17 = stateno = 220

;Fired-Up!
[State -1, Fired-Up!]
type = ChangeState
value = 4804
triggerall = command = "SevenSeas"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact
trigger16 = stateno = 1471
trigger17 = stateno = 1290
trigger18 = stateno = 1300
trigger19 = stateno = 1270
trigger20 = stateno = 4842
trigger21 = stateno = 210
trigger22 = stateno = 221
trigger23 = stateno = 220

"BoomBoom"
;Fired-Up!
[State -1, Fired-Up!]
type = null;ChangeState
value = 4806
triggerall = command = "Doublewhammy"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact
trigger16 = stateno = 1471
trigger17 = stateno = 1290
trigger18 = stateno = 1300
trigger19 = stateno = 1270
trigger20 = stateno = 2130
trigger21 = stateno = 4842
trigger22 = stateno = 210
trigger23 = stateno = 221
trigger24 = stateno = 220

;---------------------------------------------------------------------------

"BoomBoom"
;Fired-Up!
[State -1, Fired-Up!]
type = ChangeState
value = 4018
triggerall = command = "Slam3"
triggerall = numhelper(3024) = 0
triggerall = numhelper(3029) = 0
triggerall = numhelper(3036) = 0
triggerall = numhelper(3047) = 0
triggerall = numhelper(4020) = 0
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 240
trigger3 = stateno = 450
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 445
trigger10 = MoveContact
trigger11 = stateno = 3024
trigger11 = !MoveContact
trigger12 = stateno = 220
trigger12 = MoveContact
trigger13 = stateno = 420
trigger13 = MoveContact
trigger14 = stateno = 420
trigger14 = MoveContact
trigger15 = stateno = 250
trigger15 = MoveContact
trigger16 = stateno = 1270
trigger16 = MoveContact
trigger17 = stateno = 1290
trigger17 = MoveContact
trigger18 = stateno = 1300
trigger18 = MoveContact

[State 0, RemoveExplod]
type = null;RemoveExplod
trigger1 = Time >= 0
id = 1007
;ignorehitpause =
;persistent =

;---------------------------------------------------------------------------



[State 8028, 2]
type = RemoveExplod
trigger1 = stateno != 3084
trigger1 = Time = 0
id = 7044

[State 8028, 2]
type = RemoveExplod
trigger1 = stateno != 3084
trigger1 = Time = 0
id = 7039

[State 8028, 2]
type = RemoveExplod
trigger1 = stateno != 3084
trigger1 = Time = 0
id = 7027

[State 8028, 2]
type = RemoveExplod
trigger1 = stateno != 3084
trigger1 = Time = 0
id = 7048

;---------------------------------------------------------------------------

;Push Block (standing)  Thanks to BB Hood!
[State -1]
type = ChangeState
value = 860
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 870
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 880
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;===========================================================================
;---------------------------------------------------------------------------
; Air Dash
[State -1, Air Dash]
type = null
ChangeState
value = 740
triggerall = var(15) = 0
triggerall = stateno != 740
triggerall = PrevStateNo != 740
trigger1 = command = "FF"
trigger1 = StateType = A
trigger1 = ctrl
trigger2 = (command = "a" && command = "b") || (command = "b" && command = "c")
trigger2 = StateType = A
trigger2 = Ctrl

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

;---------------------------------------------------------------------------
; Superjump Up
[State -1, Superjump Up]
type = ChangeState
value = 690
triggerall = command = "holdup"
triggerall = numhelper(652)= 0
;triggerall = Hitcount <= 11
;triggerall = Prevstateno != 650
trigger1 = command = "SuperJumpUp"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger3 = Anim = 250
;trigger3 = stateno = 420
;trigger3 = movecontact

;---------------------------------------------------------------------------
; Superjump Fwd
[State -1, Superjump Fwd]
type = ChangeState
value = 700
triggerall = command = "holdfwd"
triggerall = numhelper(652)= 0
trigger1 = command = "SuperJumpFwd"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
;trigger2 = stateno = 420
;trigger2 = movecontact

;---------------------------------------------------------------------------
; Superjump Back
[State -1, Superjump Back]
type = ChangeState
value = 710
triggerall = numhelper(652)= 0
trigger1 = command = "SuperJumpBck"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
;trigger2 = stateno = 420
;trigger2 = movecontact

;---------------------------------------------------------------------------
; Basic Throw
[State -1, Basic Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = command = "holdfwd"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Back Throw]
type = null;ChangeState
value = 801
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
; Air Throw
[State -1, Basic Throw]
type = ChangeState
value = 850
triggerall = command = "y" || command = "z"
triggerall = command = "holdfwd"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 7
trigger1 = (p2statetype = A) 
;trigger1 = p2movetype != H
trigger2 = p2bodydist X < 9
trigger2 = (p2statetype = A)
;trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Dive 
[State -1, Dive Kick]
type = ChangeState
value = 660
triggerall = command = "c"
triggerall = command = "holddown"  
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610
trigger3 = MoveContact
trigger4 = stateno = 620  
trigger4 = MoveContact
trigger5 = stateno = 630  
trigger5 = MoveContact
trigger6 = stateno = 640  
trigger6 = MoveContact
trigger7 = stateno = 650  
trigger7 = MoveContact
trigger7 = Anim = 651
trigger8 = stateno = 2780
;trigger9 = stateno = 1471
trigger9 = stateno = 2453
trigger9 = Time >= 10

;===========================================================================

;Assist Bomb
[State -1, Fired-Up!]
type = ChangeState
value = 4851;3056
triggerall = Var(59) = 1
triggerall = command = "easybomb"
triggerall = command != "holdfwd"
triggerall = numhelper(7031) = 0
trigger1 = Statetype = S || StateType = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 1270
trigger6 = MoveContact
trigger7 = stateno = 1290
trigger7 = MoveContact
trigger8 = stateno = 1300
trigger8 = MoveContact
trigger9 = stateno = 221
trigger9 = MoveContact
trigger10 = stateno = 230
trigger10 = MoveContact = 0
trigger10 = Time >= 15
trigger10 = P2dist x >= 80

;Assist Bomb
[State -1, Fired-Up!]
type = ChangeState
value = 4850;3060
triggerall = Var(59) = 1
triggerall = command = "easybomb"
triggerall = command != "holdfwd"
triggerall = numhelper(7031) = 0
triggerall = NumHelper(8031) = 0
triggerall = prevstateno != 690
trigger1 = Statetype = A
;trigger1 = ctrl
trigger1 = stateno = 620
trigger1 = MoveContact
trigger2 = stateno = 650
trigger2 = MoveContact
trigger3 = stateno = 630
trigger3 = MoveContact = 0
trigger3 = Time >= 7
trigger3 = P2dist x >= 80

[State -1, Power Drain]
type = ChangeState
value = 2785
triggerall = Var(59) = 1
triggerall = command = "easybomb"
triggerall = command = "holdfwd"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 620
trigger2 = Movehit
trigger3 = Stateno = 650
trigger3 = Movehit
trigger4 = stateno = 630
trigger4 = MoveContact = 0
trigger4 = Time >= 7
trigger4 = P2dist x >= 80

[State -1, Power Drain]
type = ChangeState
value = 2781
triggerall = Var(59) = 1
triggerall = command = "easychain"
triggerall = command = "holdfwd"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 620
trigger2 = Movehit
trigger3 = Stateno = 650
trigger3 = Movehit
trigger4 = stateno = 640
trigger4 = MoveContact = 0
trigger4 = Time >= 7
trigger4 = P2dist x >= 80

[State -1, Power Drain]
type = ChangeState
value = 2777
triggerall = Var(59) = 1
triggerall = command = "easycounter"
;triggerall = command = "holdfwd"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 620
trigger2 = Movehit
trigger3 = Stateno = 650
trigger3 = Movehit
trigger4 = stateno = 650
trigger4 = MoveContact = 0
trigger4 = Time >= 7
trigger4 = P2dist x >= 80

[State -1, Power Drain]
type = ChangeState
value = 4952
triggerall = Var(59) = 1
triggerall = command = "easypunch"
triggerall = numhelper(7031) = 0
triggerall = NumHelper(8031) = 0
triggerall = numhelper(7723) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 620
trigger2 = Movehit
trigger3 = Stateno = 650
trigger3 = Movehit

[State -1, Power Drain]
type = ChangeState
value = 4834
triggerall = Var(59) = 1
triggerall = command = "easychain"
triggerall = command != "holdfwd"
trigger1 = statetype = A
;trigger1 = ctrl
trigger1 = StateNo = 620
trigger1 = Movehit
trigger2 = Stateno = 650
trigger2 = Movehit
trigger3 = stateno = 640
trigger3 = MoveContact = 0
trigger3 = Time >= 7
trigger3 = P2dist x >= 80

[State -1, Power Drain]
type = ChangeState
value = 4801
triggerall = Var(59) = 1
triggerall = command = "easychain"
triggerall = command != "holdback"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 220
trigger2 = Movehit
trigger3 = Stateno = 250
trigger3 = Movehit
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = Time >= 2
trigger7 = stateno = 221
trigger7 = MoveContact

[State -1, Power Drain]
type = ChangeState
value = 3025
triggerall = Var(59) = 1
triggerall = numhelper(3024) = 0
triggerall = numhelper(3029) = 0
triggerall = numhelper(3036) = 0
triggerall = numhelper(3047) = 0
triggerall = command = "easychain"
triggerall = command = "holdback"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 220
trigger2 = Movehit
trigger3 = Stateno = 250
trigger3 = Movehit
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = Time >= 20

[State -1, Power Drain]
type = ChangeState
value = 3027
triggerall = Var(59) = 1
triggerall = numhelper(3024) = 0
triggerall = numhelper(3029) = 0
triggerall = numhelper(3036) = 0
triggerall = numhelper(3047) = 0
triggerall = numhelper(3025) = 0
triggerall = command = "easycounter"
triggerall = command != "holdback"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 220
trigger2 = Movehit
trigger3 = Stateno = 250
trigger3 = Movehit
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 250
trigger6 = MoveContact = 0
trigger6 = Time >= 15
trigger6 = P2dist x >= 80

[State -1, Power Drain]
type = ChangeState
value = 4809
triggerall = Var(59) = 1
triggerall = command = "easycounter"
triggerall = command = "holdback"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 220
trigger2 = Movehit
trigger3 = Stateno = 250
trigger3 = Movehit
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 250
trigger6 = MoveContact = 0
trigger6 = Time >= 15
trigger6 = P2dist x >= 80

"BoomBoom"
;Fired-Up!
[State -1, Fired-Up!]
type = ChangeState
value = 4018
triggerall = Var(59) = 1
triggerall = command = "easybomb"
triggerall = numhelper(3024) = 0
triggerall = numhelper(3029) = 0
triggerall = numhelper(3036) = 0
triggerall = numhelper(3047) = 0
triggerall = numhelper(4020) = 0
triggerall = command = "holdfwd"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 1270
trigger6 = MoveContact
trigger7 = stateno = 1290
trigger7 = MoveContact
trigger8 = stateno = 1300
trigger8 = MoveContact
trigger9 = stateno = 221
trigger9 = MoveContact
trigger10 = stateno = 230
trigger10 = MoveContact = 0
trigger10 = Time >= 15
trigger10 = P2dist x >= 80

"BoomBoom"
;Fired-Up!
[State -1, Fired-Up!]
type = ChangeState
value = 1035;4950
triggerall = var(59) = 1
triggerall = command = "easywammy"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 221
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact = 0
trigger7 = Time >= 8
trigger7 = P2dist x >= 80

"BoomBoom"
;Fired-Up!
[State -1, Fired-Up!]
type = ChangeState
value = 4804
triggerall = var(59) = 1
triggerall = command = "easywammy"
triggerall = command != "holdfwd"
triggerall = command = "holdback"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 221
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact = 0
trigger7 = Time >= 8
trigger7 = P2dist x >= 80

"BoomBoom"
;Fired-Up!
[State -1, Fired-Up!]
type = ChangeState
value = 4950
triggerall = Var(13) = 0
triggerall = var(59) = 1
triggerall = command = "easywammy"
triggerall = command = "holdfwd"
triggerall = command != "holdback"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 221
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact = 0
trigger7 = Time >= 8
trigger7 = P2dist x >= 80

"BoomBoom"
;Fired-Up!
[State -1, Fired-Up!]
type = ChangeState
value = 1310
triggerall = var(59) = 1
triggerall = command = "easyupper"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
;trigger4 = stateno = 420
;trigger4 = MoveContact
trigger4 = stateno = 450
trigger4 = MoveContact
trigger5 = stateno = 221
trigger5 = MoveContact
trigger6 = stateno = 200
trigger6 = MoveContact = 0
trigger6 = Time >= 8
trigger6 = P2dist x >= 80


 ; Megaton Slap

[State -1, ]
type = ChangeState
value = 1070
triggerall = statetype = S
triggerall = command = "easyupper"
triggerall = command = "holdfwd"
triggerall = command != "holdback"
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 221
trigger6 = MoveContact
trigger7 = Stateno = 1471
trigger7 = Movehit
trigger7= Time >= 12
trigger8 = stateno = 200
trigger8 = MoveContact = 0
trigger8 = Time >= 8
trigger8 = P2dist x >= 80

[State -1, ]
type = ChangeState
value = 1431
triggerall = Var(13) = 0
triggerall = Var(59) = 1
triggerall = command = "easypunch"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 221
trigger6 = MoveContact
trigger7 = stateno = 100
trigger8 = stateno = 221
;trigger18 = Time >= 5
trigger9 = stateno = 220
trigger9 = MoveContact = 0
trigger9 = Time >= 8
trigger9 = P2dist x >= 80

[State -1, ]
type = ChangeState
value = 4953
triggerall = Var(59) = 1
triggerall = command = "easypunch"
;triggerall = command = "holddown"
triggerall = command = "holdback"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 221
trigger6 = MoveContact
trigger7 = stateno = 100
trigger8 = stateno = 221
;trigger18 = Time >= 5
trigger9 = stateno = 220
trigger9 = MoveContact = 0
trigger9 = Time >= 8
trigger9 = P2dist x >= 80

[State -1, ]
type = ChangeState
value = 1040
triggerall = Var(59) = 1
triggerall = command = "easypunch"
;triggerall = command != "holdfwd"
triggerall = command = "holddown"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 221
trigger6 = MoveContact
trigger7 = stateno = 100
trigger8 = stateno = 221
;trigger18 = Time >= 5

[State -1, ]
type = ChangeState
value = 1250
triggerall = Var(13) = 0
triggerall = Var(59) = 1
triggerall = command = "easypunch"
triggerall = command = "holdfwd"
triggerall = command != "holdback"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 221
trigger6 = MoveContact
trigger7 = stateno = 100
trigger8 = stateno = 221
;trigger18 = Time >= 5
trigger9 = stateno = 220
trigger9 = MoveContact = 0
trigger9 = Time >= 8
trigger9 = P2dist x >= 80


[State -1,]
type = ChangeState
value = 1470
triggerall = command = "easyupper"
triggerall = command != "holdfwd"
triggerall = command = "holdback"
triggerall = Var(59) = 1
triggerall = StateType = S || StateType = C;|| StateType = A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 250
trigger3 = MoveContact
trigger4 = stateno = 420
trigger4 = MoveContact
trigger5 = stateno = 450
trigger5 = MoveContact
trigger6 = stateno = 221
trigger6 = MoveContact
trigger7 = stateno = 620
trigger7 = MoveContact
trigger8 = stateno = 650
trigger8 = MoveContact
trigger9 = stateno = 200
trigger9 = MoveContact = 0
trigger9 = Time >= 8
trigger9 = P2dist x >= 80

[State -1,]
type = ChangeState
value = 1470
triggerall = command = "easyupper"
;triggerall = command != "holdfwd"
;triggerall = prevstateno != 50
triggerall = Var(59) = 1
triggerall = StateType = A
;trigger1 = ctrl
trigger1 = stateno = 620
trigger1 = MoveContact
trigger2 = stateno = 650
trigger2 = MoveContact
trigger3 = stateno = 600
trigger3 = MoveContact = 0
trigger3 = Time >= 8
trigger3 = P2dist x >= 80



;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(59) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact


;---------------------------------------------------------------------------
;Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = MoveContact
;trigger2 = AnimElemTime(5) > 1
trigger3 = stateno = 240
trigger3 = MoveContact
trigger4 = stateno = 200
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 1021
trigger10 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 220
triggerall = command != "holddown"
triggerall = var(59) = 1
triggerall = statetype = S
;trigger1 = ctrl
trigger1 = command = "x"
trigger1 = stateno = 210
trigger1 = MoveContact
trigger2 = command = "y"
trigger2 = stateno = 210
trigger2 = MoveContact


;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 400
trigger3 = MoveContact
trigger4 = stateno = 1001
trigger4 = MoveContact


;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact 
trigger4 = stateno = 200
trigger4 = MoveContact
trigger5 = stateno = 400
trigger5 = MoveContact
trigger6 = stateno = 410
trigger6 = MoveContact
trigger7 = stateno = 430
trigger7 = MoveContact
trigger8 = stateno = 1011
trigger8 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(59) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact
trigger10 = stateno = 220
trigger10 = MoveContact
trigger11 = stateno = 1021
trigger11 = MoveContact
trigger12 = stateno = 221
trigger12 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 250
triggerall = command != "holddown"
triggerall = var(59) = 1
triggerall = statetype = S
;triggerall = ctrl
trigger1 = command = "a"
trigger1 = stateno = 240
trigger1 = MoveContact
trigger2 = command = "b"
trigger2 = stateno = 240
trigger2 = MoveContact

[State -1, ]
type = null;ChangeState
value = 670
triggerall = command = "holdup"
trigger1 = MoveHit
trigger1 = stateno = 250
 
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveContact
trigger3 = stateno = 430
trigger3 = MoveContact
trigger4 = stateno = 200
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 410
triggerall = command = "x"
;triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = MoveContact
trigger2 = AnimElemTime(3) > 6
trigger3 = stateno = 400
trigger3 = MoveContact
trigger4 = stateno = 430
trigger4 = MoveContact
trigger5 = stateno = 440
trigger5 = MoveContact
trigger6 = stateno = 200
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
trigger8 = stateno = 230
trigger8 = MoveContact
trigger9 = stateno = 240
trigger9 = MoveContact
trigger10 = stateno = 1021
trigger10 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 420
triggerall = command = "x"
;triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 420
triggerall = command = "y"
;triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = MoveContact

[State -1, Punch Launcher Followup]
type = ChangeState
value = 690
triggerall = command = "x"
triggerall = statetype = C
triggerall = var(59) = 1
;trigger1 = ctrl
trigger1 = stateno = 420
trigger1 = time >= 2
trigger1 = MoveHit

[State -1, Punch Launcher Followup]
type = ChangeState
value = 690
triggerall = command = "a"
triggerall = statetype = C
triggerall = var(59) = 1
;trigger1 = ctrl
trigger1 = stateno = 420
trigger1 = MoveHit

[State -1, Punch Launcher Followup]
type = ChangeState
value = 690
triggerall = command = "y"
triggerall = statetype = C
triggerall = var(59) = 1
;trigger1 = ctrl
trigger1 = stateno = 420
trigger1 = time >= 2
trigger1 = MoveHit

[State -1, Punch Launcher Followup]
type = ChangeState
value = 690
triggerall = command = "b"
triggerall = statetype = C
triggerall = var(59) = 1
;trigger1 = ctrl
trigger1 = stateno = 420
trigger1 = MoveHit


;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveContact
trigger3 = stateno = 200
trigger3 = MoveContact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = MoveContact
trigger3 = stateno = 400
trigger3 = MoveContact
trigger4 = stateno = 410
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 210
trigger6 = MoveContact
trigger7 = stateno = 230
trigger7 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 440
triggerall = command = "a"
;triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = MoveContact
trigger3 = stateno = 400
trigger3 = MoveContact
trigger4 = stateno = 430
trigger4 = MoveContact
trigger5 = stateno = 440
trigger5 = MoveContact
trigger6 = stateno = 200
trigger6 = MoveContact
trigger7 = stateno = 210
trigger7 = MoveContact
trigger8 = stateno = 230
trigger8 = MoveContact
trigger9 = stateno = 240
trigger9 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 450
triggerall = command = "a"
;triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = MoveContact

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 450
triggerall = command = "b"
;triggerall = command = "holddown"
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(15) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 660  
trigger2 = MoveContact
;trigger3 = stateno = 2453
;trigger3 = Time >= 10


;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(15) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveHit
trigger3 = stateno = 630
trigger4 = stateno = 660
trigger4 = MoveContact

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(15) = 0
triggerall = var(59) = 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610
trigger3 = MoveContact
trigger4 = stateno = 630
trigger4 = MoveContact
trigger5 = stateno = 2446  
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact
trigger7 = stateno = 700  
trigger7 = MoveContact
trigger8 = stateno = 660
trigger8 = MoveContact

[State -1, Jump Medium Punch]
type = ChangeState
value = 620
triggerall = var(15) = 0
triggerall = var(59) = 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = MoveContact

[State -1, Jump Medium Punch]
type = ChangeState
value = 620
triggerall = var(15) = 0
triggerall = var(59) = 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(15) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 660
trigger3 = MoveContact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610
trigger3 = MoveContact
trigger4 = stateno = 630 
trigger4 = MoveContact
trigger5 = stateno = 660
trigger5 = MoveContact

[State -1, Jump Medium Punch]
type = ChangeState
value = 640
triggerall = var(15) = 0
triggerall = var(59) = 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = var(15) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610
trigger3 = MoveContact
trigger4 = stateno = 620  
trigger4 = MoveContact
trigger5 = stateno = 630  
trigger5 = MoveContact
trigger6 = stateno = 640  
trigger6 = MoveContact
trigger7 = stateno = 660
trigger7 = MoveContact

[State -1, Jump Medium Punch]
type = ChangeState
value = 650
triggerall = var(15) = 0
triggerall = var(59) = 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = MoveContact

[State -1, Jump Medium Punch]
type = ChangeState
value = 650
triggerall = var(15) = 0
triggerall = var(59) = 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = MoveContact

;--------------------------------


[State 9000, 1]
type = Explod
trigger1 = Teamside = 1
triggerall = roundstate = 2
triggerall = Var(59) = 1
trigger1 = numexplod(1003) = 0
ID = 1003
anim = 1003; 998;
pos = 34,232
postype = left
ontop = 1
supermove = 99999
bindtime = -1
removetime = -2
ownpal = 1
scale = 0.5,0.5
sprpriority = 5
ontop = 1

[State 9000, 1]
type = Explod
trigger1 = Teamside = 2
triggerall = roundstate = 2
triggerall = Var(59) = 1
trigger1 = numexplod(1003) = 0
ID = 1003
anim = 1003; 998;
pos = 285,232
postype = left
ontop = 1
supermove = 99999
bindtime = -1
removetime = -2
ownpal = 1
scale = 0.5,0.5
sprpriority = 5
ontop = 1
















































































































































