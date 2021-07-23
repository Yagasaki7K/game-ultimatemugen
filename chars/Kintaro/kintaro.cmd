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

;-| Special Motions |------------------------------------------------------
[Command]
name = "Fire"
command = ~B, B, F, x
time = 30

[Command]
name = "Pound"
command = ~B, D, B, y
time = 30

[Command]
name = "Stomp"
command = ~D, U
time = 30

[Command]
name = "GrabPunch"
command = ~F, F, x
time = 30

[Command]
name = "Throw"
command = ~F, a
time = 30

[Command]
name = "Throw"
command = ~B, a
time = 30

[Command]
name = "Throw"
command = /$F, a
time = 30

[Command]
name = "Throw"
command = /$B, a
time = 30

[Command]
name = "Pounce"
command = ~D, F, x
time = 30

[Command]
name = "Pounce"
command = ~D, F, y
time = 30

[Command]
name = "Pounce"
command = ~D, F, a
time = 30

[Command]
name = "Pounce"
command = ~D, F, b
time = 30

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
name = "holdx"
command = /$x
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
name = "CPU1"
command = D, D, U, U, D, U, x, c, y, z, a
time = 1

[Command]
name = "CPU2"
command = D, U, U, D, D, U, x, c, y, z, a
time = 1

[Command]
name = "CPU3"
command = D, D, D, U, U, U, x, c, y, z, a
time = 1

[Command]
name = "CPU4"
command = U, D, D, U, U, U, x, c, y, z, a
time = 1

[Command]
name = "CPU5"
command = D, D, U, U, D, D, x, c, y, z, a
time = 1

[Command]
name = "CPU6"
command = U, D, D, D, D, U, x, c, y, z, a
time = 1

[Command]
name = "CPU7"
command = U, U, U, U, U, D, x, c, y, z, a
time = 1

[Command]
name = "CPU8"
command = U, U, U, U, D, U, x, c, y, z, a
time = 1

[Command]
name = "CPU9"
command = U, U, U, D, U, U, x, c, y, z, a
time = 1

[Command]
name = "CPU10"
command = U, U, D, U, U, U, x, c, y, z, a
time = 1

[Command]
name = "CPU11"
command = U, D, U, U, U, U, x, c, y, z, a
time = 1

[Command]
name = "CPU12"
command = D, U, D, U, D, U, x, c, y, z, a
time = 1

[Command]
name = "CPU13"
command = U, U, D, U, U, U, U, x, c, y, z, a
time = 1

[Command]
name = "CPU14"
command = U, D, D, U, U, U, U, x, c, y, z, a
time = 1

[Command]
name = "CPU15"
command = D, U, D, U, U, U, D, x, c, y, z, a
time = 1

[Command]
name = "CPU16"
command = D, D, D, U, U, U, U, x, c, y, z, a
time = 1

[Command]
name = "CPU17"
command = U, U, D, U, U, D, D, x, c, y, z, a
time = 1

[Command]
name = "CPU18"
command = D, D, D, U, D, D, D, x, c, y, z, a
time = 1

[Command]
name = "CPU19"
command = U, D, D, U, D, U, D, x, c, y, z, a
time = 1

[Command]
name = "CPU20"
command = D, D, D, U, U, U, D, x, c, y, z, a
time = 1

[Command]
name = "CPU21"
command = U, D, U, D, U, U, U, x, c, y, z, a
time = 1

[Command]
name = "CPU22"
command = U, U, U, U, U, U, U, x, c, y, z, a
time = 1

[Command]
name = "CPU23"
command = D, D, D, D, D, D, D, x, c, y, z, a
time = 1

[Command]
name = "CPU24"
command = D, D, D, D, D, D, U, x, c, y, z, a
time = 1

[Command]
name = "CPU25"
command = D, D, D, D, D, U, D, x, c, y, z, a
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

[State -1, AI]
type = VarSet
triggerall = var(21) != 1
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = palno = 12
v = 21
value = 1

