
;================================
;TERRY X CMD FILE 
;================================
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

;[Command]
;name = "s2"
;command = s
;time = 1

; Only room for one more unique command label. :(
; So, let's not hog the last spot with the back-up AI activation code.

;-| Hey Buster! |--------------------------------------

[Command]
name = "buster"
command = ~D,F,D,F,a
time = 25

[Command]
name = "buster"
command = ~D,F,D,F,b
time = 25

;=====================[SHORTCUTS]======================
;NOTE: DELETE THIS GROUP OF CMDS TO REMOVE SHORTCUT DMS
;      OR MODIFY THEM TO USE ROLL/DODGE.
;=================[MODE/GROOVE]====================

[Command]
name = "groove"
command = /F, s
time = 1

[Command]
name = "mode"
command = /B, s
time = 1

[Command]
name = "taunt2"
command = /D, s
time = 1

[Command]
name = "taunt"
command =  s
time = 1

[Command]
name = "2k1"
command = x+y
time = 1

;=================[Hyper Moves]====================

;-------------------------------------

[Command]
name = "wait"
command = /x
time = 1

[Command]
name = "wait"
command = /y
time = 1

[Command]
name = "wait"
command = /z
time = 1

[Command]
name = "wait"
command = /a
time = 1

[Command]
name = "wait"
command = /b
time = 1

[Command]
name = "wait"
command = /c
time = 1

;=================[Special Moves]==================

[Command]
name = "esdm"
command = ~D,DF,F,D,DB,B, x
time = 30

[Command]
name = "QCBHCFx"
command = ~DB,B,D,F,x
time = 30

[Command]
name = "QCBHCFy"
command = ~DB,B,D,F,y
time = 30

[Command]
name = "QCBHCFxy"
command = ~DB,B,D,F,y+x
time = 30

[Command]
name = "2QCFab"
command = ~D,F,D,F,a+b
time = 25

[Command] 
name = "2QCFx" 
command = ~D,F,D,F,x 
time = 25 

[Command]
name = "2QCFy" 
command = ~D,F,D,F,y 
time = 25 

[Command] 
name = "2QCFxy" 
command = ~D,F,D,F,x+y 
time = 25 

[Command]
name = "2QCBb"
command = ~D,B,D,B,b
time = 25

[Command]
name = "2QCBa"
command = ~D,B,D,B,a
time = 25

[Command]
name = "2QCBab"
command = ~D,B,D,B,a+b
time = 25

[Command]
name = "DPab"
command = ~F,D,DF,a+b
time = 20

[Command]
name = "DPa"
command = ~F,D,DF,a
time = 20

[Command]
name = "DPb"
command = ~F,D,DF,b
time = 20

[Command]
name = "DPx"
command = ~F,D,DF,x
time = 20

[Command]
name = "DPy"
command = ~F,D,DF,y
time = 20

[Command]
name = "HCFa"
command = ~B,D,F,a
time = 15

[Command]
name = "HCFb"
command = ~B,D,F,b
time = 15

[Command]
name = "HCFab"
command = ~B,D,F,a+b
time = 15

[Command]
name = "HCFx"
command = ~B,D,F,x
time = 20

[Command]
name = "HCFy"
command = ~B,D,F,y
time = 20

[Command]
name = "QCFab"
command = ~D,DF,F,a+b
time = 15

[Command]
name = "QCFa"
command = ~D,DF,F,a
time = 15

[Command]
name = "QCFb"
command = ~D,DF,F,b
time = 15

[Command]
name = "QCFxy"
command = ~D,DF,F,x+y
time = 15

[Command]
name = "QCFy"
command = ~D,DF,F,y
time = 15

[Command]
name = "QCFx"
command = ~D,DF,F,x
time = 15

[Command]
name = "QCFy"
command = ~D,DF,F,y
time = 15

[Command]
name = "QCBa"
command = ~D,DB,B,a
time = 15

[Command]
name = "QCBb"
command = ~D,DB,B,b
time = 15

[Command]
name = "QCBxy"
command = ~D,DB,B,x+y
time = 15

[Command]
name = "QCBx"
command = ~D,DB,B,x
time = 15

[Command]
name = "QCBy"
command = ~D,DB,B,y
time = 15

[Command]
name = "DDx"
command = ~D,D,x
time = 15

[Command]
name = "DDy"
command = ~D,D,y
time = 15

[Command]
name = "DDa"
command = ~D,D,a
time = 15

[Command]
name = "DDb"
command = ~D,D,b
time = 15

[Command]
name = "DUx"
command = ~15$D, U, x
time = 15

[Command]
name = "DUy"
command = ~15$D, U, y
time = 15

[Command]
name = "slidea"
command = ~15$B, F, a
time = 15

[Command]
name = "slideb"
command = ~15$B, F, b
time = 15

[Command]
name = "motwx"
command = ~B, F, x
time = 15

[Command]
name = "motwy"
command = ~B, F, y
time = 15

[Command]
name = "motwf"
command = /F, x
time = 15

[Command]
name = "motwf"
command = /F, y
time = 15

[Command]
name = "ashoot"
command = ~D,DB,B, a+b
time = 15

[Command]
name = "aslash"
command = ~D,DF,F, a+b
time = 15

;--------------------------------------------
[Command]
name = "smash"
command = /DF, y
time = 2

[Command]
name = "roll99"
command = a+b
time = 1

;--------------------------------------------
;RUN 
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
name = "max"
command = x+y+a
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 10

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
name = "schange"
command = x+b
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
name = "armor"
command = a+b+y
time = 1

[Command]
name = "counter"
command = x+y+b
time = 1

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
;DIR

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "downfwd"
command = DF
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "downback"
command = DB
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
name = "down_y"
command = /D, y

[Command]
name = "down_b"
command = /D, b

[Command]
name = "down_z"
command = /D, z


;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;==============================================================================================
; COMBO VARIABLE 
;==============================================================================================

[State -1, Combo1]
type = Varset
trigger1 = 1
var(39) = 0

[State -1, Combo2]
type = Varset
trigger1 = stateno = 250 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger2 = stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger3 = stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 210 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger5 = stateno = 230 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger6 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger7 = stateno = 420 && animelemtime(3) > 0  && animelemtime(4) < 0
trigger8 = stateno = 240 && animelemtime(3) = [1,4]
trigger9 = stateno = 460 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger10 = stateno = 280 && animelemtime(11) > 0 && animelemtime(12) < 0
trigger11 = stateno = 703 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger12 = stateno = 200 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger13 = var(41) = 1 && (stateno = 150 || stateno = 152) 
trigger14 = stateno = 215 && animelemtime(6) > 0 && animelemtime(7) < 0 
trigger15 = stateno = 225 && animelemtime(7) > 0 && animelemtime(9) < 0 
trigger16 = stateno = 470 && animelemtime(2) > 0 && animelemtime(3) < 0 
trigger17 = var(40) > 0 && stateno = 736 && movecontact
trigger18 = var(21) = 1 && (stateno = 150 || stateno = 152) 
trigger19 = stateno = [100,101]
trigger20 = stateno = 2080
ignorehitpause = 1
var(39) = var(39) | 1

;----------------------
;COUNTER MODE COMBO VAR
;----------------------

[State -1, C.Combo1]
type = Varset
trigger1 = 1
var(42) = 0

[State -1, C.Combo2]
type = Varset
trigger1 = (stateno = 4900 || stateno = 4910) && animelemtime(6) > 0
trigger2 = (stateno = 4150 || stateno = 4160) && animelemtime(3) > 0
trigger3 = (stateno = 4300 || stateno = 4310) && animelemtime(6) > 0
trigger4 = (stateno = 4953 || stateno = 4963) && animelemtime(6) > 0
trigger5 = (stateno = 3500 || stateno = 3510) && animelemtime(8) > 0
trigger6 = stateno = 3501 && animelemtime(5) > 0
trigger7 = (stateno = 2110 || stateno = 2210) && movecontact
ignorehitpause = 1
var(42) = var(42) | 1

[State -1, KOF2K1 Special Cancel]
type = Varset
trigger1 = var(42) = 1
ignorehitpause = 1
var(45) = var(45)|1

[State -1, KOF2K1 Special Cancel]
type = Varset
trigger1 = var(42) = 0
var(45) = 0

;==============================================================================================
; DESPERATION MOVES
;==============================================================================================

;shining knuckle				6290 	rsctevf ^%
[State -1, SK]
type = ChangeState
value = 6290
;triggerall = var(9) != 1
triggerall = command = "2QCFxy"
triggerall = power >= 1000 && var(10) > 0 && life <= 200
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1

[State -1, ESDM]
type = ChangeState
value = 8300
;triggerall = var(9) != 1
triggerall = command = "esdm"
triggerall = power >= 1000 && var(10) > 0 && life <= 200
trigger1 = statetype != A && (ctrl || (stateno = [0,101])) 
trigger2 = var(39) = 1

[State -1, BWSDM]
type = ChangeState
value = 6030
;triggerall = var(9) != 1 ;&& var(41) = 3
triggerall = command = "2QCFab" 
triggerall = ((var(47)&((2**32)-1)-(255)) = 0)
;triggerall = command != "fwd"
triggerall = power >= 1000 && var(10) > 0 
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = var(42) = 1 && power >= 2000

[State -1, BW]
type = ChangeState
value = 6000
;triggerall = var(9) != 1
triggerall = command = "buster" 
triggerall = ((var(47)&((2**32)-1)-(255)) = 0)
;triggerall = command != "fwd"
triggerall = power >= 1000 || var(10) > 0
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = var(42) = 1 && ifelse(var(10) > 0, power >= 1000, power >= 2000)

;high angle geiser 2002			6150	rsctevf %
[State -1, HIG]
type = ChangeState
value = 6150
;triggerall = var(9) != 1
triggerall = command = "2QCBa"
triggerall = ((var(47)&((2**32)-1)-(15)) = 0)
;triggerall = command != "fwd"
triggerall = power >= 1000 || var(10) > 0
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = var(42) = 1 && ifelse(var(10) > 0, power >= 1000, power >= 2000)

[State -1, HIGi]
type = ChangeState
value = 6160
;triggerall = var(9) != 1
triggerall = command = "2QCBb" 
triggerall = ((var(47)&((2**32)-1)-(240)) = 0)
;triggerall = command != "fwd"
triggerall = power >= 1000 || var(10) > 0
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = var(42) = 1 && ifelse(var(10) > 0, power >= 1000, power >= 2000)

[State -1, HIGii]
type = ChangeState
value = 6180
;triggerall = var(9) != 1 && var(41) != 1 && var(41) != 6
triggerall = command = "2QCBab"
triggerall = ((var(47)&((2**32)-1)-(255)) = 0)
;triggerall = command != "fwd"
triggerall = power >= 1000 && var(10) > 0
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = var(42) = 1 && power >= 2000

;power geiser 2002				8150	rsctevf %no air friction
[State -1, PG2K2]
type = ChangeState
value = 8150
;triggerall = var(9) != 1 ;&& var(41) = 4
triggerall = command = "QCBHCFx"
triggerall = ((var(47)&((2**32)-1)-(61440)) = 0)
;triggerall = command != "fwd"
triggerall = power >= 1000 || var(10) > 0
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = var(42) = 1 && ifelse(var(10) > 0, power >= 1000, power >= 2000)

[State -1, PG2K2i]
type = ChangeState
value = 8160
;triggerall = var(9) != 1 ;&& var(41) = 4
triggerall = command = "QCBHCFy"
triggerall = ((var(47)&((2**32)-1)-(983040)) = 0)
;triggerall = command != "fwd"
triggerall = power >= 1000 || var(10) > 0
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = var(42) = 1 && ifelse(var(10) > 0, power >= 1000, power >= 2000)

[State -1, PG2K2ii]
type = ChangeState
value = 8180
;triggerall = var(9) != 1 ;&& var(41) = 4
triggerall = command = "QCBHCFxy"
triggerall = ((var(47)&((2**32)-1)-(1044480)) = 0)
;triggerall = command != "fwd"
triggerall = power >= 1000 && var(10) > 0
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = var(42) = 1 && power >= 2000

;==============================================================================================
; SPECIAL MOVES
;==============================================================================================

;Air Shoot
[State -1, Shoot]
type = ChangeState
value = 3600
;triggerall = var(9) != 1
triggerall = command = "ashoot"
triggerall = power > 500 || var(10) > 0
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 600 && animelemtime(2) > 0
trigger4 = stateno = 610 && animelemtime(2) > 0
trigger5 = stateno = 630 && animelemtime(2) > 0
trigger6 = stateno = 640 && animelemtime(2) > 0
trigger7 = stateno = 645 && animelemtime(3) > 0
trigger8 = stateno = 650 && animelemtime(3) > 0
trigger9 = stateno = 655 && animelemtime(5) > 0
trigger10 = stateno = 660 && animelemtime(3) > 0

;Air SLash
[State -1, Slash]
type = ChangeState
value = 3610
;triggerall = var(9) != 1
triggerall = command = "aslash"
triggerall = power > 500 || var(10) > 0
trigger1 = statetype = A && ctrl
trigger2 = stateno = 106
trigger3 = stateno = 600 && animelemtime(2) > 0
trigger4 = stateno = 610 && animelemtime(2) > 0
trigger5 = stateno = 630 && animelemtime(2) > 0
trigger6 = stateno = 640 && animelemtime(2) > 0
trigger7 = stateno = 645 && animelemtime(3) > 0
trigger8 = stateno = 650 && animelemtime(3) > 0
trigger9 = stateno = 655 && animelemtime(5) > 0
trigger10 = stateno = 660 && animelemtime(3) > 0

;============
;DP COMMANDS:
;============


;power dunk EX					3620
[State -1, PDEX]
type = ChangeState
value = 3620
;triggerall = var(9) != 1  
triggerall = command = "DPab"
triggerall = power > 500 || var(10) > 0
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0 

;power dunk 98					4700
[State -1, PD98]
type = ChangeState
value = 4700
triggerall = command = "DPa"
;triggerall = var(9) != 1  ;&& var(41) != [5,6]
triggerall = ((var(47)&((2**32)-1)-(15)) = 0)
;triggerall = command = "downfwd" 
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0 

[State -1, PD98i]
type = ChangeState
value = 4710
triggerall = command = "DPb"
;triggerall = var(9) != 1  ;&& var(41) != [5,6]
triggerall = ((var(47)&((2**32)-1)-(240)) = 0)
;triggerall = command = "downfwd" 
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

;power drive & power shoot 99			4900	
[State -1, PD]
type = ChangeState
value = 4900
;triggerall = var(9) != 1 ;&& var(41) = 5
triggerall = command = "DPx"
triggerall = ((var(47)&((2**32)-1)-(61440)) = 0)
;triggerall = command = "downfwd" 
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0 && stateno != [4900,4920]

[State -1, PS]
type = ChangeState
value = 4910
;triggerall = var(9) != 1 ;&& var(41) = 5
triggerall = command = "DPy"
triggerall = ((var(47)&((2**32)-1)-(983040)) = 0)
;triggerall = command = "downfwd" 
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0 && stateno != [4900,4920]

;charge type
[State -1, CRT]
type = ChangeState
value = 4150
;triggerall = var(9) != 1 && var(41) = [1,5]
triggerall = command = "DUx"
triggerall = ((var(47)&((2**32)-1)-(61440)) = 0)
trigger1 = statetype != A && (ctrl || (stateno = [0,101]))
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0 && stateno != [4150,4160]

[State -1, CRTi]
type = ChangeState
value = 4160
;triggerall = var(9) != 1 && var(41) = [1,5]
triggerall = command = "DUy"
triggerall = ((var(47)&((2**32)-1)-(983040)) = 0)
trigger1 = statetype != A && (ctrl || (stateno = [0,101]))
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0 && stateno != [4150,4160]

;=============
;QCB COMMANDS:
;=============

;Burn knuckle Motw				4020
[State -1, BKMotw]
type = ChangeState
value = 4020
;triggerall = var(9) != 1 && var(41) != 6
triggerall = command = "QCBxy"
triggerall = power >= 500 || var(10) > 0
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

;Burn knuckle 98				4000
[State -1, BK98]
type = ChangeState
value = 4000
;triggerall = var(9) != 1 && var(41) != 6
triggerall = command = "QCBx"
triggerall = ((var(47)&((2**32)-1)-(61440)) = 0)
;triggerall = command = "back" 
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

[State -1, BK98i]
type = ChangeState
value = 4010
;triggerall = var(9) != 1 && var(41) != 6
triggerall = command = "QCBy"
triggerall = ((var(47)&((2**32)-1)-(983040)) = 0)
;triggerall = command = "back" 
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

;crack shot 2002				4600	
[State -1, CS2K2]
type = ChangeState
value = 4600
;triggerall = var(9) != 1 && var(41) != 4 && var(41) != 6 ;&& var(41) = 4
triggerall = command = "QCBa"
triggerall = ((var(47)&((2**32)-1)-(15)) = 0)
;triggerall = command = "back" 
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

[State -1, CS2k2i]
type = ChangeState
value = 4610
;triggerall = var(9) != 1 && var(41) != 4 && var(41) != 6 ;&& var(41) = 4
triggerall = command = "QCBb"
triggerall = ((var(47)&((2**32)-1)-(240)) = 0)
;triggerall = command = "back" 
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

;=================
;HCF COMMANDS:
;=================

;Power Charge EX Motw				3800
[State -1, PCEX]
type = ChangeState
value = 3800
;triggerall = var(9) != 1 && var(41) != 6
triggerall = command = "HCFab"
triggerall = power >= 500 || var(10) > 0
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

;power charge 98				4300	
[State -1, PC98]
type = ChangeState
value = 4300
;triggerall = var(9) != 1 ;&& var(41) = 0
triggerall = command = "HCFa"
triggerall = ((var(47)&((2**32)-1)-(15)) = 0)
;triggerall = command != "fwd"
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0 && stateno != [4300,4310]

[State -1, PC98i]
type = ChangeState
value = 4310
;triggerall = var(9) != 1 ;&& var(41) = 0
triggerall = command = "HCFb"
triggerall = ((var(47)&((2**32)-1)-(240)) = 0)
;triggerall = command != "fwd"
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0 && stateno != [4300,4310]

;Slide 95					4950	
[State -1, S95]
type = ChangeState
value = 4950
;triggerall = var(9) != 1 ;&& var(41) = 1
triggerall = command = "slidea"
triggerall = ((var(47)&((2**32)-1)-(15)) = 0)
;triggerall = command != "fwd"
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0 && stateno != [4950,4970]

[State -1, S95i]
type = ChangeState
value = 4960
;triggerall = var(9) != 1 ;&& var(41) = 1
triggerall = command = "slideb"
triggerall = ((var(47)&((2**32)-1)-(240)) = 0)
;triggerall = command = "fwd"
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0 && stateno != [4950,4970]

;MOTW Power Charge 				3500	
[State -1, PCM]
type = ChangeState
value = 3500
;triggerall = var(9) != 1 
triggerall = command = "motwx"
triggerall = ((var(47)&((2**32)-1)-(61440)) = 0)
;triggerall = command = "downfwd" 
trigger1 = statetype != A && (ctrl ||(stateno = [100,101]))
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0 && stateno != [3500,3520]

[State -1, PCMi]
type = ChangeState
value = 3510
;triggerall = var(9) != 1 
triggerall = command = "motwy"
triggerall = ((var(47)&((2**32)-1)-(983040)) = 0)
;triggerall = command = "downfwd" 
trigger1 = statetype != A && (ctrl || (stateno = [100,101]))
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0 && stateno != [3500,3520]

;=============
;QCF COMMANDS:
;=============

[State -1, PWMOTW]
type = ChangeState
value = 2070
;triggerall = var(9) != 1 ;&& var(41) = 0
triggerall = command = "QCFxy"
triggerall = power >= 500 || var(10) > 0
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

[State -1, FakeWave]
type = ChangeState
value = 2080
;triggerall = var(9) != 1 ;&& var(41) = 0
triggerall = command = "QCFab"
;triggerall = command != "fwd"
;triggerall = ((var(47)&((2**32)-1)-(983040)) = 0)
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

;power wave	98					2050
[State -1, PW98]
type = ChangeState
value = 2050
;triggerall = var(9) != 1 ;&& var(41) = 0
triggerall = command = "QCFx"
;triggerall = command != "fwd"
triggerall = ((var(47)&((2**32)-1)-(61440)) = 0)
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

[State -1, PW98i]
type = ChangeState
value = 2060
;triggerall = var(9) != 1 ;&& var(41) = 0
triggerall = command = "QCFy"
;triggerall = command != "fwd"
triggerall = ((var(47)&((2**32)-1)-(983040)) = 0)
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

;power wave	99					2100
[State -1, PW99]
type = ChangeState
value = 2100
;triggerall = var(9) != 1 ;&& var(41) = 6
triggerall = command = "DDx" 
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

[State -1, PW99i]
type = ChangeState
value = 2110
;triggerall = var(9) != 1 ;&& var(41) = 6
triggerall = command = "DDy" 
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact && stateno != 2210
trigger4 = var(42) = 1 && var(10) > 0 && stateno != 2110

;power wave	2002					2200
[State -1, PW2K2]
type = ChangeState
value = 2200
;triggerall = var(9) != 1 ;&& var(41) = 4
triggerall = command = "DDa"
trigger1 = statetype != A && ((ctrl || (stateno = [100,101])) || stateno = [0,101])
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

[State -1, PW2K2i]
type = ChangeState
value = 2210
;triggerall = var(9) != 1 
triggerall = command = "DDb"
trigger1 = statetype != A && ((ctrl || (stateno = [100,101])) || stateno = [0,101])
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact && stateno != 2110
trigger4 = var(42) = 1 && var(10) > 0 && stateno != 2110

;power wave	95					2250	
[State -1, PW95]
type = ChangeState
value = 2250
;triggerall = var(9) != 1 ;&& var(41) = 1
triggerall = command = "QCFa"
;triggerall = ((var(47)&((2**32)-1)-(61440)) = 0)
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

[State -1, PW95i]
type = ChangeState
value = 2260
;triggerall = var(9) != 1 ;&& var(41) = 1
triggerall = command = "QCFb"
;triggerall = ((var(47)&((2**32)-1)-(983040)) = 0)
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) 
trigger2 = var(39) = 1
trigger3 = (stateno = 2110 || stateno = 2210) && movecontact
trigger4 = var(42) = 1 && var(10) > 0

