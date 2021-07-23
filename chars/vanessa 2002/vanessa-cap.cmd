;-| Single Button |---------------------------------------------------------

[Command]
name = "a1"
command = a
time = 1

[Command]
name = "d"
command = b
time = 1

[Command]
name = "c1"
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
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

;-| Other Stuff |------------------------------------------------------

[Command]
name = "taunt"
command = s
time = 1

[Command]
name = "striker"
command = a+y
time = 1

;-| Super Motions |--------------------------------------------------------

; Illusion Dance
[Command]
name = "Crazy Puncher A"
command = ~D, F, D, F, a
time = 40

[Command]
name = "Crazy Puncher C"
command = ~D, F, D, F, b
time = 40

; Champion Puncher
[Command]
name = "Champion Puncher"
command = ~D, F, D, F, x
time = 40

[Command]
name = "Champion Puncher"
command = ~D, F, D, F, y
time = 40

;-| Special Motions |------------------------------------------------------
;Puncher Vision
[Command]
name = "Puncher Vision(fwd) B"
command = ~D, F, a
time = 20

[Command]
name = "Puncher Vision(fwd) D"
command = ~D, F, b
time = 20

[Command]
name = "Puncher Vision(back) B"
command = ~D, B, a
time = 20

[Command]
name = "Puncher Vision(back) D"
command = ~D, B, b
time = 20

;Puncher Weaving
[Command]
name = "Puncher Weaving A"
command = ~D, B, x
time = 20

[Command]
name = "Puncher Weaving C"
command = ~D, B, y
time = 20

;Parrying Puncher
[Command]
name = "Parrying Puncher A"
command = ~F, D, DF, x
time = 15

[Command]
name = "Parrying Puncher C"
command = ~F, D, DF, y
time = 15

;Dash Puncher
[Command]
name = "Dash Puncher A"
command = ~D, D, x

[Command]
name = "Dash Puncher C"
command = ~D, D, y

;Machine Gun Puncher
[Command]
name = "Machine Gun Puncher"
command = ~D, F, x
time = 15

[Command]
name = "Machine Gun Puncher"
command = ~D, F, y
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "ab"
command = x+a
time = 1

[Command]
name = "cd"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,x
time = 1

[Command]
name = "fwd_b"
command = /F,a
time = 1

[Command]
name = "fwd_c"
command = /F,y
time = 1

[Command]
name = "fwd_d"
command = /F,b
time = 1

[Command]
name = "back_a"
command = /B,x
time = 1

[Command]
name = "back_b"
command = /B,a
time = 1

[Command]
name = "back_c"
command = /B,y
time = 1

[Command]
name = "back_d"
command = /B,b
time = 1

[Command]
name = "down_a"
command = /$D,x
time = 1

[Command]
name = "down_b"
command = /$D,a
time = 1

[Command]
name = "down_c"
command = /$D,y
time = 1

[Command]
name = "down_d"
command = /$D,b
time = 1

[Command]
name = "df_b"
command = /$DF,a
time = 1

[Command]
name = "fwd_ab"
command = /F, x+a
time = 1

[Command]
name = "back_ab"
command = /B, x+a
time = 1

[Command]
name = "back_ab"
command = /DB, x+a
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 8

[Command]
name = "longjump"
command = ~DF, $U
time = 8

[Command]
name = "longjump"
command = ~DB, $U
time = 8

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = x
time = 1

[Command]
name = "b"
command = a
time = 1

[Command]
name = "c"
command = y
time = 1

;-| Tap Button |-----------------------------------------------------------
[Command]
name = "tap_a"
command = x, x, x
time = 10

[Command]
name = "tap_c"
command = y, y, y
time = 10

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_a"
command = /$x
time = 1

[Command]
name = "hold_b"
command = /$a
time = 1

[Command]
name = "hold_c"
command = /$y
time = 1

[Command]
name = "hold_d"
command = /$b
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

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
; COMBO VAR 
;=========================

;========================================
[State -1, Combo1]
type = Varset
trigger1 = 1
var(39) = 0

