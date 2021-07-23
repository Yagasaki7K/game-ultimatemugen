;claire redfield
;made by armin_iuf

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15

command.buffer.time = 1

;AIset---------------------------------------------------------------------
[Command]
name = "cpu"
command = F,F,F,F
time = 1

[Command]
name = "cpu1"
command = F,F,F,D
time = 1

[Command]
name = "cpu2"
command = F,F,D,D
time = 1

[Command]
name = "cpu3"
command = F,D,D,D
time = 1

[Command]
name = "cpu4"
command = D,D,D,D
time = 1

[Command]
name = "cpu5"
command = D,D,D,U
time = 1

[Command]
name = "cpu6"
command = D,D,U,U
time = 1

[Command]
name = "cpu7"
command = D,U,U,U
time = 1

[Command]
name = "cpu8"
command = U,U,U,U
time = 1

[Command]
name = "cpu9"
command = U,U,U,B
time = 1

[Command]
name = "cpu10"
command = U,U,B,B
time = 1

[Command]
name = "cpu11"
command = U,B,B,B
time = 1

[Command]
name = "cpu12"
command = B,B,B,B
time = 1

[Command]
name = "cpu13"
command = D,D,F,U
time = 1

[Command]
name = "cpu14"
command = D,U,B,U
time = 1

[Command]
name = "cpu15"
command = B,U,D,D
time = 1

[Command]
name = "cpu16"
command = U,F,F,B
time = 1

[Command]
name = "cpu17"
command = U,U,D,F
time = 1

[Command]
name = "cpu18"
command = D,F,B,B
time = 1

[Command]
name = "cpu19"
command = D,B,B,U
time = 1

[Command]
name = "cpu20"
command = F,U,D,B
time = 1

[Command]
name = "cpu21"
command = B,F,F,B
time = 1

[Command]
name = "cpu22"
command = F,B,B,F
time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "superx"
command = ~D, DF, F, D, DF, F, x
time = 30
[Command]
name = "supery"
command = ~D, DF, F, D, DF, F, y
time = 30
[Command]
name = "superz"
command = ~D, DF, F, D, DF, F, z
time = 30
[Command]
name = "superx"
command = ~D, DF, F, D, DF, F, ~x
time = 30
[Command]
name = "supery"
command = ~D, DF, F, D, DF, F, ~y
time = 30
[Command]
name = "superz"
command = ~D, DF, F, D, DF, F, ~z
time = 30

[Command]
name = "2qcbka"
command = ~D, DB, B, D, DB, B, a
time = 30
[Command]
name = "2qcbkb"
command = ~D, DB, B, D, DB, B, b
time = 30
[Command]
name = "2qcbkc"
command = ~D, DB, B, D, DB, B, c
time = 30
[Command]
name = "2qcbka"
command = ~D, DB, B, D, DB, B, ~a
time = 30
[Command]
name = "2qcbkb"
command = ~D, DB, B, D, DB, B, ~b
time = 30
[Command]
name = "2qcbkc"
command = ~D, DB, B, D, DB, B, ~c
time = 30

[Command]
name = "ultraa"
command = ~D, DF, F, D, DF, F, a
time = 30
[Command]
name = "ultrab"
command = ~D, DF, F, D, DF, F, b
time = 30
[Command]
name = "ultrac"
command = ~D, DF, F, D, DF, F, c
time = 30
[Command]
name = "ultraa"
command = ~D, DF, F, D, DF, F, ~a
time = 30
[Command]
name = "ultrab"
command = ~D, DF, F, D, DF, F, ~b
time = 30
[Command]
name = "ultrac"
command = ~D, DF, F, D, DF, F, ~c
time = 30

[Command]
name = "MAXx"
command = ~D, DB, B, x+y
time = 30

[Command]
name = "MAXy"
command = ~D, DB, B, y+z
time = 30

[Command]
name = "MAXz"
command = ~D, DB, B, x+z
time = 30

