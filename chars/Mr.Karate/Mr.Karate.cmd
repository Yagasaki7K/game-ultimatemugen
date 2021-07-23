;Mr.Karate's Command
;-|AI Command |--------------------------------------------------------
[Command]
name = "AI_1"
command = U,D,F,F,B,B
time = 1

[Command]
name = "AI_2"
command = U,D,F,F,B,F
time = 1

[Command]
name = "AI_3"
command = U,D,F,F,B,D
time = 1

[Command]
name = "AI_4"
command = U,D,F,F,B,U
time = 1

[Command]
name = "AI_5"
command = U,D,F,F,U,B
time = 1

[Command]
name = "AI_6"
command = U,D,F,F,D,B
time = 1

[Command]
name = "AI_7"
command = U,D,F,F,F,B
time = 1

[Command]
name = "AI_8"
command = U,D,U,F,B,B
time = 1

[Command]
name = "AI_9"
command = U,D,D,F,B,B
time = 1

[Command]
name = "AI_10"
command = D,D,F,F,B,B
time = 1

[Command]
name = "AI_11"
command = U,U,F,F,B,B
time = 1

[Command]
name = "AI_12"
command = U,B,F,F,B,B
time = 1

;-|Super Motions |--------------------------------------------------------
[Command]
name = "RyuukoM"
command = ~D,DF,F,DF,D,B, x+y
time = 27

[Command]
name = "SHao"
command = ~F,B,DB,D,F, x+y
time = 23

[Command]
name = "HaoW"
command = ~F,B,DB,D,F, x
time = 23

[Command]
name = "HaoS"
command = ~F,B,DB,D,F, y
time = 23

[Command]
name = "KkohouW"
command = ~D,DF,F,D,DF,F, a
time = 23

[Command]
name = "KkohouS"
command = ~D,DF,F,D,DF,F, b
time = 23


[Command]
name = "RyuukoW"
command = ~D,DF,F,DF,D,B, x
time = 27

[Command]
name = "RyuukoS"
command = ~D,DF,F,DF,D,B, y
time = 27

;-| Special Motions |------------------------------------------------------
[Command]
name = "KohouW"
command = ~F,D,DF, x
time = 15

[Command]
name = "KohouS"
command = ~F,D,DF, y
time = 15

[Command]
name = "koukenW"
command = ~D,DF,F, x
time = 10

[Command]
name = "koukenS"
command = ~D,DF,F, y
time = 10

[Command]
name = "BuraiganW"
command = ~D,DB,B, x
time = 20

[Command]
name = "BuraiganS"
command = ~D,DB,B, y
time = 20

[Command]
name = "ShoranW"
command = ~F,D,DB,B, a
time = 15

[Command]
name = "ShoranS"
command = ~F,D,DB,B, b
time = 15

[Command]
name = "ShoranW"
command = ~F,DB,D,B, a
time = 15

[Command]
name = "ShoranS"
command = ~F,DB,D,B, b
time = 15

[Command]
name = "zanretsuW"
command = ~F, B, F, x

[Command]
name = "zanretsuS"
command = ~F, B, F, y

[Command]
name = "HienW"
command = ~40$DB, F, a
time = 10

[Command]
name = "HienS"
command = ~40$DB, F, b
time = 10
;--------

[Command]
name = "longjump"
command = D, $U
time = 18

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "FBF"
command = F, B, F
time = 10

[Command]
name = "BFB"
command = B, F, B
time = 10

;-| 2 Button Combination |-----------------------------------------------
[Command]
name = "roll"
command = x+a
time = 1

[Command]
name = "knockdown"
command = y+b
time = 1

[Command]
name = "dodge"
command = x+a
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

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

;-| Dir + Button |---------------------------------------------------------


;-| Single Button |---------------------------------------------------------
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
name = "a"
command = a
time = 1

[Command]
name = "s"
command = s
time = 1

;=========
; Commands
:=========
[Statedef -1]

;=========================
; COMBO VAR 
;=========================
[State -1, Combo1]
type = Varset
trigger1 = 1
var(39) = 0

