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

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "Kikosho"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "PsychoEx"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "DVortex"   ;Same name as above
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "Hoyoku"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "Senretsu"   ;Same name as above
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "Insanity"   ;Same name as above
command = ~D, DF, F, D, DF, F, c
time = 30
[Command]
name = "Pcrush1"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 30

[Command]
name = "Pcrush2"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 30

[Command]
name = "Pcrush3"   ;Same name as above
command = ~D, DB, B, D, DB, B, z;~F, D, DF, F, D, DF, y
time = 30
[Command]
name = "Hazan1"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "Hazan2"
command = ~D, DB, B, D, DB, B, b
time = 30

[Command]
name = "Hazan3"
command = ~D, DB, B, D, DB, B, c
time = 30

[Command]
name = "PDim"
command = ~D, D, x+y
time = 20

[Command]
name = "PDim"
command = ~D, D, x+z
time = 20

[Command]
name = "PDim"
command = ~D, D, y+z
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_c"
command = ~F, D, DF, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, B, F, a
time =  20

[Command]
name = "FF_b"
command = F, B, F, b
time = 20

[Command]
name = "FF_c"
command = F, B, F, c
time =20
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

[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+z
time = 1

[Command]
name = "roll";Required (do not remove)
command = a+b
time = 1

[Command]
name = "roll";Required (do not remove)
command = b+c
time = 1

[Command]
name = "roll";Required (do not remove)
command = a+c
time = 1

[Command]
name = "counter"
command = x+a
time =1

[Command]
name = "counter"
command = y+b
time =1

[Command]
name = "counter"
command = z+c
time =1
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

[Command]
name = "Fwd"
command = F
time = 1

[Command]
name = "Back"
command = B
time = 1

[Command]
name = "Up"
command = U
time = 1

[Command]
name = "Down"
command = D
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
name = "sjump"
command = $D, $U
time = 8

[command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU11"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU12"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU2"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU13"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU14"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU3"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU15"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU16"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU4"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU17"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU18"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU5"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU19"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU20"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU6"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU21"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU22"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU7"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU23"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU24"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU8"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU25"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU26"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU9"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU27"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU28"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU10"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU29"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU30"
command = s, s, s, s, s, s, s, s
time = 1

;---------------------------------------------------------------------------

; Commands
[Statedef -1]

[State -1]
type = VarSet
var(57) = 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
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
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
trigger31 = TeamSide = 2 && IsHomeTeam = 1

; Stand Still--If you win, STOP MOVING!!!
[State -1]
type = ChangeState
value = 0
triggerall = Var(57) = 1
triggerall = roundstate = 3
trigger1 = statetype != A
trigger1 = ctrl

; You're boring her.....
[State -1, random taunt]
type = changestate
value = 195
triggerall = Var(57) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X >= 50
triggerall = random <= 300
triggerall = life >= p2life+300
trigger1 = p2stateno = 5050
trigger2 = p2stateno = [5100,5101]
trigger3 = p2stateno = 5110 || p2stateno = 5020 || p2stateno = 5030


;Ground Combo
[State -1,1]
type = ChangeState
value = 400
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,25]
trigger1 = random < 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300


[State -1,1]
type = ChangeState
value = 200
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -50 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,20]
trigger1 = random < 200
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,20]
trigger2 = random < 200


[State -1,2]
type = ChangeState
value = 430
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 400
trigger1 = movecontact
trigger1 = P2BodyDist x < 50
trigger2 = P2BodyDist X = [0,40]
trigger2 = random < 500 && enemynear, statetype = L
trigger2 = ctrl 

[State -1,2]
type = ChangeState
value = 230
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 200
trigger1 = movecontact

[State -1,3]
type = ChangeState
value = 410
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 430
trigger1 = movecontact

[State -1,3]
type = ChangeState
value = 210
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 230
trigger1 = movecontact

[State -1,32]
type = ChangeState
value = 420
triggerall = var(57) = 1 && random = [0,400]
triggerall = statetype != A && roundstate =2
trigger1 = stateno = 410 || stateno = 210
trigger1 = movecontact

[State -1,32]
type = ChangeState
value = 220
triggerall = var(57) = 1 && random = [401,700]
triggerall = statetype != A && roundstate =2
trigger1 = stateno = 410 || stateno = 210
trigger1 = movecontact

[State -1,32]
type = ChangeState
value = 450
triggerall = var(57) = 1 && random = [701,999]
triggerall = statetype != A && roundstate =2
trigger1 = stateno = 410 || stateno = 210
trigger1 = movecontact

