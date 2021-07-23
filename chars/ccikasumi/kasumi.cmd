;==========================================================================
;                   CCI Kasumi 's Command file
;
;                   By Ironmugen
;==========================================================================

;-| AI Motions |--------------------------------------------------------
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
command = D,D,F,F,D,B
time = 1

[Command]
name = "AI_9"
command = D,D,F,F,F,B
time = 1

[Command]
name = "AI_10"
command = F, D, B, U
time = 1

[Command]
name = "AI_11"
command = F, U, B, D
time = 1

[Command]
name = "AI_12"
command = F, F, F, F, F, B, U, U
time = 1

[Command]
name = "AI_13"
command = U, U, D, D, F, F, U
time = 1

[Command]
name = "AI_14"
command = U, D, U, D, U, D
time = 1

[Command]
name = "AI_15"
command = F, F, B, B, U, D, U
time = 1

[Command]
name = "AI_16"
command = B, D, D, U, F, D, D
time = 1

[Command]
name = "AI_17"
command = D, D, U, U, U, U, U, U
time = 1

[Command]
name = "AI_18"
command = D, D, D, D, D, D, D, U, U
time = 1

[Command]
name = "AI_19"
command = D, U, D, D, F, D, D, U, U
time = 1

[Command]
name = "AI_20"
command = D, D, D, D, B, D, D, U, U
time = 1
;-| Super Motions |--------------------------------------------------------
[Command]
name = "Cho_kasane"
command = ~D, DF, F, D, DF, F, x
time = 35

[Command]
name = "Cho_kasane1"
command = ~D, DF, F, D, DF, F, y
time = 35

[Command]
name = "Cho_kasane2"
command = ~D, DF, F, D, DF, F, x+y
time = 35

[Command]
name = "Shingan_Kuzu_Otoshi"
command = ~D, DF, F, D, DF, F, a+b
time = 35

[Command]
name = "Todoh_no_ougi"
command = ~x, x, F, a
time = 45

[Command]
name = "hsdm1"
command = ~D, DB, B, a+b
time = 35

[Command]
name = "hsdm2"
command = ~D, DF, F, a+b
time = 35

;-| Special Motions |------------------------------------------------------
[Command]
name = "Kasaneate1"
command = ~D, DF, F, x
time = 20

[Command]
name = "Kasaneate2"
command = ~D, DF, F, y
time = 20

[Command]
name = "Senkou_Nagashi"
command = ~D, DB, B, x
time = 20

[Command]
name = "Senkou_Nagashi"
command = ~D, DB, B, y
time = 20

[Command]
name = "Hakusan_Tou:Dageki_Bougyou1"
command = ~D, DB, B, a
time = 20

[Command]
name = "Hakusan_Tou:Dageki_Bougyou2"
command = ~D, DB, B, b
time = 20

[Command]
name = "Messhin_Mutou:Joudan_Atemi"
command = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "Sasshou_Inshuu:Chuudan_Atemi"
command = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "Tatsumaki_Souda:Nage_Dageki1"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "Tatsumaki_Souda:Nage_Dageki2"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "Hanshin:MoroteGaeshi"
command = ~D, D, a
time = 20

[Command]
name = "Hanshin:MoroteGaeshi"
command = ~D, D, b
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 15

[Command]
name = "BB"
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "cd"
command = b+y
time = 1

[Command]
name = "ab"
command = a+x
time = 1

[Command]
name = "abc"
command = a+y+x
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
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

[Command]
name = "!longjump"
command = ~10$D, $U
time = 20