[State -1, Combo2]
type = Varset
trigger1 = (stateno = 210) && animelemtime(3) > 0  && animelemtime(4) < 0 && movetype = A && movecontact
trigger2 = (stateno = 230) && animelemtime(5) > 0 && animelemtime(6) < 0 && movetype = A && movecontact
trigger3 = (stateno = 250) && animelemtime(3) > 0 && animelemtime(4) < 0 && movetype = A && movecontact
trigger4 = (stateno = 280) && animelemtime(5) > 0 && animelemtime(6) < 0 && movetype = A && movecontact
trigger5 = (stateno = 400) && animelemtime(2) > 0 && animelemtime(4) < 0 && movetype = A && movecontact
trigger6 = (stateno = 420) && animelemtime(2) > 0 && animelemtime(3) < 0 && movetype = A && movecontact
trigger7 = (stateno = 440) && animelemtime(4) > 0 && animelemtime(5) < 0 && movetype = A && movecontact
trigger8 = (stateno = 460) && animelemtime(3) > 0 && animelemtime(4) < 0 && movetype = A && movecontact
trigger9 = (stateno = 305) && animelemtime(7) > 0 && animelemtime(9) < 0 && movetype = A && movecontact
trigger10 = (stateno = 310) && animelemtime(4) > 0 && animelemtime(5) < 0 && movetype = A && movecontact
trigger11 = (stateno = 315) && animelemtime(4) > 0 && animelemtime(5) < 0 && movetype = A && movecontact
trigger12 = (stateno = 325) && animelemtime(8) > 0 && animelemtime(9) < 0 && movetype = A && movecontact
trigger13 = (stateno = 703) && animelemtime(5) > 0 && animelemtime(7) < 0 && movetype = A && movecontact
ignorehitpause = 1
var(39) = var(39) | 1




[State -1, fakeCombo]
type = Varset
trigger1 = 1
var(42) = 0


[State -1, Combo2]
type = Varset
trigger1 = (stateno = 250) && animelemtime(3) > 1 && animelemtime(3) <= 4
trigger2 = (stateno = 440) && animelemtime(4) > 1 && animelemtime(4) <= 2
trigger3 = (stateno = 460) && animelemtime(3) > 1 && animelemtime(3) <= 4
trigger4 = (stateno = 280) && animelemtime(5) > 0 && animelemtime(6) <= 3
ignorehitpause = 1
var(42) = var(42) | 1

;==============
;HYPER MOVES
;==============
[State -1,RyuukoM]
type = ChangeState
value = 3500
triggerall = var(9) != 1
triggerall = command = "RyuukoM"
triggerall = power >= 2000
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

[State -1,RyuukoW]
type = ChangeState
value = 3000
triggerall = var(9) != 1
triggerall = command = "RyuukoW"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

[State -1,RyuukoS]
type = ChangeState
value = 3005
triggerall = var(9) != 1
triggerall = command = "RyuukoS"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

[State -1,KkohouW]
type = ChangeState
value = 3300
triggerall = var(9) != 1
triggerall = command = "KkohouW"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

[State -1,KkohouS]
type = ChangeState
value = 3300
triggerall = var(9) != 1
triggerall = command = "KkohouS"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

[State -1,SHao]
type = ChangeState
value = 3600
triggerall = var(9) != 1
triggerall = command = "SHao"
triggerall = power >= 2000
triggerall = life <= 250
triggerall = NumProj = 0
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

[State 21,HaoW]
type = ChangeState
value = 3200
triggerall = var(9) != 1
triggerall = command = "HaoW"
triggerall = power >= 1000
triggerall = NumProj = 0
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

[State -1,HaoS]
type = ChangeState
value = 3205
triggerall = var(9) != 1
triggerall = command = "HaoS"
triggerall = power >= 1000
triggerall = NumProj = 0
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1
;==============
;SPECIAL MOVES
;==============
;Kohou Weak
[State -1, WKohou]
type = ChangeState
value = 1600
triggerall = var(9) != 1
triggerall = command = "KohouW"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

;Kohou Strong
[State -1, SKohou]
type = ChangeState
value = 1610
triggerall = var(9) != 1
triggerall = command = "KohouS"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

;Kouken Weak
[State -1, Wkouken]
type = ChangeState
value = 1000
triggerall = var(9) != 1
triggerall = command = "koukenW" && NumProj = 0
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

;Kouken Strong
[State -1, Skouken]
type = ChangeState
value = 1050
triggerall = var(9) != 1
triggerall = command = "koukenS" && NumProj = 0
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

