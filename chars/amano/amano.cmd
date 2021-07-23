;-| Super Motions |--------------------------------------------------------
[command]
name = "2QCB_x"
command = ~F, D, DB, B, F, D, DB, B, x
time = 25

[command]
name = "2QCB_y"
command = ~F, D, DB, B, F, D, DB, B, y
time = 25

[command]
name = "2QCB_xy"
command = ~F, D, DB, B, F, D, DB, B, x+y
time = 25

[command]
name = "2QCF_x"
command = ~D, DF, F, D, DF, F, x
time = 20

[command]
name = "2QCF_y"
command = ~D, DF, F, D, DF, F, y
time = 20

[command]
name = "2QCF_xy"
command = ~D, DF, F, D, DF, F, x+y
time = 20

[command]
name = "2QCF_a"
command = ~$D, B, F, a

[command]
name = "2QCF_b"
command = ~$D, B, F, b

[command]
name = "2QCF_ab"
command = ~$D, B, F, a+b

;-| Special Motions |------------------------------------------------------
[command]
name = "ddb"
command = D, D, b
time = 20

[Command]
name = "FBF_x"
command = ~F, B, F, x
time = 20

[Command]
name = "FBF_y"
command = ~F, B, F, y
time = 20

[command]
name = "rapid_x"
command = x, x, x
time = 18

[command]
name = "rapid_y"
command = y, y, y
time = 18

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_s"
command = ~D, DF, F, s

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery" ;Required (do not remove)
command = c
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "/a"
command = /a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "/b"
command = /b
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
name = "s"
command = s
time = 1

[Command]
name = "/x"
command = /x
time = 1

[Command]
name = "~x"
command = ~x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "/xy"
command = /x+y
time = 1

[Command]
name = "/y"
command = /y
time = 1

[Command]
name = "~y"
command = ~y
time = 1

