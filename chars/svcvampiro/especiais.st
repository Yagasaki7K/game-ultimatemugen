;Solta morcegos no ar teleguiados!
;
[Statedef 1070]
type    = A
movetype= A
physics = N
juggle  = 2
poweradd= 65
ctrl = 0
anim = 625
sprpriority = 1


[state 1070, aft]
type = AfterImage
trigger1 = AnimElem = 3
Time = 30
TimeGap=1
FrameGap = 1
length = 7
PalBright   =   220,  0,  0
PalContrast = 255,200,200
PalAdd      =  5,5, 5
PalMul      = 0.7,0.7,0.7

[State 1070, som]
type = PlaySnd
trigger1 = time = 4
value = 1000, 18
channel = 1

[State 1070, som]
type = StopSnd
trigger1 = time = 20
value = 1000, 18
channel = 1

[State 1070]
type = VarSet 
trigger1 = command = "morcegos1"
var(10) = 2
[State 1070]
type = VarSet 
trigger1 = command = "morcegos1"
var(11) = 12

[State 1070]
type = VarSet 
trigger1 = command = "morcegos2"
var(10) = 4
[State 1070]
type = VarSet 
trigger1 = command = "morcegos2"
var(11) = 10

[State 1070]
type = VarSet 
trigger1 = command = "morcegos3"
var(10) = 6
[State 1070]
type = VarSet 
trigger1 = command = "morcegos3"
var(11) = 8

[State 1070, som vento]
type = PlaySnd
trigger1 = Time = 15
value = 4, 4
channel = 2

[State 1070, 1]
type = VelMul
trigger1 = time = 0
x = .15
y = .15

[State 1070, 2]
type = VelAdd
trigger1 = time = 0
trigger1 = Vel Y = [-.08,.08]
y = ifelse(Vel Y <= 0, .08, -.08)


[State 1070, 2]
type = VelSet
trigger1 = Pos Y >= 4
y = 0


[State 1070, Acertaperto]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 57
guardflag = MA
pausetime = 0
sparkno = s8010
sparkxy = -10,-60
hitsound   = s3,5
guardsound = 6,0
ground.type = High
ground.hittime  = 10
envshake.time = 7
envshake.ampl = 4
kill = !var(57)


[state 1070, Chama]
type = helper
trigger1 = Time >= 12 && timeMod = 3,1 && time <= 20
ID = 1070
pos = 10,-60
postype = p1
stateno = 1071
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0


[state 1070, Chama] ;chama Bola
type = helper
trigger1 = Time >= 10 && timeMod = 4,2 && time <= 30
ID = 1070
pos = -15,-80
postype = p1
stateno = 1071
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0


[state 1070, Chama]
type = helper
trigger1 = Time >= 10 && timeMod = 4,1 && time <= 30
ID = 1070
pos = -5,-120
postype = p1
stateno = 1071
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0


[State 1070, pulso]
type = VelAdd
trigger1 = AnimElem = 6
X = -4
Y = 1

[State 1070, pulso]
type = VelAdd
trigger1 = AnimElem = 7
X = 1


[State 1070, pulso]
type = VelAdd
trigger1 = AnimElem = 8
Y = 3

[State 1070, pulso]
type = VelAdd
trigger1 = AnimElem = 9 && time > 0
Y = vel Y + .1


[State 1070, som vento]
type = PlaySnd
trigger1 = Time = 20 
value = 190, 1


[State 1070, 7]
type = ChangeState
trigger1 = Pos y > 0
value = 52
ctrl = 1



[Statedef 1071] ; morecgos de energia ------------------
type    = A
movetype= A
physics = N
sprpriority = 10
anim = 661
velset = parent,var(10),3

[State 1071 , ass] ;quebra a defesa do P2
type = AssertSpecial
triggerAll = parent,stateno = 3080
trigger1 = 1
flag  = unguardable


[State 1071, som]
type = PlaySnd
trigger1 = time <= 70
trigger1 = random = [5,10]
value = 190, 1

[state 1071, aft]
type = AfterImage
trigger1 = AnimElem = 1
Time = 100
TimeGap=2
FrameGap = 1
length = 12
PalBright   = 220,  0,  0
PalContrast = 230,200,200
PalAdd      =  5,5,5
PalMul      = 0.7,0.7,0.7

[State 1071, dust]
type = MakeDust
trigger1 = Time= 1
pos = 5,5
spacing = 1