[Statedef -1]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;--------------------------------------------------------------------------- 
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Todoh no ougi HSDM
[State -1,]
type = changestate
value = 2200
triggerall = command = "Todoh_no_ougi"
triggerall = power >= 3000
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Shingan Kuzu Otoshi SDM
[State -1,]
type = changestate
value = 2300
triggerall = command = "Shingan_Kuzu_Otoshi"
triggerall = power >= 2000
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Cho Kasane Ate SDM
[State -1,]
type = changestate
value = 2100
triggerall = command = "Cho_kasane2"
triggerall = power >= 2000
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Cho Kasane Ate DM
[State -1,]
type = changestate
value = 2000
triggerall = command = "Cho_kasane"
triggerall = power >= 1000
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Cho Kasane Ate DM
[State -1,]
type = changestate
value = 2001
triggerall = command = "Cho_kasane1"
triggerall = power >= 1000
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Tatsumaki Souda: Nage Dageki
[State -1,]
type = changestate
value = 1500
triggerall = command = "Tatsumaki_Souda:Nage_Dageki1"
triggerall = p2bodydist x < 40
triggerall = p2statetype = S || p2statetype = C
triggerall = moveguarded = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Tatsumaki Souda: Nage Dageki
[State -1,]
type = changestate
value = 1501
triggerall = command = "Tatsumaki_Souda:Nage_Dageki2"
triggerall = p2bodydist x < 40
triggerall = p2statetype = S || p2statetype = C
triggerall = moveguarded = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Hanshin: Morote Gaeshi
[State -1,]
type = changestate
value = 1600
triggerall = command = "Hanshin:MoroteGaeshi"
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Messhin Mutou: Joudan Atemi
[State -1,]
type = changestate
value = 1400
triggerall = command = "Messhin_Mutou:Joudan_Atemi"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Sasshou Inshuu: Chuudan Atemi
[State -1,]
type = changestate
value = 1410
triggerall = command = "Sasshou_Inshuu:Chuudan_Atemi"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Hakusan Tou: Dageki Bougyou weak
[State -1,]
type = changestate
value = 1300
triggerall = command = "Hakusan_Tou:Dageki_Bougyou1"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Hakusan Tou: Dageki Bougyou strong
[State -1,]
type = changestate
value = 1305
triggerall = command = "Hakusan_Tou:Dageki_Bougyou2"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Kasane ate air
[State -1]
type = changestate
value = 1200
triggerall = command = "Kasaneate1" || command = "Kasaneate2"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 620 && movecontact

;Kasane ate weak
[State -1,]
type = changestate
value = 1100
triggerall = command = "Kasaneate1"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Kasane ate strong
[State -1,]
type = changestate
value = 1101
triggerall = command = "Kasaneate2"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;Senkou Nagashi
[State -1,]
type = changestate
value = 1000
triggerall = command = "Senkou_Nagashi"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [5,7]
trigger5 = stateno = 220 && time = [9,13]
trigger6 = stateno = 225 && time = [7,16]
trigger7 = stateno = 235 && time = [8,15]
trigger8 = stateno = 400 && time = [6,9]
trigger9 = stateno = 420 && time = [10,17]
trigger10 = stateno = 430 && time = [7,9]
trigger11 = stateno = 300 && time = [10,17]
trigger12 = stateno = 245 && time = [16,23]

;---------------------------------------------------------------------------
;Run Fwd 1
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "holdfwd" && stateno = 102

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Throw 1
[State -1]
type = changestate
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = p2stateno != 5120
trigger1 = ctrl

;Throw 2
[State -1]
type = changestate
value = 801
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = p2stateno != 5120
trigger1 = ctrl

;Counter
[State -1]
type = changestate
value = 305
triggerall = command = "cd" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000

; Power charge
[State -1]
type = changestate
value = 310
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
triggerall = var(9) = 0
trigger1 = command = "hold_a"
trigger1 = command = "hold_y"

; Taunt
[State -1]
type = changestate
value = 195
triggerall = var(9) = 0
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;-----------------------------------------DODGE
;---------------------------------------------------------------------
; Dodge backward (Kof98)
[State -1]
type = changestate
value = 360
triggerall = command = "ab" ^^ command = "c"
triggerall = command = "holdback"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
trigger3 = stateno = 101

