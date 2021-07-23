[Statedef 3000]  ; SuperMagia Chao ---------------------------------------------
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -2000
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2


[State 3000, Push] 
type = PlayerPush
trigger1 = 1
value = 0

;------bloco Super pause
[State 3000, PauseComSpark1]
type = SuperPause
trigger1 = AnimElem = 2
pos = -35, -78
anim = -1
sound = s99,0

[State 3000, Super PEQ frente]
type = Explod
trigger1 = AnimElem = 2
anim = 7011
pos = -40, -92
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .6,.6
sprpriority = 10

[State 3000, Super grand tras]
type = Explod
trigger1 = AnimElem = 2
anim = 7010
pos = -40, -92
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .8,.8
sprpriority = -10

[State 3000, Super Peq Frent 2]
type = Explod
trigger1 = AnimElem = 2
anim = 7011
pos = 15, -110
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .4,.4
sprpriority = 10

[State 3000, Super Grand tras 2]
type = Explod
trigger1 = AnimElem = 2
anim = 7010
pos = 15, -110
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .6,.6
sprpriority = -10


[State 3000, NaoApanha]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, ATC , NA
time = 20
;---- fim Bloco

[State 3000, magia]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000, 4


[State 3000, Acertaperto]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 100
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


[State 3000, vento]
type = Explod
trigger1 = AnimElem = 5
anim = 6004
pos = 70, -10
postype = P1
sprpriority = 3


[State 3000, Magia1]
type = Explod
trigger1 = AnimElem = 1
anim = 7000
pos = -33, -48
postype = P1
sprpriority = 10
scale = .5,.5
removetime = 4

[State 3000, Magia2]
type = Explod
trigger1 = AnimElem = 2
anim = 7000
pos = -54, -45
postype = P1
sprpriority = 10
scale = .7,.7
removetime = 4

[State 3000, Magia3]
type = Explod
trigger1 = AnimElem = 3
anim = 7000
pos = -47, -37
postype = P1
sprpriority = 10
scale = .7,.7
removetime = 4


[State 3000, Magia4]
type = Explod
trigger1 = AnimElem = 4
anim = 7000
pos = -20, -30
postype = P1
sprpriority = 10
scale = .7,.7
removetime = 2


[state 3000, Chama] ;chama Bola
type = helper
trigger1 = animElem = 5 
ID = 1001
pos = 25,10
postype = p1
stateno = 3001
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0


;--------- bloco segue
[State 3000, segue] ; camera segue o P2
type = ScreenBound
trigger1 = P2MoveType = H
value  = 0
movecamera = 0,0

[State 3000, NaoSegueP2]
type = ChangeState
trigger1 = AnimTime = 0 && BackEdgeBodyDist > -1
value  = 0
ctrl  = 1

[State 3000, seguirP2]
type = ChangeState
trigger1 = AnimTime = 0 && BackEdgeBodyDist <= -1
value = 9990
ctrl = 0
;-----------fim segue

[State 3000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 3001] ; Bola de energia --------------------------------------------
type    = A
movetype= A
sprpriority = 10
anim = 7002
velset = 6.5,0


[State 3001, som vento2]
type = PlaySnd
trigger1 = Time  >= 0 && timemod = 10,1 && time <= 52
value = 4, 7

[State 3001 , 1] 
type = AssertSpecial
trigger1 = Time >= 0
flag  = noshadow

[State 3001, 2]
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

[State 3001, Bolhas-P1]
type = Explod
trigger1 = time >= 0 && Timemod = 3, 2
anim = 7007 
pos = 10,-110
random = 20,25
sprpriority = 10
ownpal = 1
accel = -0.3, 0.0
ignorehitpause = 1
supermove = 1
velocity = -2,0
pausemovetime = 100
supermovetime = 100


[State 3001, Bolhas-P1]
type = Explod
trigger1 = time >= 0 && Timemod = 3, 2
anim = 7007 
pos = 10,-80
random = 20,25
sprpriority = 10
ownpal = 1
accel = -0.3, 0.0
ignorehitpause = 1
supermove = 1
velocity = -2,0
pausemovetime = 100
supermovetime = 100