[State -1, Combo2]
type = Varset
trigger1  = stateno = 200 && animelemtime(4) > 1 && animelemtime(6) < 0
trigger2  = stateno = 205 && animelemtime(4) > 1 && animelemtime(6) < 0
trigger3  = stateno = 210 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger4  = stateno = 215 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger5  = stateno = 220 && animelemtime(3) > 1
trigger6  = stateno = 221 && animelemtime(2) > 1 && animelemtime(4) < 0
trigger7  = stateno = 226 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger8  = stateno = 230 && animelemtime(4) > 1 && animelemtime(8) < 0
trigger9  = stateno = 400 && animelemtime(2) > 1 && animelemtime(4) < 0
trigger10  = stateno = 410 && animelemtime(2) > 1 && animelemtime(4) < 0
trigger11  = stateno = 420 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger12  = stateno = 430 && animelemtime(5) > 1 && animelemtime(7) < 0
trigger13  = stateno = 260 && animelemtime(11) > 0 && animelemtime(13) < 0
trigger14  = stateno = 250 && animelemtime(11) > 0 && animelemtime(13) < 0
trigger15  = stateno = 240 && animelemtime(4) > 1 && animelemtime(9) < 0
ignorehitpause = 1
var(39) = var(39) | 1

;===========================================================================
;SUPER ATTACKS (Chou Hissatsu Waza)
;===========================================================================
;Champion Puncher
[State -1]
type = ChangeState
value = 3000 + ((var(10) > 0) * 500)
triggerall = var(9) != 1
triggerall = power >= 1000 && command = "Champion Puncher"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

;Crazy Puncher A
[State -1]
type = ChangeState
value = 3100 + ((var(10) > 0) * 500)
triggerall = var(9) != 1
triggerall = power >= 1000 && command = "Crazy Puncher A"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

;Crazy Puncher C
[State -1]
type = ChangeState
value = 3105 + ((var(10) > 0) * 495)
triggerall = var(9) != 1
triggerall = power >= 1000 && command = "Crazy Puncher C"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

;===========================================================================
;SPECIAL ATTACKS (Hissatsu Waza)
;===========================================================================
;Parrying Puncher
[State -1]
type = ChangeState
value = 1200
triggerall = var(9) != 1
triggerall = command = "Parrying Puncher A"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

[State -1]
type = ChangeState
value = 1210
triggerall = var(9) != 1
triggerall = command = "Parrying Puncher C"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

;Machine Gun Puncher
[State -1]
type = ChangeState
value = 1400
triggerall = var(9) != 1
triggerall = command = "Machine Gun Puncher"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

;Puncher Vision(fwd)
[State -1]
type = ChangeState
value = 1000
triggerall = var(9) != 1
triggerall = command = "Puncher Vision(fwd) B"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

[State -1]
type = ChangeState
value = 1020
triggerall = var(9) != 1
triggerall = command = "Puncher Vision(fwd) D"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

;Puncher Vision(back)
[State -1]
type = ChangeState
value = 1040
ignorehitpause = 1
triggerall = var(9) != 1
triggerall = command = "Puncher Vision(back) B"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

[State -1]
type = ChangeState
value = 1060
ignorehitpause = 1
triggerall = var(9) != 1
triggerall = command = "Puncher Vision(back) D"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

;Puncher Weaving
[State -1]
type = ChangeState
value = 1100
ignorehitpause = 1
triggerall = var(9) != 1
triggerall = command = "Puncher Weaving A"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

[State -1]
type = ChangeState
value = 1105
ignorehitpause = 1
triggerall = var(9) != 1
triggerall = command = "Puncher Weaving C"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

;Dash Puncher
[State -1]
type = ChangeState
value = 1300
triggerall = var(9) != 1
triggerall = command = "Dash Puncher A"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

[State -1]
type = ChangeState
value = 1320
;triggerall = var(9) != 1
triggerall = command = "Dash Puncher C"
trigger1 = statetype != A && ctrl = 1
trigger2 = var(39) = 1

