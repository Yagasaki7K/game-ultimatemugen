
;=========================
;RYUJIX CMD FILE - NO AI
;=========================

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

;-| Hold Button |----------------------------------------------------------

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holds"
command = /s
time = 1

;-| CPU |--------------------------------------------------------------

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "s2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holds2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

;********************************************************************************************
;=============================[Hyper Moves]=========================================
;------------------------------------------
[Command]
name = "drill"
command = ~F, D, DB, F, D, DB, x
time = 60

[Command]
name = "drill"
command = ~F,  D, DB, F, D, DB, y
time = 60

[Command]
name = "drill"
command = ~F, D, B, F, D, B, x
time = 60

[Command]
name = "drill"
command = ~F,  D, B, F, D, B, y
time = 60

[Command]
name = "drill"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, x
time = 60

[Command]
name = "drill"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, x
time = 60

;Shortcut
[Command]
name = "drill"
command = ~D, DB, B, z
time = 15
;---------------------------------
[Command]
name = "kadkad"
command = ~D, DF, F, D, DF, F, x
time = 35

[Command]
name = "kadkad"
command = ~D, DF, F, D, DF, F, y
time = 35

;Shortcut
[Command]
name = "kadkad"
command = ~D, DF, F, c
time = 15
;---------------------------------
;=================[Special Moves]==========
[Command]
name = "snakex"
command = ~D, DB, B, x
time = 15

[Command]
name = "snakey"
command = ~D, DB, B, y
time = 15

[Command]
name = "snakea"
command = ~D, DB, B, a
time = 15

[Command]
name = "dust1"
command = ~F, D, DF, a
time = 15

[Command]
name = "dust2"
command = ~F, D, DF, b
time = 15

[Command]
name = "rev1"
command = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "rev2"
command = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "rev1"
command = ~D, DF, F, a
time = 15

[Command]
name = "rev2"
command = ~D, DF, F, b
time = 15
;----------------------

[Command]
name = "swat1"
command = ~D, DF, F, x
time = 15

[Command]
name = "swat2"
command = ~D, DF, F, y
time = 15
;----------------------------

[Command]
name = "head"
command = ~F, DF, D, DB, B, F, y
time = 30

[Command]
name = "head"
command = ~F, DF, D, DB, B, F, x
time = 30

[Command]
name = "head"
command = ~D, DF, F, z
time = 15

;----------------------------

[Command]
name = "knife1"
command = ~F, D, DF, x
time = 15

[Command]
name = "knife2"
command = ~F, D, DF, y
time = 15

;------------------------
[Command]
name = "qcf_c"
command = ~D, DF, F, c
time = 15

[Command]
name = "qcb_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "qcb_y"
command = ~D, DB, B, y
time = 15

[Command]
name = "qcb_a"
command = ~D, DB, B, a
time = 15

[Command]
name = "qcb_b"
command = ~D, DB, B, b
time = 15

[Command]
name = "dp_x"
command = ~F, D, DF, x
time = 15

[Command]
name = "dp_b"
command = ~F, D, DF, b
time = 15

[Command]
name = "dp_a"
command = ~F, D, DF, a
time = 15

[Command]
name = "dp_y"
command = ~F, D, DF, y
time = 15
;-------------------------------------------
[Command]
name = "max"
command = x+y+a
time = 1

[Command]
name = "out1"
command = ~D, DB, B, D, DB, B, x
time = 35

[Command]
name = "out2"
command = ~D, DB, B, D, DB, B, y
time = 35

;--------------------------------------------
;=========================================================================================
;##############################################################################
;RUN n DASH BACK
;____________________________________________________________________________________

;Run
[Command]
name = "FF"
command = F, F
time = 15

;Back
[Command]
name = "BB"
command = B, B
time = 10

;-|Button Combination|-----------------------------------------------

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "dodge"
command = x+y
time = 1

[Command]
name = "knockdown"
command = y+b
time = 1

[Command]
name = "roll"
command = x+a
time = 1

[Command]
name = "ac"
command = a+c
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "xa"
command = x+a
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "yz"
command = y+z
time = 1