;==============================================================================================
; GROOVE CMDS
;==============================================================================================

;MAX
[State -1]
type = ChangeState
value = 707
;triggerall = var(9) != 1
triggerall = command = "holdy" && command = "holda"
triggerall = var(21) = 0 || var(21) = 2
triggerall = var(10) <= 0 && var(40) <= 0 && var(37) <= 0 && power >= 1000
trigger1 = (stateno = [0,12]) && (ctrl || (stateno = [100,101]))

;MAX Cancel
[State -1]
type = ChangeState
value = 708
;triggerall = var(9) != 1
triggerall = (command = "holdy" && command = "holda")
triggerall = var(10) <= 0 && power >= 2000
trigger1 = var(39) = 1 && stateno != 100 && movecontact

;Charge XY
[State -1]
type = ChangeState
value = 704
;triggerall = var(9) != 1
triggerall = command = "holdx" && command = "holdy"
triggerall = statetype != A && stateno = [0,12]
triggerall = var(40) <= 0 && var(37) <= 0 && var(10) <= 0 
trigger1 = var(21) = 2 && power < 3000 && (ctrl || (stateno = [100,101]))
trigger2 = var(21) = 1 && var(10) <= 0 && power < 1000 && (ctrl || (stateno = [100,101]))

;---------------------------------
[State -1,rollB Counter]
type = ChangeState
value = 710
;triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdback"
triggerall = var(21) != 1 && power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,rollB Counter]
type = ChangeState
value = 710
;triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdback"
triggerall = var(21) = 1 && var(10) > 0 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,RollF counter]
type = ChangeState
value = 711
;triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdfwd"
triggerall = var(21) != 1 && power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,RollF counter]
type = ChangeState
value = 711
;triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdfwd"
triggerall = var(21) = 1 && var(10) > 0 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,CD counter]
type = ChangeState
value = 712
;triggerall = var(9) != 1
triggerall = command = "knockdown"
triggerall = var(21) != 1 && power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,CD counter]
type = ChangeState
value = 712
;triggerall = var(9) != 1
triggerall = command = "knockdown"
triggerall = var(21) = 1 && var(10) > 0 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,rollB]
type = ChangeState
value = 701
;triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdback"
triggerall = var(21) = 0 || var(21) = 2 || var(21) = 4 || var(21) = 5
triggerall = life > 0 && statetype != A
trigger1 = ((ctrl || (stateno = [100,101])) || stateno = 100)