;Shorankyaku Weak
[State -1, Wshoran]
type = ChangeState
value = 1400
triggerall = var(9) != 1
triggerall = command = "ShoranW"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

;Shorankyaku Strong
[State -1, Wshoran]
type = ChangeState
value = 1410
triggerall = var(9) != 1
triggerall = command = "ShoranS"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

;Bouraigan Weak
[State -1, Wburaigan]
type = ChangeState
value = 1100
triggerall = var(9) != 1
triggerall = command = "BuraiganW"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

;Bouraigan Strong
[State -1, Sburaigan]
type = ChangeState
value = 1105
triggerall = var(9) != 1
triggerall = command = "BuraiganS"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

;Zanretsu Weak
[State -1, WZanretsu]
type = ChangeState
value = 1200
triggerall = var(9) != 1
triggerall = command = "zanretsuW"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

;Zanretsu Strong
[State -1, SZanretsu]
type = ChangeState
value = 1201
triggerall = var(9) != 1
triggerall = command = "zanretsuS"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

;Hien Weak
[State -1, WHien]
type = ChangeState
value = 1500
triggerall = var(9) != 1
triggerall = command = "HienW"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1

;Hien Strong
[State -1, SHien]
type = ChangeState
value = 1510
triggerall = var(9) != 1
triggerall = command = "HienS"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1
trigger3 = var(42) = 1
;================
;THROWS
;================
;GrabY
[State -1, GrabY ]
type = ChangeState
value = 350
triggerall = command = "y"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)


;GrabB
[State -1, GrabB ]
type = ChangeState
value = 360
triggerall = command = "b"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)

;================
;BASIC COMMANDS
;================
; Taunt
[State -1]
type = ChangeState
value = 195
triggerall = var(9) = 0
triggerall = command = "s"
triggerall = stateno != 190
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Run fwd
[State -1]
type = ChangeState
value = 100
triggerall = var(9) = 0
triggerall = command = "FF"
triggerall = command != "FBF"
trigger1 = statetype = S
trigger1 = ctrl

; Step back
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = command != "BFB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,rollB]
type = ChangeState
value = 701
;triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdback"
triggerall = life > 0 && statetype != A
trigger1 = ctrl

[State -1,RollF] 
type = ChangeState
value = 700
;triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdfwd"
triggerall = life > 0 && statetype != A
trigger1 = ctrl

[State -1,rollB Counter]
type = ChangeState
value = 710
triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdback"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,RollF counter]
type = ChangeState
value = 711
triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdfwd"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1, Dodge] 
type = ChangeState
value = 702
;triggerall = var(9) != 1
triggerall = command = "roll"
triggerall = life > 0 && statetype != A
trigger1 = ctrl

[State -1,CD counter]
type = ChangeState
value = 712
;triggerall = var(9) != 1
triggerall = command = "knockdown"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,Knockdown]
type = ChangeState
value = 280
;triggerall = var(9) != 1
triggerall = command = "knockdown" 
trigger1 = statetype = S && ctrl 

[State -1,JCD]
type = ChangeState
value = 680
triggerall = var(9) != 1
triggerall = command = "knockdown"
trigger1 = statetype = A && ctrl

;================
;SUPPORT ATTACKS
;================
;Fowrward Light Kick Cancel
[State -1,FLkCancel]
type = ChangeState
value = 305
;triggerall = var(9) != 1
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = (stateno = 210) && animelemtime(3) > 0  && animelemtime(4) < 0 && movetype = A && movecontact
trigger2 = (stateno = 230) && animelemtime(5) > 0 && animelemtime(5) <= 1 && movetype = A && movecontact
trigger3 = (stateno = 250) && animelemtime(3) > 0 && animelemtime(3) <= 1 && movetype = A && movecontact
trigger4 = (stateno = 400) && animelemtime(2) > 0 && animelemtime(2) <= 1 && movetype = A && movecontact
trigger5 = (stateno = 420) && animelemtime(2) > 0 && animelemtime(2) <= 1 && movetype = A && movecontact
trigger6 = (stateno = 440) && animelemtime(4) > 0 && animelemtime(4) <= 1 && movetype = A && movecontact
trigger7 = (stateno = 460) && animelemtime(3) > 0 && animelemtime(4) < 0 && movetype = A && movecontact