[state 1071, hitdef]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = (parent,var(11)), (parent,var(11) - 5)
animtype = Hard
guardflag = MA
hitflag = MAF
pausetime = 0,2
sprpriority = 8
sparkno = s8000
guard.sparkno = s8010
sparkxy = 10,10
hitsound   = s1000,3
guardsound = S5,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 20
Fall = ifelse(parent,stateno = 3080,1,0)
ground.velocity = ifelse(parent,stateno = 3080,-3,-1),-2
air.velocity = ifelse(parent,stateno = 3080,-3,-1),-2
air.juggle = 2
palfx.time = 20 ; cor de pegando fogo p2 nova
palfx.add = -50,-200,-200 
sinadd = 50,20,20,50
Palfx.color = 256 
kill = !parent,var(57)

[State 1071, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 80,160


[State 1071,pos]
type = PosAdd
trigger1 = 1
y = Ceil((p2bodydist Y - var(1))/20)  ; com a var fica aleatoria a perseguição! 
;y = Ceil((p2bodydist Y - 110)/20)  ;posica quase no meio do P2 formam uma ponta! :P


[State 1071, chan]
type = ChangeState
trigger1 = Time > 80
value = 1072


[State 1071, chan]
type = ChangeState
trigger1 = movecontact = 1
value = 1072


;MOrcegos Energia Acerta
[Statedef 1072]
type = S
movetype = A
physics = N
anim = 662
velset = 2,0
ctrl = 0


[State 1072, 3]
type = Destroyself
trigger1 = animtime = 0



[Statedef 665] ; Filha Proteje o Pai ------------------
type    = A
movetype= A
physics = N
sprpriority = 10
anim = -1 

[State 665,chan]
type = ChangeAnim
triggerAll = parent, stateno < 5100
trigger1 = time = 0
value = 664

[State 665,chan]
type = ChangeAnim
triggerAll = parent, stateno > 5100
trigger1 = time = 0
value = 665


[State 665, som]
type = PlaySnd
triggerAll = parent, stateno > 5100
TRIGGER1 = time = 0
value = 666,0


[State 665, som]
type = PlaySnd
triggerAll = parent, stateno < 5100
TRIGGER1 = time = 0
value = 1000,14



[State 665,pos]
type = PosSet 
trigger1 = time > 0
Y = 0


[State 665, aft]
type = Afterimage
trigger1  = time = 4
PalBright = 90,0,0
PalContrast  = 120,8,0
PalMul  = .70,.20,.20
time    =  10
length  = 30
TimeGap = 2
FrameGap = 1
Trans = Sub


[State 665, aft]
type = Afterimage
trigger1  = time = 20
PalBright = 90,0,0
PalContrast  = 120,8,0
PalMul  = .70,.20,.20
time    =  50
length  = 30
TimeGap = 2
FrameGap = 1
Trans = Sub



[State 665,chan]
type = ChangeAnim
trigger1 = Anim != 670
trigger1 = parent, stateno > 5100
TRIGGER1 = P2bodyDist X < 50
TRIGGER1 = AnimElem = 17 || animElem = 18 || animElem = 19 || animElem = 20 || animElem = 21 || animElem = 22 || animElem = 23 || animElem = 24 || animElem = 25
value = 670


[State 665, hit]
type = HitDef
triggerAll = parent, stateno < 5100
TRIGGER1 = enemyNear,MOVETYPE=A
attr = SCA, NP 
animtype  = Medium
damage    = 30 ,20
guardflag = MA
pausetime = 0
sparkno = s700566
sparkxy = 80,90
hitsound   = s3,7
guardsound = s11116,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 30
ground.velocity = -6
air.animtype = Back
air.velocity = -4,4
air.juggle = 3
air.fall = 1
palfx.time = 20 ; cor de pegando fogo p2 nova
palfx.add = -150,-80,-50 
sinadd = 10,50,20,50
Palfx.color = 256 
down.velocity = 0,0
down.hittime = 30
down.bounce = 0
envshake.time = 10
envshake.ampl = 5
kill = !parent,var(57)


[State 665, Acertaperto]
type = HitDef
triggerAll = parent, stateno > 5100
TRIGGER1 = time = 0
attr = SCA, NP 
animtype  = Medium
damage    = 40 ,30
guardflag = MA
pausetime = 8,5
sparkno = s8010
sparkxy = 80,90
hitsound   = s3,9
guardsound = s11116,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 30
ground.velocity = -6,-3 
air.velocity = -4,-2
air.juggle = 3
air.fall = 1
palfx.time = 20 ; cor de pegando fogo p2 nova
palfx.add = -150,-80,-50 
sinadd = 10,50,20,50
Palfx.color = 256 
down.velocity = 0,0
down.hittime = 30
down.bounce = 0
envshake.time = 10
envshake.ampl = 5
kill = !parent,var(57)
fall = 1

[State 665, Magia1]
type = Explod
triggerAll = parent, stateno > 5100
trigger1 = movehit && AnimElem = 8
anim = 8000
pos = -10, -40
postype = P2
sprpriority = 10


[State 665, Magia1]
type = Explod
triggerAll = parent, stateno > 5100
trigger1 = movehit && AnimElem = 8
anim = 8010
pos = -10, -60
postype = P2
sprpriority = 10


[State 665, Magia1]
type = Explod
triggerAll = parent, stateno > 5100
trigger1 = movehit && AnimElem = 8
anim = 8000
pos = -10, -80
postype = P2
sprpriority = 10


[State 665, 3]
type = PlaySnd
triggerAll = parent, stateno > 5100
trigger1 = movehit && AnimElem = 7
value = 1000,14


[State 665, 6]
type = EnvShake
TRIGGER1 = time = 0
TRIGGER2 = enemyNear,MOVETYPE=A
time = 20
phase = 5


[State 665, 7]
type = DestroySelf
trigger1 = Animtime = 0



[Statedef 1000]  ; Magia fraca Chao ---------------------------------------------
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2


[State 1000, magia]
type = PlaySnd
trigger1 = time = 5
value = 1000, 0


[State 1000]
type = VarSet 
trigger1 = command = "hadouken1"
var(10) = 1
[State 1000]
type = VarSet 
trigger1 = command = "hadouken1"
var(11) = 70

[State 1000]
type = VarSet 
trigger1 = command = "hadouken2"
var(10) = 2
[State 1000]
type = VarSet 
trigger1 = command = "hadouken2"
var(11) = 90

[State 1000]
type = VarSet 
trigger1 = command = "hadouken3"
var(10) = 3
[State 1000]
type = VarSet 
trigger1 = command = "hadouken3"
var(11) = 110


[State 1000, fala]
type = PlaySnd
trigger1 = Time = 10
value = 0, 4

[State 1000, som vento]
type = PlaySnd
trigger1 = Time = 15
value = 4, 4


[State 1000, Acertaperto]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 57
guardflag = MA
pausetime = 0
sparkno = s6001
sparkxy = -10,-60
hitsound   = s3,5
guardsound = 6,0
ground.type = High
ground.slidetime = 60
ground.hittime  = 40
ground.velocity = -10
air.velocity = -2.5,-4
envshake.time = 7
envshake.ampl = 4
kill = !var(57)


[State 1000, vento]
type = Explod
trigger1 = AnimElem = 5
anim = 6004
pos = 70, -10
postype = P1
sprpriority = 3


[State 1000, Magia1]
type = Explod
trigger1 = AnimElem = 1
anim = 7000
pos = -33, -48
postype = P1
sprpriority = 10
scale = .5,.5
removetime = 4

[State 1000, Magia2]
type = Explod
trigger1 = AnimElem = 2
anim = 7000
pos = -54, -45
postype = P1
sprpriority = 10
scale = .7,.7
removetime = 4

[State 1000, Magia3]
type = Explod
trigger1 = AnimElem = 3
anim = 7000
pos = -47, -37
postype = P1
sprpriority = 10
scale = .7,.7
removetime = 4


[State 1000, Magia4]
type = Explod
trigger1 = AnimElem = 4
anim = 7000
pos = -20, -30
postype = P1
sprpriority = 10
scale = .7,.7
removetime = 2


[state 1000, Chama] ;chama Bola
type = helper
trigger1 = animElem = 5 
ID = 1001
pos = 40,-8
postype = p1
stateno = 1001
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0


[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1001] ; Bola de energia ------------------
type    = A
movetype= A
physics = N
sprpriority = 10
anim = 7000
velset = 5,0

[State 1001]
type = VelSet 
trigger1 = parent, var(10) = 1
x = 5

[State 1001]
type = VelSet 
trigger1 = parent, var(10) = 2
x = 7

[State 1001]
type = VelSet 
trigger1 = parent, var(10) = 3
x = 9

[State 1001]
type = VelSet 
trigger1 = var(59) = 2
x = 9


[State 1001, som vento2]
type = PlaySnd
trigger1 = Time  >= 0 && timemod = 10,1 && time <= 52
value = 4, 7

[State 1001 , 1] 
type = AssertSpecial
trigger1 = Time >= 0
flag  = noshadow

[State 1001, 2]
type = Afterimage
trigger1  = time = 0
PalBright = 90,0,0
PalContrast  = 120,8,0
PalMul  = .70,.20,.20
time    =  50
length  = 30
TimeGap = 2
FrameGap = 1
Trans = Add


[State 1001, Bolhas-P1]
type = Explod
trigger1 = time >= 0 && Timemod = 3, 2
anim = 7007 
pos = 10,-65
random = 20,25
sprpriority = 10
ownpal = 1
accel = -0.3, 0.0
ignorehitpause = 1
supermove = 1
velocity = -2,0
pausemovetime = 100
supermovetime = 100


[State 1001, Bolhas-P1]
type = Explod
trigger1 = time >= 0 && Timemod = 3, 2
anim = 7007 
pos = 10,-60
random = 20,25
sprpriority = 10
ownpal = 1
accel = -0.4, 0.0
ignorehitpause = 1
supermove = 1
velocity = -2,0
pausemovetime = 100
supermovetime = 100


[State 1001, Acertaperto]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = parent, var(11) ,40
guardflag = MA
pausetime = 0
sparkno = s700566
sparkxy = 80,90
hitsound   = s0,8
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 30
ground.velocity = -6
air.animtype = Back
air.velocity = -4,4
air.juggle = 3
air.fall = 1
palfx.time = 20 ; cor de pegando fogo p2 nova
palfx.add = -50,-200,-200 
sinadd = 50,20,20,50
Palfx.color = 256 
down.velocity = 0,0
down.hittime = 30
down.bounce = 0
envshake.time = 10
envshake.ampl = 5
fall = ifelse(stateno = 1010, 1,0)
kill = !parent,var(57)

[State 1001, 3]
type = PlaySnd
trigger1 = moveHit = 1
value = 4,5

[State 1001, 3]
type = DestroySelf
trigger1 = time = 150


[State 1001, 3]
type = ChangeState
trigger1 = movecontact = 1
value = 1002


;Energia Acerta
[Statedef 1002]
type = S
movetype = A
physics = N
anim = 7005
ctrl = 0

[State 1002, 2]
type = Afterimage
trigger1  = time = 0
PalBright = 90,0,0
PalContrast  = 120,8,0
PalMul  = .70,.20,.20
time    =  2
length  = 30
TimeGap = 2
FrameGap = 1
Trans = Add

[State 1002,3]
type = PosAdd 
trigger1 = Time = 0
y = -65
X = 35

[State 1002, spark-fogos]
type = Explod
trigger1 = Time >= 0 && timeMod = 5,0
anim = 7008
pos = -5, -60
random = 20,70
postype = P2
sprpriority = 20
ownpal = 1
scale = .5,.5
pausemovetime = 666
supermovetime = 666
bindtime = -1

[State 1002,vel]
type = VelSet 
trigger1 = Time >= 0 && time <= 10
x = 2.5
y = 0

[State 1002, 3]
type = PlaySnd
trigger1 = time = 4
value = 4,5

[State 3210, 6]
type = Envcolor  
trigger1 = time = 2
persistent = 1
ignorehitpause = 1
value = 245,0,0
time = 1



[State 1002, 3]
type = Destroyself
trigger1 = animtime = 0


[Statedef 1010]  ; Magia fraca AR ---------------------------------------------
type    = A
movetype= A
physics = N
juggle  = 2
poweradd= 60
ctrl = 0
anim = 1010
sprpriority = 2

[State 1010, magia]
type = PlaySnd
trigger1 = time = 0
value = 1000, 0

[State 1010]
type = VarSet 
trigger1 = command = "hadouken1"
var(10) = 1
[State 1010]
type = VarSet 
trigger1 = command = "hadouken1"
var(11) = 70

[State 1010]
type = VarSet 
trigger1 = command = "hadouken2"
var(10) = 2
[State 1010]
type = VarSet 
trigger1 = command = "hadouken2"
var(11) = 80

[State 1010]
type = VarSet 
trigger1 = command = "hadouken3"
var(10) = 3
[State 1010]
type = VarSet 
trigger1 = command = "hadouken3"
var(11) = 90

[State 1010, som vento]
type = PlaySnd
trigger1 = Time = 15
value = 4, 4


[State 1010, 1]
type = VelMul
trigger1 = time = 0
x = .15
y = .15

[State 1010, 2]
type = VelAdd
trigger1 = time = 0
trigger1 = Vel Y = [-.08,.08]
y = ifelse(Vel Y <= 0, .08, -.08)


[State 1010, 2]
type = VelSet
trigger1 = Pos Y >= 4
y = 0


[State 1010, Acertaperto]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 57
guardflag = MA
pausetime = 0
sparkno = s6001
sparkxy = -10,-60
hitsound   = s3,5
guardsound = 6,0
ground.type = High
ground.slidetime = 60
ground.hittime  = 40
ground.velocity = -10
air.velocity = -2.5,-4
envshake.time = 7
envshake.ampl = 4
kill = !var(57)


[State 1010, vento]
type = Explod
trigger1 = AnimElem = 5
anim = 6004
pos = 70, -10
postype = P1
sprpriority = 3


[State 1010, Magia1]
type = Explod
trigger1 = AnimElem = 1
anim = 7000
pos = -38, -76
postype = P1
sprpriority = 10
scale = .5,.5
removetime = 4
bindtime = -1

[State 1010, Magia2]
type = Explod
trigger1 = AnimElem = 2
anim = 7000
pos = -54, -60
postype = P1
sprpriority = 10
scale = .7,.7
removetime = 4
bindtime = -1


[State 1010, Magia3]
type = Explod
trigger1 = AnimElem = 3
anim = 7000
pos = -48, -57
postype = P1
sprpriority = 10
scale = .7,.7
removetime = 3
bindtime = -1

[State 1010, Magia4]
type = Explod
trigger1 = AnimElem = 4
anim = 7000
pos = -24, -54
postype = P1
sprpriority = 10
scale = .7,.7
removetime = 2
bindtime = -1

[state 1010, Chama] ;chama Bola
type = helper
trigger1 = animElem = 5 
ID = 1001
pos = 20,-37
postype = p1
stateno = 1001
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0


[State 1010, pulso]
type = VelAdd
trigger1 = AnimElem = 5
X = -7
Y = 1

[State 1010, pulso]
type = VelAdd
trigger1 = AnimElem = 7
X = 4


[State 1010, pulso]
type = VelAdd
trigger1 = AnimElem = 8
Y = 3

[State 1010, pulso]
type = VelAdd
trigger1 = AnimElem = 9 && time > 0
Y = vel Y + .1


[State 1010, 7]
type = ChangeState
trigger1 = Pos y > 0
value = 52
ctrl = 1




[Statedef 1020] ;---------------------------- Shouriuken Do Alem RETO :)
type = S
movetype = A
physics = S
anim = 1020
velset = 0,0
ctrl = 0
poweradd = 50