[Command]
name = "MAXux"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "MAXuy"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "MAXuz"
command = ~D, DB, B, D, DB, B, z
time = 30



;-| Special Motions |------------------------------------------------------

[Command]
name = "groundluncher_x"
command = ~F, D, DF, x
time=30

[Command]
name = "groundluncher_y"
command = ~F, D, DF, y
time=30

[Command]
name = "groundluncher_z"
command = ~F, D, DF, z
time=30

[Command]
name = "SHOTGUN_X"
command = ~D, DF, F, x
time=30

[Command]
name = "SHOTGUN_Y"
command = ~D, DF, F, y
time=30

[Command]
name = "SHOTGUN_Z"
command = ~D, DF, F, z
time=30

[Command]
name = "HANDGUN_X"
command = ~D, DB, B, x
time=30

[Command]
name = "HANDGUN_Y"
command = ~D, DB, B, y
time=30

[Command]
name = "HANDGUN_Z"
command = ~D, DB, B, z
time=30

[Command]
name = "qcba"
command = ~D, DB, B, a
time = 30
[Command]
name = "qcbb"
command = ~D, DB, B, b
time = 30
[Command]
name = "qcbc"
command = ~D, DB, B, c
time = 30
[Command]
name = "qcba"
command = ~D, DB, B, ~a
time = 30
[Command]
name = "qcbb"
command = ~D, DB, B, ~b
time = 30
[Command]
name = "qcbc"
command = ~D, DB, B, ~c
time = 30

[Command]
name = "kick_a"
command = ~D, DF, F, a
time=30

[Command]
name = "kick_b"
command = ~D, DF, F, b
time=30

[Command]
name = "kick_c"
command = ~D, DF, F, c
time=30

[Command]
name = "gun"
command = x+y
time=30

[Command]
name = "gun"
command = y+z
time=30

[Command]
name = "gun"
command = x+z
time=30

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
name = "s"
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
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------

[State -1, racket launcher]
type = ChangeState
value = 3400
triggerall = !var(50)
triggerall = command = "superx" || command = "supery"|| command = "superz"
triggerall = power>=1500
trigger1 = statetype!= A
trigger1 = ctrl
trigger2= (stateno=200)&&movecontact
trigger3= (stateno=210)&&movecontact
trigger4= (stateno=220)&&movecontact
trigger5= (stateno=400)&&movecontact
trigger6= (stateno=410)&&movecontact
trigger7= (stateno=420)&&movecontact

[State -1, bowgun]
type = ChangeState
value = 3600
triggerall = !var(50)
triggerall = command = "2qcbka" || command = "2qcbkb"|| command = "2qcbkc"
triggerall = power>=1000
trigger1 = statetype!= A
trigger1 = ctrl

[State -1, ultra]
type = ChangeState
value = 3300
triggerall = !var(50)
triggerall = command = "ultraa" || command = "ultrab"|| command = "ultrac"
triggerall = power>=2000
trigger1 = statetype!= A
trigger1 = ctrl
trigger2= (stateno=230)&&movecontact
trigger3= (stateno=240)&&movecontact
trigger4= (stateno=250)&&movecontact
trigger5= (stateno=430)&&movecontact
trigger6= (stateno=440)&&movecontact
trigger7= (stateno=450)&&movecontact

;Charging power
[State -1, Charging power]
type = ChangeState
value = 3500
triggerall = !var(50)
triggerall = command = "MAXx"|| command = "MAXy"|| command = "MAXz"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 240 && movecontact 
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = stateno = 440 && movecontact
trigger8 = stateno = 450 && movecontact

;ultra power
[State -1, ultra power]
type = ChangeState
value = 9000
triggerall = !var(50)
triggerall = command = "MAXux"|| command = "MAXuy"|| command = "MAXuz"
triggerall = power >= 2000
trigger1 = ctrl

[State -1, groundlauncher]
type = ChangeState
value = 1030
triggerall = !var(50)
triggerall = command = "groundluncher_x" ||  command ="groundluncher_y" || command ="groundluncher_z"
trigger1 = statetype!= A
trigger1 = ctrl