;POWER UP
[Command]
name = "xyz"
command = x+y+z
time = 1

[Command]
name = "gun"
command = ~D,D, x
time = 20

[Command]
name = "gun"
command = ~D,D, y
time = 20

;------------------------------------------------------------------------------
;HOLD BUTTONS

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
name = "hold_s"
command = /$s
time = 1

;==================================================================================
;HOLD DIR

[Command]
name = "/DB"
command = /DB
time = 1

;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;HOLD DIR + BUTTON

[Command]
name = "holdfwd_x"
command = /$F, x
time = 1

[Command]
name = "holdfwd_y"
command = /$F, y
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1


[Command]
name = "fwd_x"
command = /F,x

[Command]
name = "fwd_z"
command = /F,z

[Command]
name = "back_z"
command = /B,z

[Command]
name = "back_a"
command = /B,a

[Command]
name = "back_x"
command = /B,x

[Command]
name = "fwd_y"
command = /F,y

[Command]
name = "back_y"
command = /B,y

[Command]
name = "gunx"
command = ~D,D, x+y
time = 20

[Command]
name = "down_y"
command = /D, y

[Command]
name = "down_b"
command = /D, b

[Command]
name = "down_z"
command = /D, z

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;--------------------------<> COMMANDS <>------------------------------
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;=========================
; ---<> HYPER MOVES <>---
;=========================

;Drill SDM
[State -1,kadkad]
type = ChangeState
value = 4500
;triggerall = var(9) != 1
triggerall = power >= 1000
triggerall = var(10) > 0 || life <= 200
triggerall = command = "drill"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;Drill DM
[State -1,kadkad]
type = ChangeState
value = 4000
;triggerall = var(9) != 1
triggerall = power >= 1000
triggerall = var(10) <= 0
triggerall = life > 200
triggerall = command = "drill"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;------------------------------------------------------------
;Kadkad SDM
[State -1,kadkad]
type = ChangeState
value = 3050
;triggerall = var(9) != 1
triggerall = power >= 1000
triggerall = var(10) > 0 || life <= 200
triggerall = command = "kadkad"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;Kadkad DM
[State -1,kadkad]
type = ChangeState
value = 3000
;triggerall = var(9) != 1
triggerall = power >= 1000
triggerall = var(10) <= 0
triggerall = life > 200
triggerall = command = "kadkad"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440


;=========================
; ---<> SPECIAL MOVES <>---
;=========================

;Head
[State -1,Head]
type = ChangeState
value = 2300
;triggerall = var(9) != 1
triggerall = command = "head"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;Snake Arm (b)
[State -1,forward]
type = ChangeState
value = 1000
;triggerall = var(9) != 1
triggerall = command = "snakea"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 2000
trigger8 = movecontact
trigger8 = stateno = 440

;Snake Arm (y)
[State -1,downward]
type = ChangeState
value = 1010
;triggerall = var(9) != 1
triggerall = command = "snakey"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 230
trigger8 = movecontact
trigger8 = stateno = 2000
trigger9 = movecontact
trigger9 = stateno = 440

;Snake Arm (x)
[State -1,upward]
type = ChangeState
value = 1020
;triggerall = var(9) != 1
triggerall = command = "snakex"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 2000
trigger8 = movecontact
trigger8 = stateno = 440