[Command]
name = "z"
command = z
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;--------------------------------------AI-----------------------------------
[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = roundstate = 2
triggerall = ishelper = 0
trigger1 = ctrl = 1
trigger1 = statetype != a
trigger1 = p2movetype != a
value = 7020
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = roundstate = 2
triggerall = ishelper = 0
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = statetype != a
trigger1 = p2movetype = a
trigger1 = p2bodydist x < 60
trigger1 = power < 1000
value = 1100
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = roundstate = 2
triggerall = ishelper = 0
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = statetype != a
trigger1 = p2movetype = a
trigger1 = p2bodydist x < 60
trigger1 = power < 2000
value = 3200
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = roundstate = 2
triggerall = ishelper = 0
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = statetype != a
trigger1 = p2movetype = a
trigger1 = p2bodydist x < 60
trigger1 = power > 1999
value = 4200
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = roundstate = 2
triggerall = ishelper = 0
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = statetype != a
trigger1 = p2movetype = a
trigger1 = p2bodydist x > 100 || p2bodydist x < 150
trigger2 = ctrl = 1 || stateno = 7020
trigger2 = statetype != a
trigger2 = p2statetype = a
trigger2 = p2bodydist x > 60 || p2bodydist x < 100
value = 1700
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = roundstate = 2
triggerall = ishelper = 0
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = statetype != a
trigger1 = p2movetype = i
trigger1 = p2bodydist x > 100
trigger1 = power < 1000
trigger1 = var(40) = 0
value = 1300
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = roundstate = 2
triggerall = ishelper = 0
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = statetype != a
trigger1 = p2movetype = i
trigger1 = p2bodydist x > 100
trigger1 = power < 1000
trigger1 = var(40) != 0
value = 7101
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = roundstate = 2
triggerall = ishelper = 0
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = statetype != a
trigger1 = p2movetype = i
trigger1 = p2bodydist x > 100
trigger1 = power < 2000
value = 3100
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = roundstate = 2
triggerall = ishelper = 0
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = statetype != a
trigger1 = p2movetype = i
trigger1 = p2bodydist x > 100
trigger1 = power > 1999
value = 4100
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 800
triggerall = statetype != a
trigger1 = stateno = 7020
trigger1 = p2movetype != a
trigger1 = p2statetype != a 
trigger1 = p2bodydist x < 20
trigger1 = p2movetype != h
trigger1 = p2statetype != l
trigger1 = p2stateno != 5120
trigger1 = p2stateno != 169
trigger1 = p2stateno = 20 || p2stateno = 11
trigger1 = var(40) < 3
value = 800
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 800
triggerall = statetype != a
trigger1 = stateno = 7020
trigger1 = p2movetype != a
trigger1 = p2statetype != a 
trigger1 = p2bodydist x < 20
trigger1 = p2movetype != h
trigger1 = p2statetype != l
trigger1 = p2stateno != 5120
trigger1 = p2stateno != 169
trigger1 = p2stateno = 20 || p2stateno = 11
trigger1 = var(40) > 2
value = 810
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 440
triggerall = statetype != a
trigger1 = ctrl = 1 || stateno = 7020 || stateno = 7021
trigger1 = p2stateno = 5110
trigger1 = p2bodydist x < 50
value = 440
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 200
triggerall = statetype != a
trigger1 = stateno = 7020
trigger1 = p2movetype != a
trigger1 = p2statetype != l
trigger1 = p2stateno != 5120
trigger1 = p2stateno != 169
trigger1 = p2bodydist x < 20
trigger1 = p2stateno != 20
trigger1 = p2stateno != 11
value = 222
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = statetype != a
trigger1 = stateno = 222
trigger1 = movecontact = 1
value = 220
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = statetype != a
trigger1 = stateno = 220
trigger1 = movecontact = 1
value = 221
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = statetype != a
trigger1 = stateno = 221
trigger1 = movehit = 1
trigger1 = var(40) < 3
value = 240
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = statetype != a
trigger1 = stateno = 221
trigger1 = movehit = 1
trigger1 = var(40) > 2
value = 430
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = statetype != a
triggerall = var(40) < 3
trigger1 = stateno = 430
trigger1 = movehit = 1
trigger2 = stateno = 241
trigger2 = movehit = 1
value = 1310
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = statetype != a
triggerall = var(40) > 2
trigger1 = stateno = 430
trigger1 = movecontact = 1
trigger2 = stateno = 241
trigger2 = movecontact = 1
value = 1400
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = statetype != a
triggerall = var(40) > 2
trigger1 = stateno = 1302
trigger1 = movecontact = 1
trigger1 = power > 1999
value = 4000
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = statetype != a
triggerall = var(40) > 2
trigger1 = stateno = 1302
trigger1 = movecontact = 1
trigger1 = power > 999
value = 3000
ctrl = 0

;=================determinando variaveis===============
[state -1, varset para win pose]
type = varset
trigger1 = p2name = "kojiro"
v = 50
value = 4 

[state -1, varset para win pose]
type = varset
trigger1 = p2name = "hibiki"
v = 50
value = 3 

[state -1, varset para win pose]
type = varset
trigger1 = p2name = "NewAkari"
v = 50
value = 2 

[state -1, varset para win pose]
type = varset
trigger1 = p2name = "yuki by third"
v = 50
value = 1 

[state -1, varset para win pose]
type = varset
trigger1 = p2name = "Amano by Luchini"
v = 50
value = 5 
;--------------
[state -1, varset para atos randomicos]
type = varrandom 
trigger1 = roundstate = 2
v = 40
range = 5
;--------------
[state -1, varset segurando botao]
type = varset 
trigger1 = ctrl = 1
v = 30
value = 1

[state -1, varset segurando botao]
type = varset 
trigger1 = command != "/y"
trigger1 = stateno = 1200
v = 30
value = 0

[state -1, varset segurando botao]
type = varset 
triggerall = command != "/xy"
trigger1 = stateno = 4000
trigger2 = stateno = 4100
v = 30
value = 0

[state -1, varset segurando botao]
type = varset 
triggerall = stateno = 3000
trigger1 = command = "~x"
trigger2 = command = "~y"
trigger3 = prevstateno > 199
v = 30
value = 0

[state -1, varset segurando botao]
type = varset 
triggerall = stateno = 3100
trigger1 = command = "~x"
trigger2 = command = "~y"
trigger3 = prevstateno > 199
v = 30
value = 0
;-----------------------
[state -1, varset tabua]
type = varset 
trigger1 = command = "2QCF_y"
trigger2 = command = "2QCF_xy"
v = 20
value = 0

[state -1, varset tabua]
type = varset 
trigger1 = command = "2QCF_x"
v = 20
value = -4

[state -1, varset tabua]
type = varset
trigger1 = numhelper(4006) != 0
trigger1 = helper(4006), stateno = 4006
v = 20
value = 1
;=================sons=================================
[State -1, snd]
type = PlaySnd
trigger1 = stateno = 5000
trigger1 = time = 1
trigger2 = stateno = 5020
trigger2 = time = 1
trigger3 = stateno = 5010
trigger3 = time = 1
trigger4 = stateno = 5070
trigger4 = time = 1
trigger5 = stateno = 5080
trigger5 = time = 1
channel = 0
value = 5000, var(40)

[state -1, snd]
type = playsnd
trigger1 = stateno = 52
trigger1 = time = 1
value = 100,0
;=================correcao de bugs=====================
[state -1, afterimage]
type = afterimagetime
trigger1 = movetype = h
trigger2 = stateno != 260
trigger2 = stateno != 460
trigger2 = stateno != 660
trigger2 = stateno != 1701
trigger2 = stateno != 1300
trigger2 = stateno != 1310
value = 0

[state -1, removeexplod]
type = removeexplod
trigger1 = numhelper(9999) = 0
trigger2 = ishelper = 1
trigger2 = parent, stateno < 3000
trigger3 = ishelper = 1
trigger3 = parent, stateno > 4999
id = 9980

[state -1, removeexplod]
type = removeexplod
trigger1 = numhelper(9999) = 0
trigger2 = ishelper = 1
trigger2 = parent, stateno < 3000
trigger3 = ishelper = 1
trigger3 = parent, stateno > 4999
id = 9981

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 1200
id = 1207

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 1200
id = 1208

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 1200
id = 1209

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 230
trigger1 = stateno != 1400
id = 2310

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 230
trigger1 = stateno != 1400
id = 2311

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 230
trigger1 = stateno != 1400
id = 2312

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 630
id = 6310

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 630
id = 6311

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 630
id = 6312

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 241
id = 2410

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 241
id = 2411

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 241
id = 2412

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 241
id = 2413

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 430
id = 4310

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 430
id = 4311

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 430
id = 4312

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 430
id = 4313

[state -1, removeexplod]
type = removeexplod
trigger1 = stateno != 1302
trigger1 = stateno != 1800
id = 4400
;======================================================
[state -1, hiperhelper]
type = helper
trigger1 = stateno > 2999
trigger1 = stateno < 5000
trigger1 = numhelper(9999) = 0
id = 9999
pos = 0, 0
postype = p1
stateno = 9999
helpertype = normal
supermovetime = 9999
keyctrl = 1
ownpal = 1

;======================================================
[State -1]
type = changestate
value = 4000
triggerall = power > 1999
triggerall = command = "2QCB_xy"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1
trigger12 = stateno = 1201
trigger12 = movecontact = 1
trigger12 = time > 24
trigger13 = stateno = 1202
trigger13 = movecontact = 1
trigger13 = time > 24
trigger14 = stateno = 1302
trigger14 = movecontact = 1
trigger15 = stateno >= 150
trigger15 = stateno < 154

[state -1]
type = changestate
value = 4001
triggerall = stateno = 4000
triggerall = var(30) = 0
trigger1 = time > 18

[State -1]
type = changestate
value = 4100
triggerall = power > 1999
triggerall = command = "2QCF_xy"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1
trigger12 = stateno = 1201
trigger12 = movecontact = 1
trigger12 = time > 24
trigger13 = stateno = 1202
trigger13 = movecontact = 1
trigger13 = time > 24
trigger14 = stateno = 1302
trigger14 = movecontact = 1
trigger15 = stateno >= 150
trigger15 = stateno < 154

[state -1]
type = changestate
value = 4101
triggerall = stateno = 4100
triggerall = var(30) = 0
trigger1 = time > 18

[State -1]
type = changestate
value = 4200
triggerall = power > 1999
triggerall = command = "2QCF_ab"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1
trigger12 = stateno = 1201
trigger12 = movecontact = 1
trigger12 = time > 24
trigger13 = stateno = 1202
trigger13 = movecontact = 1
trigger13 = time > 24
trigger14 = stateno = 1302
trigger14 = movecontact = 1
trigger15 = stateno >= 150
trigger15 = stateno < 154

[State -1]
type = changestate
value = 3200
triggerall = power > 999
triggerall = command = "2QCF_a" || command = "2QCF_b"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1
trigger12 = stateno = 1201
trigger12 = movecontact = 1
trigger12 = time > 24
trigger13 = stateno = 1202
trigger13 = movecontact = 1
trigger13 = time > 24
trigger14 = stateno = 1302
trigger14 = movecontact = 1
trigger15 = stateno >= 150
trigger15 = stateno < 154

[State -1]
type = changestate
value = 3000
triggerall = power > 999
triggerall = command = "2QCB_x" || command = "2QCB_y"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1
trigger12 = stateno = 1201
trigger12 = movecontact = 1
trigger12 = time > 24
trigger13 = stateno = 1202
trigger13 = movecontact = 1
trigger13 = time > 24
trigger14 = stateno = 1302
trigger14 = movecontact = 1
trigger15 = stateno >= 150
trigger15 = stateno < 154

[state -1]
type = changestate
value = 3001
triggerall = stateno = 3000
triggerall = var(30) = 0
trigger1 = time > 18

[State -1]
type = changestate
value = 3100
triggerall = power > 999
triggerall = command = "2QCF_x" || command = "2QCF_y"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1
trigger12 = stateno = 1201
trigger12 = movecontact = 1
trigger12 = time > 24
trigger13 = stateno = 1202
trigger13 = movecontact = 1
trigger13 = time > 24
trigger14 = stateno = 1302
trigger14 = movecontact = 1
trigger15 = stateno >= 150
trigger15 = stateno < 154

[state -1]
type = changestate
value = 3101
triggerall = stateno = 3100
triggerall = var(30) = 0
trigger1 = time > 18

[State -1]
type = ChangeState
value = 1400
triggerall = command = "rapid_x" || command = "rapid_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1
trigger12 = stateno = 1201
trigger12 = movecontact = 1
trigger12 = time > 24
trigger13 = stateno = 1202
trigger13 = movecontact = 1
trigger13 = time > 24

[State -1]
type = ChangeState
value = 1300
triggerall = command = "FBF_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger3 = movecontact = 1
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1
trigger12 = stateno = 1201
trigger12 = movecontact = 1
trigger12 = time > 24
trigger13 = stateno = 1202
trigger13 = movecontact = 1
trigger13 = time > 24

[State -1]
type = ChangeState
value = 1310
triggerall = command = "FBF_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger3 = movecontact = 1
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1
trigger12 = stateno = 1201
trigger12 = movecontact = 1
trigger12 = time > 24
trigger13 = stateno = 1202
trigger13 = movecontact = 1
trigger13 = time > 24

[State -1]
type = ChangeState
value = 1800
triggerall = command = "QCF_x" || command = "QCF_y"
triggerall = stateno = 1400
trigger1 = time > 60
trigger1 = movecontact = 1
trigger1 = hitpausetime = 0
trigger2 = time > 74

[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCB_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger3 = movecontact = 1
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1
trigger12 = stateno = 1201
trigger12 = movecontact = 1
trigger12 = time > 24
trigger13 = stateno = 1202
trigger13 = movecontact = 1
trigger13 = time > 24

[State -1]
type = ChangeState
value = 1200
triggerall = command = "QCB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger3 = movecontact = 1
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1

[state -1]
type = changestate
value = 1201
triggerall = stateno = 1200
triggerall = var(30) = 0
trigger1 = time > 12
trigger1 = time < 78

[state -1]
type = changestate
value = 1202
triggerall = stateno = 1200
triggerall = var(30) = 0
trigger1 = time < 174
trigger1 = time > 77

[state -1]
type = changestate
value = 1203
triggerall = stateno = 1200
triggerall = var(30) = 0
trigger1 = time > 173

[State -1]
type = ChangeState
value = 1700
trigger1 = command = "QCB_a"
trigger1 = statetype = s
trigger1 = ctrl = 1
trigger2 = command = "QCB_b"
trigger2 = statetype = s
trigger2 = ctrl = 1

[State -1]
type = ChangeState
value = 1110
triggerall = command = "uppercut_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger3 = movecontact = 1
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1
trigger12 = stateno = 1201
trigger12 = movecontact = 1
trigger12 = time > 24
trigger13 = stateno = 1202
trigger13 = movecontact = 1
trigger13 = time > 24

[State -1]
type = ChangeState
value = 1100
triggerall = command = "uppercut_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger3 = movecontact = 1
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 241
trigger11 = movecontact = 1
trigger12 = stateno = 1201
trigger12 = movecontact = 1
trigger12 = time > 24
trigger13 = stateno = 1202
trigger13 = movecontact = 1
trigger13 = time > 24

[State -1]
type = ChangeState
value = 810
triggerall = command = "ddb"
trigger1 = statetype != a
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 196
triggerall = command = "QCF_s"
trigger1 = statetype = s
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype = s
trigger1 = ctrl = 1
;======================================================
;RunFwd
[State -1]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 901
triggerall = command = "recovery"
trigger1 = stateno = 5110
trigger1 = alive = 1

[state -1]
type = changestate
value = 1204
triggerall = stateno = 1200
triggerall = command = "recovery"
trigger1 = time > 12

;Stand_Throw (close dir+b)
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 15 ;Near P2
trigger1 = command = "fwd_y"   ;p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_y"   ;p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
;----------------------------------------------------------------
[state -1]
type = changestate
value = 410
triggerall = stateno = 100
triggerall = time > 10
trigger1 = command = "a"
trigger2 = command = "b"

;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 222
trigger2 = movecontact = 1
trigger3 = stateno = 420
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = prevstateno != 222
trigger4 = movecontact = 1

;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 222
trigger2 = movecontact = 1
trigger3 = stateno = 420
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 241
trigger8 = movecontact = 1
trigger9 = stateno = 220
trigger9 = prevstateno != 222
trigger9 = movecontact = 1

[State -1]
type = ChangeState
value = 222
triggerall = command = "back_x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1

[state -1]
type = changestate
value = 240
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno != 100
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger3 = movecontact = 1
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1

[state -1]
type = changestate
value = 241
triggerall = stateno = 100
triggerall = time > 10
trigger1 = command = "x"
trigger2 = command = "y"

[State -1]
type = ChangeState
value = 221
triggerall = command = "x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = stateno = 220
trigger1 = time >= 15
trigger2 = stateno = 220
trigger2 = movecontact = 1

[State -1]
type = ChangeState
value = 220
triggerall = command = "x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact = 1
trigger3 = stateno = 222
trigger3 = movecontact = 1

;Stand_B
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger3 = movecontact = 1
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1

[State -1]
type = ChangeState
value = 260
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 262
triggerall = command = "c"
trigger1 = stateno = 261
trigger1 = movehit = 1
trigger1 = time > 9
trigger2 = stateno = 461
trigger2 = movehit = 1
trigger2 = time > 9

[State -1]
type = ChangeState
value = 1500
triggerall = command = "z"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = s
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 222
trigger2 = movecontact = 1
trigger3 = stateno = 420
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = prevstateno != 222
trigger4 = movecontact = 1

;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 222
trigger2 = movecontact = 1
trigger3 = stateno = 420
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 241
trigger8 = movecontact = 1
trigger9 = stateno = 220
trigger9 = prevstateno != 222
trigger9 = movecontact = 1

;Crouch_A
[State -1]
type = ChangeState
value = 420
triggerall = p2stateno != 5110
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 222
trigger2 = movecontact = 1

;Crouch_B
[State -1]
type = ChangeState
value = 440
triggerall = p2stateno = 5110
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = ctrl = 1
trigger1 = command = "y"
trigger2 = command = "x"

;Crouch_B
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 221
trigger3 = movecontact = 1
trigger4 = stateno = 222
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1

[State -1]
type = ChangeState
value = 460
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1510
triggerall = command = "z"          ;Place name of command here
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact = 1

[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact = 1
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1

[State -1]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact = 1
trigger3 = stateno = 600
trigger3 = movecontact = 1

[State -1]
type = ChangeState
value = 660
triggerall = command = "c"
trigger1 = statetype = a
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