[State -1, SHOTGUN]
type = ChangeState
value = 1000
triggerall = !var(50)
triggerall = command = "SHOTGUN_X" ||  command ="SHOTGUN_Y" || command ="SHOTGUN_Z"
trigger1 = statetype!= A
trigger1 = ctrl
trigger2= (stateno=250)&&movecontact
trigger3= (stateno=210)&&movecontact
trigger4= (stateno=220)&&movecontact
trigger5= (stateno=221)&&movecontact

[State -1, HANDGUN]
type = ChangeState
value = 1010
triggerall = !var(50)
triggerall = command = "HANDGUN_X" ||  command ="HANDGUN_Y" || command ="HANDGUN_Z"
trigger1 = statetype!= A
trigger1 = ctrl

; Jump gun
[State -1, Jump gun]
type = ChangeState
value = 1014
triggerall = !var(50)
triggerall = command = "HANDGUN_X" ||  command ="HANDGUN_Y" || command ="HANDGUN_Z"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(30)>-3

[State -1, bowgun]
type = ChangeState
value = 1200
triggerall = !var(50)
triggerall = command = "qcba" ||  command ="qcbb" || command ="qcbc"
trigger1 = statetype!= A
trigger1 = ctrl

[State -1, kick]
type = ChangeState
value = 1300
triggerall = !var(50)
triggerall = command = "kick_a" ||  command ="kick_b" || command ="kick_c"
trigger1 = statetype!= A
trigger1 = ctrl
trigger2= (stateno=230)&&movecontact
trigger3= (stateno=240)&&movecontact
trigger4= (stateno=250)&&movecontact
trigger5= (stateno=430)&&movecontact
trigger6= (stateno=440)&&movecontact
trigger7= (stateno=450)&&movecontact
trigger8= (stateno=251)&&movecontact

; Throw
[State -1, Throw]
type = ChangeState
value = 700
triggerall = !var(50)
triggerall = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

; Stand gun
[State -1, Stand gun]
type = ChangeState
value = 201
triggerall = !var(50)
triggerall = command = "gun" &&command != "holddown"
trigger1 = ctrl && statetype = S

; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(50)
triggerall = command = "x" &&command != "holddown"
trigger1 = ctrl && statetype = S
trigger2= (stateno=400)&&movecontact
trigger3= (stateno=430)&&movecontact
trigger4= (stateno=230)&&movecontact

; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(50)
triggerall = command = "x" &&command != "holddown"
trigger1 = ctrl && statetype = S
trigger2= (stateno=400)&&movecontact
trigger3= (stateno=430)&&movecontact
trigger4= (stateno=230)&&movecontact

; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !var(50)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2= (stateno=200)&&movecontact
trigger3= (stateno=400)&&movecontact
trigger4= (stateno=430)&&movecontact
trigger5= (stateno=240)&&movecontact
trigger6= (stateno=230)&&movecontact

; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !var(50)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2= (stateno=240)&&movecontact
trigger3= (stateno=210)&&movecontact
trigger4= (stateno=410)&&movecontact
trigger5= (stateno=440)&&movecontact

; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 221
triggerall = !var(50)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2= (stateno=220)&&movecontact

; Stand Light Kick 
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(50)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !var(50)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2= (stateno=400)&&movecontact
trigger3= (stateno=200)&&movecontact
trigger4= (stateno=430)&&movecontact
trigger5= (stateno=230)&&movecontact

; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !var(50)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2= (stateno=240)&&movecontact
trigger3= (stateno=410)&&movecontact
trigger4= (stateno=440)&&movecontact

; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 251
triggerall = !var(50)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2= (stateno=250)&&movecontact

; Crouching gun
[State -1, Crouching gun]
type = ChangeState
value = 401
triggerall = !var(50)
triggerall = command = "gun"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !var(50)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2= (stateno=450)&&movecontact
trigger3= (stateno=200)&&movecontact
trigger4= (stateno=430)&&movecontact
trigger5= (stateno=440)&&movecontact

; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !var(50)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2=(stateno=400)&&movecontact
trigger3=(stateno=430)&&movecontact

; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !var(50)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2= (stateno=200)&&movecontact
trigger3= (stateno=221)&&movecontact
trigger4= (stateno=230)&&movecontact
trigger5= (stateno=240)&&movecontact
trigger6= (stateno=400)&&movecontact
trigger7= (stateno=410)&&movecontact
trigger8= (stateno=450)&&movecontact

; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !var(50)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2= (stateno=400)&&movecontact

; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !var(50)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2= (stateno=430)&&movecontact
trigger3= (stateno=400)&&movecontact
trigger3= (stateno=230)&&movecontact
trigger4= (stateno=200)&&movecontact

; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !var(50)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2= (stateno=210)&&movecontact
trigger3= (stateno=240)&&movecontact
trigger4= (stateno=410)&&movecontact
trigger5= (stateno=440)&&movecontact

; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !var(50)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2= (stateno=640)&&movecontact

; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !var(50)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2= (stateno=600)&&movecontact
trigger3= (stateno=630)&&movecontact

; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !var(50)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2= (stateno=600)&&movecontact
trigger3= (stateno=610)&&movecontact
trigger4= (stateno=640)&&movecontact

; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !var(50)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !var(50)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2= (stateno=600)&&movecontact
trigger3= (stateno=610)&&movecontact
trigger4= (stateno=630)&&movecontact

; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !var(50)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 ||stateno = 620 ||stateno = 630 || stateno = 640
trigger2 = movecontact

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(50)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(50)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(50)
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl



;=====================================================================
;A.I.
;=====================================================================

[State -1, AISET]
type = varset
triggerALL = !var(50)
trigger1 = command="cpu1"
trigger2 = command="cpu2"
trigger3 = command="cpu3"
trigger4 = command="cpu4"
trigger5 = command="cpu5"
trigger6 = command="cpu6"
trigger7 = command="cpu7"
trigger8 = command="cpu8"
trigger9 = command="cpu9"
trigger10 = command="cpu10"
trigger11 = command="cpu11"
trigger12 = command="cpu12"
trigger13 = command="cpu13"
trigger14 = command="cpu14"
trigger15 = command="cpu15"
trigger16 = command="cpu16"
trigger17 = command="cpu17"
trigger18 = command="cpu18"
trigger19 = command="cpu19"
trigger20 = command="cpu20"
trigger21 = command="cpu21"
trigger22 = command="cpu22"
var(50)=1

[State -1, Run Fwd]
type = changestate
value = 100
triggerall = VAR(50) && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 100
trigger1 = random<=5

[State -1, Run back]
type = changestate
value = 105
triggerall = VAR(50) && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x < 150
trigger1 = random<=5

[State -1, Guard]
type = changestate
value = 120
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && inguarddist
trigger1 = ( ctrl || stateno=21) && (stateno != [120, 155])
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = random < (ifelse((p2stateno = [200, 699]), 200, ifelse((p2stateno = [1000, 2999]), 450, 800)))

[State -1, SLP]
type = changestate
value = 200
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-8, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = (P2MoveType != H) && (Enemynear,P2Dist x > 0)
triggerall = !(Enemynear,P2dist x < 5)
triggerall = random < 60
trigger1 = ctrl || stateno=21
trigger2= (stateno=400)&&movecontact
trigger3= (stateno=430)&&movecontact
trigger4= (stateno=230)&&movecontact

[State -1, SMP]
type = changestate
value = 210
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-11, 56]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = random < 50
trigger1 = ctrl || stateno=21
trigger2= (stateno=200)&&movecontact
trigger3= (stateno=400)&&movecontact
trigger4= (stateno=430)&&movecontact
trigger5= (stateno=240)&&movecontact
trigger6= (stateno=230)&&movecontact