;Fowrward Light Kick
[State -1,FLk]
type = ChangeState
value = 300
;triggerall = var(9) != 1
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 250) && animelemtime(3) > 1 && animelemtime(4) < 0 
trigger3 = (stateno = 440) && animelemtime(4) > 1 && animelemtime(4) <= 2 
trigger4 = (stateno = 460) && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = (stateno = 400) && animelemtime(2) > 1 && animelemtime(3) < 0
trigger6 = (stateno = 420) && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = (stateno = 230) && animelemtime(5) > 1 && animelemtime(6) < 0


;Fowrward Light Punch Cancel
[State -1,FLpCancel]
type = ChangeState
value = 315
;triggerall = var(9) != 1
triggerall = command = "x" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = (stateno = 210) && animelemtime(3) > 0  && animelemtime(4) < 0 && movetype = A && movecontact
trigger2 = (stateno = 230) && animelemtime(5) > 0 && animelemtime(5) <= 1 && movetype = A && movecontact
trigger3 = (stateno = 250) && animelemtime(3) > 0 && animelemtime(3) <= 1 && movetype = A && movecontact
trigger4 = (stateno = 400) && animelemtime(2) > 0 && animelemtime(2) <= 1 && movetype = A && movecontact
trigger5 = (stateno = 420) && animelemtime(2) > 0 && animelemtime(2) <= 1 && movetype = A && movecontact
trigger6 = (stateno = 440) && animelemtime(4) > 0 && animelemtime(4) <= 1 && movetype = A && movecontact
trigger7 = (stateno = 460) && animelemtime(3) > 0 && animelemtime(4) < 0 && movetype = A && movecontact

;Fowrward Light Punch
[State -1,FLp]
type = ChangeState
value = 310
;triggerall = var(9) != 1
triggerall = command = "x" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 250) && animelemtime(3) > 1 && animelemtime(4) < 0 
trigger3 = (stateno = 440) && animelemtime(4) > 1 && animelemtime(4) <= 2 
trigger4 = (stateno = 460) && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = (stateno = 400) && animelemtime(2) > 1 && animelemtime(3) < 0
trigger6 = (stateno = 420) && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = (stateno = 230) && animelemtime(5) > 1 && animelemtime(6) < 0

;Back Light Punch Cancel
[State -1,BlpCancel]
type = ChangeState
value = 325
;triggerall = var(9) != 1
triggerall = command = "x" && command = "holdback"
triggerall = command != "holddown"
trigger1 = (stateno = 210) && animelemtime(3) > 0  && animelemtime(4) < 0 && movetype = A && movecontact
trigger2 = (stateno = 230) && animelemtime(5) > 0 && animelemtime(5) <= 1 && movetype = A && movecontact
trigger3 = (stateno = 250) && animelemtime(3) > 0 && animelemtime(3) <= 1 && movetype = A && movecontact
trigger4 = (stateno = 400) && animelemtime(2) > 0 && animelemtime(2) <= 1 && movetype = A && movecontact
trigger5 = (stateno = 420) && animelemtime(2) > 0 && animelemtime(2) <= 1 && movetype = A && movecontact
trigger6 = (stateno = 440) && animelemtime(4) > 0 && animelemtime(4) <= 1 && movetype = A && movecontact
trigger7 = (stateno = 460) && animelemtime(3) > 0 && animelemtime(4) < 0 && movetype = A && movecontact

;Back Light Punch
[State -1,Blp]
type = ChangeState
value = 320
;triggerall = var(9) != 1
triggerall = command = "x" && command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 250) && animelemtime(3) > 1 && animelemtime(4) < 0 
trigger3 = (stateno = 440) && animelemtime(4) > 1 && animelemtime(4) <= 2 
trigger4 = (stateno = 460) && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = (stateno = 400) && animelemtime(2) > 1 && animelemtime(3) < 0
trigger6 = (stateno = 420) && animelemtime(2) > 1 && animelemtime(3) < 0
trigger7 = (stateno = 230) && animelemtime(5) > 1 && animelemtime(6) < 0
;===============
;BASIC ATTACKS
;===============
;Light Punch
[State -1,Lp]
type = ChangeState
value = 200
triggerall = var(9) != 1
triggerall = command = "x"
triggerall = p2bodydist x >= 27
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 420) && animelemtime(2) > 1 && animelemtime(2) <= 3 && movetype = A && movecontact && command != "holddown" && command != "holdfwd" && command != "holdback"
trigger3 = (stateno = 210) && animelemtime(3) > 1 && animelemtime(3) <= 3 && movetype = A && movecontact && command != "holddown" && command != "holdfwd" && command != "holdback"
trigger4 = (stateno = 400) && animelemtime(2) > 1 && animelemtime(2) <= 3 && movetype = A && movecontact && command != "holddown" && command != "holdfwd" && command != "holdback"
trigger5 = (stateno = 200) && animelemtime(3) > 2 && command != "holddown"  && command != "holdfwd" && command != "holdback"
trigger6 = (stateno = 230) && animelemtime(5) > 2 && animelemtime(5) <= 4 && movetype = A && movecontact && command != "holddown"  && command != "holdfwd" && command != "holdback"
ignorehitpause = 1