; Dodge forward 98(after dodge forward 99)
[State -1]
type = changestate
value = 361
triggerall = command = "ab" ^^ command = "c"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 1000
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Standing CD
[State -1]
type = changestate
value = 300
triggerall = command = "cd" ^^ command = "z"
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

;Aerial CD
[State -1]
type = changestate
value = 650
triggerall = command = "cd" ^^ command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Standing Weak punch
[State -1,]
type = changestate
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = p2bodydist x > 24
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = [6,12]
trigger5 = stateno = 205 && time = [6,12]
trigger6 = stateno = 400 && time = [7,14]
trigger7 = stateno = 410 && time = [7,14]

;Standing close Weak punch
[State -1,]
type = changestate
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = p2bodydist x <= 24
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,12]
trigger5 = stateno = 400 && time = [7,14]
trigger6 = stateno = 410 && time = [7,14]

;Standing Forward Weak punch - Hiji Ate
[State -1,]
type = changestate
value = 240
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Standing Forward Weak punch
[State -1,]
type = changestate
value = 245
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(9) = 0
trigger1 = stateno = 205 && time = [5,7]
trigger2 = stateno = 220 && time = [9,13]
trigger3 = stateno = 225 && time = [7,16]
trigger4 = stateno = 235 && time = [8,15]
trigger5 = stateno = 400 && time = [6,9]
trigger6 = stateno = 420 && time = [10,17]
trigger7 = stateno = 430 && time = [7,9]
trigger8 = stateno = 300 && time = [10,17]
;---------------------------------------------------------------------------
;Standing Weak Kick
[State -1]
type = changestate
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x > 24
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 200 && time = [6,12]
trigger5 = stateno = 205 && time = [6,12]
trigger6 = stateno = 400 && time = [7,14]
trigger7 = stateno = 410 && time = [7,14]

;Standing close Weak Kick
[State -1]
type = changestate
value = 215
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 24
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101
trigger4 = stateno = 205 && time = [6,12]
trigger5 = stateno = 400 && time = [7,14]
trigger6 = stateno = 410 && time = [7,14]

;---------------------------------------------------------------------------
;Standing Hard punch
[State -1]
type = changestate
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x > 24
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Standing Close Hard punch
[State -1]
type = changestate
value = 225
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1]
type = changestate
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x > 24
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Standing Close Hard Kick
[State -1]
type = changestate
value = 235
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;Crouching Weak punch
[State -1]
type = changestate
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && time = [6,12]
trigger4 = stateno = 205 && time = [6,12]
trigger5 = stateno = 400 && time = [7,14]
trigger6 = stateno = 410 && time = [7,14]

;---------------------------------------------------------------------------
;Crouching weak Kick
[State -1]
type = changestate
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && time = [6,12]
trigger4 = stateno = 205 && time = [6,12]
trigger5 = stateno = 400 && time = [7,14]
trigger6 = stateno = 410 && time = [7,14]

;---------------------------------------------------------------------------
;Crouching hard punch
[State -1]
type = changestate
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;Crouching hard kick
[State -1]
type = changestate
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;Jumping Weak punch
[State -1]
type = changestate
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jumping Kick
[State -1]
type = changestate
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jumping strong punch
[State -1]
type = changestate
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping strong Kick
[State -1]
type = changestate
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------
;----------------------------AI-------------------------
;-------------------------------------------------------
;Todoh no ougi HSDM
[State -1,]
type = ChangeState
value = 2200
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = power >= 3000
triggerall = movehit
trigger1 = stateno = 205
trigger2 = stateno = 225
trigger3 = stateno = 235
trigger4 = stateno = 400
trigger5 = stateno = 420
trigger6 = stateno = 245


;Shingan Kuzu Otoshi SDM
[State -1,]
type = ChangeState
value = 2300
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = p2movetype = A
trigger1 = p2bodydist X < 120
trigger1 = ctrl

;Crouching block
[State -1]
type = ChangeState
value = 152
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype = C
triggerall = random <= 600
triggerall = var(9) = 1
trigger1 = ctrl