;---------------------------------------------------------------------------
;Grab-n-Punch
;“Š‚°
[State -1, GrabNPunch]
type = ChangeState
value = 2010
triggerall = command = "GrabPunch"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(21) != 1 ;AI, don't use melee attacks far away like a moron.
trigger2 = p2bodydist X < 24 ;Use them close up AI
trigger2 = Var(21) = 1
trigger2 = ctrl

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "Throw"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
;trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 4
trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Throw Cancel
[State -1, ThrowCancel]
type = ChangeState
value = 1000
triggerall = command = "Throw"
triggerall = statetype = S
triggerall = ctrl
trigger1 = p2bodydist X > 4
trigger2 = p2bodydist X < 4
trigger2 = (p2statetype = A) || (p2statetype = L)

;---------------------------------------------------------------------------
;Punch
[State -1, Punch]
type = ChangeState
value = 1031
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "Fire"
triggerall = command != "LowHit"
triggerall = command != "GrabPunch"
;triggerall = p2bodydist X > 3
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(21) != 1 ;AI, don't use melee attacks far away like a moron.
trigger2 = p2bodydist X < 24 ;Use them close up AI
trigger2 = Var(21) = 1
trigger2 = ctrl

;---------------------------------------------------------------------------
;AltPunch
[State -1, AltPunch]
type = ChangeState
value = 1000
triggerall = command = "a"
triggerall = command != "Throw"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(21) != 1 ;AI, don't use melee attacks far away like a moron.
trigger2 = p2bodydist X < 24 ;Use them close up AI
trigger2 = Var(21) = 1
trigger2 = ctrl

;---------------------------------------------------------------------------
;Low Hit Cancel Punch
[State -1, LHCPunch]
type = ChangeState
value = 1000
triggerall = command = "LowHit"
triggerall = command != "Fire"
triggerall = command != "GrabPunch"
;triggerall = command = "holdfwd"
triggerall = p2bodydist X > 3
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(21) != 1 ;AI, don't use melee attacks far away like a moron.
trigger2 = p2bodydist X < 24 ;Use them close up AI
trigger2 = Var(21) = 1
trigger2 = ctrl

;---------------------------------------------------------------------------
;Low Hit
[State -1, LowHit]
type = ChangeState
value = 1010
triggerall = command = "LowHit"
;triggerall = command = "holdfwd"
triggerall = command != "GrabPunch"
triggerall = stateno != 1010
triggerall = p2bodydist X < 3
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(21) != 1 ;AI, don't use melee attacks far away like a moron.
trigger2 = p2bodydist X < 24 ;Use them close up AI
trigger2 = Var(21) = 1
trigger2 = ctrl

;---------------------------------------------------------------------------
;Low Hit2
[State -1, LowHit2]
type = ChangeState
value = 1011
triggerall = command = "x"
;triggerall = command = "holdfwd"
trigger1 = stateno = 1010
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(21) != 1 ;AI, don't use melee attacks far away like a moron.
trigger2 = p2bodydist X < 24 ;Use them close up AI
trigger2 = Var(21) = 1
trigger2 = ctrl

;---------------------------------------------------------------------------
;Kick
[State -1, Kick]
type = ChangeState
value = 1020
triggerall = command = "Kick"
triggerall = command != "Pound"
triggerall = command != "Taunt"
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(21) != 1 ;AI, don't use melee attacks far away like a moron.
trigger2 = p2bodydist X < 24 ;Use them close up AI
trigger2 = Var(21) = 1
trigger2 = ctrl

;---------------------------------------------------------------------------
;Air Kick
[State -1, AirKick]
type = ChangeState
value = 1021
triggerall = Var(21) != 1 ;AI never jumps...
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "x"
trigger4 = command = "y"

;---------------------------------------------------------------------------
;Uppercut
[State -1, Uppercut]
type = ChangeState
value = 1030
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = var(21) != 1 ;AI, don't use melee attacks far away like a moron.
trigger2 = p2bodydist X < 24 ;Use them close up AI
trigger2 = Var(21) = 1
trigger2 = ctrl

;---------------------------------------------------------------------------
;;Move Forward when Ducking
;[State -1]
;type = ChangeState
;value = 20
;triggerall = command = "holdfwd"
;;triggerall = command != "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl

;---------------------------------------------------------------------------
;;Move Back when Ducking
;[State -1]
;type = ChangeState
;value = 20
;triggerall = command = "holdback"
;;triggerall = command != "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump when Ducking
[State -1]
type = ChangeState
value = 40
triggerall = command = "holdup"
;triggerall = command != "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype != A
trigger1 = command = "start"
trigger1 = ctrl
trigger2 = command = "Taunt"
trigger2 = ctrl

;---------------------------------------------------------------------------
;Spit Fire
[State -1, Fire]
type = ChangeState
value = 1040
triggerall = command = "Fire"
;triggerall = command != "holddown"
triggerall = command != "GrabPunch"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Ground Pound
[State -1, GroundPound]
type = ChangeState
value = 2400
triggerall = command = "Pound"
;triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

;---------------------------------------------------------------------------
;StompOn
[State -1, StompOn]
type = ChangeState
value = 2500
triggerall = command = "Stomp"
triggerall = alive
triggerall = command != "SuperStomp"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = 40      ;Jumpstart
;trigger2 = statetype = C
;trigger2 = ctrl

;---------------------------------------------------------------------------
;Pounce
[State -1, Pounce]
type = ChangeState
value = 2511
triggerall = command = "Pounce"
;triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------------------------------------
[State -1]; Burn
type = Changestate
value = 3100
trigger1 = command = "Burn"
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = P2statetype = S
triggerall = Statetype = S
;triggerall = p2bodyDist X > 40
;triggerall = p2bodyDist X < 90

;--------------------------------------------------------------------
[State -1]; Slam
type = Changestate
value = 7001
trigger1 = command = "Slam"
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = P2statetype = S
triggerall = Statetype = S

;--------------------------------------------------------------------
[State -1]; Super Stomp
type = Changestate
value = 3300
triggerall = command = "SuperStomp"
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = P2statetype = S
trigger1 = Statetype = S
trigger2 = Statetype = A
trigger3 = Statetype = C

;--------------------------------------------------------------------
[State -1]; EatEm
type = Changestate
value = 7002
trigger1 = command = "Eat"
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = P2statetype = S
triggerall = Statetype = S

;--------------------------------------------------------------------
[State -1]; Power Punch
type = Changestate
value = 7003
trigger1 = command = "PowerPunch"
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = P2statetype = S
triggerall = Statetype = S

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


;=====================================================================
;=====================================================================
; BLOOD COLORS
;=====================================================================
;=====================================================================

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
trigger7 = p2name = "FrostMan"
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
trigger14 = p2name = "Picco"
trigger15 = p2name = "Abyss Form 2"
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
trigger21 = p2name = "EMatt"
trigger22 = p2name = "NoobMO"
trigger23 = p2name = "Noob"
trigger24 = p2name = "Noob Saibot"
color = 0
;add = -255,128,-255
;mul = 0,0,128
add = -255,-255,48
mul = 0,0,48
time = 900

[State -1, TransformerBlood]
type = palFX
triggerall = time = 1
triggerall = Var(16) >= 1
;triggerall = IsHelper(6040)
trigger1 = p2name = "God_Ginrai"
trigger2 = p2name = "Overlord"
trigger3 = p2name = "Fortress_Maximus"
trigger4 = p2name = "Scorponok"
trigger5 = p2name = "Rodimus Prime"
trigger6 = p2name = "Galvatron"
trigger7 = p2name = "Soundwave"
trigger8 = p2name = "Reflector"
trigger9 = p2name = "Chromia"
trigger10 = p2name = "Ironhide"
trigger11 = p2name = "Elita_One"
trigger12 = p2name = "Shockwave"
trigger13 = p2name = "Skywarp"
trigger14 = p2name = "Sunstreaker"
trigger15 = p2name = "Sideswipe"
trigger16 = p2name = "Thundercracker"
trigger17 = p2name = "Starscream"
trigger18 = p2name = "Jazz"
trigger19 = p2name = "Megatron"
trigger20 = p2name = "Optimus Prime"
color = 0
;add = -255,128,-255
;mul = 0,0,128
add = 8,-255,16
mul = 8,0,16
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