;Light Punch Close
[State -1,Lpc]
type = ChangeState
value = 210
triggerall = var(9) != 1
triggerall = command = "x"
triggerall = p2bodydist x < 27
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 420) && animelemtime(2) > 1 && animelemtime(2) <= 3 && movetype = A && movecontact && command != "holddown" && command != "holdfwd" && command != "holdback"
trigger3 = (stateno = 210) && animelemtime(3) > 1 && animelemtime(3) <= 3 && movetype = A && movecontact && command != "holddown" && command != "holdfwd" && command != "holdback"
trigger4 = (stateno = 400) && animelemtime(2) > 1 && animelemtime(2) <= 3 && movetype = A && movecontact && command != "holddown" && command != "holdfwd" && command != "holdback"
trigger5 = (stateno = 230) && animelemtime(5) > 2 && animelemtime(5) <= 4 && movetype = A && movecontact && command != "holddown" && command != "holdfwd" && command != "holdback"
ignorehitpause = 1


;Light Kick
[State -1,Lk]
type = ChangeState
value = 220
triggerall = var(9) != 1
triggerall = command = "a"
triggerall = p2bodydist x >= 27
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 420) && animelemtime(2) > 1 && animelemtime(2) <= 3 && movetype = A && movecontact && command != "holddown" && command != "holdfwd"
trigger3 = (stateno = 210) && animelemtime(3) > 1 && animelemtime(3) <= 3 && movetype = A && movecontact && command != "holddown" && command != "holdfwd"
trigger4 = (stateno = 400) && animelemtime(2) > 1 && animelemtime(2) <= 3 && movetype = A && movecontact && command != "holddown" && command != "holdfwd"
trigger5 = (stateno = 220) && animelemtime(7) > 2 && command != "holdfwd" 
trigger6 = (stateno = 230) && animelemtime(5) > 2 && animelemtime(5) <= 4 && movetype = A && movecontact && command != "holddown" && command != "holdfwd"
ignorehitpause = 1

;Light Kick Close
[State -1,Lkc]
type = ChangeState
value = 230
triggerall = var(9) != 1
triggerall = command = "a"
triggerall = p2bodydist x < 27
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 420) && animelemtime(2) > 1 && animelemtime(2) <= 3 && movetype = A && movecontact && command != "holddown" && command != "holdfwd"
trigger3 = (stateno = 210) && animelemtime(3) > 1 && animelemtime(3) <= 3 && movetype = A && movecontact && command != "holddown" && command != "holdfwd"
trigger4 = (stateno = 400) && animelemtime(2) > 1 && animelemtime(2) <= 3 && movetype = A && movecontact && command != "holddown" && command != "holdfwd"
trigger5 = (stateno = 230) && animelemtime(5) > 2 && animelemtime(5) <= 4 && movetype = A && movecontact && command != "holddown" && command != "holdfwd"
ignorehitpause = 1

;High Punch
[State -1,hp]
type = ChangeState
value = 240
triggerall = var(9) != 1
triggerall = command = "y"
triggerall = p2bodydist x >= 27
trigger1 = statetype = S && ctrl
ignorehitpause = 1

;High Punch Close
[State -1,hpc]
type = ChangeState
value = 250
triggerall = var(9) != 1
triggerall = command = "y"
triggerall = p2bodydist x < 27
trigger1 = statetype = S && ctrl
ignorehitpause = 1

