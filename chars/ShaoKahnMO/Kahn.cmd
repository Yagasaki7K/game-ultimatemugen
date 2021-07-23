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

;-| Fatality Motions |--------------------------------------------------------
[Command]
name = "Burn"
command = ~B, B, F, z
time = 50

[Command]
name = "Slam"
command = ~D, F, F, c
time = 50

[Command]
name = "SuperStomp"
command = ~B, F, D, c
time = 50

[Command]
name = "Eat"
command = ~B, F, D, F, z
time = 60

[Command]
name = "PowerPunch"
command = ~45$c
time = 60

[Command]
name = "PowerPunch"
command = ~D, D, D, c
time = 60

;-| Super Motions |------------------------------------------------------
;For Super A.I. only
[Command]
name = "SuperBlast" ;(Super A.I. only)
command = ~D, D, D, y
time = 30

[Command]
name = "SuperBeam" ;(Super A.I. only)
command = ~D, D, D, b
time = 30

[Command]
name = "SuperCharge"
command = ~D, F, D, F, a
time = 45

;-| Special Motions |------------------------------------------------------
[Command]
name = "Arrow"
command = ~B, B, F, b
time = 30

[Command]
name = "EnergyBall"
command = ~B, B, F, a
time = 30

[Command]
name = "Blast" ;(Super A.I. only)
command = ~B, B, F, y
time = 30

[Command]
name = "Hammer"
command = ~B, F, x
time = 25

[Command]
name = "Charge"
command = ~D, F, a
time = 25

[Command]
name = "VertCharge"
command = ~D, F, x
time = 25

[Command]
name = "GrabHurl"
command = ~F, F, a
time = 20

;-| Normal Motions |---------------------------------------------------------
[Command]
name = "Punch"
command = a
time = 1

[Command]
name = "Punch"
command = x
time = 1

[Command]
name = "Kick"
command = y
time = 1

[Command]
name = "Kick"
command = b
time = 1

[Command]
name = "LowHit"
command = /$F, x
time = 20

[Command]
name = "Uppercut"
command = D+x
time = 20

[Command]
name = "Taunt"
command = ~D, D, b
time = 30

[Command]
name = "Guard"  ;Required (do not remove)
command = /c
time = 1

[Command]
name = "Guard"  ;Required (do not remove)
command = /z
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