;Block
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 600
triggerall = statetype = S
triggerall = var(9) = 1
trigger1 = ctrl

;Air block
[State -1]
type = ChangeState
value = 132
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype = A
triggerall = random <= 600
triggerall = var(9) = 1
trigger1 = ctrl

;Long jump
[State -1,]
type = ChangeState
value = 38
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x >= 150
triggerall = random <= 100
trigger1 = statetype != A
trigger1 = ctrl = 1

;Run Forward
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype != A
triggerall = p2bodydist x >= 150
triggerall = random <= 160
trigger1 = statetype != A
trigger1 = ctrl

;Run Forward
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2statetype = L
trigger1 = stateno = 0
trigger1 = ctrl
trigger1 = p2bodydist x > 50

;Kasane ate air
[State -1]
type = ChangeState
value = 1200
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 100
triggerall = statetype = A
triggerall = random <= 200
trigger1 = p2statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 620 && movecontact

;Jumping strong Kick
[State -1]
type = ChangeState
value = 630
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 40
triggerall = statetype = A
trigger1 = statetype = A
trigger1 = ctrl

;Forward jump
[State -1,]
type = ChangeState
value = 39
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x = [75,90]
triggerall = random <= 200
trigger1 = statetype != A
trigger1 = ctrl = 1

;ANTI AIR
[State -1,]
type = ChangeState
value = 3000
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 50
triggerall = random <= 800
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = statetype != A
trigger1 = ctrl = 1



;Sasshou Inshuu: Chuudan Atemi
[State -1]
type = ChangeState
value = 1410
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = random <= 80
trigger1 = p2statetype = S
trigger1 = statetype != A
trigger1 = ctrl

;Messhin Mutou: Joudan Atemi
[State -1]
type = ChangeState
value = 1400
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = random <= 80
trigger1 = p2statetype = A
trigger1 = statetype != A
trigger1 = ctrl

;Hanshin: Morote Gaeshi
[State -1]
type = ChangeState
value = 1600
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = random <= 80
trigger1 = p2statetype = C
trigger1 = statetype != A
trigger1 = ctrl

; Dodge forward
[State -1]
type = ChangeState
value = 361
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = random <= 60
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

; Dodge backward
[State -1]
type = ChangeState
value = 360
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2movetype = A
triggerall = p2bodydist x <= 50
triggerall = random <= 40
trigger1 = statetype != A
trigger1 = ctrl

;RANDOM CLOSE ATTACK
[State -1]
type = ChangeState
value = 3001
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 35
triggerall = random <= 300
triggerall = p2stateno != 5120
triggerall = p2statetype != L
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 101

;Crouching weak kick
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = p2bodydist x <= 35
triggerall = random <= 300
triggerall = p2stateno != 5120
triggerall = p2statetype != L
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101

;Crouching weak punch
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = statetype != A
trigger1 = random < 800
trigger1 = stateno = 410 && movecontact && time = [7,14]

;Standing Forward + A
[State -1,]
type = ChangeState
value = 245
triggerall = roundstate = 2
triggerall = var(9) = 1
triggerall = random < 500
trigger1 = stateno = 225 && movecontact
trigger2 = stateno = 235 && movecontact
trigger3 = stateno = 420 && movecontact



;RANDOM SPECIAL DURING A COMBO
[State -1,]
type = ChangeState
value = 3002
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = random < 100
trigger1 = stateno = 205 && movecontact
trigger2 = random < 100
trigger2 = stateno = 225 && movecontact
trigger3 = random < 100
trigger3 = stateno = 235 && movecontact
trigger4 = random < 100
trigger4 = stateno = 400 && movecontact
trigger5 = random < 100
trigger5 = stateno = 420 && movecontact
trigger6 = random < 400
trigger6 = stateno = 245 && movecontact

;Counter
[State -1]
type = ChangeState
value = 305
triggerall = roundstate = 2
triggerall = var(9) = 1
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger1 = random <= 40