[State -1, SHP3]
type = changestate
value = 220
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist y = [ -50, 50]) && (p2statetype = S || p2statetype = C)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = Random < 30
trigger1 = (Ctrl || StateNo=21 || StateNo=100) && (p2bodydist x = [0, 70]) && !(Enemynear,Anim = 5300)
trigger2= (stateno=240)&&movecontact
trigger3= (stateno=210)&&movecontact
trigger4= (stateno=410)&&movecontact
trigger5= (stateno=440)&&movecontact

[State -1, SHP3]
type = changestate
value = 221
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist y = [ -50, 50]) && (p2statetype = S || p2statetype = C)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = Random < 20
trigger1 = (Ctrl || StateNo=21 || StateNo=100) && (p2bodydist x = [0, 70]) && !(Enemynear,Anim = 5300)
trigger2= (stateno=220)&&movecontact

[State -1, SLK]
type = changestate
value = 230
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 45]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall) && !(enemynear, hitfall)
triggerall = !(Enemynear,P2dist x < 5)
trigger1 = ctrl && random < 50

[State -1, SMK]
type = changestate
value = 240
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = random < 40
trigger1 = (Ctrl || StateNo=21 || StateNo=100)
trigger2= (stateno=400)&&movecontact
trigger3= (stateno=200)&&movecontact
trigger4= (stateno=430)&&movecontact
trigger5= (stateno=230)&&movecontact

[State -1, SHK]
type = changestate
value = 250
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 59]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = random < 30
trigger1 = Ctrl || StateNo=21
trigger2= (stateno=240)&&movecontact
trigger3= (stateno=410)&&movecontact
trigger4= (stateno=440)&&movecontact

[State -1, SHK]
type = changestate
value = 251
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 59]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = random < 30
trigger1 = Ctrl || StateNo=21
trigger2= (stateno=250)&&movecontact

[State -1, CLP]
type = changestate
value = 400
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-11, 40]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = P2MoveType != H && (Enemynear,P2Dist x > 0)
triggerall = !(Enemynear,P2dist x < 5)
triggerall = random < 60
trigger1 = ctrl
trigger2= (stateno=400)&&movecontact
trigger3= (stateno=430)&&movecontact
trigger4= (stateno=230)&&movecontact

[State -1, CMP]
type = changestate
value = 410
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-40, 48]) && P2statetype != A && !(enemynear, hitfall)
triggerall = Random < 50
trigger1 = Ctrl
trigger2=(stateno=400)&&movecontact
trigger3=(stateno=430)&&movecontact

[State -1, CHP]
type = changestate
value = 420
triggerall = var(50) && numenemy && Enemynear,anim != 5300
triggerall = statetype != A && roundstate = 2 && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = Enemynear,vel x <= 0 || P2StateType != A
triggerall = (p2bodydist x = [0, 33]) && (p2dist y = [ -50, 50]) && P2StateType != A
triggerall = Random < 40
trigger1 = Ctrl
trigger2= (stateno=200)&&movecontact
trigger3= (stateno=221)&&movecontact
trigger4= (stateno=230)&&movecontact
trigger5= (stateno=240)&&movecontact
trigger6= (stateno=400)&&movecontact
trigger7= (stateno=410)&&movecontact
trigger8= (stateno=450)&&movecontact