[State -1,RollF] 
type = ChangeState
value = 700
;triggerall = var(9) != 1
triggerall = command = "roll"
triggerall = life > 0 && statetype != A
trigger1 = command = "holdfwd" ;var(21) = 0 || var(21) = 4 || var(21) = 5
trigger1 = ((ctrl || (stateno = [100,101])) || stateno = 100)

[State -1,rollB99]
type = ChangeState
value = 740
;triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdback" && var(21) = 3
triggerall = life > 0 && statetype != A
trigger1 = ((ctrl || (stateno = [100,101])) || stateno = 100)

[State -1,Sidestep]
type = ChangeState
value = 702
;triggerall = var(9) != 1
triggerall = command = "roll"
triggerall = var(21) = 1 || var(21) = 2
triggerall = life > 0 && statetype != A && (stateno = [0,12])
trigger1 = ((ctrl || (stateno = [100,101])) || stateno = 100)

;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;=============================================================================
;-------------[Throws]------------------------
;===========================================================================
;GrabY
[State -1, GrabY ]
type = ChangeState
value = 300
triggerall = command = "y"
triggerall = statetype = S && (ctrl || (stateno = [100,101])) && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype != A)
trigger2 = command = "holdback" && p2bodydist X < 10 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype != A)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;GrabB
[State -1, GrabB ]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = statetype = S && (ctrl || (stateno = [100,101])) && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype != A)
trigger2 = command = "holdback" && p2bodydist X < 10 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype != A)
;===========================================================================
[State -1,Knockdown]
type = ChangeState
value = 280
;triggerall = var(9) != 1
triggerall = command = "knockdown" 
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))
;-------------------------------------------
[State -1,JCD 2K]
type = ChangeState
value = 655
;triggerall = var(9) != 1
triggerall = var(41) = 2 || (var(41) = [4,5])
triggerall = command = "knockdown"
trigger1 = statetype = A && (ctrl || (stateno = [100,101]))
trigger2 = var(39) = 1

