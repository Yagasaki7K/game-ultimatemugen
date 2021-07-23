
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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;----- Initial AI command -----------------------------------------------------

[Command]
name = "AI_1"
command = y+y ;D,D,D,F,F,F,a+b+c
time = 1

[Command]
name = "AI_2"
command = c+y ;D,D,D,F,F,U,a+b+c+x
time = 1

[Command]
name = "AI_3"
command = D,D,D,F,F,F,a+b+z
time = 1

[Command]
name = "AI_4"
command = D,D,D,F,F,D,a+y+z
time = 1

[Command]
name = "AI_5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_13"
command = D,D,D,F,DB,F,a+x
time = 1

[Command]
name = "AI_14"
command = D,D,D,F,B,F,a,z
time = 1

[Command]
name = "AI_15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_16"
command = D,D,D,F,F,F,a+b+c
time = 1

[Command]
name = "AI_17"
command = D,D,D,F,F,F,a+b,y,z
time = 1

[Command]
name = "AI_18"
command = D,D,D,F,F,F,a,x,y,z
time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.

[Command]
name = "super_jump"
command = ~D,U
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DB, B, a
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DB, B, b
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DB, B, c
time = 20

[Command]
name = "a+x"
command = a+x

[Command]
name = "z+c"
command = z+c

[Command]
name = "b+c"
command = b+c

;-| Special Motions |------------------------------------------------------
[Command]
name = "QF_a"
command = ~D, DF, F, a

[Command]
name = "QF_b"
command = ~D, DF, F, b

[Command]
name = "QF_a+b"
command = ~F, DF, D, a+b

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_a+b"
command = ~D, DB, B, a+b

[Command]
name = "FF_ab"
command = y+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "FF_c"
command = ~D, DF, F, c

[Command]
name = "D+a"
command = ~D, DF, F, a;D,a

[Command]
name = "D+b"
command = ~D, DF, F, b;D,b

[Command]
name = "D+c"
command = ~D, DF, F, c;D,c

[Command]
name = "D+x"
command = ~D, DF, F, x;D,x

[Command]
name = "D+y"
command = ~D, DF, F, y;D,y

[Command]
name = "D+z"
command = ~D, DF, F, z;D,z

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


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;===========================================================================

;----------------- activation of the AI --------------------------
[State -1]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
trigger16 = command = "AI_16"
trigger17 = command = "AI_17"
trigger18 = command = "AI_18"
v = 59
value = 3
;----------------------------------------------------------------------
;----------- AI defense ------------------------------------------------
; AI defense ----------------------------------------------------------
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 =  P2BodyDist X <= 75 && Random <= 600
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 130

;-----------------------------------------------------------------------
; AI defense lowered
[State -1]
type = ChangeState
value = 152
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 75 && Random <= 600
trigger1 = Ctrl && P2MoveType = A && StateType = C
triggerall = P2statetype = C
;------------------------------------------------------------------------
; AI Asura path
[State -1]
type = ChangeState
value = 1012
triggerall = command = "QCF_z"
triggerall = power >= 100
trigger1 = var(1) ;
;-------------------------------------------------------------------------
;AI Human Path
[State -1]
type = ChangeState
value = 1014
triggerall = command = "QCF_x"
triggerall = power >= 500
trigger1 = var(1) ;
;-----------------------------------------------------------------------
; AI Shinra tensei
[State -1]
type = ChangeState
value = 215
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 175 && Random <= 600
trigger1 = Ctrl && P2MoveType = A && StateType = C
triggerall = P2statetype = C
;---------------------------------------------------------------------------
;AI chakra
[State -1]
type = ChangeState
value = 1090
triggerall = command = "z+c";"QCF_yz"
triggerall = power >= 10
trigger1 = var(1) ;Use combo condition (above)

;-------------------------------------------------------------------------
;AI Preta path
[State -1]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = power >= 300
trigger1 = var(1) ;

;-------------------------------------------------------------------------
; AI Animal Path
[State -1]
type = ChangeState
value = 1100
triggerall = command = "QF_a"
triggerall = power >= 1000
trigger1 = var(1) ;
;----------------------------------------------
;AI chibaku tensei
[State -1, AI chibaku tensei]
type = ChangeState
value = 1400
triggerall = command = "QCB_xy"
triggerall = power >= 3000 ;1000
trigger1 = var(1) ;Use combo condition (above)
;--------------------------------------------------
;AI Naraka Path
[State -1]
type = ChangeState
value = 1015
triggerall = command = "QF_a+b"
triggerall = power >= 3000
triggerall = life <= 300
;triggerall = life <= 300
trigger1 = var(1) ;
;----------------------------------------------------------------------------

;-------------- fim da AI ---------------------------------------------------

;----------------------------------------------------------------------------

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;preta path
[State -1, preta]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = power >= 300
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;asura path
[State -1, asura]
type = ChangeState
value = 1012
triggerall = command = "QCF_z"
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;human path
[State -1, human]
type = ChangeState
value = 1014
triggerall = command = "QCF_x"
triggerall = power >= 500
;triggerall = command = "QCB_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;naraka path
[State -1, naraka]
type = ChangeState
value = 1015
triggerall = command = "QF_a+b"
triggerall = power >= 3000
triggerall = life <= 300
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;animal path
[State -1, animal]
type = ChangeState
value = 1100
triggerall = command = "QF_a"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;chakra
[State -1,chakra charge]
type = ChangeState
value = 1090
triggerall = command = "z+c";"QCF_yz"
trigger1 = ctrl = 1
triggerall = power >= 10
trigger1 = var(1) ;Use combo condition (above)

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
;throwing p2
[State -1, throwing p2]
type = ChangeState
value = 194;800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;Stand Punch  x
[State -1, Stand Punch x]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Punch y
[State -1, Stand Punch y]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Bansho tenin
[State -1, Banshou tenin]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;chibaku tensei
[State -1, chibaku tensei]
type = ChangeState
value = 1400;1020
triggerall = power >= 3000
triggerall = command = "QCB_xy"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Stand Kick a
[State -1, Stand Kick a]
type = ChangeState
value = 280
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Kick b
[State -1, Stand Kick b]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
; shinra tensei
[State -1, shinra tensei]
type = ChangeState
value = 215
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;taunt
[State -1, taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Punch x
[State -1, Crouching Punch x]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Punch y
[State -1, Crouching Punch y]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Punch z
[State -1, Crouching Punch z]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Kick a
[State -1, Crouching Kick a]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Kick b
[State -1, Crouching Kick b]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Kick c
[State -1, Crouching Kick c]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Punch x
[State -1, Jump Punch x]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Punch y
[State -1, Jump Punch y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Punch z
[State -1, Jump Punch z]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Kick a
[State -1, Jump Kick a]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Kick b
[State -1, Jump Kick b]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;----------------------------------------------------------------------------
;Jump Kick c
[State -1, Jump Kick c]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;----------------------------------------------------------------------------