[State -1,36]
type = ChangeState
value = 260
triggerall = var(57) = 1 && roundstate =2
trigger1 = statetype != A
trigger1 = movehit = 1
trigger1 = stateno = 420
trigger1 = random < 900

;AirCombo

[State -1,41]
type = ChangeState
value = 600
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = A
triggerall = P2BodyDist X = [0,40]
trigger1 = ctrl = 1
trigger1 = P2BodyDist Y = [-50,10]

[State -1]
type = ChangeState
value = 630
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 600
trigger1 = movecontact = 1

[State -1]
type = ChangeState
value = 610
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 630
trigger1 = movecontact = 1


[State -1]
type = ChangeState
value = 640
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 610 
trigger1 = movecontact = 1


[State -1]
type = ChangeState
value = 620
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 640 
trigger1 = movecontact = 1
trigger1 = p2bodydist y < -50 || p2bodydist y > 40



;Recover
[State -1]
type = ChangeState
value = 5210
triggerall = canrecover = 1 && roundstate =2
triggerall = Var(57) = 1
triggerall = random < 999
triggerall = alive
triggerall = time > 10
trigger1 = stateno = 5050


;Counter Strike 1
[State -1, Counter]
type = ChangeState
value = 950
triggerall = (Var(57)=1) && (power >= 1500)
triggerall = random < 400 && enemynear, statetype !=A && p2dist X < 70
trigger1 = stateno = [150,153]

; Throw
[State -1]
type = ChangeState
value = 860
triggerall = Var(57) = 1
triggerall = random <= 400
triggerall = (p2bodydist X = [0,20]) && (p2statetype = A) && (p2bodydist Y = [-40,40])
trigger1 = statetype = A
trigger1 = ctrl

; Throw
[State -1]
type = ChangeState
value = ifelse(random <= 300,850,800)
triggerall = Var(57) = 1
triggerall = random <= 200
triggerall = (p2bodydist X = [0,20]) && (p2statetype != A)
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------

; Guard triggers for AI
[State -2, Stand guard]
type = ChangeState
triggerall = var(57) > 0 && p2bodydist X < 70  
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = ctrl = 1
value = 130

[State -2, S-to-C guard]
type = ChangeState
triggerall = var(57) > 0 && p2bodydist X < 70 
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 150
value = 152

[State -2, Crouch guard]
type = ChangeState
triggerall = var(57) > 0 && p2bodydist X < 70 
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = ctrl = 1
value = 131

[State -2, C-to-S guard]
type = ChangeState
triggerall = var(57) > 0 && p2bodydist X < 70 
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = stateno = 152
value = 150

[State -2, Air guard]
type = ChangeState
triggerall = var(57) > 0 && p2bodydist X < 70 
triggerall = StateType = A
triggerall = P2Movetype = A
trigger1 = ctrl = 1
value = 132

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = Var(57) = 1 
triggerall = random <= 400 && stateno !=100
triggerall = p2bodydist X > 25 
trigger1 = statetype = S
trigger1 = ctrl = 1

;Kikkoken_Z
[State -1]
type = ChangeState
value = 1002
triggerall = !NumHelper(11000)
triggerall = Var(50) = 1
triggerall = numproj = 0
triggerall = Var(57) = 1 
triggerall = random <= 300 && stateno !=100
triggerall = p2bodydist X > 95 
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;Kikkoken_Z
[State -1]
type = ChangeState
value = 1042
triggerall = !NumHelper(11000)
triggerall = Var(50) = 1
triggerall = numproj = 0
triggerall = Var(57) = 1 
triggerall = random <= 300 && stateno !=100
triggerall = p2bodydist X > 95 
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;Kikkoken_Z
[State -1]
type = ChangeState
value = 1040
triggerall = !NumHelper(11000)
triggerall = Var(50) = 1
triggerall = numproj = 0
triggerall = Var(57) = 1 
triggerall = random <= 350 && stateno !=100
triggerall = p2bodydist X > 95 
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;Shichisei Sunkuu Kyaku
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2020
triggerall = command = "Hoyoku" || command = "Senretsu" || command = "Insanity" 
triggerall = power >= 3000 && Var(50) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = A, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;Shichisei Sunkuu Kyaku
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "PDim" 
triggerall = power >= 3000 && Var(50) = 1
triggerall = statetype != A
trigger1 = ctrl