[State -1, CLK]
type = changestate
value = 430
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = PrevStateNo != 245 && (StateNo != [700,701]) && P2MoveType != H && !(StateNo=[700,701])
triggerall = (p2bodydist x = [-17, 54]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = !(Enemynear,P2dist x < 5)
trigger1 = (ctrl || StateNo=21 || StateNo=100 && !(Enemynear,Anim=5300))
triggerall = !(Enemynear,Anim=5300) && !(!(Enemynear,ctrl) && P2MoveType = I && (P2StateNo = [1000,4999]) && Enemynear,time > 60)
triggerall = random < 80

[State -1, CMK]
type = changestate
value = 440
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-2, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = !(Enemynear,Anim=5300) && !(!(Enemynear,ctrl) && P2MoveType = I && (P2StateNo = [1000,4999]) && Enemynear,time > 60)
triggerall = Random < 50
trigger1 = Ctrl
trigger2= (stateno=430)&&movecontact
trigger3= (stateno=400)&&movecontact
trigger3= (stateno=230)&&movecontact
trigger4= (stateno=200)&&movecontact

[State -1, CHK]
type = changestate
value = 450
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2 && (StateNo != [700,701])
triggerall = (p2bodydist x = [35, 56]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
triggerall = Enemynear,Anim != 5300
trigger1 = (Ctrl || StateNo = 21 || StateNo = 100) && !(enemynear, hitfall) && p2statetype = S
triggerall = Random < 60
trigger2= (stateno=210)&&movecontact
trigger3= (stateno=240)&&movecontact
trigger4= (stateno=410)&&movecontact
trigger5= (stateno=440)&&movecontact

[State -1, AMP]
type = changestate
value = 610
triggerall = var(50) && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 40]) && (p2bodydist y = [ -50, 10]) && p2statetype != L
triggerall = vel y < 2
trigger1 = ctrl & P2Statetype=A
trigger1 = random < (ifelse((vel x > 0 && p2statetype = A), 250, 100))