[State -1,JCD 2K]
type = ChangeState
value = 655
;triggerall = var(9) != 1
triggerall = var(41) = 3
triggerall = command = "knockdown" && command = "holdback"
trigger1 = statetype = A && (ctrl || (stateno = [100,101]))
;-------------------------------------------

[State -1,JCD 98]
type = ChangeState
value = 660
;triggerall = var(9) != 1
triggerall = command = "knockdown"
trigger1 = statetype = A && (ctrl || (stateno = [100,101]))

;-------------------------------------------

[State -1,CFHP]
type = ChangeState
value = 470
;triggerall = var(9) != 1
triggerall = command = "holddown"
triggerall = command = "y" && command = "holdfwd" && command = "holddown"
trigger1 = statetype != A && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 250 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger3 = stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger5 = stateno = 210 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger6 = stateno = 230 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger8 = stateno = 420 && animelemtime(3) > 0  && animelemtime(4) < 0
trigger9 = stateno = 200 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger10 = stateno = 460 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger11 = stateno = 280 && animelemtime(11) > 0 && animelemtime(12) < 0

;FWD LP Combo '98
[State -1,FwdLp'98]
type = ChangeState
value = 215
;triggerall = var(9) != 1
triggerall = (var(41) = [0,1])
triggerall = command = "x" && command = "holdfwd" && command != "holddown"
trigger1 = stateno = 250 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger2 = stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger3 = stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 210 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger5 = stateno = 230 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger6 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger7 = stateno = 420 && animelemtime(3) > 0  && animelemtime(4) < 0
trigger8 = stateno = 200 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger9 = stateno = 460 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger10 = stateno = 280 && animelemtime(11) > 0 && animelemtime(12) < 0

;FWD LP '98 Normal
[State -1,FwdLp'98]
type = ChangeState
value = 215
;triggerall = var(9) != 1
triggerall = (var(41) = [0,1])
triggerall = command = "x" && command = "holdfwd" && command != "holddown"
trigger1 = statetype != A && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 100

;FWD LP Combo '98
[State -1,FwdLp'98]
type = ChangeState
value = 215
;triggerall = var(9) != 1
triggerall = var(41) = 3
triggerall = command = "x" && command = "holdback" && command != "holddown"
trigger1 = stateno = 250 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger2 = stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger3 = stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 210 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger5 = stateno = 230 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger6 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger7 = stateno = 420 && animelemtime(3) > 0  && animelemtime(4) < 0
trigger8 = stateno = 200 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger9 = stateno = 460 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger10 = stateno = 280 && animelemtime(11) > 0 && animelemtime(12) < 0

;FWD LP '98 Normal
[State -1,FwdLp'98]
type = ChangeState
value = 215
;triggerall = var(9) != 1
triggerall = var(41) = 3
triggerall = command = "x" && command = "holdback" && command != "holddown"
trigger1 = statetype != A && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 100

;FWD LP Combo '2K
[State -1,FwdLp'2K]
type = ChangeState
value = 225
;triggerall = var(9) != 1
triggerall = var(41) = [2,5]
triggerall = command = "x" && command = "holdfwd" && command != "holddown"
trigger1 = stateno = 250 && animelemtime(2) > 0 && animelemtime(4) < 0
trigger2 = stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger3 = stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 210 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger5 = stateno = 230 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger6 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger7 = stateno = 420 && animelemtime(3) > 0  && animelemtime(4) < 0
trigger8 = stateno = 200 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger9 = stateno = 460 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger10 = stateno = 280 && animelemtime(11) > 0 && animelemtime(12) < 0

;FWD LP '2K Normal
[State -1,FwdLp'2K]
type = ChangeState
value = 227
;triggerall = var(9) != 1
triggerall = var(41) = [2,5]
triggerall = command = "x" && command = "holdfwd" && command != "holddown"
trigger1 = statetype != A && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 100

;--------------------------------------------------------------------
[State -1,CLP]
type = ChangeState
value = 400
;triggerall = var(9) != 1
triggerall = command = "holddown"
triggerall = command = "x"
trigger1 = statetype != A && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 400 && animelemtime(2) > 1
trigger3 = stateno = 420 && animelemtime(3) > 0
trigger4 = stateno = 210 && animelemtime(2) > 1 
trigger5 = stateno = 230 && animelemtime(3) > 1 
trigger6 = stateno = 100

[State -1,CLK]
type = ChangeState
value = 420
;triggerall = var(9) != 1
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype != A && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 400 && animelemtime(2) > 1
trigger3 = stateno = 420 && animelemtime(3) > 1
trigger4 = stateno = 210 && animelemtime(2) > 1 
trigger5 = stateno = 230 && animelemtime(3) > 1 
trigger6 = stateno = 100

[State -1,CHP]
type = ChangeState
value = 440
;triggerall = var(9) != 1
triggerall = command = "holddown"
triggerall = command = "y"
trigger1 = statetype != A && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 100

[State -1,CHK]
type = ChangeState
value = 460
;triggerall = var(9) != 1
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype != A && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 100
;----------------------------------------

;========================[BASIC ATTACKS MODE: 95/98]==================================

;Lp Close
[State -1,Low Punch CLose]
type = ChangeState
value = 210
;triggerall = var(9) != 1
triggerall = command = "x"
triggerall = p2bodydist x < 15
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 210 && animelemtime(2) > 1 
trigger2 = command != "holddown"
trigger3 = stateno = 400 && animelemtime(2) > 1 
trigger3 = command != "holddown"
trigger4 = stateno = 420 && animelemtime(3) > 1
trigger4 = command != "holddown"
trigger5 = stateno = 230 && animelemtime(3) > 1
trigger5 = command !=  "holddown"
trigger6 = stateno = 100

;Lp
[State -1,Lowpunch]
type = ChangeState
value = 200
;triggerall = var(9) != 1
triggerall = command = "x"
triggerall = p2bodydist x >= 15
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 210 && animelemtime(2) > 1 
trigger2 = command != "holddown"
trigger3 = stateno = 400 && animelemtime(2) > 1 
trigger3 = command != "holddown"
trigger4 = stateno = 420 && animelemtime(3) > 1
trigger4 = command != "holddown"
trigger5 = stateno = 230 && animelemtime(3) > 1
trigger5 = command !=  "holddown"
trigger6 = stateno = 100

;lk close
[State -1,LKClose]
type = ChangeState
value = 230
;triggerall = var(9) != 1
triggerall = command = "a"
triggerall = p2bodydist x <= 22
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 210 && animelemtime(2) > 1 
trigger2 = command != "holddown"
trigger3 = stateno = 400 && animelemtime(2) > 1 
trigger3 = command != "holddown"
trigger4 = stateno = 420 && animelemtime(3) > 1
trigger4 = command != "holddown"
trigger5 = stateno = 230 && animelemtime(3) > 1
trigger5 = command !=  "holddown"
trigger6 = stateno = 100

;lk
[State -1,LK]
type = ChangeState
value = 220
;triggerall = var(9) != 1
triggerall = command = "a"
triggerall = p2bodydist x > 20
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 210 && animelemtime(2) > 1 
trigger2 = command != "holddown"
trigger3 = stateno = 400 && animelemtime(2) > 1 
trigger3 = command != "holddown"
trigger4 = stateno = 420 && animelemtime(3) > 1
trigger4 = command != "holddown"
trigger5 = stateno = 230 && animelemtime(3) > 1
trigger5 = command !=  "holddown"
trigger6 = stateno = 100

;Hp close
[State -1,HPClose]
type = ChangeState
value = 250
;triggerall = var(9) != 1
triggerall = command = "y"
triggerall = p2bodydist x <= 30
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 100

;Hp 
[State -1,HP]
type = ChangeState
value = 240
;triggerall = var(9) != 1
triggerall = command = "y"
triggerall = p2bodydist x > 30
triggerall = stateno != 250 && stateno != 240
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 100

;Hk close
[State -1,HKClose]
type = ChangeState
value = 270
;triggerall = var(9) != 1
triggerall = command = "b"
triggerall = p2bodydist x <= 30
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 100

;Hk '98
[State -1,HK '98]
type = ChangeState
value = 260
;triggerall = var(9) != 1
triggerall = (var(41) = [0,1]) || var(41) = 5
triggerall = command = "b"
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 100

;Hk '98
[State -1,HK '98]
type = ChangeState
value = 260
;triggerall = var(9) != 1
triggerall = var(41) = 3
triggerall = command = "b" && command = "holdback"
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 100

;Hk '2K
[State -1,HK '2K]
type = ChangeState
value = 265
;triggerall = var(9) != 1
triggerall = var(41) = [2,4]
triggerall = command = "b"
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))
trigger2 = stateno = 100

;-----------------------------------------------------------------

[State -1,JLP]
type = ChangeState
value = 600
;triggerall = var(9) != 1
triggerall = command = "x"
trigger1 = statetype = A && ctrl 

[State -1,JHP]
type = ChangeState
value = 630
;triggerall = var(9) != 1
triggerall = command = "y"
trigger1 = statetype = A && ctrl 

[State -1,JLK]
type = ChangeState
value = 610
;triggerall = var(9) != 1
triggerall = command = "a"
trigger1 = statetype = A && ctrl 

[State -1,JHK2KV]
type = ChangeState
value = 645
;triggerall = var(9) != 1
triggerall = var(41) = [2,5]
triggerall = vel x = 0 && stateno != 201
triggerall = command = "b"
trigger1 = statetype = A && ctrl

[State -1,JHK2KD]
type = ChangeState
value = 650
;triggerall = var(9) != 1
triggerall = (var(41) = [4,5]) || var(41) = 2
triggerall = vel x != 0 || stateno = 201
triggerall = command = "b"
trigger1 = statetype = A && ctrl

[State -1,JHK2KD]
type = ChangeState
value = 650
;triggerall = var(9) != 1
triggerall = var(41) = 3
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = A && ctrl

[State -1,JHK98]
type = ChangeState
value = 640
;triggerall = var(9) != 1
triggerall = command = "b"
trigger1 = statetype = A && ctrl

[State -1,Mode]
type = null ;ChangeState
value = 805
;triggerall = var(9) != 1
trigger1 = command = "mode"
trigger1 = numexplod(900) = 0 && numexplod(901) = 0 && numexplod(902) = 0 && numexplod(903) = 0
trigger1 = numexplod(904) = 0 && var(10) <= 0 && var(37) <= 0 && var(40) <= 0
trigger1 = statetype != A && stateno != 805 && (ctrl || (stateno = [100,101]))

[State -1,Groove]
type = null ;ChangeState
value = 850
;triggerall = var(9) != 1
trigger1 = command = "groove"
trigger1 = numexplod(800) = 0 && numexplod(801) = 0 && numexplod(802) = 0 && numexplod(803) = 0
trigger1 = numexplod(804) = 0 && var(10) <= 0 && var(37) <= 0 && var(40) <= 0
trigger1 = statetype != A && stateno != 195 && (ctrl || (stateno = [100,101]))

[State -1,TAUNT1_CANCELABLE]
type = ChangeState
value = 195
;triggerall = var(9) != 1
trigger1 = command = "taunt"
trigger1 = numexplod(900) = 0 && numexplod(901) = 0 && numexplod(902) = 0 && numexplod(903) = 0
trigger1 = numexplod(904) = 0 && var(10) <= 0 && var(37) <= 0 && var(40) <= 0
trigger1 = statetype != A && (ctrl || (stateno = [100,101]))

[State -1,RUN]
type = ChangeState
value = 100
;triggerall = var(9) != 1
triggerall = command = "FF"
triggerall = var(21) = 0 || var(21) = 2 || var(21) = 3 || var(21) = 4 || var(21) = 5
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))

[State -1,HOPFWD]
type = ChangeState
value = 102
;triggerall = var(9) != 1
triggerall = command = "FF"
trigger1 = var(21) = 1 && statetype = S && (ctrl || (stateno = [100,101]))

[State -1,HOPBACK]
type = ChangeState
value = 105
;triggerall = var(9) != 1
trigger1 = command = "BB"
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))

;=====================================================================================
;-----[ AI MODIFICATION ]-----
;=====================================================================================

;========================================================================================
; DMS/SDMS

;shining knuckle
[State -1, SK]
type = ChangeState
value = 6290
triggerall = var(9) = 1
triggerall = power >= 1000 && var(10) > 0 && life <= 200
trigger1 = random <= 900 && stateno = 215 && animelemtime(6) > 0 && animelemtime(7) < 0 && movehit
trigger2 = random <= 900 && stateno = 470 && animelemtime(2) > 0 && animelemtime(3) < 0 && movehit
trigger3 = random <= 900 && stateno = 225 && animelemtime(7) > 0 && animelemtime(9) < 0 && movehit

[State -1, ESDM]
type = ChangeState
value = 8300
triggerall = var(9) = 1
triggerall = power >= 1000 && var(10) > 0 && life <= 200
trigger1 = random <= 900 && statetype != A && (ctrl || (stateno = [100,101])) && p2movetype = A && p2bodydist x <= 170 && p2statetype != A
trigger2 = random <= 300 && statetype != A && (ctrl || (stateno = [100,101])) && p2bodydist x >= 150
;=========================================

;MAX MODE COMBO
;MOTW Power Charge 
[State -1, PCM]
type = ChangeState
value = 3510
triggerall = var(9) = 1 && var(10) > 0 ;&& p2statetype != A 
trigger1 = random <= 1000 && stateno = 215 && animelemtime(6) > 0 && animelemtime(7) < 0 && movehit
trigger2 = random <= 1000 && stateno = 470 && animelemtime(2) > 0 && animelemtime(3) < 0 && movehit
trigger3 = random <= 1000 && stateno = 225 && animelemtime(7) > 0 && animelemtime(9) < 0 && movehit

[State -1, Power Drive]
type = ChangeState
value = 4910
triggerall = var(9) = 1 && var(10) > 0
trigger1 = random <= 100 && stateno = 3510 && animelemtime(8) > 5 && movehit && p2bodydist x <= 50
trigger2 = stateno = 3501 && animelemtime(5) > 1 && movecontact

[State -1, Power Charge]
type = ChangeState
value = 4310
triggerall = var(9) = 1 && var(10) > 0 && p2statetype = A
trigger1 = (stateno = 4900 || stateno = 4910) && animelemtime(6) > 6 && movecontact

[State -1, Slide Kick]
type = ChangeState
value = 4960
triggerall = var(9) = 1 && var(10) > 0
trigger1 = (stateno = 4900 || stateno = 4910) && animelemtime(6) > 6 && movecontact

;=========================================================================================

[State -1, CrLK]
type = ChangeState
value = 420
triggerall = var(9) = 1
triggerall = statetype != A && (ctrl || (stateno = [100,101])) && p2movetype != H
trigger1 = random <= 20 && p2stateno != 100 && p2movetype != A && (p2bodydist x = [100,140]) && (enemy, vel x <= 0)
trigger2 = random <= 100 && p2statetype = S && p2bodydist x <= 25 

[State -1,CLP]
type = ChangeState
value = 400
triggerall = var(9) = 1
trigger1 = stateno = 420 && animelemtime(3) >= 1 && animelemtime(4) <= 0
trigger1 = movecontact

[State -1,CFHP]
type = ChangeState
value = 470
triggerall = var(9) = 1
trigger1 = stateno = 400 && animelemtime(2) >= 1 && animelemtime(3) <= 0
trigger1 = movecontact && p2bodydist x <= 60

;Hp
[State -1,HP]
type = ChangeState
value = ifelse(random <= 700,250,270)
triggerall = var(9) = 1
trigger1 = statetype != A && (ctrl || (stateno = [100,101]))
trigger1 = Random <= 500 && p2bodydist x <= 25 && p2statetype != A && p2statetype != L
trigger1 = ifelse((p2stateno = [120,170]), random <= 100, 1)
trigger1 = ifelse((p2stateno = 20 && vel x < 0), random <= 0, 1)

;FWD LP Combo '2K
[State -1,FwdLp'2K]
type = ChangeState
value = 225
triggerall = var(9) = 1
trigger1 = random <= 100 && stateno = 250 && animelemtime(3) > 0 && animelemtime(4) < 0 && moveguarded
trigger2 = random <= 100 && stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0 && moveguarded

;FWD LP Combo '98
[State -1,FwdLp'98]
type = ChangeState
value = 215
triggerall = var(9) = 1
trigger1 = random <= 700 && stateno = 250 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact
trigger2 = random <= 700 && stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact

;CHP
[State -1,CHP]
type = ChangeState
value = 440
triggerall = var(9) = 1
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) && p2movetype != A && enemy, Command != "holdback"
trigger1 = Random <= 100 && (p2bodydist x = [55,68]) && p2statetype != A && p2statetype != L

;lk
[State -1,LK]
type = ChangeState
value = 220
triggerall = var(9) = 1
triggerall = p2bodydist x > 20
trigger1 = statetype = S && (ctrl || (stateno = [100,101]))
trigger1 = Random <= 300 && (p2bodydist x = [85,95]) && p2statetype != A && p2statetype != L

[State -1,JLK]
type = ChangeState
value = 610
triggerall = var(9) = 1
trigger1 = statetype = A && ctrl 
trigger1 = random <= 400 && p2bodydist x <= 100 && p2statetype = A && p2movetype != H

[State -1,JHK]
type = ChangeState
value = ifelse(random <= 500, 650,640)
triggerall = var(9) = 1
triggerall = statetype = A && ctrl 
trigger1 = random <= 700 && p2bodydist x <= 50 && p2statetype != A && p2statetype != L
trigger1 = p2bodydist y <= 60 && vel y >= 0 && ifelse(enemy, vel x < 0, p2stateno != 20,1) 
trigger2 = random <= 600 && p2bodydist x <= 60 && p2statetype != A && p2statetype != L
trigger2 = p2bodydist y <= 80 && vel y >= 0 && p2movetype = A 
trigger3 = random <= 100 && p2bodydist x <= 50 && p2statetype != A && p2statetype != L
trigger3 = p2bodydist y <= 60 && vel y >= 0

[State -1,JCD]
type = ChangeState
value = ifelse(random <= 500,655,660)
triggerall = var(9) = 1
trigger1 = random <= 100 && p2bodydist x <= 60 && p2statetype != A && p2statetype != L
trigger1 = p2bodydist y <= 80 && vel y >= 0 && p2movetype = A && statetype = A && ctrl 
trigger2 = statetype = A && ctrl 
trigger2 = random <= 100 && p2bodydist x <= 100 && p2statetype = A

[State -1, PDunk]
type = ChangeState
value = ifelse(random <= 500, 4700,4710)
triggerall = var(9) = 1
triggerall = statetype != A && (ctrl || (stateno = [0,101]) || stateno = 2080 && animelemtime(3) > 0 )
trigger1 = random <= 400 && (p2bodydist x = [40,60]) && p2statetype = A
trigger1 = p2movetype != H && p2movetype != A && p2bodydist y >= -90 && p2bodydist y <= -50
trigger2 = random <= 900 && (p2bodydist x = [5,140])  && p2statetype = A
trigger2 = p2movetype = H  && var(13) > 0


;Slide Kick 	
[State -1, SK]
type = ChangeState
value = 4960
triggerall = var(9) = 1 && p2statetype != A
trigger1 = random <= 200 && stateno = 215 && animelemtime(6) > 0 && animelemtime(7) < 0 && movehit
trigger2 = random <= 200 && stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit
trigger3 = random <= 300 && stateno = 215 && animelemtime(6) > 0 && animelemtime(7) < 0 && moveguarded && p2statetype = S
trigger4 = stateno = 703 && animelemtime(4) > 0 && animelemtime(5) < 0 && movehit

;Power Charge 	
[State -1, PC]
type = ChangeState
value = 4310
triggerall = var(9) = 1 && p2statetype != A
trigger1 = random <= 200 && stateno = 215 && animelemtime(6) > 0 && animelemtime(7) < 0 && movehit
trigger2 = random <= 200 && stateno = 470 && animelemtime(2) > 0 && animelemtime(3) < 0 && movehit
trigger3 = random <= 200 && stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit
trigger4 = random <= 200 && stateno = 225 && animelemtime(7) > 0 && animelemtime(9) < 0 
trigger5 = stateno = 703 && animelemtime(4) > 0 && animelemtime(5) < 0 && movehit

;Burning Knuckle
[State -1, PCM]
type = ChangeState
value = 4000
triggerall = var(9) = 1 && p2statetype != A
trigger1 = random <= 400 && stateno = 470 && animelemtime(2) > 0 && animelemtime(3) < 0 && movecontact
trigger2 = random <= 100 && stateno = 440 && animelemtime(3) > 2 && animelemtime(4) < 0 && !movecontact
trigger3 = statetype != A && (ctrl || (stateno = [100,101]) || (stateno = 2080 && animelemtime(3) > 0))
trigger3 = Random <= 300 && (p2bodydist x = [130,140]) && p2statetype != A && p2statetype != L
trigger3 = ifelse(p2movetype = A, random <= 200,1)
trigger4 = random <= 400 && stateno = 225 && animelemtime(7) > 0 && animelemtime(9) < 0 
trigger5 = stateno = 703 && animelemtime(4) > 0 && animelemtime(5) < 0 && movehit
trigger6 = random <= 300 && (stateno = 2110 || stateno = 2210) && movehit

[State -1, PW98]
type = ChangeState
value = 2050
triggerall = var(9) = 1 && p2statetype != A
trigger1 = random <= 400 && stateno = 470 && animelemtime(2) > 0 && animelemtime(3) < 0 && moveguarded
trigger2 = random <= 300 && stateno = 440 && animelemtime(3) > 2 && animelemtime(4) < 0 && moveguarded
trigger3 = random <= 500 && stateno = 215 && animelemtime(6) > 0 && animelemtime(7) < 0 && moveguarded
trigger4 = random <= 400 && stateno = 225 && animelemtime(7) > 0 && animelemtime(9) < 0 && moveguarded
trigger5 = stateno = 703 && animelemtime(4) > 0 && animelemtime(5) < 0 && moveguarded
trigger6 = random <= 300 && (stateno = 2110 || stateno = 2210) && moveguarded && p2bodydist x > 50

[State -1, GW2K2i]
type = ChangeState
value = ifelse(random <= 500,2210,2110)
triggerall = var(9) = 1 
trigger1 = random <= 700 && stateno = 250 && animelemtime(3) > 0 && animelemtime(4) < 0 
trigger1 = moveguarded && p2statetype = S
trigger2 = random <= 700 && stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0 && moveguarded
trigger2 = moveguarded && p2statetype = S
trigger3 = statetype != A && (ctrl || (stateno = [100,101])) && p2movetype != A
trigger3 = Random <= 50 && (p2bodydist x = [31,50]) && p2statetype = S

[State -1, GW]
type = ChangeState
value = stateno
triggerall = var(9) = 1 
trigger1 = random <= 300 && (stateno = 2110 || stateno = 2210) && moveguarded && p2bodydist x <= 50
trigger1 = animelemtime(9) > 1

[State -1, FakeWave]
type = ChangeState
value = 2080
triggerall = var(9) = 1 && p2statetype != A
trigger1 = statetype != A && (ctrl || (stateno = [100,101])) && p2movetype != A
trigger1 = Random <= 50 && (p2bodydist x = [135,145]) && p2statetype != A && p2statetype != L
trigger2 = statetype != A && (ctrl || (stateno = [100,101])) && p2movetype != A
trigger2 = Random <= 50 && (p2bodydist x = [150,180]) && p2statetype != A && p2statetype != L

;MAX
[State -1]
type = ChangeState
value = 707
triggerall = var(9) = 1
triggerall = var(10) <= 0 && power >= 2000
triggerall = (stateno = [0,20]) && (ctrl || (stateno = [100,101]))
trigger1 = p2bodydist x >= 140 && p2movetype != A && p2statetype != A
trigger2 = p2movetype = H && p2statetype = L

;MOTW Power Charge 
[State -1, PCM]
type = ChangeState
value = 3510
triggerall = var(9) = 1 && p2statetype != A
trigger1 = random <= 400 && stateno = 215 && animelemtime(6) > 0 && animelemtime(7) < 0 && movehit
trigger2 = random <= 300 && stateno = 470 && animelemtime(2) > 0 && animelemtime(3) < 0 && movehit
trigger3 = random <= 400 && stateno = 225 && animelemtime(7) > 0 && animelemtime(9) < 0 && movehit

;Walk Forward
[State -1,WalkF]
type = ChangeState
value = 20
triggerall = var(9) = 1
triggerall = statetype != A && (ctrl || (stateno = [100,101])) && p2movetype != A
trigger1 = p2bodydist x <= 25 && p2statetype != A && p2statetype != L
trigger1 = ifelse((p2stateno = [120,170]), random <= 1000, random <= 10)
trigger2 = p2bodydist x <= 25 && p2statetype != A && p2statetype != L && p2stateno = 20  

[State -1,HOPBACK]
type = ChangeState
value = 105
triggerall = var(9) = 1
triggerall = statetype != A && ctrl && backedgedist > 80
trigger1 = random <= 200 && p2movetype != A && P2statetype = L && (p2bodydist x = [50,90]) && frontedgebodydist <= 50
trigger2 = random <= 400 && p2movetype != A && frontedgebodydist <= 50 && P2statetype = L

[State -1, PowerWave]
type = ChangeState
value = ifelse(random <= 500, 2100, (ifelse(random <= 500, 2200, (ifelse(random <= 500, 2250,2260)))))
triggerall = var(9) = 1 && p2statetype != A && p2stateno != 40
triggerall = statetype != A && (ctrl || (stateno = [100,101]) || (stateno = 2080 && animelemtime(3) > 0))
trigger1 = Random <= 50 && (p2bodydist x >= 170) && p2statetype != A && p2statetype != L
trigger1 = ifelse(p2movetype = A, random <= 5,1)
trigger2 = random <= 500 && statetype != A && ctrl && p2statetype != A && (p2stateno = [200,500]) && p2bodydist x >= 100 

[State -1,ROLL BACK/Sidestep]
type = ChangeState
value = ifelse(random <= 500, 701,702)
triggerall = var(9) = 1
triggerall = statetype != A && ctrl && p2movetype != H && enemy, HitDefAttr = SCA,AA
trigger1 = (p2bodydist x = [30,70]) && p2movetype = A && backedgebodydist > 60 && random <= 700

[State -1,ROLL Forward]
type = ChangeState
value = 700
triggerall = var(9) = 1
triggerall = statetype != A && ctrl && p2movetype != H
trigger1 = (p2bodydist x = [31,90]) && p2movetype = A && frontedgebodydist > 60 && random <= 500
trigger1 = p2stateno >= 1000 && (enemy, facing) != facing
trigger1 = enemy, HitDefAttr = SCA,AA