;===========================================================================
;DASH/BACKHOP
;===========================================================================
;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = var(9) != 1
trigger1 = stateno != [100,101]
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl = 1

;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = var(9) != 1
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl = 1

;===========================================================================
;NORMAL THROWS (Nage)
;===========================================================================
;C THROW (close dir+Strong Punch)
[State -1]
type = ChangeState
value = 800
;triggerall = var(9) != 1
trigger1 = statetype = S && ctrl = 1 && p2bodydist X < 10 ;Near P2
trigger1 = (command = "back_c" || command = "fwd_c") && stateno != 100 && (p2statetype = S || p2statetype = C) && p2movetype != H

;D THROW (close dir+Strong Kick)
[State -1]
type = ChangeState
value = 850
;triggerall = var(9) != 1
trigger1 = statetype = S && ctrl = 1 && p2bodydist X < 10 ;Near P2
trigger1 = (command = "back_d" || command = "fwd_d") && stateno != 100 && (p2statetype = S || p2statetype = C)  && p2movetype != H

;===========================================================================
;POW EXPLODE
;===========================================================================
[State -1]
type = ChangeState
value = 780
;triggerall = var(9) != 1
;trigger1 = command = "a" && command = "b" && command = "c"
trigger1 = command = "b" && command = "c"
trigger1 = statetype != A && ctrl = 1 && var(10) = 0 && power >= 1000

;===========================================================================
;CD ATTACKS
;===========================================================================
; Standing CD
[State -1]
type = ChangeState
value = 240
triggerall = var(9) != 1
trigger1 = command = "cd" && statetype != A && ctrl = 1

; CD Counter
[State -1]
type = ChangeState
value = 245
;triggerall = var(9) != 1
trigger1 = command = "cd" && var(10) > 0 && stateno = [150,153]

;Jumping CD
[State -1]
type = ChangeState
value = 640
;triggerall = var(9) != 1
triggerall = command = "cd"
trigger1 = statetype = A
trigger1 = ctrl = 1

;===========================================================================
;ROLLS
;===========================================================================
; Guard Cancel Roll backward
[State -1]
type = ChangeState
value = 770
;triggerall = var(9) != 1
trigger1 = command = "back_ab" && var(10) > 0 && stateno = [150,153]

; Guard Cancel Roll Forward
[State -1]
type = ChangeState
value = 760
;triggerall = var(9) != 1
trigger1 = command = "ab" && var(10) > 0 && stateno = [150,153]

;Roll Backward
[State -1]
type = ChangeState
value = 740
triggerall = var(9) != 1
trigger1 = command = "back_ab" && statetype = S && ctrl = 1

;Recovery Roll
[State -1]
type = null ;ChangeState
value = 750
;triggerall = var(9) != 1
trigger1 = command = "ab" && movetype = H && ctrl = 0
trigger1 = canrecover = 1 && statetype = A && pos Y >= -12 && vel Y > 0

;Roll Forward
[State -1]
type = ChangeState
value = 700
triggerall = var(9) != 1
trigger1 = command = "ab" && statetype = S && ctrl = 1

;===========================================================================
;COMMAND NORMAL ATTACKS
;===========================================================================
;Trap Kick (chained)
[State -1]
type = ChangeState
value = 260
triggerall = var(9) != 1
triggerall = command = "fwd_a" && movecontact
trigger1  = stateno = 200 && animelemtime(4) > 1 && animelemtime(6) < 0
trigger2  = stateno = 205 && animelemtime(4) > 1
trigger3  = stateno = 210 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger4  = stateno = 215 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger5  = stateno = 220 && animelemtime(3) > 1
trigger6  = stateno = 221 && animelemtime(2) > 1 && animelemtime(4) < 0
trigger7  = stateno = 226 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger8  = stateno = 400 && animelemtime(2) > 1 && animelemtime(4) < 0
trigger9  = stateno = 410 && animelemtime(2) > 1 && animelemtime(4) < 0
trigger10  = stateno = 420 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger11  = stateno = 430 && animelemtime(5) > 1 && animelemtime(7) < 0