[State -1, AHP]
type = changestate
value = 620
triggerall = var(50) && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [-30, 110]) && (p2dist y = [ -50, 80]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && (p2bodydist x = [-5, 60])
trigger2= (stateno=610)&&movecontact
trigger3= (stateno=640)&&movecontact
triggerall = random < (ifelse((vel x > 0 && p2statetype = A), 250, 100))

[State -1, ALK]
type = changestate
value = 630
triggerall = var(50) && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [-20,ifelse(P2Movetype=A,70,40)]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl
trigger1 = random < 60

[State -1, AMK]
type = changestate
value = 640
triggerall = var(50) && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [ -50, 130]) && (p2bodydist y = [ -50, 100]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (CTRL || StateNo = [120,140]) && P2Statetype!=A && vel y>2
trigger1 = (p2dist x = [ -70, 10]) && p2dist y < 70
trigger1 = random < 100

[State -1, AHK]
type = changestate
value = 650
triggerall = var(50) && numenemy 
triggerall = statetype = A && roundstate = 2 && (CTRL)
triggerall = p2statetype != L && !(enemynear, hitfall)
trigger1 = P2StateType !=A  && vel y > -2
trigger1 = (P2bodydist x - facing*(vel x*facing - Enemynear,vel x * Enemynear,facing) * 4) = [20,60]
trigger1 = P2dist y - vel y * 4 = [10,40]
trigger1 = Random < (160 + 350 * (P2MoveType != I && (Abs(Enemynear,animtime)=[5,12])))
trigger2 = P2StateType =A
trigger2 = (P2bodydist x - facing*(vel x*facing - Enemynear,vel x * Enemynear,facing) * 4) = [20,60]
trigger2 = (P2dist y - (vel y - Enemynear,vel y) * Ifelse(P2Dist y>=0,1,-1) * 8 ) = [-70,60]
trigger2 = Random < 320

[State -1, throw]
type = changestate
value =700
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && statetype = S && stateno != 100 && ctrl
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
trigger1 = (p2bodydist x = [0, 10]) && (p2bodydist y = [ -25, 25]) && random < (250)

; Stand gun
[State -1, Stand gun]
type = ChangeState
value = 201
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype = L
triggerall = !(Enemynear,P2dist x < 5)
trigger1 = ctrl && random < 100

; crouch gun
[State -1, Stand gun]
type = ChangeState
value = 401
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype = L
triggerall = !(Enemynear,P2dist x < 5)
trigger1 = ctrl && random < 100

[State -1, groundlauncher]
type = ChangeState
value = 1030
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L
triggerall = (enemynear, vel y > -1) 
triggerall = !((P2StateNo = [5300,5309]) || (Enemynear,Anim = [5300,5309]))
triggerall = !(Enemynear,PrevStateNo = [5300,5309])
trigger1 = Ctrl && P2dist x > 150
trigger1 = Random < 20

[State -1, SHOTGUN]
type = ChangeState
value = 1000
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !((P2StateNo = [5300,5309]) || (Enemynear,Anim = [5300,5309]))
triggerall = !(Enemynear,PrevStateNo = [5300,5309])
trigger1 = Ctrl
trigger1 = Random < 50
trigger1 = (var(31)>-1 && p2bodydist x = [30, 200])  || ((p2statetype = L || p2bodydist x >=200) && var(31)<=-1)

[State -1, HANDGUN]
type = ChangeState
value = 1010
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L
triggerall = (enemynear, vel y > -1) 
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !((P2StateNo = [5300,5309]) || (Enemynear,Anim = [5300,5309]))
triggerall = !(Enemynear,PrevStateNo = [5300,5309])
trigger1 = Ctrl && P2dist x > 160
trigger1 = Random < 50
trigger1 = var(30)>-3 || p2statetype = L || p2bodydist x >=200

[State -1, HANDGUN]
type = ChangeState
value = 1011
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L
triggerall = (enemynear, vel y > -1) 
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !((P2StateNo = [5300,5309]) || (Enemynear,Anim = [5300,5309]))
triggerall = !(Enemynear,PrevStateNo = [5300,5309])
trigger1 = Ctrl && P2dist x > 160
trigger1 = Random < 600
trigger1 = var(30)>-3
trigger1 = stateno=1010 && (time=[25,49])

[State -1, HANDGUN]
type = ChangeState
value = 1012
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L
triggerall = (enemynear, vel y > -1) 
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !((P2StateNo = [5300,5309]) || (Enemynear,Anim = [5300,5309]))
triggerall = !(Enemynear,PrevStateNo = [5300,5309])
trigger1 = Ctrl && P2dist x > 160
trigger1 = Random < 600
trigger1 = var(30)>-3
trigger1 = stateno=1011 && (time=[19,40])

; Jump gun
[State -1, Jump gun]
type = ChangeState
value = 1014
triggerall = var(50) && numenemy
triggerall = statetype = A && roundstate = 2
trigger1 = ctrl && (p2bodydist x >= 60)
triggerall = random < (ifelse((vel x > 0 && p2statetype = A), 20, 200))
trigger1 = var(30)>-3

[State -1, bowgun]
type = ChangeState
value = 1200
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !(Enemynear,PrevStateNo = [5300,5309])
trigger1 = Ctrl && P2dist x > 160
trigger1 = Random < 20

[State -1, kick]
type = ChangeState
value = 1300
triggerall = var(50) && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = random < 20
trigger1 = Ctrl || StateNo=21
trigger2= (stateno=250)&&movecontact
trigger3= (stateno=251)&&movecontact

[State -1, racket launcher]
type = ChangeState
value = 3400
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1500
triggerall = P2statetype != L && Enemynear,vel y > -1
triggerall = p2bodydist x > -80
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = P2StateNo != [5100,5299]
trigger1 = (p2dist y = [ -100, 0]) && (enemynear, vel y = [ -7, 2]) && (enemynear, vel x > -2) && !(enemynear, ctrl)
trigger1 = ctrl && (p2bodydist x = [15, 205]) && random < (10 + 300*(P2Life<48))

[State -1, bowgun]
type = ChangeState
value = 3600
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000
triggerall = P2statetype != L && Enemynear,vel y > -1
triggerall = p2bodydist x > -80
triggerall = P2StateNo != [5100,5299]
trigger1 = (p2dist y = [ -100, 0]) && (enemynear, vel y = [ -7, 2]) && (enemynear, vel x > -2) && !(enemynear, ctrl)
trigger1 = ctrl && (p2bodydist x = [15, 205]) && random < (10 + 300*(P2Life<48))

[State -1, ultra]
type = ChangeState
value = 3300
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && power >= 2000 && statetype != A
triggerall = (enemynear, statetype != L) && ((p2stateno != [5030, 5119]) || P2StateNo=5040)
triggerall = (p2bodydist x = [-11, 70]) && (P2Dist Y = [-60,0]) && EnemyNear,Vel Y >=0 && (p2stateno != 40)
trigger1 = (ctrl || StateNo=21 || StateNo=100) && !(enemynear, ctrl) && (p2bodydist x = [0, 60]) && (p2dist y = [ -40, 0]) && random < (150)
trigger2 = (ctrl || StateNo=21 || StateNo=100)  && !(enemynear, ctrl) && (p2stateno = [120, 155]) && p2statetype != A && random < (250)
trigger3 = (ctrl || StateNo=21 || StateNo=100)  && (p2bodydist x = [-10, 40]) && Random< (80 + 300*(Enemynear,vel x >3) + 600*(P2Movetype=A && P2StateNo<1000))
trigger4 = (ctrl || StateNo=21 || StateNo=100)  && (P2StateNo=5040 || P2StateNo=5200 || P2StateNo=5201 || P2StateNo=5210)
trigger4 = random < ((80 + 100*(P2Life<480) + 80*(Life<P2Life) ))

;Charging power
[State -1, Charging power]
type = ChangeState
value = 3500
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && power >= 1000
triggerall = (enemynear, statetype != L) && ((p2stateno != [5030, 5119]) || P2StateNo=5040)
triggerall = (p2bodydist x = [-11, 70]) && (P2Dist Y = [-60,0]) && EnemyNear,Vel Y >=0 && (p2stateno != 40)
trigger1 = (ctrl || StateNo=21 || StateNo=100) && !(enemynear, ctrl) && (p2bodydist x = [0, 60]) && (p2dist y = [ -40, 0]) && random < (150)
trigger2 = (ctrl || StateNo=21 || StateNo=100)  && !(enemynear, ctrl) && (p2stateno = [120, 155]) && p2statetype != A && random < (250)
trigger3 = (ctrl || StateNo=21 || StateNo=100)  && (p2bodydist x = [-10, 40]) && Random< (80 + 300*(Enemynear,vel x >3) + 600*(P2Movetype=A && P2StateNo<1000))
trigger4 = (ctrl || StateNo=21 || StateNo=100)  && (P2StateNo=5040 || P2StateNo=5200 || P2StateNo=5201 || P2StateNo=5210)
trigger4 = random < ((80 + 100*(P2Life<480) + 80*(Life<P2Life) ))

;ultra power
[State -1, ultra power]
type = ChangeState
value = 9000
triggerall = var(50) && numenemy
triggerall = roundstate = 2 && power >= 2000
triggerall = (enemynear, statetype != L) && ((p2stateno != [5030, 5119]) || P2StateNo=5040)
triggerall = (p2bodydist x = [-11, 100]) && (P2Dist Y = [-60,0]) && EnemyNear,Vel Y >=0 && (p2stateno != 40)
trigger1 = (ctrl || StateNo=21 || StateNo=100) && !(enemynear, ctrl) && (p2bodydist x = [0, 60]) && (p2dist y = [ -40, 0]) && random < (150)
trigger2 = (ctrl || StateNo=21 || StateNo=100)  && !(enemynear, ctrl) && (p2stateno = [120, 155]) && p2statetype != A && random < (250)
trigger3 = (ctrl || StateNo=21 || StateNo=100)  && (p2bodydist x = [-10, 40]) && Random< (80 + 300*(Enemynear,vel x >3) + 600*(P2Movetype=A && P2StateNo<1000))
trigger4 = (ctrl || StateNo=21 || StateNo=100)  && (P2StateNo=5040 || P2StateNo=5200 || P2StateNo=5201 || P2StateNo=5210)
trigger4 = random < ((80 + 100*(P2Life<480) + 80*(Life<P2Life) ))