;Knife1
[State -1,knife1]
type = ChangeState
value = 2400
;triggerall = var(9) != 1
triggerall = command = "knife1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;Knife2
[State -1,knife2]
type = ChangeState
value = 2500
;triggerall = var(9) != 1
triggerall = command = "knife2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;dustkick b
[State -1,Dust2]
type = ChangeState
value = 2000
;triggerall = var(9) != 1
triggerall = command = "dust2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;dustkick a
[State -1,Dust1]
type = ChangeState
value = 2050
;triggerall = var(9) != 1
triggerall = command = "dust1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;Reversal 1
[State -1,rev1]
type = ChangeState
value = 2100
;triggerall = var(9) != 1
triggerall = command = "rev1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;Reversal 2
[State -1,rev2]
type = ChangeState
value = 2150
;triggerall = var(9) != 1
triggerall = command = "rev2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;swat1
[State -1,swat1]
type = ChangeState
value = 2200
;triggerall = var(9) != 1
triggerall = command = "swat1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;SWAT 1.5
[State -1, swat1.5]
type = ChangeState
value = 7200
;triggerall = var(9) != 1
triggerall = power >= 1000
triggerall = life <= 200
triggerall = Var(10) > 0
triggerall = command = "gunx"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;swat2
[State -1,swat2]
type = ChangeState
value = 2250
;triggerall = var(9) != 1
triggerall = command = "swat2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;GUN
[State -1, GUN]
type = ChangeState
value = 7100
;triggerall = var(9) != 1
triggerall = command = "gun"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 270
trigger4 = movecontact
trigger4 = time <= 7
trigger5 = movecontact
trigger5 = stateno = 703
trigger6 = movecontact
trigger6 = stateno = 280
trigger7 = movecontact
trigger7 = stateno = 440

;========================
; ADVANCE/EXTRA MOVES
;========================
;MAX
[State -1]
type = ChangeState
value = 707
;triggerall = var(9) != 1
triggerall = var(10) <= 0
triggerall = power >= 1000
trigger1 = command = "holdx"
trigger1 = command = "holdy"
trigger1 = command = "holda"
trigger1 = stateno = 0
trigger1 = ctrl

;Charge XY
[State -1]
type = ChangeState
value = 704
;triggerall = var(9) != 1
triggerall = power < 3000
trigger1 = command = "holdx"
trigger1 = command = "holdy"
trigger1 = stateno = 0
trigger1 = ctrl
;---------------------------------
[State -1,rollB Counter]
type = ChangeState
value = 710
triggerall = var(9) != 1
triggerall = power >= 500
triggerall = command = "roll"
triggerall = life > 0
triggerall = command = "holdback"
trigger1 = stateno = 150
trigger2 = stateno = 152

[State -1,RollF counter]
type = ChangeState
value = 711
triggerall = var(9) != 1
triggerall = power >= 500
triggerall = command = "roll"
triggerall = life > 0
triggerall = command = "holdfwd"
trigger1 = stateno = 150
trigger2 = stateno = 151

[State -1,CD counter]
type = ChangeState
value = 712
triggerall = var(9) != 1
triggerall = power >= 500
triggerall = command = "knockdown"
triggerall = life > 0
trigger1 = stateno = 150
trigger2 = stateno = 151

[State -1,rollB]
type = ChangeState
value = 701
;triggerall = var(9) != 1
triggerall = command = "roll"
triggerall = life > 0
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,RollF]
type = ChangeState
value = 706
;triggerall = var(9) != 1
triggerall = stateno = 100
triggerall = command = "roll"
triggerall = life > 0
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,RollF]
type = ChangeState
value = 700
;triggerall = var(9) != 1
triggerall = stateno != 100
triggerall = command = "roll"
triggerall = life > 0
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,Sidestep]
type = ChangeState
value = 702
;triggerall = var(9) != 1
triggerall = command = "roll"
triggerall = life > 0
trigger1 = statetype = S
trigger1 = ctrl
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;=============================================================================
;-------------[Throws]------------------------
;===========================================================================
;GrabY
[State -1, GrabY ]
type = ChangeState
value = 300
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;GrabB
[State -1, GrabB ]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;===========================================================================
;========================[BASIC ATTACKS]==================================

[State -1,Knockdown]
type = ChangeState
value = 280
;triggerall = var(9) != 1
trigger1 = command = "knockdown" 
trigger1 = statetype = S
trigger1 = ctrl 

;lp fwd
[State -1,16]
type = ChangeState
value = 215
triggerall = var(9) != 1
triggerall = NumHelper(1901) = 0
triggerall = command = "fwd_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 250
trigger2 = movecontact
trigger3 = stateno = 270
trigger3 = movecontact
trigger3 = time <= 7
trigger4 = movecontact
trigger4 = stateno = 440