;Psycho Crusher Lvl1
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2090
triggerall = command = "Pcrush1" 
triggerall = power >= 1000 && Var(50) = 1
trigger1 = ctrl
trigger2 = hitdefattr = SCA, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;Psycho Crusher Lvl2
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2091
triggerall = command = "Pcrush2" 
triggerall = power >= 2000 && Var(50) = 1
trigger1 = ctrl
trigger2 = hitdefattr = SCA, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;Psycho Crusher Lvl3
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2093
triggerall = command = "Pcrush3" 
triggerall = power >= 3000 && Var(50) = 1
trigger1 = ctrl
trigger2 = hitdefattr = SCA, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1
;Psycho Rain Lvl1
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2030
triggerall = command = "Kikosho" 
triggerall = power >= 1000 && Var(50) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;Psycho Rain Lvl1
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2045
triggerall = command = "PsychoEx" 
triggerall = power >= 2000 && Var(50) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;Psycho Rain Lvl1
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2050
triggerall = command = "DVortex" 
triggerall = power >= 3000 && Var(50) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1
;Psycho Rain Lvl1
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2060
triggerall = command = "Hoyoku" 
triggerall = power >= 1000 && Var(50) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;Psycho Rain Lvl1
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2070
triggerall = command = "Senretsu" 
triggerall = power >= 2000 && Var(50) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;Psycho Rain Lvl1
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2080
triggerall = command = "Insanity" 
triggerall = power >= 3000 && Var(50) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1
;Psycho Rain Lvl1
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2010
triggerall = command = "Kikosho" 
triggerall = power >= 1000 && Var(50) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = hitdefattr = A, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;Psycho Rain Lvl2
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2011
triggerall = command = "PsychoEx" 
triggerall = power >= 2000 && Var(50) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = hitdefattr = A, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;Psycho Rain Lvl3
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2012
triggerall = command = "DVortex" 
triggerall = power >= 3000 && Var(50) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = hitdefattr = A, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;Hazan TenshoKyaku
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "Hazan1" 
triggerall = power >= 1000 && Var(50) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;Hazan TenshoKyaku
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2001
triggerall = command = "Hazan2"
triggerall = power >= 2000 && Var(50) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1



;Hazan TenshoKyaku
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2002
triggerall = command = "Hazan3"
triggerall = power >= 3000 && Var(50) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;TenShoKyaku A
[State -1]
type = ChangeState
value = 1020
triggerall = Var(50) = 1
triggerall = command = "FF_a" || command = "FF_b" || command = "FF_c"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;TenShoKyaku A
[State -1]
type = ChangeState
value = 1010
triggerall = Var(50) = 1
triggerall = command = "upper_a"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;TenShoKyaku B
[State -1]
type = ChangeState
value = 1011
triggerall = Var(50) = 1
triggerall = command = "upper_b"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;TenShoKyaku C
[State -1]
type = ChangeState
value = 1012
triggerall = Var(50) = 1
triggerall = command = "upper_c"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;Spinning Birk Kick A
[State -1]
type = ChangeState
value = 1060
triggerall = Var(50) = 1
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;Spinning Birk Kick A
[State -1]
type = ChangeState
value = 1061
triggerall = Var(50) = 1
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;Spinning Birk Kick A
[State -1]
type = ChangeState
value = 1062
triggerall = Var(50) = 1
triggerall = command = "QCB_c"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;Spinning Birk Kick A
[State -1,Followup]
type = VarSet
v = 0
value = 1
triggerall = time >= 5
trigger1 = command = "QCB_a" || command = "QCB_b" || command = "QCB_c"
trigger1 = stateno = [1060,1062]


;Senenshu A
[State -1]
type = ChangeState
value = 1030
triggerall = Var(50) = 1
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;Senenshu A
[State -1]
type = ChangeState
value = 1031
triggerall = Var(50) = 1
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;Senenshu A
[State -1]
type = ChangeState
value = 1032
triggerall = Var(50) = 1
triggerall = command = "QCF_c"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;Kikkoken_X
[State -1]
type = ChangeState
value = 1000
triggerall = !NumHelper(11000)
triggerall = Var(50) = 1
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;---------------------------------------------------------------------------
;Kikkoken_Y
[State -1]
type = ChangeState
value = 1001
triggerall =!NumHelper(11000)
triggerall = Var(50) = 1
triggerall = command = "QCF_y"
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1