[State -1]
type = ChangeState
value = 250
triggerall = var(9) != 1
triggerall = command = "fwd_a"
trigger1 = statetype != A && ctrl = 1
trigger2  = stateno = 230 && animelemtime(4) > 1 && animelemtime(8) < 0

;Slide Kick
[State -1]
type = ChangeState
value = 440
;triggerall = var(9) != 1
triggerall = command = "df_b"
trigger1 = statetype != A && ctrl = 1
trigger2  = stateno = 200 && animelemtime(4) > 1 && animelemtime(6) < 0
trigger3  = stateno = 205 && animelemtime(4) > 1
trigger4  = stateno = 210 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger5  = stateno = 215 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger6  = stateno = 220 && animelemtime(3) > 1
trigger7  = stateno = 221 && animelemtime(2) > 1 && animelemtime(4) < 0
trigger8  = stateno = 226 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger9  = stateno = 230 && animelemtime(4) > 1 && animelemtime(8) < 0
trigger10  = stateno = 400 && animelemtime(2) > 1 && animelemtime(4) < 0
trigger11  = stateno = 410 && animelemtime(2) > 1 && animelemtime(4) < 0
trigger12  = stateno = 420 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger13  = stateno = 430 && animelemtime(5) > 1 && animelemtime(7) < 0

;Close A
[State -1]
type = ChangeState
value = 205
triggerall = var(9) != 1
triggerall = command = "a"
triggerall = p2bodydist x < 20
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 400 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 410 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger4 = stateno = 205 && animelemtime(4) > 1
trigger5 = stateno = 215 && animelemtime(3) > 1 && animelemtime(5) < 0

;Close B
[State -1]
type = ChangeState
value = 215
triggerall = var(9) != 1
triggerall = command = "b"
triggerall = p2bodydist x < 20
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 400 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 410 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger4 = stateno = 205 && animelemtime(4) > 1
trigger5 = stateno = 215 && animelemtime(3) > 1 && animelemtime(5) < 0

;Close C
[State -1]
type = ChangeState
value = 225
triggerall = var(9) != 1
triggerall = command = "c"
triggerall = p2bodydist x < 20
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1

;===========================================================================
;STANDING NORMAL ATTACKS
;===========================================================================
;Standing A
[State -1]
type = ChangeState
value = 200
triggerall = var(9) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 400 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 410 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger4 = stateno = 205 && animelemtime(4) > 1
trigger5 = stateno = 215 && animelemtime(3) > 1 && animelemtime(5) < 0

;Standing B
[State -1]
type = ChangeState
value = 210
triggerall = var(9) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 400 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 410 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger4 = stateno = 205 && animelemtime(4) > 1
trigger5 = stateno = 215 && animelemtime(3) > 1 && animelemtime(5) < 0

;Standing C
[State -1]
type = ChangeState
value = 220
triggerall = var(9) != 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Standing D
[State -1]
type = ChangeState
value = 230
triggerall = var(9) != 1
triggerall = command = "d"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;CROUCHING NORMAL ATTACKS
;===========================================================================
;Crouching A
[State -1]
type = ChangeState
value = 400
;triggerall = var(9) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 410 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger3 = stateno = 200 && animelemtime(4) > 1 && animelemtime(6) < 0
trigger4 = stateno = 205 && animelemtime(4) > 1
trigger5 = stateno = 210 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger6 = stateno = 215 && animelemtime(3) > 1 && animelemtime(4) < 0

;Crouching B
[State -1]
type = ChangeState
value = 410
;triggerall = var(9) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && animelemtime(4) > 1 && animelemtime(6) < 0
trigger3 = stateno = 205 && animelemtime(4) > 1
trigger4 = stateno = 210 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 215 && animelemtime(3) > 1 && animelemtime(4) < 0