;Lp Close
[State -1,Low Punch CLose]
type = ChangeState
value = 210
;triggerall = var(9) != 1
triggerall = p2bodydist x <= 20
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 420
trigger2 = movecontact
trigger2 = command != "holddown"

;Lp
[State -1,Lowpunch]
type = ChangeState
value = 200
;triggerall = var(9) != 1
triggerall = p2bodydist x > 20
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

;lk close
[State -1,17]
type = ChangeState
value = 230
;triggerall = var(9) != 1
triggerall = command = "a"
triggerall = p2bodydist x <= 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command !=  "holddown"
trigger2 = stateno = 420
trigger2 = movecontact

;lk
[State -1,18]
type = ChangeState
value = 220
triggerall = p2bodydist x > 15
;triggerall = var(9) != 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

;Hp close
[State -1,19]
type = ChangeState
value = 250
;triggerall = var(9) != 1
triggerall = command = "y"
triggerall = p2bodydist x <= 20
triggerall = stateno != 250 && stateno != 240
trigger1 = statetype = S
trigger1 = ctrl

;Hp 
[State -1,20]
type = ChangeState
value = 240
;triggerall = var(9) != 1
triggerall = p2bodydist x > 20
triggerall = stateno != 250 && stateno != 240
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl

;Hk close
[State -1,21]
type = ChangeState
value = 270
;triggerall = var(9) = 0
triggerall = command = "b"
triggerall = p2bodydist x <= 10
trigger1 = statetype = S
trigger1 = ctrl

;Hk 
[State -1,22]
type = ChangeState
value = 260
;triggerall = var(9) != 1
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,CLP]
type = ChangeState
value = 400
;triggerall = var(9) != 1
triggerall = command = "x"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = command = "holddown"
trigger2 = time >= 10
trigger3 = stateno = 420
trigger3 = time >= 10
trigger3 = command = "holddown"

[State -1,CLK]
type = ChangeState
value = 420
;triggerall = var(9) != 1
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "holddown"
trigger2 = stateno = 420
trigger2 = time >= 10
trigger3 = command = "holddown"
trigger3 = stateno = 400
trigger3 = time >= 10

[State -1,CHP]
type = ChangeState
value = 440
;triggerall = var(9) != 1
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl

[State -1,CHK]
type = ChangeState
value = 460
;triggerall = var(9) != 1
triggerall = command = "b"
triggerall = statetype = C
trigger1 = ctrl

[State -1,27]
type = ChangeState
value = 680
;triggerall = var(9) != 1
triggerall = command = "knockdown"
triggerall = statetype = A
trigger1 = ctrl
;----------------------------------------
;Horizontal
[State -1,28]
type = ChangeState
value = 630
;triggerall = var(9) != 1
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl
trigger1 = vel x != 0
trigger2 = stateno = 201

[State -1,28]
type = ChangeState
value = 650
;triggerall = var(9) != 1
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl
trigger1 = vel x != 0
trigger2 = stateno = 201

[State -1,28]
type = ChangeState
value = 670
;triggerall = var(9) != 1
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl
trigger1 = vel x != 0
trigger2 = stateno = 201

[State -1,28]
type = ChangeState
value = 600
;triggerall = var(9) != 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

[State -1,30]
type = ChangeState
value = 620
;triggerall = var(9) != 1
triggerall = vel x = 0
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

[State -1,31]
type = ChangeState
value = 640
;triggerall = var(9) != 1
triggerall = vel x = 0
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

[State -1,32]
type = ChangeState
value = 660
;triggerall = var(9) != 1
triggerall = vel x = 0
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

[State -1,33]
type = ChangeState
value = 195
;triggerall = var(9) != 1
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = stateno != 195
trigger1 = ctrl

[State -1,34]
type = ChangeState
value = 100
;triggerall = var(9) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
;trigger1 = command = "holddown"
trigger1 = ctrl

[State -1,35]
type = ChangeState
value = 105
;triggerall = var(9) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
;trigger1 = command = "holddown"
trigger1 = ctrl