;High Kick
[State -1,hk]
type = ChangeState
value = 260
triggerall = var(9) != 1
triggerall = command = "b"
triggerall = p2bodydist x >= 22
trigger1 = statetype = S && ctrl
ignorehitpause = 1

;High Kick Close
[State -1,hkc]
type = ChangeState
value = 270
triggerall = var(9) != 1
triggerall = command = "b"
triggerall = p2bodydist x < 22
trigger1 = statetype = S && ctrl
ignorehitpause = 1

;Crouch light Punch
[State -1,CLP]
type = ChangeState
value = 400
;triggerall = var(9) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 47
trigger3 = (stateno = 420) && animelemtime(2) > 0 && animelemtime(2) <= 3 && movetype = A && movecontact && command = "holddown"
trigger4 = (stateno = 210) && animelemtime(3) > 1 && animelemtime(3) <= 3 && movetype = A && movecontact && command = "holddown"
trigger5 = (stateno = 400) && animelemtime(2) > 2 && animelemtime(3) <= 2 && movetype = A && movecontact && command = "holddown"
trigger6 = (stateno = 400) && animelemtime(3) > 2 && command = "holddown"
trigger7 = (stateno = 230) && animelemtime(5) > 2 && animelemtime(5) <= 4 && movetype = A && movecontact && command = "holddown"
ignorehitpause = 1

;Crouch Light Kick
[State -1,CLk]
type = ChangeState
value = 420
;triggerall = var(9) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 47
trigger3 = (stateno = 420) && animelemtime(2) > 1 && animelemtime(2) <= 3 && movetype = A && movecontact && command = "holddown"
trigger4 = (stateno = 210) && animelemtime(3) > 1 && animelemtime(3) <= 3 && movetype = A && movecontact && command = "holddown"
trigger5 = (stateno = 400) && animelemtime(2) > 2 && animelemtime(3) <= 2 && movetype = A && movecontact && command = "holddown"
trigger6 = (stateno = 420) && animelemtime(3) > 1 && command = "holddown"
trigger7 = (stateno = 230) && animelemtime(5) > 2 && animelemtime(5) <= 4 && movetype = A && movecontact && command = "holddown"
ignorehitpause = 1

;Crouch High Punch
[State -1,Chp]
type = ChangeState
value = 440
;triggerall = var(9) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 47

;Crouch High Kick
[State -1,CLk]
type = ChangeState
value = 460
;triggerall = var(9) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 47
ignorehitpause = 1

;Jump Neutral Light Punch Short
[State -1,JHPNshort]
type = ChangeState
value = 600
;triggerall = var(9) != 1
triggerall = command = "x"
triggerall = statetype = A && ctrl
trigger1 = anim = 201
trigger2 = anim = 202

;Jump Neutral Light Punch
[State -1,JLPN]
type = ChangeState
value = 600
triggerall = var(9) != 1
triggerall = command = "x"
triggerall = statetype = A
triggerall = vel x = 0
trigger1 = statetype = A && ctrl

;Jump Light Punch
[State -1,JLP]
type = ChangeState
value = 610
triggerall = var(9) != 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = stateno = 201 && ctrl

;Jump Light Kick
[State -1,JLK]
type = ChangeState
value = 630
triggerall = var(9) != 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = stateno = 201 && ctrl

;;Jump Neutral Light Kick
[State -1,JLKN]
type = ChangeState
value = 620
;triggerall = var(9) != 1
triggerall = command = "a"
triggerall = vel x = 0
trigger1 = statetype = A && ctrl

;Jump High Punch
[State -1,JHP]
type = ChangeState
value = 650
triggerall = var(9) != 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = stateno = 201 && ctrl

;Jump Neutral High Punch
[State -1,JHPN]
type = ChangeState
value = 640
;triggerall = var(9) != 1
triggerall = command = "y"
triggerall = vel x = 0
trigger1 = statetype = A && ctrl

;Jump High Kick
[State -1,JHK]
type = ChangeState
value = 670
triggerall = var(9) != 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = stateno = 201 && ctrl

;Jump Neutral High Kick
[State -1,JHKN]
type = ChangeState
value = 660
;triggerall = var(9) != 1
triggerall = command = "b"
triggerall = vel x = 0
trigger1 = statetype = A && ctrl


;================
;NORMAL ATTACKS
;================

;================
; AI Modification
;================
;(NOT YET)