[State 3001, Bolhas-P1]
type = Explod
trigger1 = time >= 0 && Timemod = 3, 2
anim = 7007 
pos = 10,-90
random = 20,25
sprpriority = 10
ownpal = 1
accel = -0.4, 0.0
ignorehitpause = 1
supermove = 1
velocity = -2,0
pausemovetime = 100
supermovetime = 100


[State 3001, Bolhas-P1]
type = Explod
trigger1 = time >= 0 && Timemod = 3, 2
anim = 7007 
pos = 10,-60
random = 20,25
sprpriority = 10
ownpal = 1
accel = -0.3, 0.0
ignorehitpause = 1
supermove = 1
velocity = -2,0
pausemovetime = 100
supermovetime = 100


[State 3001, Bolhas-P1]
type = Explod
trigger1 = time >= 0 && Timemod = 3, 2
anim = 7007 
pos = 10,-50
random = 20,25
sprpriority = 10
ownpal = 1
accel = -0.3, 0.0
ignorehitpause = 1
supermove = 1
velocity = -2,0
pausemovetime = 100
supermovetime = 100


[State 3001, Acertaperto]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 250 ,150
guardflag = MA
pausetime = 2,5
sparkno = s700566
sparkxy = 80,90
hitsound   = s0,8
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 90
ground.velocity = -10,-1
air.animtype = Back
air.velocity = -4,4
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
air.recovery = 0
recovery = 0
fall.recovertime = 90
fall = 1
kill = !parent,var(57)

[State 3001, 3]
type = PlaySnd
trigger1 = moveHit = 1
value = 4,5

[State 3001, 3]
type = PlaySnd
trigger1 = moveHit = 1
value = 3,6

[State 3001, 3]
type = DestroySelf
trigger1 = time = 150


[State 3001, 3]
type = ChangeState
trigger1 = movecontact = 1
value = 3002


;Energia Acerta
[Statedef 3002]
type = S
movetype = A
physics = N
anim = 7009
ctrl = 0

[State 3210, 6]
type = Envcolor  
trigger1 = time = 0
persistent = 1
ignorehitpause = 1
value = 245,0,0
time = 2

[State 3002, 2]
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

[State 3002]
type = PosAdd 
trigger1 = Time = 0
y = -75
X = 60

[State 3002, spark-fogos]
type = Explod
trigger1 = Time >= 0 && timeMod = 3,0
anim = 7008
pos = -5, -60
random = 60,20
postype = P2
sprpriority = 20
ownpal = 1
scale = .5,.5
pausemovetime = 666
supermovetime = 666
bindtime = -1


[State 3002, spark-fogos]
type = Explod
trigger1 = Time >= 0 && timeMod = 3,0
anim = 7008
pos = -5, -60
random = 50,30
postype = P2
sprpriority = 20
ownpal = 1
scale = .5,.5
pausemovetime = 666
supermovetime = 666
bindtime = -1

[State 3002]
type = VelSet 
trigger1 = Time >= 0 && time <= 10
x = 1.5
y = 0


[State 3002, 3]
type = PlaySnd
trigger1 = time = 4
value = 4,5

[State 3002, 3]
type = Destroyself
trigger1 = animtime = 0




[Statedef 3010]  ; Magia SUPER CAVEIRA  AR ---------------------------------------------
type    = A
movetype= A
physics = N
juggle  = 2
poweradd= -2000
ctrl = 0
anim = 1010
sprpriority = 2

;------bloco Super pause
[State 3010, PauseComSpark1]
type = SuperPause
trigger1 = AnimElem = 2
pos = -35, -78
anim = -1
sound = s99,0

[State 3010, Super PEQ frente]
type = Explod
trigger1 = AnimElem = 2
anim = 7011
pos = -40, -100
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .6,.6
sprpriority = 10

[State 3010, Super grand tras]
type = Explod
trigger1 = AnimElem = 2
anim = 7010
pos = -40, -100
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .8,.8
sprpriority = -10



[State 3010, Super Peq Frent 2]
type = Explod
trigger1 = AnimElem = 2
anim = 7011
pos = 15, -115
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .4,.4
sprpriority = 10

[State 3010, Super Grand tras 2]
type = Explod
trigger1 = AnimElem = 2
anim = 7010
pos = 15, -115
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .6,.6
sprpriority = -10