;---------------------------------------------------------------------------
;Kikkoken_Z
[State -1]
type = ChangeState
value = 1002
triggerall = !NumHelper(11000)
triggerall = Var(50) = 1
triggerall = numproj = 0
triggerall = command = "QCF_z"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;Kikkoken_X
[State -1]
type = ChangeState
value = 1050
triggerall = !NumHelper(11000)
triggerall = Var(50) = 1
triggerall = command = "QCF_x"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699]) 
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;---------------------------------------------------------------------------
;Kikkoken_Y
[State -1]
type = ChangeState
value = 1051
triggerall =!NumHelper(11000)
triggerall = Var(50) = 1
triggerall = command = "QCF_y"
triggerall = numproj = 0
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699]) 
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1



;---------------------------------------------------------------------------
;Kikkoken_Z
[State -1]
type = ChangeState
value = 1052
triggerall = !NumHelper(11000)
triggerall = Var(50) = 1
triggerall = numproj = 0
triggerall = command = "QCF_z"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699]) 
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;Dark Wave_X
[State -1]
type = ChangeState
value = 1040
triggerall = !NumHelper(11000)
triggerall = Var(50) = 1
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1

;---------------------------------------------------------------------------
;Dark Wave_Y
[State -1]
type = ChangeState
value = 1041
triggerall =!NumHelper(11000)
triggerall = Var(50) = 1
triggerall = command = "QCB_y"
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1



;---------------------------------------------------------------------------
;Dark Wave_Z
[State -1]
type = ChangeState
value = 1042
triggerall = !NumHelper(11000)
triggerall = Var(50) = 1
triggerall = numproj = 0
triggerall = command = "QCB_z"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 100) || (stateno = 105)
trigger2 = movecontact
trigger3 = NumHelper(221) = 1
trigger3 = helper(221), movecontact = 1


;Counter Strike 
[State -1, Counter]
type = ChangeState
value = 950
triggerall = (command = "counter") && (command = "holdfwd") && (power >= 1000)
trigger1 = stateno = [150,153]


;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100+(statetype=A)
trigger1 = (command = "FF") && (stateno !=[100,106]) && (Var(2) < 2)
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105+(statetype=A)
trigger1 = (command = "BB") && (stateno !=[100,106]) && (Var(2) < 2)
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "recovery"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"

;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 860
triggerall = command = "recovery"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"

;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = command = "roll"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"

;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,499]) && (Var(5) =4)
trigger2 = movecontact 
trigger3 = stateno = 100 || stateno = 105
;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
trigger7 = stateno = 100 || stateno = 105
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1]
type = ChangeState
value = ifelse(Var(50)=1,220,225)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
trigger7 = stateno = 100 || stateno = 105
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 400) && MoveContact
trigger4 = (stateno = [200,499]) && (Var(5) =4)
trigger4 = movecontact 
trigger5 = stateno = 100 || stateno = 105
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
trigger7 = stateno = 100 || stateno = 105
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1]
type = ChangeState
value = ifelse(p2bodydist X < 10,255,250)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,420]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
trigger7 = stateno = 100 || stateno = 105
trigger8 = NumHelper(221) = 1 && statetype != A
trigger8 = helper(221), movecontact = 1

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 105
;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
trigger7 = stateno = 100 || stateno = 105
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
trigger7 = stateno = 100 || stateno = 105
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 400) && MoveContact
trigger4 = (stateno = [200,499]) && (Var(5) =4)
trigger4 = movecontact 
trigger5 = stateno = 100 || stateno = 105
;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
trigger7 = stateno = 100 || stateno = 105
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,420]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
trigger7 = stateno = 100 || stateno = 105
trigger8 = NumHelper(221) = 1 && statetype != A
trigger8 = helper(221), movecontact 

;---------------------------------------------------------------------------

;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) && (Var(5) =4)
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 630) && MoveContact
trigger4 = (stateno = [600,699]) && (Var(5) =4)
trigger4 = movecontact 

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1]
type = ChangeState
value = ifelse(Var(50)=1,620,625)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = 640) && MoveContact
trigger6 = (stateno = [600,699]) && (Var(5) =4)
trigger6 = movecontact 

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = [600,699]) && (Var(5) =4)
trigger3 = movecontact 
;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = [600,699]) && (Var(5) =4)
trigger5 = movecontact 
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = 640) && MoveContact
trigger6 = (stateno = [600,699]) && (Var(5) =4)
trigger6 = movecontact 
trigger7 = NumHelper(221) = 1 && statetype = A
trigger7 = helper(221), movecontact 

[State -1]
type = ChangeState
value = 260 
trigger1 = command = "sjump"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 420
trigger2 = (movecontact) && (command = "holdup")