;Crouching C
[State -1]
type = ChangeState
value = 420
triggerall = var(9) != 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Crouching D
[State -1]
type = ChangeState
value = 430
triggerall = var(9) != 1
triggerall = command = "d"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;===========================================================================
;JUMPING NORMAL ATTACKS
;===========================================================================
;Jumping A
[State -1]
type = ChangeState
value = 600
triggerall = var(9) != 1
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jumping B
[State -1]
type = ChangeState
value = 610
triggerall = var(9) != 1
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jumping C
[State -1]
type = ChangeState
value = 620
triggerall = var(9) != 1
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jumping D
[State -1]
type = ChangeState
value = 630
triggerall = var(9) != 1
trigger1 = command = "d"
trigger1 = statetype = A
trigger1 = ctrl = 1

;===========================================================================
;TAUNT
;===========================================================================
[State -1]
type = ChangeState
value = 300
;triggerall = var(9) != 1
triggerall = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1


;=====================================================================================
;-----[ AI MODIFICATION ]-----
;=====================================================================================
;Crazy Puncher
[State -1, Crazy]
type = ChangeState
value = 3105 + ((var(10) > 0) * 495)
ctrl = 0
triggerall = var(9) = 1
triggerall = power >= 1000 && random <= 900
trigger1 = p2statetype != A 
trigger1 = stateno = 260 && animelemtime(11) > 0 && animelemtime(13) < 0 && movehit
trigger2 = p2bodydist y >= -40 && (p2bodydist x = [15,50]) && p2statetype = A && p2movetype != H && statetype != A && ctrl

;Champion Puncher
[State -1, Champion]
type = ChangeState
value = 3000 + ((Var(10) > 0) * 500)
ctrl = 0
triggerall = var(9) = 1
triggerall = power >= 1000 && random <= 400
trigger1 = p2bodydist x > 25 && p2statetype != A 
trigger1 = stateno = 226 && animelemtime(3) > 1 && animelemtime(5) < 0 && movehit
trigger2 = (p2bodydist x = [10,40]) && p2movetype = A && p2movetype != H && statetype != A && ctrl

;Vision
[State -1, Vision]
type = ChangeState
value = ifelse(random <= 700, 1040,1060)
ctrl = 0
triggerall = var(9) = 1
trigger1 = p2statetype != A && p2bodydist x = [15,35] 
trigger1 = backedgebodydist > 60 && p2movetype = A && random <= 400 && statetype != A && ctrl

[State -1,Grab]
type = ChangeState
value = 800
triggerall = var(9) = 1
trigger1 = var(4) <= 0 && random <= 600
trigger1 = p2stateno != 131 && p2stateno != 130 && P2bodydist X <= 10 && p2stateno != 1302 && statetype != A && p2statetype != A && p2statetype != L && p2stateno != 5120
trigger1 = p2movetype != H && ctrl

[State -1,Grab]
type = ChangeState
value = 850
triggerall = var(9) = 1
trigger1 = var(4) <= 0 && random <= 400
trigger1 = p2stateno != 131 && p2stateno != 130 && P2bodydist X <= 10 && p2stateno != 1302 && statetype != A && p2statetype != A && p2statetype != L && p2stateno != 5120
trigger1 = p2movetype != H && ctrl

;---------------------------------------------------------------------------
; High percent air guard
[State -1]
type = ChangeState
value = 132
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = P2life != 0;don't player when opponent had die
triggerall = statetype = A;perform when in air
triggerall = random <= 500;high percent
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 132
trigger1 = p2statetype = A

;-----------------------------------------------------------
; High percent stand guard
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = random <= 700;high percent
triggerall = statetype != A;perform when not in air
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 120
trigger1 = p2statetype = S