[State 3010, NaoApanha]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, ATC , NA
time = 20
;---- fim Bloco

[State 3010, magia]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000, 4


[State 3010, 1]
type = VelMul
trigger1 = time = 0
x = .15
y = .15

[State 3010, 1a]
type = VelAdd
trigger1 = time = 0
trigger1 = Vel Y = [-.08,.08]
y = ifelse(Vel Y <= 0, .08, -.08)


[State 3010, 3a]
type = VelSet
trigger1 = Pos Y >= 4
y = 0


[State 3010, Acertaperto]
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
air.recovery = 0
recovery = 0
fall.recovertime = 90
kill = !var(57)


[State 3010, vento]
type = Explod
trigger1 = AnimElem = 5
anim = 6004
pos = 70, -10
postype = P1
sprpriority = 3


[State 3010, Magia1]
type = Explod
trigger1 = AnimElem = 1
anim = 7000
pos = -38, -76
postype = P1
sprpriority = 10
scale = .5,.5
removetime = 4
bindtime = -1

[State 3010, Magia2]
type = Explod
trigger1 = AnimElem = 2
anim = 7000
pos = -54, -60
postype = P1
sprpriority = 10
scale = .7,.7
removetime = 3
bindtime = -1


[State 3010, Magia3]
type = Explod
trigger1 = AnimElem = 3
anim = 7000
pos = -48, -57
postype = P1
sprpriority = 10
scale = .7,.7
removetime = 3
bindtime = -1


[State 3010, Magia4]
type = Explod
trigger1 = AnimElem = 4
anim = 7000
pos = -24, -54
postype = P1
sprpriority = 10
scale = .7,.7
removetime = 1
bindtime = -1


[state 3010, Chama] ;chama Bola
type = helper
trigger1 = animElem = 4 
ID = 1001
pos = 5,-15
postype = p1
stateno = 3001
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0


[State 3010, pulso]
type = VelAdd
trigger1 = AnimElem = 5
X = -7
Y = .8

[State 3010, pulso]
type = VelAdd
trigger1 = AnimElem = 7
X = 4


[State 3010, pulso]
type = VelAdd
trigger1 = AnimElem = 8
Y = 3

[State 3010, pulso]
type = VelAdd
trigger1 = AnimElem = 9 && time > 10
Y = vel Y + .1

;--------- bloco segue
[State 3010, segue] ; camera segue o P2
type = ScreenBound
trigger1 = P2MoveType = H
value  = 0
movecamera = 0,0

[State 3010, 7]
type = ChangeState
trigger1 = Pos y > 0 && BackEdgeBodyDist > -1
value = 52
ctrl = 1


[State 3010, seguirP2]
type = ChangeState
trigger1 = AnimTime = 0 && BackEdgeBodyDist <= -1
value = 9990
ctrl = 0
;-----------fim segue




[Statedef 3050] ;---------------------------- SUPER MORDIDAS --------------------
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
anim = 3001
sprpriority = 1
powerAdd = -2000

;------bloco Super pause
[State 3050, PauseComSpark1]
type = SuperPause
trigger1 = AnimElem = 3
pos = -35, -78
anim = -1
sound = s99,0

[State 3050, Super PEQ frente]
type = Explod
trigger1 = AnimElem = 3
anim = 7011
pos = 10, -92
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .6,.6
sprpriority = 10

[State 3050, Super grand tras]
type = Explod
trigger1 = AnimElem = 3
anim = 7010
pos = 10, -92
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .8,.8
sprpriority = -10


[State 3050, NaoApanha]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, ATC , NA
time = 20
;---- fim Bloco


[State 3050, run Sound]
type = PlaySnd
trigger1 = animElem = 4
value = 100, 0


[State 3050, run Sound]
type = PlaySnd
trigger1 = animElem = 3
value = 195, 2


[State 3050, sombras] 
type = Afterimage
trigger1 = animElem = 3
trans = add
PalContrast =  250, 150, 150
PalBright = 0,0,0
time    =  25
length  = 20
TimeGap = 2
FrameGap = 1


[State 3050, 1]
type = VelSet
trigger1 = time >= 3
x = 7