[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdz"
command = /$z
time = 1

; -| CPU ONLY |-------------------------------------------------------------
[Command]
name = "Dummy1";Required (do not remove)
command = ~B, F, a
time = 1

[Command]
name = "Dummy2";Required (do not remove)
command = ~B, F, b
time = 1

[Command]
name = "Dummy3";Required (do not remove)
command = ~B, F, c
time = 1

[Command]
name = "Dummy4";Required (do not remove)
command = ~B, F, x
time = 1

[Command]
name = "Dummy5";Required (do not remove)
command = ~B, F, y
time = 1

[Command]
name = "Dummy6";Required (do not remove)
command = ~B, F, z
time = 1

[Command]
name = "cpu1"
command = U, U, U, U
time = 1
[Command]
name = "cpu2"
command = U, U, U, D
time = 1
[Command]
name = "cpu3"
command = U, U, D, D
time = 1
[Command]
name = "cpu4"
command = U, D, D, D
time = 1
[Command]
name = "cpu5"
command = D, D, D, D
time = 1
[Command]
name = "cpu6"
command = D, D, D, U
time = 1
[Command]
name = "cpu7"
command = D, D, U, U
time = 1
[Command]
name = "cpu8"
command = D, U, U, U
time = 1
[Command]
name = "cpu9"
command = U, D, U, U
time = 1
[Command]
name = "cpu10"
command = U, U, D, U
time = 1
[Command]
name = "cpu11"
command = D, U, U, D
time = 1
[Command]
name = "cpu12"
command = U, D, D, U
time = 1
[Command]
name = "cpu13"
command = D, U, D, U
time = 1
[Command]
name = "cpu14"
command = U, D, U, D
time = 1
[Command]
name = "cpu15"
command = F, F, F, F
time = 1
[Command]
name = "cpu16"
command = B, B, B, B
time = 1
[Command]
name = "cpu17"
command = F, B, F, F
time = 1
[Command]
name = "cpu18"
command = F, F, B, F
time = 1
[Command]
name = "cpu19"
command = B, F, F, F
time = 1
[Command]
name = "cpu20"
command = F, F, F, B
time = 1
[Command]
name = "cpu21"
command = F, B, B, F
time = 1
[Command]
name = "cpu22"
command = B, F, F, B
time = 1
[Command]
name = "cpu23"
command = F, B, F, B
time = 1
[Command]
name = "cpu24"
command = B, F, B, F
time = 1
[Command]
name = "cpu25"
command = D, F, D, F
time = 1
[Command]
name = "cpu26"
command = D, B, D, B
time = 1
[Command]
name = "cpu27"
command = D, B, D, F
time = 1
[Command]
name = "cpu28"
command = D, F, D, B
time = 1
[Command]
name = "cpu29"
command = U, F, D, B
time = 1
[Command]
name = "cpu30"
command = U, B, D, F
time = 1
[Command]
name = "cpu31"
command = B, D, F, U
time = 1
[Command]
name = "cpu32"
command = F, D, B, U
time = 1
[Command]
name = "cpu33"
command = U, U, U, U
time = 1
[Command]
name = "cpu34"
command = U, U, U, D
time = 1
[Command]
name = "cpu35"
command = U, U, D, D
time = 1
[Command]
name = "cpu36"
command = U, D, D, D
time = 1
[Command]
name = "cpu37"
command = D, D, D, D
time = 1
[Command]
name = "cpu38"
command = D, D, D, U
time = 1
[Command]
name = "cpu39"
command = D, D, U, U
time = 1
[Command]
name = "cpu40"
command = D, U, U, U
time = 1
[Command]
name = "cpu41"
command = U, D, U, U
time = 1
[Command]
name = "cpu42"
command = U, U, D, U
time = 1
[Command]
name = "cpu43"
command = D, U, U, D
time = 1
[Command]
name = "cpu44"
command = U, D, D, U
time = 1
[Command]
name = "cpu45"
command = D, U, D, U
time = 1
[Command]
name = "cpu46"
command = U, D, U, D
time = 1
[Command]
name = "cpu47"
command = F, F, F, F
time = 1
[Command]
name = "cpu48"
command = B, B, B, B
time = 1
[Command]
name = "cpu49"
command = F, B, F, F
time = 1
[Command]
name = "cpu50"
command = D, U, U, U
time = 1
[Command]
name = "cpu51"
command = U, D, U, U
time = 1
[Command]
name = "cpu52"
command = U, U, D, U
time = 1
[Command]
name = "cpu53"
command = D, U, U, D
time = 1
[Command]
name = "cpu54"
command = U, D, D, U
time = 1
[Command]
name = "cpu55"
command = D, U, D, U
time = 1
[Command]
name = "cpu56"
command = U, D, U, D
time = 1
[Command]
name = "cpu57"
command = F, F, F, F
time = 1
[Command]
name = "cpu58"
command = B, B, B, B
time = 1
[Command]
name = "cpu59"
command = F, B, F, F
time = 1
[Command]
name = "cpu60"
command = D, U, U, U
time = 1
[Command]
name = "cpu61"
command = U, D, U, U
time = 1
[Command]
name = "cpu62"
command = U, U, D, U
time = 1
[Command]
name = "cpu63"
command = D, U, U, D
time = 1
[Command]
name = "cpu64"
command = U, D, D, U
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;-----------------------------Human Commands--------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[Statedef -1]

;-|AI Routine|----------------------------------------------------------------------------


;-|Signal AI Routines|--------------------------------------------------------------------
[State -1]
type = VarSet
v = 21
value = 1
triggerall = var(21) != 1
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
trigger31 = command = "cpu31"
trigger32 = command = "cpu32"
trigger33 = command = "cpu33"
trigger34 = command = "cpu34"
trigger35 = command = "cpu35"
trigger36 = command = "cpu36"
trigger37 = command = "cpu37"
trigger38 = command = "cpu38"
trigger39 = command = "cpu39"
trigger30 = command = "cpu40"
trigger31 = command = "cpu41"
trigger32 = command = "cpu42"
trigger33 = command = "cpu43"
trigger34 = command = "cpu44"
trigger35 = command = "cpu45"
trigger36 = command = "cpu46"
trigger37 = command = "cpu47"
trigger38 = command = "cpu48"
trigger39 = command = "cpu49"
trigger30 = command = "cpu50"
trigger31 = command = "cpu51"
trigger32 = command = "cpu52"
trigger33 = command = "cpu53"
trigger34 = command = "cpu54"
trigger35 = command = "cpu55"
trigger36 = command = "cpu56"
trigger37 = command = "cpu57"
trigger38 = command = "cpu58"
trigger39 = command = "cpu59"
trigger30 = command = "cpu60"
trigger31 = command = "cpu61"
trigger32 = command = "cpu62"
trigger33 = command = "cpu63"
trigger34 = command = "cpu64"

;--------------------------------------------------------------------
;[State -1]; Slam
;type = Changestate
;value = 3200
;trigger1 = command = "Slam"
;triggerall = ctrl = 1
;triggerall = p2stateno = 9010
;triggerall = P2statetype = S
;triggerall = Statetype = S
;triggerall = p2bodyDist X < 3
;;triggerall = p2bodyDist X < 90

;---------------------------------------------------------------------------
;Guard
[State -1, Guard]
type = ChangeState
value = 130
triggerall = command = "Guard"
triggerall = ctrl
;triggerall = stateno != 130
;triggerall = stateno != 131
trigger1 = var(21) != 1
trigger1 = statetype = S

[State -1, Guard]
type = ChangeState
value = 131
triggerall = command = "Guard"
triggerall = ctrl
;triggerall = stateno != 130
;triggerall = stateno != 131
trigger1 = var(21) != 1
trigger1 = statetype = C

;---------------------------------------------------------------------------
;Guard
[State -1, Guard]
type = ChangeState
value = 130
triggerall = command = "Guard"
trigger1 = var(21) != 1
trigger1 = stateno = 130
trigger1 = statetype = S

;---------------------------------------------------------------------------
;Guard
;ƒ_ƒbƒVƒ…
[State -1, CrouchGuard]
type = ChangeState
value = 131
triggerall = command = "Guard"
trigger1 = var(21) != 1
trigger1 = stateno = 131
trigger1 = statetype = C

;---------------------------------------------------------------------------
;Super Charge (Super Boss Only)
[State -1, SuperCharge]
type = ChangeState
value = 13000
triggerall = Var(21) != 1 ;Performed by AI in different method
triggerall = command = "SuperCharge"
triggerall = Var(39) = 1
triggerall = Power >= 1000
triggerall = ctrl
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger2 = statetype = C

;---------------------------------------------------------------------------
;Super Beam (Super Boss Only)
[State -1, SuperBeam]
type = ChangeState
value = 11100
;triggerall = Var(21) != 1 ;Performed by AI in different method
triggerall = command = "SuperBeam"
triggerall = Var(39) = 1
triggerall = Power >= 3000
triggerall = ctrl
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger2 = statetype = C

;---------------------------------------------------------------------------
;Super Blaster (Super Boss Only)
[State -1, SuperBlast]
type = ChangeState
value = 11300
;triggerall = Var(21) != 1 ;Performed by AI in different method
triggerall = command = "SuperBlast"
triggerall = Var(39) = 1
triggerall = Power >= 1000
triggerall = ctrl
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger2 = statetype = C

;---------------------------------------------------------------------------
;Throw Arrow
[State -1, Arrow]
type = ChangeState
value = 1000
triggerall = Var(21) != 1 ;Performed by AI in different method
triggerall = command = "Arrow"
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Hortizontal Air Shoulder Charge (Super A.I. Only).
[State -1, HAirCharge]
type = ChangeState
value = 1042
;triggerall = Var(21) != 1 ;Performed by AI in different method
triggerall = command = "Charge"
triggerall = Var(39) = 1
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Shoulder Charge
[State -1, Charge]
type = ChangeState
value = 1010
triggerall = Var(21) != 1 ;Performed by AI in different method
triggerall = command = "Charge"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

;---------------------------------------------------------------------------
;Vertical Shoulder Charge
[State -1, VertCharge]
type = ChangeState
value = 1040
triggerall = Var(21) != 1 ;Performed by AI in different method
triggerall = command = "VertCharge"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

;---------------------------------------------------------------------------
;Spit Energy Ball
[State -1, Fire]
type = ChangeState
value = 1020
triggerall = Var(21) != 1 ;Performed by AI in different method
triggerall = command = "EnergyBall"
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw Ground Blaster (Super Boss Only)
[State -1, Blast]
type = ChangeState
value = 11200
triggerall = command = "Blast"
triggerall = Var(39) = 1
;triggerall = Var(21) != 1 ;Performed by AI in different method
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Hammer
[State -1, Hammer]
type = ChangeState
value = 1030
triggerall = command = "Hammer"
triggerall = Var(21) != 1 ;Performed by AI in different method
;triggerall = p2stateno != [1031,1032]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

;---------------------------------------------------------------------------
;GrabToss
;[State -1, GrabToss]
;type = ChangeState
;value = 800
;triggerall = command = "GrabToss"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = statetype = C
;trigger2 = ctrl

;---------------------------------------------------------------------------
;GrabHurl
;[State -1, GrabHurl]
;type = ChangeState
;value = 800
;triggerall = command = "GrabHurl"
;triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = statetype = C
;trigger2 = ctrl

;---------------------------------------------------------------------------
;Uppercut
[State -1, Uppercut]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = ctrl
trigger1 = statetype = C
trigger1 = Var(21) != 1 ;AI,Don't punch air a mile away from enemy, you moron.
trigger2 = statetype != A
trigger2 = p2bodydist X < 24
trigger2 = Var(21) = 1

;---------------------------------------------------------------------------
;Punch
[State -1, Punch]
type = ChangeState
value = 200
triggerall = command = "Punch"
;triggerall = command != "holddown"
triggerall = ctrl
trigger1 = statetype = S
trigger1 = Var(21) != 1 ;AI,Don't punch air a mile away from enemy, you moron.
trigger2 = statetype = C
trigger2 = Var(21) != 1 ;AI,Don't punch air a mile away from enemy, you moron.
trigger3 = statetype != A
trigger3 = p2bodydist X < 24
trigger3 = Var(21) = 1

;---------------------------------------------------------------------------
;Kick
[State -1, Kick]
type = ChangeState
value = 220
triggerall = command = "Kick"
;triggerall = command != "holddown"
triggerall = ctrl
trigger1 = statetype = S
trigger1 = Var(21) != 1 ;AI,Don't punch air a mile away from enemy, you moron.
trigger2 = statetype = C
trigger2 = Var(21) != 1 ;AI,Don't punch air a mile away from enemy, you moron.
trigger3 = statetype != A
trigger3 = p2bodydist X < 24
trigger3 = Var(21) = 1

;---------------------------------------------------------------------------
;Jump when Ducking
[State -1]
type = ChangeState
value = 40
triggerall = Var(21) != 1 ;AI never jumps...
triggerall = command = "holdup"
;triggerall = command != "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air Kick
[State -1, AirKick]
type = ChangeState
value = 230
triggerall = Var(21) != 1 ;AI never jumps...
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "x"
trigger4 = command = "y"

;---------------------------------------------------------------------------
;Insult Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "start"
trigger1 = command != "holddown"
trigger2 = Random <= 1
trigger2 = Var(21) = 1
trigger2 = movetype != H
trigger2 = stateno != [5000,5999]

;---------------------------------------------------------------------------
;Laugh Taunt
[State -1, Laugh]
type = ChangeState
value = 196
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "start"
trigger1 = command = "holddown"
trigger2 = Random <= 1
trigger2 = Var(21) = 1
trigger2 = movetype != H
trigger2 = stateno != [5000,5999]

;---------------------------------------------------------------------------
;Super AI Super Blaster
[State -1, SuperBlaster]
type = ChangeState
value = 11300
triggerall = statetype != A
triggerall = ctrl
trigger1 = Random <= 1
trigger1 = Var(21) = 1
trigger1 = Var(39) = 1
trigger1 = power >= 1000

;---------------------------------------------------------------------------
;Super AI Super Charge
[State -1, SuperCharge]
type = ChangeState
value = 13000
triggerall = statetype != A
triggerall = ctrl
trigger1 = Random <= 1
trigger1 = Var(21) = 1
trigger1 = Var(39) = 1
trigger1 = power >= 1000

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;BLOOD COLORS
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[State -1, SnowBlood]
type = palFX
triggerall = time = 1
triggerall = Var(16) >= 1
;triggerall = IsHelper(6040)
trigger1 = p2name = "Iceman by SH"
trigger2 = p2name = "Iceman"
trigger3 = p2name = "IceMan"
trigger4 = p2name = "Glacius Original"
trigger5 = p2name = "Cactuar"
trigger6 = p2name = "Glacius"
add = -255,224,-255
mul = -255,244,-255
time = 900

[State -1, BlueBlood]
type = palFX
triggerall = time = 1
triggerall = Var(16) >= 1
;triggerall = IsHelper(6040)
trigger1 = p2name = "DARK WARRIOR2"
trigger2 = p2name = "DARK WARRIOR"
trigger3 = p2name = "Dark WarriorMO"
trigger4 = p2name = "Venom"
trigger5 = p2name = "Venon"
trigger6 = p2name = "Venom MVsC"
add = -255,-255,192
mul = 0,0,192
time = 900

[State -1, PurpleBlood]
type = palFX
triggerall = time = 1
triggerall = Var(16) >= 1
;triggerall = IsHelper(6040)
trigger1 = p2name = "Rapterrometh"
trigger2 = p2name = "Riptor"
trigger3 = p2name = "Sabrewulf"
trigger4 = p2name = "Ray"
trigger5 = p2name = "Sisi"
trigger6 = p2name = "Piccolo"
trigger7 = p2name = "Thanos"
add = 148,-255,148
mul = 148,0,148
time = 900

[State -1, LightGreenBlood]
type = palFX
triggerall = time = 1
triggerall = Var(16) >= 1
;triggerall = IsHelper(6040)
trigger1 = p2name = "Reptile"
trigger2 = p2name = "ReptileMO"
trigger3 = p2name = "Sheeva"
trigger4 = p2name = "Motaro"
trigger5 = p2name = "Tin's GUNTER"
trigger6 = p2name = "Gunter"
trigger7 = p2name = "Chameleon"
trigger8 = p2name = "Genan"
trigger9 = p2name = "neodio"
trigger10 = p2name = "Predator Hunter"
trigger11 = p2name = "Predator"
trigger12 = p2name = "Trident"
trigger13 = p2name = "Rikuo"
trigger14 = p2name = "Abyss Form 2"
trigger15 = p2name = "Picco"
add = -255,244,-255
mul = 0,244,0
time = 900

[State -1, DarkGreenBlood]
type = palFX
triggerall = time = 1
triggerall = Var(16) >= 1
;triggerall = IsHelper(6040)
trigger1 = p2name = "Fulgore"
trigger2 = p2name = "BROCKEN"
trigger3 = p2name = "Brocken"
trigger4 = p2name = "Cyber Woo"
trigger5 = p2name = "ZAKU"
trigger6 = p2name = "Zaku"
trigger7 = p2name = "Epyon"
trigger8 = p2name = "Phobos"
trigger9 = p2name = "Silver Horns,by Douglas"
trigger10 = p2name = "GiagantosForSilverHorns"
trigger11 = p2name = "Gundam Wing Zero"
trigger12 = p2name = "Zechs Marquise"
trigger13 = p2name = "Abyss Form 1"
trigger14 = p2name = "Abyss Form 1+"
add = -255,128,-255
mul = 0,128,0
time = 900

[State -1, YellowBlood]
type = palFX
triggerall = time = 1
triggerall = Var(16) >= 1
;triggerall = IsHelper(6040)
trigger1 = p2name = "Yellow Devil"
trigger2 = p2name = "PMatt"
add = 244,244,-255
mul = 244,244,0
time = 900

[State -1, BrownBlood]
type = palFX
triggerall = time = 1
triggerall = Var(16) >= 1
;triggerall = IsHelper(6040)
trigger1 = p2name = "Post"
trigger2 = p2name = "Scarecrow"
trigger3 = p2name = "Omake: Mr. Wood"
add = 64,64,-255
mul = 64,64,0
time = 900

[State -1, LavaBlood]
type = palFX
triggerall = time = 1
triggerall = Var(16) >= 1
;triggerall = IsHelper(6040)
trigger1 = p2name = "[o_O]'s Blackheart"
trigger2 = p2name = "Blackheart"
trigger3 = p2name = "K'(s)"
trigger4 = p2name = "pyron"
trigger5 = p2name = "Pyron"
trigger6 = p2name = "Cinder"
trigger7 = p2name = "CinderMO"
trigger8 = p2name = "Lucifeller"
add = 40,-70,-200
sinadd = 40,30,0,75
color = 0
invertall = 1
time = 900

[State -1, BlackBlood]
type = palFX
triggerall = time = 1
triggerall = Var(16) >= 1
;triggerall = IsHelper(6040)
trigger1 = p2name = "RoboSmokeMO"
trigger2 = p2name = "RoboSmoke"
trigger3 = p2name = "SektorMO"
trigger4 = p2name = "Sektor"
trigger5 = p2name = "CyraxMO"
trigger6 = p2name = "Cyrax"
trigger7 = p2name = "Dracket"
trigger8 = p2name = "CyraxMO"
trigger9 = p2name = "Nail Bomb"
trigger10 = p2name = "Krang"
trigger11 = p2name = "KrangMO"
trigger12 = p2name = "Sentinel"
trigger13 = p2name = "Apocalypse"
trigger14 = p2name = "elque"
trigger15 = p2name = "Galactus"
trigger16 = p2name = "Metal Slug Train"
trigger17 = p2name = "Onslaught"
trigger18 = p2name = "Mercedes Benz"
trigger19 = p2name = "Fernandeath"
trigger20 = p2name = "Politankz"
color = 0
;add = -255,128,-255
;mul = 0,0,128
add = -255,-255,48
mul = 0,0,48
time = 900

[State -1, WhiteBlood]
type = palFX
triggerall = time = 1
triggerall = Var(16) >= 1
;triggerall = IsHelper(6040)
trigger1 = p2name = "Ickybod Clay"
trigger2 = p2name = "Bonus Kun"
trigger3 = p2name = "BonusKun"
trigger4 = p2name = "Bonuskun"
color = 0
add = 224,224,224
mul = 224,224,224
time = 900

[State -1, MegaManBlood]
type = palFX
triggerall = time = 1
triggerall = Var(16) >= 1
;triggerall = IsHelper(6040)
trigger1 = p2name = "MegaMan"
trigger2 = p2name = "Megaman"
trigger3 = p2name = "Mmx"
trigger4 = p2name = "MegaManX"
trigger5 = p2name = "MegamanX"
trigger6 = p2name = "Mega Man X"
trigger7 = p2name = "Zero"
trigger8 = p2name = "Crashman"
trigger9 = p2name = "CutMan"
trigger10 = p2name = "Cutman"
trigger11 = p2name = "Geminiman"
trigger12 = p2name = "Gutsman"
trigger13 = p2name = "HeatmanMO"
trigger14 = p2name = "Protoman"
trigger15 = p2name = "ProtoMan"
trigger16 = p2name = "protoman"
trigger17 = p2name = "Magnetman"
trigger18 = p2name = "MagnetMan"
trigger19 = p2name = "Woodman"
color = 0
add = -255,128,-255
mul = 0,0,128
;add = 255,255,-255
;mul = 128,128,-128
time = 900