[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = random <= 700;high percent
triggerall = statetype != A;perform when not in air
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 130
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; High percent crouch guard
[State -1]
type = ChangeState
value = 131
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = statetype != A;perform when not in air
triggerall = random <= 700;high percent
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 131
trigger1 = p2statetype = C
;---------------------------------------------------------------------------

;Weaving
[State -1, Weaving]
type = ChangeState
value = ifelse(random <= 500, 1100,1105)
ctrl = 0
triggerall = var(9) = 1
trigger1 = p2statetype = A && (p2bodydist x = [10,40]) && p2bodydist y < -40
trigger1 = random <= 600 && statetype != A && ctrl
trigger2 = random <= 500 && p2stateno = 40 && statetype != A && ctrl

;Vision
[State -1, Vision]
type = ChangeState
value = ifelse(random <= 500, 1040,1000)
ctrl = 0
triggerall = var(9) = 1
trigger1 = stateno = 260 && animelemtime(11) > 0 && animelemtime(13) < 0 && moveguarded
trigger2 = stateno = 250 && animelemtime(11) > 0 && animelemtime(13) < 0 && (moveguarded || movehit)
trigger3 = p2statetype = A && p2bodydist x = [35,60]
trigger3 = random <= 100 && statetype != A && ctrl

;Machine Gun
[State -1, Gun]
type = ChangeState
value = 1400
ctrl = 0
triggerall = var(9) = 1
trigger1 = (p2bodydist x = [0,25]) && p2statetype != A 
trigger1 = stateno = 260 && animelemtime(11) > 0 && animelemtime(13) < 0 && movehit

;Reversal
[State -1, Reversal]
type = ChangeState
value = ifelse(random <= 500,1200,1210)
ctrl = 0
triggerall = var(9) = 1
trigger1 = p2movetype = A && p2statetype != C && p2bodydist x = [20,40]
trigger1 = random <= 200 && statetype != A && ctrl 
trigger2 = p2statetype = A && p2bodydist x = [15,40]
trigger2 = random <= 600 && statetype != A && ctrl
trigger3 = stateno = 260 && animelemtime(11) > 0 && animelemtime(13) < 0 && movehit
trigger3 = p2bodydist x > 25 && p2statetype != A 

[State -1, RollFWD]
type = Null ;ChangeState
value = 700
triggerall = var(9) = 1
trigger1 = statetype != A && ctrl 
;trigger1 = p2movetype = A && P2bodydist X >= 50 && random <= 400 && (p2stateno != [120,152])
;trigger2 = p2movetype = A && (p2bodydist x = [40,70]) && random <= 100 
trigger1 = backedgebodydist <= 70

[State -1,ROLL BACK]
type = ChangeState
value = 740
triggerall = var(9) = 1
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist x <= 40 && p2statetype = L && backedgebodydist > 60 && random <= 500

[State -1, JUMP]
type = ChangeState
value = 40
triggerall = var(9) = 1
triggerall = statetype != A && ctrl && p2movetype != H
trigger1 = (p2bodydist x = [120,170]) && p2statetype != A && random <= 100
trigger2 = (p2bodydist x = [10,40])  && p2statetype = C && random <= 200

[State -1,RUN]
type = ChangeState
value = 100
triggerall = var(9) = 1
trigger1 = (stateno != [100,101]) && statetype = S && ctrl
trigger1 = p2bodydist x > 20 &&  p2movetype != A && random < 300

[State -1, HPClose]
type = ChangeState
value = 225
triggerall = var(9) = 1
trigger1 = (p2bodydist x = [0,20]) && p2statetype != A && p2movetype != A
trigger1 = random <= 900 && p2statetype != L
trigger1 = statetype = S && ctrl

[State -1,CrLK]
type = ChangeState
value = 410
triggerall = var(9) = 1
triggerall = (p2bodydist x = [0,23]) && random <= 1000
triggerall = p2movetype != A  && p2statetype != A
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelemtime(4) > 1 && animelemtime(6) < 0
trigger3 = stateno = 205 && animelemtime(4) > 1
trigger4 = stateno = 210 && animelemtime(3) > 1 && animelemtime(4) < 0
trigger5 = stateno = 215 && animelemtime(3) > 1 && animelemtime(4) < 0

;HP/HK
[State -1, HP/HK]
type = ChangeState
value = ifelse(random <= 700,220,230)
triggerall = var(9) = 1
trigger1 = random <= 400 && (p2bodydist x = [50,65]) && p2statetype = S 
trigger1 = statetype != A && ctrl && (p2stateno = 100 || (p2stateno = [20,21]))

;Trap Kick (chained)
[State -1]
type = ChangeState
value = 260
triggerall = var(9) = 1
triggerall = movecontact && p2statetype != A
trigger1  = stateno = 200 && animelemtime(4) > 1 && animelemtime(6) < 0
trigger2  = stateno = 205 && animelemtime(4) > 1
trigger3  = stateno = 210 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger4  = stateno = 215 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger5  = stateno = 221 && animelemtime(2) > 1 && animelemtime(4) < 0
trigger6  = stateno = 226 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger7  = stateno = 400 && animelemtime(2) > 1 && animelemtime(4) < 0
trigger8  = stateno = 410 && animelemtime(2) > 1 && animelemtime(4) < 0
trigger9  = stateno = 420 && animelemtime(3) > 1 && animelemtime(5) < 0
trigger10  = stateno = 430 && animelemtime(5) > 1 && animelemtime(7) < 0

[State -1]
type = ChangeState
value = 250
triggerall = var(9) = 1
triggerall = random <= 600 && p2statetype = C 
trigger1 = statetype != A && ctrl && p2bodydist x <= 40
trigger2 = stateno = 230 && animelemtime(4) > 1 && animelemtime(8) < 0

[State -1, SlideKick]
type = ChangeState
value = 440
triggerall = var(9) = 1
triggerall = random <= 900
triggerall = p2statetype = S
trigger1  = random <= 200 && statetype != A && ctrl && (p2bodydist x = [70,120]) 
trigger2  = stateno = 200 && animelemtime(4) > 1 && animelemtime(6) < 0 && moveguarded
trigger3  = stateno = 205 && animelemtime(4) > 1 && moveguarded
trigger4  = stateno = 210 && animelemtime(3) > 1 && animelemtime(5) < 0 && moveguarded
trigger5  = stateno = 215 && animelemtime(3) > 1 && animelemtime(5) < 0 && moveguarded
trigger6  = stateno = 220 && animelemtime(3) > 1 && moveguarded
trigger7  = stateno = 221 && animelemtime(2) > 1 && animelemtime(4) < 0 && moveguarded
trigger8  = stateno = 226 && animelemtime(3) > 1 && animelemtime(5) < 0 && moveguarded
trigger9  = stateno = 230 && animelemtime(4) > 1 && animelemtime(8) < 0 && moveguarded
trigger10  = stateno = 400 && animelemtime(2) > 1 && animelemtime(4) < 0 && moveguarded 
trigger11  = stateno = 410 && animelemtime(2) > 1 && animelemtime(4) < 0 && moveguarded
trigger12  = stateno = 420 && animelemtime(3) > 1 && animelemtime(5) < 0 && moveguarded
trigger13  = stateno = 430 && animelemtime(5) > 1 && animelemtime(7) < 0 && moveguarded

[State -1,JHKD/JHPD]
type = ChangeState
value = ifelse(random <=900,620,630)
triggerall = var(9) = 1
triggerall = random <= 500 && statetype = A
triggerall = p2bodydist x <= 40
trigger1 = vel y > 0 && ctrl
trigger2 = vel y > .45 && stateno = 201 && ctrl

[State -1,JLK]
type = ChangeState
value = ifelse(random <=700,600,610)
triggerall = var(9) = 1
triggerall = random <= 200 && statetype = A
triggerall = p2bodydist x <= 40 && p2movetype = A && p2statetype = A
trigger1 = vel y > 0 && ctrl
trigger2 = vel y > .45 && stateno = 201 && ctrl

[State -1,Groundrecover]
type = ChangeState
value = 5201
triggerall = var(9) = 1  && canrecover && backedgebodydist > 70
trigger1 = Vel Y > 0 && Pos Y >= 0 && life >0 && random <= 100 && (stateno = [5050,5060])