[State 3050, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 3050, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn


[State 3050, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT       
hitflag = MAF       
priority = 8, hit 
pausetime = 4,4
sparkno = -1     
sprpriority = 1  
p2facing = 1    
p1stateno = 3051
p2stateno = 3052
guard.dist = 0  
fall = 1        
snap = 25,0
air.recovery = 0
recovery = 0
fall.recovertime = 90

[State 3210, 6]
type = Envcolor  
triggerall = MoveHit = 1
trigger1 = Time >= 0 && HitPauseTime = 2
persistent = 1
ignorehitpause = 1
value = 245,0,0
time = 3


[State 3050, 4]
type = ChangeState
trigger1 = time > 20
value = 101


[Statedef 3051]  ;mordendo P2 --------------------------
type    = S
movetype= A
physics = N
anim = 3000
velset = 0,0

[State 3051, Push] 
type = PlayerPush
trigger1 = 1
value = 0


[State 3051, 1]
type = PosAdd
trigger1 = time = 0
x = 20

[State 3210, 6]
type = Envcolor  
triggerall = MoveHit = 1
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
trigger6 = AnimElem = 24
persistent = 1
ignorehitpause = 1
value = 245,0,0
time = 3

[State 3051, power]
type = hitAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
trigger6 = AnimElem = 24
value = 1

[State 3051, power]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
trigger6 = AnimElem = 24
anim = 8020
pos = 30,-90
sprpriority = 10
ownpal = 1
ignorehitpause = 1
supermove = 1
removetime = 8
facing = -1

[State 3051, power]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
trigger6 = AnimElem = 24
anim = 8000
pos = 30,-90
sprpriority = 10
ownpal = 1
ignorehitpause = 1
supermove = 1
removetime = 10


[State 3051, power]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
trigger6 = AnimElem = 24
value = 800,0

[State 3051, power]
type = targetLifeAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
trigger6 = AnimElem = 24
value = -22

[State 3051, power]
type = powerAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
trigger6 = AnimElem = 24
value = 100

[State 3051, power]
type = envshake
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
trigger6 = AnimElem = 24
time = 7
ampl = 4


[State 3051, Bind 1] ; sendo mordido
type = TargetBind
trigger1 = AnimElem = 1
pos = 25, -70


[State 3051, Throw 11]
type = TargetState
trigger1 = AnimElem = 24
value = 3055


[State 3051, Throw 11]
type = posAdd
trigger1 = AnimElem = 26
trigger2 = AnimElem = 32
trigger3 = AnimElem = 36
X = 20


[State 3051, Throw 11]
type = makeDust
trigger1 = AnimElem = 26
trigger2 = AnimElem = 32
trigger3 = AnimElem = 36

[State 3051, Bind 1] ; sendo mordido
type = TargetBind
trigger1 = AnimElem = 26
trigger2 = AnimElem = 32
trigger3 = AnimElem = 36
pos = 40, -10


[State 3051, 2]
type = HitDef
trigger1 = AnimElem = 26
trigger2 = AnimElem = 32
attr = A, NA
damage = 30
guardflag = HA
priority = 3
pausetime = 2,2
sparkno = 1
sparkxy = -5,-60
hitsound   = s3,0
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3
air.recovery = 0
recovery = 0
fall.recovertime = 90
envshake.time = 5
envshake.ampl = 3
p2stateno = 3055
air.recovery = 0
recovery = 0
fall.recovertime = 90
kill = !var(57)

[State 3051, 2]
type = HitDef
trigger1 = AnimElem = 36
attr = S, NA
animtype  = Hard ;Medium
damage    = 90
guardflag = MA
pausetime = 15,15
sparkno = 1
sparkxy = -10,-90
hitsound   = s3,4
guardsound = 6,0
ground.type = High
ground.slidetime = 2
ground.hittime  = 20
ground.velocity = -10,-15
air.velocity = -5,-5
air.recovery = 0
fall.recovertime = 90
envshake.time = 7
envshake.ampl = 4
fall = 1
air.recovery = 0
recovery = 0
fall.recovertime = 90
kill = !var(57)

[State 3051, sombras] ;sombras em alguns especiais------------------------
type = Afterimage
trigger1 = animElem = 19
trans = add
PalContrast =  250, 150, 150
PalBright = 0,0,0
time    =  40
length  = 20
TimeGap = 2
FrameGap = 1


[State 3051, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;P2 mordido
[Statedef 3052]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 10

[State 3052, 1]
type = posSet
trigger1 = time = 0
Y = 0

[State 3052, 1]
type = posAdd
trigger1 = AnimElem = 24
Y = 25

[State 3052, 2]
type = sprpriority
trigger1 = AnimElem = 2
value = -9


[State 3052, 3]
type = sprpriority
trigger1 = AnimElem = 25
value = 9


[State 3052, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820



;---------------------------------------------------------------------------
;P2 apanhando
[Statedef 3055]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -10

[State 3055, 1]
type = changeAnim
trigger1 = time > 0 && timeMod = 4,2
value = 5010

[State 3055, 1]
type = changeState
trigger1 = time > 20
value = 5000



[Statedef 3060]  ; Chama Filhinha do Inferno ---------------------------------------------
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -2000
velset = 0,0
anim = 10
ctrl = 0
sprpriority = 2

[State 3060, 1]
type = ScreenBound
trigger1 = time > 0
value = 0
movecamera = 0,200


;------bloco Super pause
[State 3060, PauseComSpark1]
type = SuperPause
trigger1 = Time = 7
pos = -10, -68
anim = -1
sound = s99,0

[State 3060, Super PEQ frente]
type = Explod
trigger1 = Time = 7
anim = 7011
pos = -10, -50
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .6,.6
sprpriority = 10

[State 3060, Super grand tras]
type = Explod
trigger1 = Time = 7
anim = 7010
pos = -10, -50
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .8,.8
sprpriority = -10


[State 3060, NaoApanha]
type = NotHitBy
trigger1 = Time = 3
value = , NA, SA, ATC , NA
time = 250
;---- fim Bloco


;-----------
[State 3060, 1] ;pisca vermelho
type = BGpalfx
trigger1 = time = 7
add = 10,-30,-30
time = 50

[State 3060, 5] ; fica tudo verm escuro
type = BGpalfx
trigger1 = time = 10
add = -30,-50,-50
time = 280
;--------------


[State 3060, 7]
type = ChangeAnim
trigger1 = Time = 6
value = 420
Elem = 1


[State 3060, 7]
type = ChangeAnim
trigger1 = Time = 9
value = 11

[State 3060, 5] ; fica verm escuro
type = palfx
trigger1 = time = 6
add = -20,-80,-80
time = 250


[State 3060, magia]
type = PlaySnd
trigger1 = time = 5
value = 666, 3


[State 3060, Protejido pela filha]
type = helper
trigger1 = time = 8
ID = 665
pos = 50,0
name = "Princess Maxmov"
postype = p1
stateno = 3065
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 1
keyctrl = 0


[state 3060, Chama] ;chama Power1
type = helper
triggerAll = facing = 1
trigger1 = time = 80
postype = Back
pos = -30,-260
stateno = 3066
helpertype = normal
name = "power of lady 1"
sprpriority = 999
facing= 1
bindtime = -1
ownpal = 1
keyctrl = 0

[state 3060, Chama] ;chama Power1
type = helper
triggerAll = facing = -1
trigger1 = time = 80
postype = Right
pos = 30,-260
stateno = 3066
helpertype = normal
name = "power of lady 1"
sprpriority = 999
facing= 1
bindtime = -1
ownpal = 1
keyctrl = 0

[state 3060, Chama] ;chama Power2
type = helper
triggerAll = facing = 1
trigger1 = time = 150
postype = Back
pos = -30,-260
stateno = 3068
helpertype = normal
name = "power of lady 2"
sprpriority = 999
facing= 1
bindtime = -1
ownpal = 1
keyctrl = 0

[state 3060, Chama] ;chama Power2
type = helper
triggerAll = facing = -1
trigger1 = time = 150
postype = Right
pos = 30,-260
stateno = 3068
helpertype = normal
name = "power of lady 2"
sprpriority = 999
facing= 1
bindtime = -1
ownpal = 1
keyctrl = 0


[state 3060, Chama] ;chama Power3
type = helper
triggerAll = facing = 1
trigger1 = time = 220
postype = Back
pos = -30,-260
stateno = 3070
helpertype = normal
name = "power of lady 3"
sprpriority = 999
facing= 1
bindtime = -1
ownpal = 1
keyctrl = 0

[state 3060, Chama] ;chama Power3
type = helper
triggerAll = facing = -1
trigger1 = time = 220
postype = Right
pos = 30,-260
stateno = 3070
helpertype = normal
name = "power of lady 3"
sprpriority = 999
facing= 1
bindtime = -1
ownpal = 1
keyctrl = 0


[State 3060, 7]
type = ChangeState
trigger1 = Time = 290
value = 11
ctrl = 1


[Statedef 3065] ; Filha Proteje o Pai ------------------
type    = A
movetype= A
physics = N
sprpriority = 70
anim = 666

[State 3065, Push] 
type = PlayerPush
trigger1 = 1
value = 0

[State 3065, 2]
type = Afterimage
trigger1  = time = 4
PalBright = 90,0,0
PalContrast  = 120,8,0
PalMul  = .70,.20,.20
time    =  150
length  = 30
TimeGap = 2
FrameGap = 1
Trans = Sub

[State 3065 , 1] ;quebra a defesa do P2
type = AssertSpecial
trigger1 = Time >= 0
flag  = unguardable


[State 3065, Acertaperto]
type = HitDef
TRIGGER1 = time = 0
attr = SCA, NP 
animtype  = Medium
damage    = 30 ,10
guardflag = MA
pausetime = 0
sprpriority = 70
priority = 88
sparkno = s700566
sparkxy = 80,90
hitsound   = s3,7
guardsound = s11116,0
ground.type = High
ground.hittime  = 100
air.animtype = High
air.juggle = 3
palfx.time = 20 ; cor de pegando fogo p2 nova
palfx.add = -150,-80,-50 
sinadd = 10,50,20,50
Palfx.color = 256 
down.velocity = 0,0
down.hittime = 30
down.bounce = 0
snap = 80,0
envshake.time = 10
envshake.ampl = 5
kill = !parent,var(57)


[State 3065, Acertaperto]
type = HitDef
TRIGGER1 = time > 80 && timeMOd = 6,1 && time <= 215
attr = SCA, NP 
animtype  = Medium
damage    = 10 ,5
guardflag = MA
pausetime = 0
sprpriority = 70
priority = 88
sparkno = s700566
sparkxy = 80,90
hitsound   = s3,7
guardsound = s11116,0
ground.type = High
ground.hittime  = 100
air.animtype = High
air.juggle = 3
palfx.time = 20 ; cor de pegando fogo p2 nova
palfx.add = -150,-80,-50 
sinadd = 10,50,20,50
Palfx.color = 256 
down.velocity = 0,0
down.hittime = 30
down.bounce = 0
envshake.time = 2
envshake.ampl = 1
kill = !parent,var(57)
ground.velocity = 0,-2
snap = 80,-10
fall = 1

[State 3065, Acertaperto]
type = HitDef
TRIGGER1 = time >= 210 && timeMOd = 6,1 && time <= 280 
attr = SCA, NP 
animtype  = Medium
damage    = 15 ,8
guardflag = MA
pausetime = 0
sprpriority = 70
priority = 88
sparkno = s700566
sparkxy = 80,90
hitsound   = s3,7
guardsound = s11116,0
ground.type = High
ground.velocity = 0,-3
ground.hittime  = 60
air.animtype = High
air.juggle = 10
air.fall = 1
palfx.time = 20 ; cor de pegando fogo p2 nova
palfx.add = -150,-80,-50 
sinadd = 10,50,20,50
Palfx.color = 256 
down.bounce = 0
envshake.time = 5
envshake.ampl = 2
snap = 80,-15
fall = 1
kill = !parent,var(57)


[State 3065, 3]
type = PlaySnd
TRIGGER1 = time = 0
value = 1000,16


[State 3065, 3]
type = PlaySnd
TRIGGER1 = time = 90
value = 666,1


[State 3065, power]
type = envshake
TRIGGER1 = time = 210
time = 7
ampl = 4


[State 3065, 3]
type = DestroySelf
trigger1 = Animtime = 0


;---------------------  helper Power of Lady VERM !!!
[Statedef 3066]
type    = S
movetype= A
physics = S
ctrl = 0
anim = -1
sprpriority = 90


[State 3066, 1]
type = ChangeAnim
Trigger1 = Time = 2
value = 7013


[State 3066, turn]
type = turn
triggerAll = parent ,facing = -1
trigger1 = time = 0


[State 3066, spe]
type = Assertspecial
trigger1 = time >0
flag = noshadow


[State 3066, zera cor]
type = varset
trigger1 = time = 0
var(1) = -255

[State 3066, Adiciona cor]
type = varadd
trigger1 = time < 25
var(1) = 10

[State 3066, fx]
type = palfx
trigger1 = time > 0
add = var(1),var(1),var(1)
time = 1
ignorehitpause = 1

[State 3066, chang]
type = changestate
trigger1 = time = 50 ;80
value = 3067


;Some com a Luz VERM-----------------------------
[Statedef 3067]
type    = S
movetype= I
physics = S
ctrl = 0
anim = -1

[State 3067, 1]
type = ChangeAnim
Trigger1 = Time = 2
value = 7013


[State 3067, spe]
type = Assertspecial
trigger1 = time >0
flag = noshadow

[State 3067, baixando cor]
type = varadd
trigger1 = time > 0
var(1) = -5

[State 3067, fx]
type = palfx
trigger1 = time > 0
add = var(1),var(1),var(1)
ignorehitpause = 1
time = 1

[State 3067, end]
type = destroyself
trigger1 = time = 50
value = 0



;---------------------  helper Power of Lady LARAN !!!
[Statedef 3068]
type    = S
movetype= A
physics = S
ctrl = 0
anim = -1
sprpriority = 91


[State 3068, 1]
type = ChangeAnim
Trigger1 = Time = 2
value = 7014


[State 3068, turn]
type = turn
triggerAll = parent ,facing = -1
trigger1 = time = 0


[State 3068, spe]
type = Assertspecial
trigger1 = time >0
flag = noshadow


[State 3068, zera cor]
type = varset
trigger1 = time = 0
var(2) = -255

[State 3068, Adiciona cor]
type = varadd
trigger1 = time < 25
var(2) = 10

[State 3068, fx]
type = palfx
trigger1 = time > 0
add = var(2),var(2),var(2)
time = 1
ignorehitpause = 1

[State 3068, chang]
type = changestate
trigger1 = time = 50
value = 3069


;Some com a Luz LARANJA-----------------------------
[Statedef 3069]
type    = S
movetype= I
physics = S
ctrl = 0
anim = -1


[State 3069, 1]
type = ChangeAnim
Trigger1 = Time = 2
value = 7014


[State 3069, spe]
type = Assertspecial
trigger1 = time >0
flag = noshadow

[State 3069, baixando cor]
type = varadd
trigger1 = time > 0
var(2) = -5

[State 3069, fx]
type = palfx
trigger1 = time > 0
add = var(2),var(2),var(2)
ignorehitpause = 1
time = 1

[State 3069, end]
type = destroyself
trigger1 = time = 50
value = 0


;---------------------  helper Power of Lady BRANCO !!!
[Statedef 3070]
type    = S
movetype= A
physics = S
ctrl = 0
anim = -1
sprpriority = 92

[State 3070, 1]
type = ChangeAnim
Trigger1 = Time = 2
value = 7015

[State 3070, turn]
type = turn
triggerAll = parent ,facing = -1
trigger1 = time = 0


[State 3070, spe]
type = Assertspecial
trigger1 = time >0
flag = noshadow


[State 3070, zera cor]
type = varset
trigger1 = time = 0
var(3) = -255

[State 3070, sub cor]
type = varadd
trigger1 = time < 25
var(3) = 10

[State 3070, fx]
type = palfx
trigger1 = time > 0
add = var(3),var(3),var(3)
time = 1
ignorehitpause = 1

[State 3070, chang]
type = changestate
trigger1 = time = 50
value = 3071


;Some com a Luz BRANCA-----------------------------
[Statedef 3071]
type    = S
movetype= I
physics = S
ctrl = 0
anim = -1

[State 3071, 1]
type = ChangeAnim
Trigger1 = Time = 2
value = 7015


[State 3071, spe]
type = Assertspecial
trigger1 = time >0
flag = noshadow

[State 3071, baixando cor]
type = varadd
trigger1 = time > 0
var(3) = -5

[State 3071, fx]
type = palfx
trigger1 = time > 0
add = var(3),var(3),var(3)
ignorehitpause = 1
time = 1

[State 3071, end]
type = destroyself
trigger1 = time = 50
value = 0


[Statedef 3080]  ; Super Vira Morcegos ---------------------------------------------
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -2000
velset = 0,0
anim = 3080
ctrl = 0
sprpriority = 2

;-----------
[State 3080, 1] ;pisca vermelho
type = BGpalfx
trigger1 = time = 0 
add = 20,-30,-30
time = 2

[State 3080, 2] ; fica tudo verm escuro
type = BGpalfx
trigger1 = time = 0
add = -30,-60,-60
time = 210
;--------------

[State 3080, Push] 
type = PlayerPush
trigger1 = 1
value = 0

;------bloco Super pause
[State 3080, PauseComSpark1]
type = SuperPause
trigger1 = time < 100
trigger1 = AnimElem = 2
pos = -35, -78
anim = -1
sound = s99,0

[State 3080, Super PEQ frente]
type = Explod
trigger1 = time < 100
trigger1 = AnimElem = 2
anim = 7011
pos = 0, -92
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .6,.6
sprpriority = 10

[State 3080, Super grand tras]
type = Explod
trigger1 = time < 100
trigger1 = AnimElem = 2
anim = 7010
pos = 0, -92
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .8,.8
sprpriority = -10

[State 3080, NaoApanha]
type = NotHitBy
trigger1 = time < 100
trigger1 = AnimElem = 2
value = , NA, SA, ATC , NA
time = 20
;---- fim Bloco

[State 3080, magia]
type = PlaySnd
trigger1 = time < 100
trigger1 = AnimElem = 1
value = 195, 0


[State 3080, magia]
type = PlaySnd
trigger1 = time < 100
trigger1 = AnimElem = 2
value = 3, 8


;--------- bloco segue
[State 3080, segue] ; camera segue o P2
type = ScreenBound
trigger1 = P2MoveType = H
value  = 0
movecamera = 0,0

;-----------fim segue

[State 3080, 1]
type = VarRandom
trigger1 = Time <= 110 && timeMod = 12,2
v = 1
range = -200,0


[State 3080, 1]
type = VarSet
trigger1 = Time = 0
var(10) = 10
[State 3080, 1]
type = VarSet
trigger1 = Time = 0
var(11) = 10



[state 3080, Chama]
type = helper
trigger1 = Time >= 12 && timeMod = 5,1 && time <= 100
ID = 1070
pos = -200,var(1)
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


[state 3080, Chama]
type = helper
trigger1 = Time >= 10 && timeMod = 4,2 && time <= 100
ID = 1070
pos = -250,var(1)
postype = p2
stateno = 1071
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0


[state 3080, Chama]
type = helper
trigger1 = Time >= 10 && timeMod = 5,1 && time <= 100
ID = 1070
pos = -250,var(1)
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


[state 3080, Chama]
type = helper
trigger1 = Time >= 10 && timeMod = 4,2 && time <= 100
ID = 1070
pos = -250,var(1)
postype = p2
stateno = 1071
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0

[State 3080, 7]
type = PosAdd
trigger1 = AnimElem = 16
X = P2BodyDist X - 10

[State 3080, som]
type = PlaySnd
trigger1 = time = 130
value = 190, 0
channel = 5


[State 3080, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------- mistos ---------------------------------------

;------------------- esperando atras da tela, antes de ir atras do P2 - para supers
[Statedef 9990]
type    = A
physics = S
anim   = 0
sprpriority = 5
ctrl = 0

[State 666, 0]
type = ScreenBound
trigger1 = 1
value = 0

[State 666, 2]
type = Changestate
trigger1 = time = 35
value = 9991

; ------------------------------------ caindo do ar, atras do P2
; RUN_FWD alterado
[Statedef 9991]
type    = S
physics = S
anim = 100
sprpriority = 1

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x) + 2

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100,101]
type = ChangeState
trigger1 = Time >= 15
value = 101
ctrl = 1