[State 1020]
type = VarSet 
trigger1 = command = "shouryuken1"
var(10) = 1
[State 1020]
type = VarSet 
trigger1 = command = "shouryuken1"
var(11) = 10

[State 1020]
type = VarSet 
trigger1 = command = "shouryuken2"
var(10) = 2
[State 1020]
type = VarSet 
trigger1 = command = "shouryuken2"
var(11) = 20

[State 1020]
type = VarSet 
trigger1 = command = "shouryuken3"
var(10) = 3
[State 1020]
type = VarSet 
trigger1 = command = "shouryuken3"
var(11) = 30


[State 1020, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 8

[State 1020, fala]
type = PlaySnd
trigger1 = Time = 10
value = 1000, 1

[State 1020, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
damage    = 20,20
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s3,5
guardsound = 6,0
pausetime = 15,5
sparkno = 0
sparkxy = -10,-75
ground.type = Low
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0,-6
air.velocity = -1,-5
fall = 0
air.fall = 0
snap = 10,0
envshake.time = 7
envshake.ampl = 4
kill = !var(57)


[State 1020, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1021


[Statedef 1021] ;------------acertando P2
type = A
movetype = A
physics = N
anim = 1021
velset = 0,-8

[State 1021,1]
type = PosAdd 
trigger1 = time = 0 || time = 2 || time = 4
X = 2

[State 1021,2]
type = VelSet 
trigger1 = time = 0
trigger1 = var(10) = 1
y = -8

[State 1021,3]
type = VelSet 
trigger1 = time = 0
trigger1 = var(10) = 2
y = -10

[State 1021,4]
type = VelSet 
trigger1 = time = 0
trigger1 = var(10) = 3
y = -14


[State 1021, vento]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 4


[State 1021, 1]
type = VelAdd
trigger1 = Time >= 5
Y = 1

[State 1021, 2]
type = VelSet
trigger1 = Vel Y >= 1
X = 0

[State 1021, 3]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
attr = A, SA
damage    = var(11),20
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s3,2
guardsound = 6,0
pausetime = 5,5
sparkno = 0
sparkxy = -10,-75
ground.type = Low
ground.slidetime = 20
ground.hittime  = 40
ground.velocity = -2.5,-5
air.velocity = -2.5,-6
fall = 1
air.fall = 1
snap = 24,-50
kill = !var(57)


[State 1021, 4]
type = ChangeState
trigger1 = Time > 0
trigger1 = Vel Y >= 0
value = 1022


[Statedef 1022] ;--------------
type = A
movetype = I
physics = N

[State 1022, 1]
type = Gravity
trigger1 = 1

[State 1022, 2]
type = ChangeState
trigger1 = Time > 0
trigger1 = Pos Y >= 0
value = 1023 


[Statedef 1023]
type    = S
physics = S
ctrl = 0
anim = 47


[State 1023, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1023, 2]
type = PosSet
trigger1 = Time = 0
y = 0


[State 1023, 3]
type = CtrlSet
trigger1 = Time = 5
value = 1


[State 1023, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1030] ;---------------------------- Shouriuken Do Alem DIAGONAL :P
type = S
movetype = A
physics = S
anim = 1030
velset = 0,0
ctrl = 0
poweradd = 50

[State 1030]
type = VarSet 
trigger1 = command = "shouryDiag1"
var(10) = 1
[State 1030]
type = VarSet 
trigger1 = command = "shouryDiag1"
var(11) = 10

[State 1030]
type = VarSet 
trigger1 = command = "shouryDiag2"
var(10) = 2
[State 1030]
type = VarSet 
trigger1 = command = "shouryDiag2"
var(11) = 20

[State 1030]
type = VarSet 
trigger1 = command = "shouryDiag3"
var(10) = 3
[State 1030]
type = VarSet 
trigger1 = command = "shouryDiag3"
var(11) = 30


[State 1030, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 8

[State 1030, fala]
type = PlaySnd
trigger1 = Time = 5
value = 1000, 1

[State 1030, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
damage    = 20,20
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s3,5
guardsound = 6,0
pausetime = 15,5
sparkno = 0
sparkxy = -10,-75
ground.type = Low
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0,-6
air.velocity = 0,-5
fall = 0
air.fall = 0
snap = 50,0
envshake.time = 7
envshake.ampl = 4
kill = !var(57)


[State 1030, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1031


[Statedef 1031] ;------------acertando P2
type = A
movetype = A
physics = N
anim = 1031
velset = 3,-8


[State 1031]
type = VelSet 
trigger1 = time = 0
trigger1 = var(10) = 1
X = 3
y = -8

[State 1031]
type = VelSet 
trigger1 = time = 0
trigger1 = var(10) = 2
X = 3
y = -9

[State 1031]
type = VelSet 
trigger1 = time = 0
trigger1 = var(10) = 3
X = 3
y = -10


[State 1031]
type = VelSet 
trigger1 = time = 0
trigger1 = var(59) = 2
X = 3
y = -10


[State 1031, vento]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 4


[State 1031, 1]
type = VelAdd
trigger1 = Time >= 5
Y = .5

[State 1031, 2]
type = VelSet
trigger1 = Vel Y >= 1
X = 0

[State 1031, 3]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
attr = A, SA
damage    = var(11),20
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s3,2
guardsound = 6,0
pausetime = 5,5
sparkno = 0
sparkxy = -10,-75
ground.type = Low
ground.slidetime = 6
ground.hittime  = 40
ground.velocity = 0,-8
air.velocity = 0,-10
fall = 1
air.fall = 1
snap = 70,-20
kill = !var(57)


[State 1031, 3]
type = HitDef
trigger1 = AnimElem = 8
attr = A, SA
damage    = var(11),20
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound = s3,2
guardsound = 6,0
pausetime = 5,5
sparkno = 0
sparkxy = -10,-75
ground.type = Low
ground.slidetime = 6
ground.hittime  = 40
ground.velocity = -4,.1
air.velocity = -4,.1
fall = 1
air.fall = 1
kill = !var(57)



[State 1031, 4]
type = ChangeState
trigger1 = Time > 0
trigger1 = Vel Y >= 0
value = 1032


[Statedef 1032] ;--------------
type = A
movetype = I
physics = N

[State 1032, 1]
type = Gravity
trigger1 = 2

[State 1032, 2]
type = ChangeState
trigger1 = Time > 0
trigger1 = Pos Y >= 0
value = 1033 


[Statedef 1033]
type    = S
physics = S
ctrl = 0
anim = 47


[State 1033, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1033, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1033, 2]
type = PosAdd
trigger1 = Time = 0
X = 40
y = 0


[State 1033, 3]
type = CtrlSet
trigger1 = Time = 4
value = 1


[State 1033, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[Statedef 1040]  ; Roda Peao ---------------------------------------------
type    = A ;S
movetype= A
physics = N
juggle  = 2
poweradd= 60
anim = 1040
ctrl = 0
sprpriority = 2


[State 1040, segue] ; camera segue o P2
type = ScreenBound
trigger1 = time <= 20
value  = 0
movecamera = 0,0


[State 1040]
type = VarSet 
trigger1 = command = "rodapeao1"
var(10) = 1
[State 1040]
type = VarSet 
trigger1 = command = "rodapeao1"
var(11) = 10

[State 1040]
type = VarSet 
trigger1 = command = "rodapeao2"
var(10) = 2
[State 1040]
type = VarSet 
trigger1 = command = "rodapeao2"
var(11) = 20

[State 1040]
type = VarSet 
trigger1 = command = "rodapeao3"
var(10) = 3
[State 1040]
type = VarSet 
trigger1 = command = "rodapeao3"
var(11) = 30


[State 1040, fala]
type = PlaySnd
trigger1 = Time = 4
value = 1000, 5

[State 1040, som vento]
type = PlaySnd
trigger1 = Time = 15
value = 4, 4

[State 1040, 1]
type = VelSet
trigger1 = AnimElem = 4 && var(10) = 1
X = 4
y = 4
[State 1040, 2]
type = PosAdd
trigger1 = AnimElem = 4 && var(10) = 1
X = -20
Y = -120

[State 1040, 1]
type = VelSet
trigger1 = AnimElem = 4 && var(10) = 2
X = 5
y = 5
[State 1040, 2]
type = PosAdd
trigger1 = AnimElem = 4 && var(10) = 2
X = 50
Y = -130

[State 1040, 1]
type = VelSet
trigger1 = AnimElem = 4 && var(10) = 3
X = 6
y = 6

[State 1040, 2]
type = PosAdd
trigger1 = AnimElem = 4 && var(10) = 3
X = 100
Y = -140


[State 1040, Acertaperto]
type = HitDef
triggerAll = time < 40
trigger1 = animElem = 7 || animElem = 9 || animElem = 11 || animElem = 13 || animElem = 15
attr = S, NA
animtype  = Medium
damage    = var(11),10
guardflag = MA
pausetime = 4,4
sparkno = 1
sparkxy = -10,-50
hitsound   = s3,5
guardsound = 6,0
ground.type = High
ground.slidetime = 60
ground.hittime  = 40
ground.velocity = -1
air.velocity = -2.5,-4
envshake.time = 7
envshake.ampl = 4
kill = !var(57)


[State 1040, Acertaperto]
type = HitDef
trigger1 = HitCount > 3 && time < 40
attr = S, NA
animtype  = Medium
damage    = var(11),20
guardflag = MA
pausetime = 4,4
sparkno = 1
sparkxy = -10,-50
hitsound   = s3,5
guardsound = 6,0
ground.type = High
ground.slidetime = 60
ground.hittime  = 40
ground.velocity = -1
air.velocity = -2.5,-4
envshake.time = 7
envshake.ampl = 4
fall = 1
kill = !var(57)


[State 1040, fumaca]
type = Explod
trigger1 = AnimElem = 1
anim = 7003
pos = 0, 0
postype = P1
sprpriority = 5
bindtime = 4


[State 1040, fumaca]
type = Explod
trigger1 = AnimElem = 5
anim = 7003
pos = 0, 0
postype = P1
sprpriority = 5
bindtime = 4

[State 1040, 2]
type = PosAdd
trigger1 = time >= 30
X = .5
Y = 5

[State 1040, 4]
type = ChangeState
trigger1 = Pos Y > 0
value = 52



[Statedef 1050]  ; Hands Jedah ---------------------------------------------
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1050
ctrl = 0
sprpriority = 2


[State 1050]
type = VarSet 
trigger1 = command = "Hands1"
var(10) = 1
[State 1050]
type = VarSet 
trigger1 = command = "Hands1"
var(11) = 10

[State 1050]
type = VarSet 
trigger1 = command = "Hands2"
var(10) = 2
[State 1050]
type = VarSet 
trigger1 = command = "Hands2"
var(11) = 20

[State 1050]
type = VarSet 
trigger1 = command = "Hands3"
var(10) = 3
[State 1000]
type = VarSet 
trigger1 = command = "Hands3"
var(11) = 30


[State 1050, fala]
type = PlaySnd
trigger1 = Time = 4
value = 0, 4

[State 1050, ossos]
type = PlaySnd
trigger1 = animElem = 3 
value = 3, 7
channel =2


[state 1050, Chama] ;chama Mao Jedah
type = helper
trigger1 = animElem = 3 
ID = 1050
pos = -20,-40
postype = p1
stateno = 1051
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0


[State 1050, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1051] ; Maos do Jeda Helper------------------
type    = A
movetype= A
sprpriority = 10
anim = 8070

[State 1051, pos]
type = Posadd
trigger1 = parent, animelem = 4 ; 20
Y = 10

[State 1051, pos]
type = Posadd
trigger1 = parent, animelem = 5 ;30
Y = 10
X = 4

[State 1051, fala]
type = PlaySnd
trigger1 = animElem = 1 || animElem = 3 || animElem = 5
value = 800, 0

[State 1051, Acertaperto]
type = HitDef
trigger1 = animElem = 1 || animElem = 3 || animElem = 5
attr = S, NA
animtype  = Medium
sprpriority = 10
priority = 10
damage    = parent, var(11) ,10
guardflag = MA
pausetime = 0
sparkno = s8000
sparkxy = 10,-50
hitsound   = s3,9
guardsound = 6,0
ground.type = Low
ground.slidetime = 2
ground.hittime  = 30
ground.velocity = -1,0
air.animtype = Back
air.velocity = -1,1
air.juggle = 3
air.fall = 1
palfx.time = 10 ; cor de pegando fogo p2 nova
palfx.add = -50,-200,-200 
sinadd = 50,20,20,50
Palfx.color = 256 
down.velocity = 0,0
down.hittime = 30
down.bounce = 0
envshake.time = 7
envshake.ampl = 3
snap = 115,0
fall = 1
kill = !parent,var(57)

[State 1051, 3]
type = Destroyself
trigger1 = animTime = 0
trigger2 = parent, MoveType = H



[Statedef 1060]  ; Colunas de Fogo e caveiras ---------------------------------------------
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1060
ctrl = 0
sprpriority = 2

[State 1060, aft]
type = Afterimage
trigger1  = time = 10
PalBright = 90,0,0
PalContrast  = 120,8,0
PalMul  = .70,.20,.20
time    =  20
length  = 10
TimeGap = 2
FrameGap = 2
Trans = Add


[State 1060, som]
type = PlaySnd
trigger1 = time = 0
value = 4, 10
channel = 5

[State 1060, som]
type = StopSnd
trigger1 = time = 30
channel = 5


[State 1060,var]
type = VarSet 
trigger1 = command = "caveiras1"
var(10) = 50
[State 1060,var]
type = VarSet 
trigger1 = command = "caveiras1"
var(11) = 10

[State 1060,var]
type = VarSet 
trigger1 = command = "caveiras2"
var(10) = 120
[State 1060,var]
type = VarSet 
trigger1 = command = "caveiras2"
var(11) = 20

[State 1060,var]
type = VarSet 
trigger1 = command = "caveiras3"
var(10) = 190
[State 1060,var]
type = VarSet 
trigger1 = command = "caveiras3"
var(11) = 30


[State 1060, Acertaperto]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 57
guardflag = MA
pausetime = 0
sparkno = s6001
sparkxy = -10,-60
hitsound   = s3,5
guardsound = 6,0
ground.type = High
ground.slidetime = 60
ground.hittime  = 40
ground.velocity = -4,-8
air.velocity = -2.5,-4
envshake.time = 7
envshake.ampl = 4
kill = !var(57)


[state 1060, Chama] ;chama torre caveiras
type = helper
trigger1 = animElem = 2 
ID = 1061
pos = var(10),0
postype = p1
stateno = 1061
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0

[State 1060, fumaca]
type = Explod
trigger1 = AnimElem = 3
anim = 7031
ID = 7031
pos = var(10),2
postype = P1
sprpriority = -15
accel = 0,-.04
owpal = 1
ignorehitpause


[State 1060, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1061] ; Torre de fogos ------------------
type    = A
movetype= A
physics = N
sprpriority = 10
anim = 7030
velset = 0,0

[State 1061, som]
type = PlaySnd
trigger1 = Time = 0
value = 0, 8

[State 1061, som]
type = PlaySnd
trigger1 = Time = 5
value = 4, 5


[State 1061,vel]
type = VelSet 
trigger1 = time = 10
y = -.3


[State 1061 , ass] 
type = AssertSpecial
trigger1 = Time >= 0
flag  = noshadow

[State 1061, aft]
type = Afterimage
trigger1  = time = 10
PalBright = 90,0,0
PalContrast  = 120,8,0
PalMul  = .70,.20,.20
time    =  10
length  = 5
TimeGap = 2
FrameGap = 2
Trans = Add


[State 1061, Acertaperto]
type = HitDef
trigger1 = time >= 0 && timeMOd = 4,1
attr = S, NA
animtype  = Medium
damage    = parent, var(11) ,40
guardflag = MA
pausetime = 0
sparkno = s700896
sparkxy = 20,50
hitsound   = s4,9
guardsound = 6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 1,-5
air.animtype = Back
air.velocity = 0,-5
air.juggle = 3
air.fall = 1
palfx.time = 50 ; cor de pegando fogo p2 nova
palfx.add = -50,-200,-200 
sinadd = 50,20,20,50
Palfx.color = 256 
down.velocity = 0,0
down.hittime = 30
down.bounce = 0
envshake.time = 10
envshake.ampl = 5
recovery = 0
fall.recovery = 0
fall = 1
kill = !parent,var(57)
;snap = -10,-5

[State 1061, spark-fogos]
type = Explod
triggerall = MoveHit = 1
trigger1 = time >= 0 && timeMOd = 10,2
anim = 7008
posType = p2
pos = -10, -50
random = 40,30
sprpriority = 1
ownpal = 1
scale = .5,.5
pausemovetime = 666
supermovetime = 666
bindtime = -1
removetime = 30


[State 1061, 6]
type = Envcolor  
triggerall = MoveHit = 1
trigger1 = time >= 0 && timeMOd = 10,2
persistent = 1
ignorehitpause = 1
value = 245,0,0
time = 1


[State 1061, 3]
type = DestroySelf
trigger1 = Animtime = 0

