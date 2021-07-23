;---------------------------------------------------------------------------
;------------HYPERS---------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Nano Assault
;---------------------------------------------------------------------------
[Statedef 3100]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3110
ctrl = 0
sprpriority = 2
poweradd = -1000

[State 3500, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607;+random%2
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607;+random%2
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15



[State 3100, 3]
type = PlaySnd
trigger1 = time  = 0
value = 50,1


[State 3000, end]
type = ChangeState
trigger1 = !AnimTime ;Time = 175
value = 3110
ctrl = 1

;------------------------------------
;Start nano
;--------------------------------
[Statedef 3110]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3100
ctrl = 0
sprpriority = 1



[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 777, es]
type = Explod
trigger1 = animelem=2
sprpriority = 10
anim = 62
pos = 0, 0
removeongethit = 1
scale = 1,1
bindtime = 1
supermovetime = 99
pausemovetime = 99



[State 440, vel]
type=velset
trigger1=animelem=3
x=10
y=-3

[State 440, sts]
type=statetypeset
trigger1=animelemtime(3)>=0
statetype=S
physics=S

[State 440, push]
type=playerpush
trigger1=animelemtime(4)>=0&&animelemtime(18)<0&&movehit
value=660
ignorehitpause=1


[State 3100, 3]
type = PlaySnd
trigger1 = animelem = 3
value = 30,1

[State 3100, 3]
type = PlaySnd
trigger1 = animelem = 3
value = 30,2

[State 3100, xplod1]
type = explod
triggerall = !NumExplod(3103)
trigger1 = animelem = 2
ID = 3103
anim = 3103
name = "WAVES"
postype = P1
pos = 0, 0
ownpal = 1
bindtime= -1
sprpriority = 6
facing = 1
removeongethit = 1

[State 3100, xplod2]
type = explod
triggerall = !NumExplod(3104)
trigger1 = animelem = 2
ID = 3104
anim = 3104
name = "WAVES2"
postype = P1
pos = 0, 0
ownpal = 1
bindtime= -1
sprpriority = -4
facing = 1
removeongethit = 1

[State 3100, xplod3]
type = explod
triggerall = !NumExplod(3107)
trigger1 = animelem = 3
ID = 3107
anim = 3107
name = "WAVES2"
postype = P1
pos = 31, -66
ownpal = 1
bindtime= -1
sprpriority = 6
facing = 1
removeongethit = 1

[State 3101, shit]
type = Explod
triggerall = !NumExplod(3111)
trigger1 = animelem  = 2
anim = 3111
ontop = 1
pos = 0,-20
bindtime= -1
sprpriority = 6
flag = noshadow
ownpal = 1
removeongethit = 1
scale = .7,.7

[State 3101, shit2]
type = Explod
triggerall = !NumExplod(3102)
trigger1 = animelem  = 2
anim = 3102
ontop = 1
pos = 0,-5
bindtime= -1
sprpriority = -4
flag = noshadow
ownpal = 1
removeongethit = 1

[State 3101, shits2]
type = Explod
triggerall = !NumExplod(3102)
trigger1 = animelem  = 2
anim = 3102
ontop = 1
pos = 0,-50
bindtime= -1
sprpriority = -4
flag = noshadow
ownpal = 1
removeongethit = 1

[State 3101, shit3]
type = Explod
triggerall = !NumExplod(3111)
trigger1 = animelem  = 2
anim = 3111
ontop = 1
pos = 0,-50
bindtime= -1
sprpriority = -4
flag = noshadow
ownpal = 1
removeongethit = 1

[State 99403, bootjets]
type = Explod
triggerall = !NumExplod(99310)
trigger1 = animelem = 2
anim = 99310
id = 99310
sprpriority = -1
facing = 1
bindtime = -1
removetime = 60
pos= 30,-10
flag = noshadow
ownpal = 1
removeongethit = 1
scale = .5,.9

[State 3100,helper1]
type = Helper
triggerall = !Numhelper(3101)
trigger1 = StateNo =3110
trigger1 = animelem = 3
ID =3101
postype = P1
pos = 0,20
helpertype = normal
name = "big_wave_1"
stateno = 3101
sprpriority = 6
facing = 1
bindtime = -1
pausemovetime = 1

[State 3100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------BIG WAVE 1-------------
[statedef 3101]
type = S
movetype = A
physics = N
juggle  = 6
ctrl = 0
anim = 3101
sprpriority = 6

[State 3101, 1]
type = BindToParent
trigger1 = 1
pos = 0,-40

[State 3101, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3101, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 3101
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 3101, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 3101, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 3101, snd]
type = playsnd
triggerall = anim = 3101
trigger1 = animelem  = 1
trigger2 = animelem  = 2
trigger3 = animelem  = 3
trigger4 = animelem  = 4
trigger5 = animelem  = 5
value = 30,6


[state 3101, hit]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 6
trigger3 = animelem = 9
trigger4 = animelem = 12
trigger5 = animelem = 15
trigger6 = animelem = 18
trigger7 = animelem = 21
trigger8 = animelem = 24
attr = S, NA
damage   = 50,5
hitflag = MAF
guardflag = MA
;snap = 15,0,0
pausetime = 0,0
sparkno = s30002
sparkxy = -10,-70
hitsound   = s2,5
ground.type = low
ground.slidetime = 15
ground.hittime = 20
ground.velocity = 1,-6
guard.velocity = -2
air.velocity = -1,-6
guard.ctrltime = 39
animtype = heavy
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
p2facing = 1
;yaccel = .43
envshake.time = 12
envshake.ampl = 3
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0

[State 0, Explod]
type = Explod
trigger1 = movehit = 1
anim = 30002
ID = 310
pos = 0,-50
postype = p2
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ignorehitpause = 1


[state 3102, destroy]
type = Destroyself
trigger1 = time = 52
;---------------------------------------------------------------------------
;HULKBUSTER   (based on guido hyper pinhead used with mccready permision)
;---------------------------------------------------------------------------
[Statedef 3199]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 2
anim = 3199
ctrl=0
poweradd = -1000

[State 3500, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1





[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607;+random%2
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607;+random%2
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15




[State 3200, sndx]
type = PlaySnd
trigger1 = !time
value = 50,2

[State 3000, end]
type = ChangeState
trigger1 = !AnimTime ;Time = 175
value = 3200
ctrl = 1


;---------------------------------------------------------------------------
 ; Hulkbuster
;---------------------------------------------------------------------------
[StateDef 3200]
anim = 3200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
juggle  = 7



[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = 15, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999



[State 3200, ground shockwave]
type = Explod
triggerall = !NumExplod(3204)
trigger1 = AnimElem = 12
ID = 3204
anim = 3204
bindtime = -1
removetime = -1
supermove = 1
removeongethit = 1

[State 3200, front shockwave]
type = Explod
triggerall = !NumExplod(3203)
trigger1 = AnimElem = 13
ID = 3203
anim = 3203
bindtime = -1
removetime = -1
supermove = 1
removeongethit = 1
ontop = 1

[State 3200, back propulsor]
type = Explod
triggerall = !NumExplod(3202)
trigger1 = AnimElem = 11
ID = 3202
anim = 3202
bindtime = -1
removetime = -1
supermove = 1
sprpriority = -6
removeongethit = 1

[State 3200, propulsor]
type = Explod
triggerall = !NumExplod(102)
trigger1 = animelem = 11
anim = 102
id = 102
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 105, 4]
type = PlaySnd
trigger1 = animelem = 11
trigger2 = animelem = 14
value = 30,1



[State 3200, move fwd]
type = VelSet
trigger1 = Time > 24
x = 20

[State 3200, HitDef]
type = HitDef
trigger1 = Time % 6 = 0 && Time < 135 ;95
attr = S, NA
damage = 12, 5
guardflag = MA
pausetime = 2,2
hitsound = S2,2
guardsound = S3,0
sparkno = -1;S30002
sparkxy = 10,-50
animtype = Hard
ground.type = Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -2
guard.velocity = -1
air.velocity = -1,-1
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8




[State 3200, HitDef]
type = HitDef
trigger1 = Time > 135
attr = S, NA
damage = 17, 8
guardflag = MA
pausetime = 8,2
hitsound = S2,2
guardsound = S3,0
sparkno = -1;S30002
sparkxy = -10,-50
animtype = Hard
ground.type = Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -5, -18
guard.velocity = -5
air.velocity = -5, -18
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
fall = 1
getpower = 0,0

[State 0, Explod]
type = Explod
trigger1 = movehit = 1
anim = 30002
ID = 310
pos = 10,-50
postype = p2
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ignorehitpause = 1


[State 3200, HitBy]
type = HitBy
trigger1 = 1
value = SCA, HA,SP,HP

[State 3200, back to stance]
type = ChangeState
trigger1 = Time = 140
value = 3201
ctrl = 1

;---------------------------------------------------------------------------
; Hulkbuster - (move end)
[Statedef 3201]
type    = S
physics = S
ctrl = 0
anim = 3201
sprpriority = 2

[State 3201, a]
type = removeexplod
trigger1 = !time
id = 3202

[State 3201, b]
type = removeexplod
trigger1 = !time
id = 3203

[State 3201, c]
type = removeexplod
trigger1 = !time
id = 3204

[State 3201, d]
type = removeexplod
trigger1 = !time
id = 9999

[State 3201, e]
type = removeexplod
trigger1 = !time
id = 102

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem = 1
value = 31,0
channel =0

[State 3201, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Air Uni Assault Start
;---------------------------------------------------------------------------
[Statedef 3150]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 2
anim = 3149
ctrl=0
poweradd = -1000

[State 3500, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



;-------------------------------------------------




[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607;+random%2
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607;+random%2
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15

[State 3150, sndx]
type = PlaySnd
trigger1 = !time
value = 50, 1

[State 3000, end]
type = ChangeState
trigger1 = !AnimTime ;Time = 175
value = 3149
ctrl = 1

;---------------------------------------------------------------------------
;Air Uni Assault
;---------------------------------------------------------------------------
[Statedef 3149]
type    = A
movetype= A
physics = A
poweradd= 100
anim = 3150
ctrl = 0
sprpriority = 1



[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3150, x]
type = PosFreeze
trigger1 = time = [0,15]

[State 3150, y]
type = VelMul
trigger1 = Time > 15
x = .02
y = .05

[State 3150, StateTypeSet]
type = StateTypeSet
trigger1 = var(10) = 1
physics = N


[State 3150, snd]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 9
value = 30, 7


[State 3150, helper]
type = Helper
;triggerall = !Numhelper(3151)
trigger1 = animelem = 8
trigger2 = animelem = 9
name = "Beam"
id = 3151
StateNo = 3151
postype = p1
pos = -100, -40
sprpriority = 6
ownpal = 1



[State 3150, helper]
type = Helper
;triggerall = !Numhelper(3151)
trigger1 = animelem = 8
trigger2 = animelem = 9
name = "Beam"
StateNo = 3151
postype = p1
pos = -40, -40
sprpriority = 6
ownpal = 1


[State 3150, helper]
type = Helper
;triggerall = !Numhelper(3151)
trigger1 = animelem = 8
trigger2 = animelem = 9
name = "Beam"
StateNo = 3151
postype = p1
pos = -60, -40
sprpriority = 6
ownpal = 1


[State 3150, sndP]
type = PlaySnd
trigger1 = animelem = 2
value = 30,1

[State 3150, propulsor]
type = Explod
triggerall = !NumExplod(3151)
trigger1 = animelem = 2
anim = 3151
id = 3151
sprpriority = -1
supermove = 1
postype = P1
pos = 80,0
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = -1

[State 3150, propulsor2]
type = Explod
triggerall = !NumExplod(3152)
trigger1 = animelem = 2
anim = 3151
id = 3152
sprpriority = -1
supermove = 1
postype = P1
pos = -2,0
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = -1

[State 3150, smoke]
type = Explod
triggerall = !NumExplod(3153)
trigger1 = animelem = 2
anim = 3152
id = 3153
sprpriority = 4
supermove = 1
postype = P1
pos = -5,-5
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = -1


[State 3150, Change to Fall]
type = ChangeState
trigger1 = Time = 50
value = 3155
ctrl = 1

;---------------------------------------------------------------------------
; Hyper Uni - (move end)
[Statedef 3155]
type    = S
physics = S
ctrl = 0
anim = 3155
sprpriority = 2

[State 3155, a]
type = removeexplod
trigger1 = !time
id = 3151

[State 3155, b]
type = removeexplod
trigger1 = !time
id = 3152

[State 3155, 2]
type = removeexplod
trigger1 = !time
id = 3153

[State 3155, 2]
type = removeexplod
trigger1 = !time
id = 1301

[State 3155, d]
type = removeexplod
trigger1 = !time
id = 9999

[State 3155, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------------
;------------ Beam----------------
[statedef 3151]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1301
velset = 8,4
sprpriority = 4

[State 3151, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3151, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1305
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 3151, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 3151, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 3151, hit]
type = HitDef
trigger1 = Time = 0
attr = S, SP
damage = 17,2
hitflag= MAFD
hitsound   = s2,5
guardsound = s0,3
priority = 4
guardflag = MA
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2
air.animtype = Back
air.velocity = -2.5,-5
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
fall = 1
getpower = 0,0

[state 3151, snd]
type = playsnd
trigger1 = movehit = 1
value = 30,8

[State 3151, des]
type = Explod
triggerall = !NumExplod(1302)
trigger1 = movehit = 1
id = 1302
anim = 1302
pos = 120, -10
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
ownpal = 1

[State 3151, sma_size1]
type = Explod
triggerall = !NumExplod(1302)
trigger1 = moveguarded = 1
id = 1302
anim = 1302
pos = 120, -10
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
ownpal = 1

[State 777, hsp]
type = helper
triggerall= !NumHelper(8701)
trigger1 = movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 =moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[state 3151, sndx]
type = playsnd
trigger1 = moveguarded = 1
value = 30,8

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 3151, destroy]
type = Destroyself
trigger1 = time = 70

;------------------------------------------------------------------------------
;Proton Cannon
;------------------------------------------------------------------------------
[Statedef 3300]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 2
anim = 3333
ctrl=0
poweradd = -1000







[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607;+random%2
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607;+random%2
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15




[State 3300, xplod1]
type = explod
triggerall = !NumExplod(3301)
trigger1 = StateNo = 3300
trigger1 = time = 39;animelem = 1
ID = 3301
anim = 3301
name = "cannon"
postype = P1
pos = 0,0
ownpal = 1
bindtime= -1
sprpriority = 3
facing = 1
removetime = 21
;pausemovetime = 40

[State 3300, 3]
type = PlaySnd
trigger1 = time = 10
value = 50,0

[State 3000, end]
type = ChangeState
trigger1 = !AnimTime ;Time = 175
value = 3344
ctrl = 1
;------------------------------
; Start
[Statedef 3344]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3300
juggle =4
sprpriority = 2



[State 3344, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[state 3344, snd]
type = playsnd
trigger1 = animelem = 13
value = 31,2

[State 3344, hit]
type=hitdef
;triggerall = StateNo = 3344
trigger1=time=0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 40, 4
pausetime = 2,9
sparkno = -1
guard.sparkno = -1
hitsound = s2,5
ground.type = High
ground.slidetime = 0
ground.hittime = 16
ground.velocity = 0,-4
air.velocity = -2.5, -9
sprpriority = 3
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 1300, helper]
type = Helper
triggerall = !Numhelper(3304)
;triggerall = stateno= 3344
trigger1 = AnimElem = 13
name = "ProtonBeam"
StateNo = 3304
id =3304
postype = p1
sprpriority = 9
pos = 0, 0
ownpal = 1
removeongethit = 1



[State 3344, end]
type = ChangeState
trigger1 = Time = 175
value = 3305
ctrl = 1

;----------------------------------------------------------------------------
;Cannon shot
;--------------------------------------------------------------------------
[statedef 3304]
type = A
movetype = A
physics = N
anim = 3304
sprpriority = 9
hitdefpersist = 1
juggle = 4

[State 1305, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3344, hit]
type = HitDef
trigger1 = Time % 4 = 0 && Time < 117 ;95
bindtime = -1
velocity = 0.001,0.001
attr = S, NA
damage   = 7,1
hitsound = S2,0
guardsound = S3,0
animtype = Hard
guardflag = MA
hitflag = MAFD
pausetime = 0,6
sparkno = -1;S3310
sparkxy = -60,0
ground.type = High
ground.slidetime = 0
ground.hittime = 150
ground.velocity = 0,0
air.velocity = -1, -1
sprpriority = 9
hit.priority = 9
fall = 1
air.fall =1
down.velocity = -10
down.hittime = 150
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 3344, hit]
type = HitDef
trigger1 = Time > 117 ;95
bindtime = -1
velocity = 0.001,0.001
attr = S, NA
damage   = 10,1
hitsound = S2,0
guardsound = S3,0
animtype = Hard
guardflag = MA
hitflag = MAFD
pausetime = 0,6
sparkno = -1;S3310
sparkxy = -60,0
ground.type = High
ground.slidetime = 0
ground.hittime = 150
ground.velocity = -5, -4
air.velocity = -5, -4
sprpriority = 9
hit.priority = 9
fall = 1
air.fall =1
down.velocity = -10
down.hittime = 150
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8




[State 1005, 8]
type = DestroySelf
trigger1 = AnimTime = 0

[State 1005, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------
; Proton Cannon - (move end)
[Statedef 3305]
type    = S
physics = S
ctrl = 0
anim = 3302
sprpriority = 2

[State 3305, xplod1]
type = explod
triggerall = !NumExplod(3303)
trigger1 = StateNo = 3305
trigger1 = animelem = 1
ID = 3303
anim = 3303
name = "cannon"
postype = P1
pos = 0,0
ownpal = 1
bindtime= -1
sprpriority = -6
facing = 1
removetime = 36

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem = 1
value = 31,0
channel =0


[State 3201, d]
type = removeexplod
trigger1 = !time
id = 9999

[State 3005, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;Energy Strike
;------------------------------------------------------------------------------
[Statedef 3400]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 2
anim = 3400
ctrl=0
poweradd = -1000

[State 3500, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1






[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607;+random%2
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607;+random%2
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15

[State 777, es]
type = Explod
trigger1 = time =30
sprpriority = 10
anim = 61
pos = 0,0
removeongethit = 1
scale = 1,1
bindtime = 1
supermovetime = 99
pausemovetime = 99


[State 3400, 3]
type = PlaySnd
trigger1 = time = 0
value = 50,66


[State 3400, end]
type = ChangeState
trigger1 = !AnimTime ;Time = 175
value = 3401
ctrl = 1
;------------------------------
; Start
[Statedef 3401]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3401
juggle =4
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 140
ignorehitpause =1




[State 3401, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1





[State 3401, helper]
type = Helper
trigger1 = AnimElem = 2
name = "elecbeams"
StateNo = 3402
postype = p1
pos = 0, 0
ownpal = 1


[State 3401, end]
type = ChangeState
trigger1 = Time = 175
value = 3403
ctrl = 1

;------------------------------
; Energy Strike- (move end)
[Statedef 3403]
type    = S
physics = S
ctrl = 0
anim = 3405
sprpriority = 2

[State 3400, 3]
type = PlaySnd
trigger1 = time = 5
value = 22,7

[State 3403, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------- Electric---------------------------
[Statedef 3402]
type = A
movetype = A
physics = N
anim =3801
juggle = 1
hitdefpersist = 1
sprpriority = 6


[State 3400, 3]
type = PlaySnd
trigger1 = StateNo = 3402
trigger2 = animelem = 1 && animelem = 8
trigger3 = animelem = 5 && animelem = 12
trigger4 = animelem = 15 && animelem = 16
trigger5 = animelem = 19 && animelem = 20
value = 31,3

[State 3402, beam]
type = HitDef
trigger1 = Time % 6 = 0 && Time < 130
attr = S, SP
damage = 8,1
hitflag= MAFD
hitsound   = S2,1
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime =12
ground.hittime  = 12
air.animtype = Back
ground.velocity = -1
air.velocity = 0
air.hittime = 20
air.fall = 1
getpower = 0,0
sprpriority = 6
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 3402, beam1]
type = HitDef
trigger1 = Time > 130
attr = S, SP
damage = 8,1
hitflag= MAFD
hitsound   = S2,1
sparkno = -1
guardflag = MA
pausetime = 0,0
guard.sparkno = -1
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -1
air.velocity = 0
air.animtype = Back
air.hittime = 20
air.fall = 1
getpower = 0,0
sprpriority = 6
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
fall = 1




;[State 0, Explod]
;type = Explod
;trigger1 = movehit = 1
;anim = 30002
;ID = 310
;pos = 0,-70
;postype = p2
;facing = 1
;removetime = -2
;pausemovetime = 0
;scale = 1,1
;sprpriority = 5
;ignorehitpause = 1



[State 1005, 8]
type = DestroySelf
trigger1 = Time = 144

;---------------------------------------------------------------------------
;--------------------------Combo Hyper Ironmen-----------------------------
;---------------------------------------------------------------------------
[Statedef 4500]
type    = S
movetype = A;I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2
poweradd = -1000

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3500
ctrl = 1



[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP



[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -21
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -21
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15663)
triggerall = teamside = 1
trigger1 = !time
anim = 15608
ID = 15663
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15662)
triggerall = teamside = 2
trigger1 = !time
anim = 15608
ID = 15662
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15




[State 777, 0];reset var
type = VarSet
trigger1 = !time
fv = 16
value = 0

[State 777, 0]
type = VarRangeSet
trigger1 = !time
value = 0
first = 11
last = 13

[State 7777, voice]
type = PlaySnd
trigger1 = !time
value = 50,4
channel = 0
IgnoreHitPause = 1


[State 3500, a2]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 3201 , a6]
type = HitDef
trigger1 = !time
attr = S, HA
damage    = 10,1
priority = 7, hit
animtype = hard
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkxy = -10,-60
sparkno = s30002
sprpriority = 6
guard.sparkno = ifelse(!var(55),-1,40)
hitsound   = S2,2
guardsound = S3,0
ground.type = Trip
air.type = Trip
ground.slidetime = 30
ground.hittime = 50
ground.velocity = 0
air.velocity = 0,1
fall = 1
air.fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
p2stateno = 4520
getpower = 0,0
kill = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0





[State 1045, Afterimage]
type = AfterImage
trigger1 = animelem = 6
length = 30
PalBright   =  0,0,0
PalContrast =  120,120,220
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 45

[State 3500, a6]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2
channel=6
IgnoreHitPause = 1


[State 3500, A5]
type = Veladd
trigger1 = time >= 41
x = 2

[State 3500, A6]
type = Velset
trigger1 = animelem = 5
x = 6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(102)
trigger1 = StateNo = 33500
trigger1 = animelem = 7
anim = 1403
id = 102
name = "propulsor"
postype = P1
pos = -80,20
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1


[State 3500, b1]
type = ChangeState
trigger1 = movehit
value = 4502
ctrl = 0

[State 3500, b1]
type = ChangeState
trigger1 = moveguarded
value = 105
ctrl = 0

[State 3500, b1]
type = ChangeState
trigger1 = time >=75
trigger2 = frontEdgeBodyDist <= 0
value = 4501
ctrl = 0


[Statedef 4501];miss ---------------------------------------
type    = S
physics = S
ctrl = 0
anim = 3501

[State 751, c]
type = removeexplod
trigger1 = !time
id = 102

[State 751, c]
type = removeexplod
trigger1 = !time
id = 103

[State 3501, 1]
type = VelMul
trigger1 = AnimElem = 1
x = 1

[State 3501, a]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 3501, b]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3501, 1]
type = VelMul
trigger1 = AnimElem = 2
x = .05
;y = .01

[State 3501, 3]
type = PosSet
trigger1 = animelem = 2
y = 0

[State 3501, 2]
type = VelSet
trigger1 = animelem = 2
y = 0


[State 3501, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 4502] ;----going to wall
type    = S
movetype = A;I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 3502

[State 751, c]
type = removeexplod
trigger1 = !time
id = 102

[State 751, c]
type = removeexplod
trigger1 = !time
id = 103


[State 3502, Bind 1]
type = TargetBind
trigger1 = 1
pos = 73, -65
time = 1

[State 3502, A5]
type = Veladd
trigger1 = time >=0
x = 2

[State 777,  0]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3502, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



[State 3502, a3] ;fixed camera
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 3502, f0]
type = EnvShake
triggerall = time>=12
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
time = 20
freq = 60
ampl = -4
persistent=0

[State 3502, a0]
type = TargetState
triggerall = time>=12
triggerall = var(30) = [0,10]
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
value = 4521

[State 3502, a0]
type = TargetState
triggerall = time>=12
triggerall = var(30) = [11,20]
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
value = 4421

[State 3502, a0]
type = TargetState
triggerall = time>=12
triggerall = var(30) = [21,30]
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
value = 4321

[State 3502, 10]
type = PlaySnd
trigger1 = p2stateno = 4521
value = 31,1
volume = 200
persistent = 0

;[State 3502, aa] ;decision
;type = VarRandom
;trigger1 = !Time
;v = 30
;range = 0,30

[State 3502, 5] ;HULKBUSTER
type = ChangeState
triggerall = time>=12
triggerall = var(30) = [0,10]
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
value = 4505
ctrl = 0

;[State 3502, 5] ;IRONMEN Army
;type = ChangeState
;triggerall = time>=12
;triggerall = var(30) = [11,20]
;trigger1 = BackEdgeBodyDist <= 15
;trigger2 = FrontEdgeBodyDist <= 15
;value = 4508
;ctrl = 0

;[State 3502, 5] ;IRONMEN Bombing
;type = ChangeState
;triggerall = time>=12
;triggerall = var(30) = [21,30]
;trigger1 = BackEdgeBodyDist <= 15
;trigger2 = FrontEdgeBodyDist <= 15
;value = 4308;
;ctrl = 0
;---------------------------------------------------------------------------
;--------------IRONMEN HULKBUSTER--------------------------------------------
[Statedef 4505]
type    = S
movetype = A;I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 1

[State 3505, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1




[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 3505
ctrl = 1

[State 777, 0];reset var
type = VarSet
trigger1 = !time
fv = 16
value = 0
[State 777, 0];reset var
type = VarSet
trigger1 = !time
v = 11
value = 1


[State 3505, a1]
type = Turn
trigger1 =!time && prevstateno!=3515 && prevstateno!=3571

[State 3505, dd]
type = PlaySnd
trigger1 = time =65
value = 50,21
channel = 7
volume =230

[State 3505, hsp]
type = helper
trigger1 = animelem = 8
helpertype = normal
stateno = 4510
ID = 4510
name = "Hulkbuster"
postype = front
pos =-161,-270
facing = -1
ownpal = 1

[State 3502, Bind 1]
type = TargetBind
trigger1 = !time && prevstateno!=3515 && prevstateno!=3571
pos = 10, -65
time = 1

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1

[State 3505, p2] ;explodpedr
type = helper
trigger1 = p2stateno = 4522
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p2
pos = 0,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 3505, 10]
type = PlaySnd
trigger1 = p2stateno = 4522
value = 31,4
volume = 200
persistent = 0

[State 3505, f0]
type = EnvShake
trigger1 = p2stateno = 4522
time = 8
freq = 60
ampl = -4
persistent = 0


[State 3505, 5]
type = ChangeState
trigger1 = animtime = 0
value = 4506
ctrl = 0

[Statedef 4506] ;-----------------------iron-defense
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 1
anim = 3506

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1

[State 3506, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1




[State 3502, dd]
type = PlaySnd
trigger1 = time%46=0
value = 31, 0
channel = 6
ignorehitpause = 1
volume = 255

[State 8706 Explod] ;balls
type = Explod
;trigger1 = time <= 20
triggerall = time <=220
trigger1 = time%6=0
anim = 8670
id = 8706
pos = 0,70
postype = p2
bindtime = 1
vel = (IfElse(Random <= 499,Random/120,Random/(-120))),Random/(-120)
accel = 0,.5
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
sprpriority = 8

[State 8706 Explod] ;balls
type = Explod
;trigger1 = time <= 20
triggerall = time <=220
trigger1 = time%6=0
anim = 8671
id = 87066
pos = 0,70
postype = p2
bindtime = 1
vel = (IfElse(Random <= 499,Random/120,Random/(-120))),Random/(-120)
accel = 0,.5
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
sprpriority = 8




[State 3506, a2]
type = EnvShake
triggerall = time <=220
trigger1 = time%6=0
time = 12
ampl = 6

[State 3502, dd]
type = PlaySnd
triggerall = time <=220
trigger1 = time%16=0
value = 31, 0
channel = 12
ignorehitpause = 1
volume = -100

[State 3502, dd]
type = HitAdd
triggerall = time <=220
trigger1 = time%16=0
value =1
;ignorehitpause = 0
;persistent = 1

[State 3506, ea]
type = TargetLifeAdd
triggerall = time <=220
trigger1 = time%16=0
value = -5

;-----------------
[State 3506, 1]
type = VarRandom
trigger1 = Time = 0
v = 26
range = 0,100

;----------------------------

;[State 250, 3]
;type = ChangeState
;triggerall=  power >= 1000 && var(7)
;trigger1 = time >= 250
;trigger2 = time >= 320
;trigger3 = time >= 320 && WinKo
;value = 4306
;ctrl = 0

;[State 3506, 5]
;type = ChangeState
;triggerall = NumHelper(13296) = 0
;trigger1 = var(16)= 0
;trigger1 = time >= 250
;trigger2 = time >= 320
;trigger3 = time >= 320 && WinKo
;value = 4507
;ctrl = 0

[State 1000, 7]
type = Changestate
trigger1 = time = 250
;triggerall = NumHelper(13296) = 1
;trigger1 = var(16)= 0
;trigger1 = time >= 250
;trigger2 = time >= 320
;trigger3 = time >= 320 && WinKo
ctrl = 0
value = 4306;3102


[Statedef 4507] ;-----------------------ironman hulkbuster end
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 1
anim = 3507

[State 0, ]
type = RemoveExplod
trigger1 = !time
id = 8706
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[State 0, ]
type = RemoveExplod
trigger1 = !time
id = 87066
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999


[State 3507, 0]
type = StopSnd
trigger1 =!time
channel = 6

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1


[State 3507, dd]
type = PlaySnd
trigger1 = !time
value = 22,8
channel = 0
volume = 100

[State 3507, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



[State 3507, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;------------------------------------ Hulkbuster
[Statedef 4510]
type = A
movetype = A
sprpriority = 5
physics = N
anim = 3510

[state 3510, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[State 3510, a3]
type = ScreenBound
trigger1 = 1
value = 0

[State 3510, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3510, X1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 3
ignorehitpause = 1

[State 3510, som]
type = PlaySnd
trigger1 = !time
value = 30, 3
channel = 4

[State 3510, a1]
type = Velset
trigger1 = !time
y = 3

[State 3510, A2]
type = VelAdd
trigger1 = time>=0
y = .3

[State 3510, a3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 4511

[Statedef 4511];---- land
type = A
movetype = A
sprpriority = 5
physics = N
anim = 3511

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 12
ampl = 6

[State 3511, a1]
type = Posset
trigger1 = !time
y = 0

[State 3511, a3]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3511, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3511, X1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 3
ignorehitpause = 1


[State 3511, a2]
type = Velset
trigger1 = !time
x = 0
y =0

[State 3511, a2]
type = Velset
trigger1 = animelem =4
y = -0.2

[State 3511, a2]
type = Veladd
trigger1 = time >=28
y = -.1

[State 3510, dd]
type = PlaySnd
trigger1 = !time
value = 31, 0
channel = 9
volume = 250

[State 3511, Landing Sound]
type = PlaySnd
trigger1 = !time
value = 31, 5
channel = 5
volume = 200

[State 3511, ds]
type = PlaySnd
trigger1 = animelem =4
value = 30, 2
channel = 4
volume = 200


[State 3511, 5]
type = ChangeState
trigger1 = Pos Y <= -150
value = 4512
ctrl = 0


[Statedef 4512];---- falling again
type = A
movetype = A
sprpriority = 1
physics = N
anim = 3512

[State 3512, dd]
type = PlaySnd
trigger1 = time%14=0
value = 6, 3
channel = 8
ignorehitpause = 1
freqmul = 1.2

[State 3512, som]
type = PlaySnd
trigger1 = !time
value = 30, 3
channel = 4

[State 3512, a1]
type = Velset
trigger1 = !time
y = 6

[State 3512, A2]
type = VelAdd
trigger1 = time>=0
y = .7


[State 3512, a3]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3512, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3512, X1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 3
ignorehitpause = 1


[State 3512, a3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
;trigger1 = animtime = 0
value = 4513
ctrl = 0


[Statedef 4513];----push
type = A
movetype = A
sprpriority = 1
physics = N
anim = 3513

[state 3513, afterimage]
type = Afterimage
trigger1 = time = 0
time = 300
trans = add1

[State 3511, a1]
type = Posset
trigger1 = !time
y = 0

[State 3511, a2]
type = Velset
trigger1 = !time
x = 0
y =0

[State 3513, dd]
type = PlaySnd
trigger1 = time%24=0
value = 31,5
channel = 10
ignorehitpause = 1

[State 3505, p2] ;explodpedr2
type = helper
trigger1 = stateno = 4513
trigger1 = time = 2
helpertype = normal
stateno = 88706
ID = 88706
name = "hitspark6"
postype = p2
pos = 0,0
facing = -1
ownpal = 1
persistent = 1


[State 3513, a3]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3513, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3513, X1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 3
ignorehitpause = 1

[State 3513, 5]
type = ChangeState
trigger1 = time =235
value =4514
ctrl = 0

[Statedef 4514];----bye
type = A
movetype = I
sprpriority = 5
physics = N
anim = 3514

[State 3510, dd]
type = PlaySnd
trigger1 = time=94
value = 30, 2
channel = 9
volume = 255

[State 3514, som]
type = PlaySnd
trigger1 = animelem=4
value = 31, 0
channel = 4
persistent =0

[State 3514, a3]
type = ScreenBound
trigger1 = 1
value = 0

[State 3514, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3514, X1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 3
ignorehitpause = 1

[State 3514, a1]
type = Velset
trigger1 = animelem = 4
x = -7
y = -3

[State 3514, A2]
type = VelAdd
trigger1 = time>=13
x = -.8
y = -.3

[State 3514, a7]
type = Destroyself
trigger1 = time >= 150

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;--------------IRONMEN ARMY-----------------------------------------------------
;------------------------------------------------------------------------------
[Statedef 4606] ;-----------------------iron-attack
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = -2
anim = 3552

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1

[State 3506, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



;-------------------------------------------------


[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
;sound = S10, 1
movetime = 40
Time = 40
p2defmul = 2
anim = -1
pos = -10, -55
bindtime = -1
sprpriority = 6
removeongethit = 1



[State 3502, dd]
type = PlaySnd
trigger1 = time%46=0
value = 31, 0
channel = 6
ignorehitpause = 1
volume = 255

[State 3506, a2]
type = EnvShake
triggerall = time <=220
trigger1 = time%6=0
time = 4
freq = 10
ampl = -3

[State 3502, dd]
type = PlaySnd
triggerall = time <=220
trigger1 = time%16=0
value = 31, 0
channel = 12
ignorehitpause = 1
volume = -100

[State 3502, dd]
type = HitAdd
triggerall = time <=220
trigger1 = time%16=0
value =1
;ignorehitpause = 0
;persistent = 1

[State 3506, ea]
type = TargetLifeAdd
triggerall = time <=220
trigger1 = time%16=0
value = -5

;-----------
[State 3505, hsp]
type = helper
trigger1 = time = 41
helpertype = normal
stateno = 4620
ID = 4620
name = "iron1"
postype = p1
pos =-100,0
facing = 1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = time = 46
helpertype = normal
stateno = 4621
ID = 4621
name = "iron2"
postype = p1
pos =-160,-40
facing = 1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = time = 50
helpertype = normal
stateno = 4622
ID = 4622
name = "iron3"
postype = p1
pos =-160,-80
facing = 1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = time = 55
helpertype = normal
stateno = 4623
ID = 4623
name = "iron4"
postype = p1
pos =-180,0
facing = 1
ownpal = 1

;-----------
[State 3505, hsp]
type = helper
trigger1 = time = 75
helpertype = normal
stateno = 4624
ID = 4624
name = "iron5"
postype = p1
pos =-100,-50
facing = 1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = time = 80
helpertype = normal
stateno = 4625
ID = 4625
name = "iron6"
postype = p1
pos =-160, -10
facing = 1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = time = 85
helpertype = normal
stateno = 4626
ID = 4626
name = "iron7"
postype = p1
pos =-200, -70
facing = 1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = time = 90
helpertype = normal
stateno = 4627
ID = 4627
name = "iron8"
postype = p1
pos =-220, -10
facing = 1
ownpal = 1

;----------------------

[State 3505, hsp]
type = helper
trigger1 = time = 110
helpertype = normal
stateno = 4628
ID = 4628
name = "iron9"
postype = p1
pos =-100,-90
facing = 1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = time = 115
helpertype = normal
stateno = 4629
ID = 4629
name = "iron10"
postype = p1
pos =-160,-40
facing = 1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = time = 120
helpertype = normal
stateno = 4630
ID = 4630
name = "iron11"
postype = p1
pos =-160,-80
facing = 1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = time = 125
helpertype = normal
stateno = 4631
ID = 4631
name = "iron12"
postype = p1
pos =-180,0
facing = 1
ownpal = 1

;-----------


[State 3505, hsp]
type = helper
trigger1 = time = 145
helpertype = normal
stateno = 4632
ID = 4632
name = "iron13"
postype = p1
pos =-160, -90
facing = 1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = time = 150
helpertype = normal
stateno = 4633
ID = 4633
name = "iron14"
postype = p1
pos =-210, -40
facing = 1
ownpal = 1



[State 3506, 5]
type = ChangeState
trigger1 = var(16)= 0
trigger1 = time >= 220
trigger2 = var(12)=1 && var(13)=1
trigger2 = time >= 220
trigger3 = time >= 220&& WinKo
value = 4607
ctrl = 0


[Statedef 4607] ;-----------------------ironman end
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 1
anim = 3607


[State 3507, 0]
type = StopSnd
trigger1 =!time
channel = 6

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1


[State 3507, dd]
type = PlaySnd
trigger1 = !time
value = 22,11
channel = 0
volume = 100

[State 3507, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



[State 3507, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------
;Ironmen
;----------------------------------------------------------------------------------
;-----------------------------------------------------------------------------
; Iron 14
;--------------------------------------------------------------------------
[Statedef 4633]
type    = A
movetype= A
physics = N
anim = 4533
sprpriority = 13
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4633
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,9
sparkno = S30002
sparkxy = -10,-60
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = 5,-19
fall = 1
air.animtype = low
air.velocity = 5,-21
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------

;-----------------------------------------------------------------------------
; Iron 13
;--------------------------------------------------------------------------
[Statedef 4632]
type    = A
movetype= A
physics = N
anim = 4532
sprpriority = 12
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4632
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,12
sparkno = S30002
sparkxy = -10,-60
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = 5,-19
fall = 1
air.animtype = low
air.velocity = 5,-19
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8



[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------
;-----------------------------------------------------------------------------
; Iron 12
;--------------------------------------------------------------------------
[Statedef 4631]
type    = A
movetype= A
physics = N
anim = 4531
sprpriority = 11
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4631
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,12
sparkno = S30002
sparkxy = -10,-60
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = 5,-19
fall = 1
air.animtype = low
air.velocity = 5,-19
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8



[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------

;-----------------------------------------------------------------------------
; Iron 11
;--------------------------------------------------------------------------
[Statedef 4630]
type    = A
movetype= A
physics = N
anim = 4530
sprpriority = 10
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4630
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,12
sparkno = S30002
sparkxy = -10,-70
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = -6,-5
fall = 1
air.animtype = low
air.velocity = -6,-5
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------

;-----------------------------------------------------------------------------
; Iron 10
;--------------------------------------------------------------------------
[Statedef 4629]
type    = A
movetype= A
physics = N
anim = 4529
sprpriority = 9
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4629
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,12
sparkno = S30002
sparkxy = -10,-70
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = -6,-5
fall = 1
air.animtype = low
air.velocity = -6,-5
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------

;-----------------------------------------------------------------------------
; Iron 9
;--------------------------------------------------------------------------
[Statedef 4628]
type    = A
movetype= A
physics = N
anim = 4528
sprpriority = 8
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4628
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,12
sparkno = S30002
sparkxy = -10,-70
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = -6,-5
fall = 1
air.animtype = low
air.velocity = -6,-5
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------


;-----------------------------------------------------------------------------
; Iron 8
;--------------------------------------------------------------------------
[Statedef 4627]
type    = A
movetype= A
physics = N
anim = 4527
sprpriority = 7
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4627
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,12
sparkno = S30002
sparkxy = -10,-70
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = -6,-5
fall = 1
air.animtype = low
air.velocity = -6,-5
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------

;-----------------------------------------------------------------------------
; Iron 7
;--------------------------------------------------------------------------
[Statedef 4626]
type    = A
movetype= A
physics = N
anim = 4526
sprpriority = 6
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4626
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,12
sparkno = S30002
sparkxy = -10,-70
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = -6,-5
fall = 1
air.animtype = low
air.velocity = -6,-5
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------
;-----------------------------------------------------------------------------
; Iron 6
;--------------------------------------------------------------------------
[Statedef 4625]
type    = A
movetype= A
physics = N
anim = 4525
sprpriority = 5
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4625
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,12
sparkno = S30002
sparkxy = -10,-70
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = -6,-5
fall = 1
air.animtype = low
air.velocity = -6,-5
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------
;-----------------------------------------------------------------------------
; Iron 5
;--------------------------------------------------------------------------
[Statedef 4624]
type    = A
movetype= A
physics = N
anim = 4524
sprpriority = 3
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4624
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,12
sparkno = S30002
sparkxy = -10,-70
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = -6,-5
fall = 1
air.animtype = low
air.velocity = -6,-5
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------
;-----------------------------------------------------------------------------
; Iron 4
;--------------------------------------------------------------------------
[Statedef 4623]
type    = A
movetype= A
physics = N
anim = 4523
sprpriority = 4
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4623
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,12
sparkno = S30002
sparkxy = -10,-70
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = -6,-5
fall = 1
air.animtype = low
air.velocity = -6,-5
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------

;-----------------------------------------------------------------------------
; Iron 1
;--------------------------------------------------------------------------
[Statedef 4620]
type    = A
movetype= A
physics = N
anim = 4520
sprpriority = 3
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4620
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,29
sparkno = S30002
sparkxy = -10,-70
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = -6,-4
fall = 1
air.animtype = low
air.velocity = -6,-4
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------
;-----------------------------------------------------------------------------
; Iron 2
;--------------------------------------------------------------------------
[Statedef 4621]
type    = A
movetype= A
physics = N
anim = 4521
sprpriority = 3
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4621
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,29
sparkno = S30002
sparkxy = -10,-70
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = -6,-4
fall = 1
air.animtype = low
air.velocity = -6,-4
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8



[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------
;-----------------------------------------------------------------------------
; Iron 3
;--------------------------------------------------------------------------
[Statedef 4622]
type    = A
movetype= A
physics = N
anim = 4522
sprpriority = 3
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 9

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(4519)
trigger1 = StateNo = 4622
trigger1 = time=0
anim = 4519
id = 4519
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 60
[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 4
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 0,29
sparkno = S30002
sparkxy = -10,-70
hitsound   = S2,2
guardsound = S3,0
shadow = 1
priority = 6
removetime = 90
bindtime = -1
velocity = 0.001,0.001
offset = 2,-4
sprpriority = 3
ground.slidetime = 14
ground.hittime  = 25
ground.velocity = -6,-4
fall = 1
air.animtype = low
air.velocity = -6,-4
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8



[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 60
;------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;--------------IRONMEN Bombing Beam-----------------------------------------------------
[Statedef 4306] ;-----------------------iron-attack
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = -2
anim = 3618

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1

[State 3506, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



;-------------------------------------------------


[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
;sound = S10, 1
movetime = 40
Time = 40
p2defmul = 2
anim = -1
pos = 0, -75
bindtime = -1
sprpriority = 6
removeongethit = 1


[State 3502, dd]
type = PlaySnd
trigger1 = time%46=0
value = 31, 0
channel = 6
ignorehitpause = 1
volume = 255


[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 50,5
channel = 8
volume = 255

[State 3506, a2]
type = EnvShake
triggerall = time <=220
trigger1 = time%6=0
time = 4
freq = 10
ampl = -3

[State 3502, dd]
type = PlaySnd
triggerall = time <=220
trigger1 = time%16=0
value = 31, 0
channel = 12
ignorehitpause = 1
volume = -100

[State 3502, dd]
type = HitAdd
triggerall = time <=220
trigger1 = time%16=0
value =1
;ignorehitpause = 0
;persistent = 1



;---------------------------
[State 3505, hsp]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 4330
ID = 4330
name = "biron1"
postype = p1
pos =300,-80
facing = -1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 4331
ID = 4331
name = "biron2"
postype = p1
pos =300,-80
facing = -1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 4332
ID = 4332
name = "biron3"
postype = p1
pos =300,-80
facing = -1
ownpal = 1

[State 3505, hsp]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 4333
ID = 4333
name = "biron4"
postype = p1
pos =300,-80
facing = -1
ownpal = 1
;---------------------------

[State 3505, hsp] ;Beam
type = helper
trigger1 = Time = 65
helpertype = normal
stateno = 4645
ID = 4645
name = "bramenergy"
postype = front
pos =-55,-90
facing = -1
ownpal = 1
ontop=1
priority =45


[State 3505, hsp]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 4641
ID = 4641
name = "energyball"
postype = front
pos =-185,40
facing = -1
ownpal = 1
priority =65

;-----------------
[State 3506, 1]
type = VarRandom
trigger1 = Time = 0
v = 26
range = 0,100


;----------------------------

[State 1000, 7]
type = Changestate
trigger1 = time = 300
value = 4606
ctrl = 0

;[State 250, 3]
;type = ChangeState
;triggerall=  power >= 1000 && var(7)
;trigger1 = time >= 300
;value = 4606
;ctrl = 0


;[State 3506, 5]
;type = ChangeState
;triggerall = NumHelper(23296) = 0
;trigger1 = time >= 300
;value = 4307
;ctrl = 0

;[State 1000, 7]
;type = Changestate
;triggerall = NumHelper(23296) = 1
;trigger1 = time >= 300
;value = 4606
;ctrl = 0



;[State 3506, 5]
;type = ChangeState
;trigger1 = var(16)= 0
;trigger1 = time >= 185
;trigger2 = var(12)=1 && var(13)=1
;trigger2 = time >= 185
;trigger3 = time >= 185 && WinKo
;value = 4307
;ctrl = 0


[Statedef 4307] ;-----------------------ironman end
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 1
anim = 3619


[State 3507, 0]
type = StopSnd
trigger1 =!time
channel = 6

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1


[State 3507, dd]
type = PlaySnd
trigger1 = !time
value = 22,5
channel = 0
volume = 100

[State 3507, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



[State 3507, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------
;Flying Irons
;------------------------------------------------------------------------------
;-----------------------------------------------------------------------------
; Flying  Iron 4
;--------------------------------------------------------------------------
[Statedef 4333]
type    = A
movetype= A
physics = N
anim = 3613
sprpriority = -1
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 5


[State 1400, 1]
type = VelSet
trigger1 = time= 15
x = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 165
x = 5
y=  -6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(3642)
trigger1 = StateNo = 4333
trigger1 = time=0
anim = 3641
id = 3642
name = "propulsor"
postype = P1
pos = -45,31
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 200

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 200


;-----------------------------------------------------------------------------
; Flying  Iron 3
;--------------------------------------------------------------------------
[Statedef 4332]
type    = A
movetype= A
physics = N
anim = 3610
sprpriority = -2
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 5


[State 1400, 1]
type = VelSet
trigger1 = time= 15
x = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 165
x = 5
y=  -6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(3643)
trigger1 = StateNo = 4332
trigger1 = time=0
anim = 3641
id = 3643
name = "propulsor"
postype = P1
pos = -51,-1
ownpal = 1
sprpriority = -4
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 200

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 200

;-----------------------------------------------------------------------------
; Flying  Iron 2
;--------------------------------------------------------------------------
[Statedef 4331]
type    = A
movetype= A
physics = N
anim = 3612
sprpriority = -3
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 5


[State 1400, 1]
type = VelSet
trigger1 = time= 15
x = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 165
x = 5
y=  -6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(3644)
trigger1 = StateNo = 4331
trigger1 = time=0
anim = 3641
id = 3644
name = "propulsor"
postype = P1
pos = -23,0
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 200

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 200

;-----------------------------------------------------------------------------
; Flying  Iron 1
;--------------------------------------------------------------------------
[Statedef 4330]
type    = A
movetype= A
physics = N
anim = 3611
sprpriority = -4
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 0
x = 5

[State 1400, 1]
type = VelSet
trigger1 = time= 15
x = 0

[State 1400, 1]
type = VelSet
trigger1 = time= 165
x = 5
y=  -6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(3641)
trigger1 = StateNo = 4330
trigger1 = time=0
anim = 3641
id = 3641
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = -8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 200

[State 1400, 4a]
type = PlaySnd
trigger1 = time = 2
value = 30,1


[State 440, push]
type=playerpush
trigger1=movehit
value=0
ignorehitpause=1

[State 750, 4]
type = Destroyself
trigger1 = Time = 200

;--------------------------------------------------------------------------------
;Beams
;-----------------------------------------------------------------------------
[Statedef 4645]
type = A
movetype = A
physics = N
sprpriority = 35
anim = 3615

[State 3511, a3]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3511, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3511, X1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 3
ignorehitpause = 1

[State 3200, HitDef]
type = HitDef
trigger1 = Time % 6 = 0 && Time < 121 ;95
attr = S, NA
damage = 2, 1
guardflag = MA
pausetime = 2,15
hitsound = S2,2
guardsound = S3,0
sparkno = -1
sparkxy = -18, -76
animtype = Hard
ground.type = Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 1,-2
guard.velocity = -1
air.velocity = 1,-2
down.velocity = 1,-2
down.hittime = 20
priority.hit = 35
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 720, exp]
type = Explod
triggerall = !NumExplod(3616)
triggerall =  stateno = 4645
trigger1 = movecontact
anim = 3616
id = 3616
pos = -170,-120
postype = p2
facing=1
sprpriority = 40
bindtime = -1
removetime =9
removeongethit = 1


[State 3510, dd]
type = PlaySnd
trigger1 = !time
value = 30, 5
channel = 9
volume = 250


[State 3511, 5]
type = Destroyself
trigger1 = time= 120

;----------------------------------------------------------------------------
;Energy Ball
;----------------------------------------------------------------------------

;-----------------------------------------------------------------------------
[Statedef 4641]
type = A
movetype = A
physics = N
sprpriority = 75
anim = 4641


[State 3511, a3]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3511, X0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3511, X1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 3
ignorehitpause = 1


[State 3511, a2]
type = Velset
trigger1 = !time
x = -1
y =0

[State 3200, HitDef]
type = HitDef
trigger1 = Time % 6 = 0 && Time < 200 ;95
attr = S, NA
damage = 2, 1
guardflag = MA
pausetime = 2,15
hitsound = S2,0
guardsound = S3,0
sparkno = S30002
sparkxy = -10,-100+ random%20
guard.sparkno = -1
animtype = Hard
ground.type = Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 1,-2
guard.velocity = -1
air.velocity = 1,-2
down.velocity = 1,-2
down.hittime = 20
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
priority.hit = 75
getpower = 0,0




[State 3511, a2]
type = Velset
trigger1 = movecontact =1  &&  time > 30
x = 0
y = 0

[State 3510, dd]
type = PlaySnd
trigger1 = !time
value = 31, 0
channel = 9
volume = 250


[State 3511, ds]
type = PlaySnd
trigger1 = animelem =4
value = 31, 3
channel = 4
volume = 200


[State 3511, 5]
type = Destroyself
trigger1 = time= 208;Pos Y <= -150






























;-----------------------------hp1---------------------------------------













[StateDef 3900]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3900
velset = 0,0
poweradd = -1000

[State 3100, 1]
type = superpause
trigger1 = time = 0
anim = -1
time = 33

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607;+random%2
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607;+random%2
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 173,73

[State 0, Helper]
type = Helper
triggerall = numhelper(3910) = 0
trigger1 = animelem = 4
helpertype = normal ;player
name = "missi"
ID = 3910
stateno = 3910
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 3110, back to stance]
type = ChangeState
trigger1 = time = 160
value = 3901
ctrl = 0

[StateDef 3901]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 3901
velset = -3,0
poweradd = 0

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3910]
type = A
movetype = A
physics = N
anim = 3910
velset = 0,0
sprpriority = 5
poweradd = 0

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 9*facing
y = parent, Pos Y - 80

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 31,2

[State 220, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HP
damage = 4,1
guardflag = MA
pausetime = 0,1
hitsound = S2,2
guardsound = S171,4
sparkno = -1;S3009
;guard.sparkno = S6004
sparkxy = -20, -5+floor(random/100); (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6,-2
guard.velocity = -5
air.velocity = -5,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
fall = 1
getpower = 0,0



[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, anim != 3900

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 140
value =  3911
ctrl = 0

[Statedef 3911]
type = A
movetype = A
physics = N
anim = 9999
velset = 0,0
sprpriority = 99
poweradd = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3911
ID = 3911
pos = 20,-3
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 18
scale = 1,.9
sprpriority = 99
shadow = 0,0,0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 1
ID =  3911
scale = 1,.8


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID =  3911
scale = 1,.7


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 3
ID =  3911
scale = 1,.6


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID =  3911
scale = 1,.5


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 5
ID =  3911
scale = 1,.4


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID =  3911
scale = 1,.3


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 7
ID =  3911
scale = 1,.2


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID =  3911
scale = 1,.1





[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 10




















;----------------------------hp2---------------------------------------------












;Iron Man calls Warmachine!
[Statedef 8999]
type    = S
movetype= A
physics = N
anim = 8999
ctrl = 0
poweradd = -1000

[State 915,15]
type = PlaySnd
trigger1 = time = 0
value = 88,222
persistent = 0

[State 3100, 1]
type = superpause
trigger1 = time = 0
anim = -1
time = 33

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP



[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -21
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -21
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15663)
triggerall = teamside = 1
trigger1 = !time
anim = 15609
ID = 15663
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15662)
triggerall = teamside = 2
trigger1 = !time
anim = 15609
ID = 15662
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15

[State 8999, 1]
type = velset
trigger1 = time >= 0
x = 0
y = 0



[State 8999, 1]
type = Helper
trigger1 = Time = 0
trigger1 = facing = 1
trigger1 = numhelper(8999) = 0
helpertype = normal
name = "Warmachine"
id = 8999
postype = left
facing = 1
pos = 0,-60
stateno = 8998
keyctrl = 0
ownpal = 1

[State 8999, 1]
type = Helper
trigger1 = Time = 0
trigger1 = facing = -1
trigger1 = numhelper(8999) = 0
helpertype = normal
name = "Warmachine"
id = 8999
postype = right
facing = -1
pos = 0,-60
stateno = 8998
keyctrl = 0
ownpal = 1

[State 8999, End1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 8999, End2]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2BodyDist X <= 100
value = 0
ctrl = 1

[State 8999, End3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2BodyDist X > 100
value = 1

;---------------------------------------------------------------------------
;Fly into the action!!
[Statedef 8998]
type    = A
movetype= A
physics = N
velset = 3,-5
ctrl = 0
anim = 8998
sprpriority = 10

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15

[State 8998, 1]
type = HitOverride
trigger1 = Time = 0
attr = SCA, AA, AP, AT 
stateno = 8995
time = -1

[State 8998, 1]
type = Playerpush
trigger1 = time >= 0
value = 1

[State 915,15]
type = PlaySnd
trigger1 = AnimElem = 2
value = 88,22
persistent = 0

[State 8998, 3]
type = SprPriority
trigger1 = Time = 0
value = 2

[State 8998, 2]
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 8998, 3]
type = ChangeState
Trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 8997
ctrl = 0

;---------------------------------------------------------------------------
;Fire the Gatling Gun.
[Statedef 8997]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 8997
ctrl = 0
sprpriority = 10

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15

[State 3000, 1]
type = Explod
trigger1 = AnimElem = 5
anim = 3910
pos = 75,-80
removetime = 90
postype = p1
scale = 1,.7
sprpriority = 9

[State 3000, 1]
type = Explod
trigger1 = AnimElem = 35
anim = 3919
pos = 30,-24
removetime = 4
postype = p1
scale = 1,1
sprpriority = 9



[State 915,15]
type = PlaySnd
trigger1 = AnimElem = 6
value = 173,0
persistent = 0


[State 8997, 3]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
trigger6 = AnimElem = 16
trigger7 = AnimElem = 18
trigger8 = AnimElem = 20
trigger9 = AnimElem = 22
trigger10 = AnimElem = 24
trigger11 = AnimElem = 26
trigger12 = AnimElem = 28
trigger13 = AnimElem = 30
trigger14 = AnimElem = 32
trigger15 = AnimElem = 34
attr = A, NA
animtype = hard
damage = 17,1
guardflag = H
pausetime = 0,8
sparkno = -1;S30002
;guard.sparkno = S2927
sparkxy = -9,-75
hitsound = s2,5
guardsound = s3,0
ground.type = high
ground.slidetime = 15
ground.hittime = 15
guard.velocity = -5.8
ground.velocity = -3,-3
air.type = trip
air.velocity = -3.1,-3.5
fall = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 8997, Win]
type = changestate
triggerall = time >= 60
trigger1 = win
trigger2 = RoundState = 4
value = 8989
ctrl = 0

[State 8997, 5]
type = ChangeState
trigger1 = animtime = 0
value = 8996

;---------------------------------------------------------------------------
; Warmachine fly away
[Statedef 8996]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 8996
sprpriority = 10

[State 8996, 1]
type = SprPriority
trigger1 = Time = 0
value = -1

[State 8996, 1]
type = VelSet
trigger1 = AnimElem = 1
x = -1
y = -7

[State 8996,2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 8,33

[State 8996, 3]
type = DestroySelf
trigger1 = Time = 30

;---------------------------------------------------------------------------
; Warmachine hit shake
[Statedef 8995]
type    = A
movetype= H
physics = N

[State 4300, 1]
type = SprPriority
trigger1 = Time = 0
value = -1

[State 4300, 5]
type = playsnd
trigger1 = time = 0
value = 91,4

[State 4300, 1]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0

[State 4300, 2]
type = ChangeAnim
trigger1 = Time >= 0
value = 8995

[State 4300, 3]
type = ChangeState
trigger1 = Time = 4
trigger2 = HitShakeOver = 1
value = 8994

;---------------------------------------------------------------------------
; Warmachine falls
[Statedef 8994]
type    = A
movetype= H
physics = N
velset = 2,-5

[State 4301, 1]
type = VelAdd
trigger1 = Time >= 0
y = .35

[State 4301, 2]
type = ChangeState
trigger1 = Vel y > 0
trigger1 = Pos y >= -30
value = 8993

;---------------------------------------------------------------------------
; Warmachine hit bounce
[Statedef 8993]
type    = L
movetype= H
physics = N
anim = 8993

[State 4302, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 4302, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 4302, 3] 
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 4302, 4]
type = GameMakeAnim
trigger1 = Time = 1
value = 61
pos = 0, 0
under = 1

[State 4302, 5]
type = HitFallDamage
trigger1 = Time = 3

[State 4302, 6]
type = PosFreeze
trigger1 = Time >= 0

[State 4302, 7]
type = ChangeState
trigger1 = Time = 3
value = 8992

[State 4302, 8]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
[Statedef 8992]
type    = L
movetype= H
physics = N

[State 4303, 0]
type = HitFallVel
trigger1 = Time = 0

[State 4303, 1]
type = PosSet
trigger1 = Time = 0
y = 20

[State 4303, 3] 
type = VelAdd
trigger1 = Time >= 0
y = .4

[State 4303, 4] 
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -4
type = ChangeState
value = 8991

;---------------------------------------------------------------------------
; Warmachine lie down
[Statedef 8991]
type    = L
movetype= H
physics = N
anim = 8991
velset = 0,0

[State 4303, 4] 
trigger1 = animtime = 0
type = ChangeState
value = 8990

;---------------------------------------------------------------------------
; Warmachine getup
[Statedef 8990]
type    = L
movetype= H
physics = N
anim = 8990
velset = 0,0

[State 8990, 1] 
trigger1 = animtime = 0
type = ChangeState
value = 8996

;-------------------------------------------------

[Statedef 8989]
type = S
anim = 8989
velset = 0,0
ctrl = 0

[State 8989, effect]
type = Explod
trigger1 = animelem = 4
anim = F2
postype = p1
pos = 15,-82
scale = .6,.6
sprpriority = 2
bindtime = 1
ownpal = 1

[State 8989, effect]
type = Explod
trigger1 = animelem = 7
anim = F2
postype = p1
pos = 30,-92
scale = .6,.6
sprpriority = 2
bindtime = 1
ownpal = 1

;[State 8989, wimp]
;type = PlaySnd
;trigger1 = animelem = 3
;value = 8,4
















;------------------------------hp3-------------------------------------------------------










[Statedef 3750]
type=S
physics=N
movetype=A
anim = 756
juggle=15
facep2=1
velset = 0,0
sprpriority=1
ctrl = 0
poweradd = -1000

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1




[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607;+random%2
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607;+random%2
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15


[State 100, 4]
type = PlaySnd
trigger1 = StateNo = 3750
trigger1 = animelem = 2
value = 30,31
channel=2




; default dashing sound
[State 100, a1]
type = playsnd
trigger1 = !time
value = 8,333
channel = 0

[State 1751, c]
type = removeexplod
trigger1 = anim=755 ;!time
id = 107

[State 1751, d]
type = removeexplod
trigger1 = anim=755; !time
id = 2107

[State 4000, strengthvar]
type=varset
trigger1= var(10)!=7
var(10)=7

[State 4000, ECreset]
type=palfx
trigger1= !time
trigger1= !(var(20):=0)
time=1

[State Corner Push]
type=varset
trigger1= !time
fvar(5)= 0

[State 4000, nhb]
type=nothitby
trigger1= 1
time=1
value=SCA

;[State 4000, shield]
;type=helper
;trigger1= !numhelper(1007) && anim=4001
;helpertype=normal
;stateno=1007
;ID=1007
;name="Projectile Hitter"
;postype=p1

[State 4000, push]
type=playerpush
trigger1= anim=756
trigger2= anim=755 && var(14)>=9
value=0

[State 4000, screen]
type=screenbound
trigger1= anim=756 && animelemtime(10)>=0
trigger2= anim=755
value=0
movecamera=0,1

[State 4000, spr]
type=sprpriority
trigger1= 1
value=ifelse(anim=755,4,1)



[State 4000, Vel]
type=velset
trigger1= anim=756 && animelemtime(2)>=0 && vel x>-10
x=-12.5

[State 4000, Fade]
type=trans
trigger1= anim=756 && (animelemtime(3)=[0,10])
trans=addalpha
alpha=ceil(256-25.6*animelemtime(3)),ceil(25.6*animelemtime(3))

[State 4000, Fade]
type=trans
trigger1= anim=756 && animelemtime(3)>=10
trans=addalpha
alpha=0,256

[State 4000, Anim]
type=changeanim
trigger1= anim=756 && time>=60
value=755

[State 4000, Snd]
type=playsnd
trigger1= anim=755
value=50,51
channel=0
persistent=0

[State 4000, Snd]
type=playsnd
trigger1= anim=755
value=45,0
persistent=0

[State 4000, Pos]
type=posset
trigger1= anim=755
x=(-320*facing)
y=-45
persistent=0

[State 4000, palfx]
type=palfx
trigger1= anim=755 && (gametime%4=[0,1])
time=1
color=0
;add=30+ceil(sin(gametime/3.0)*30),60+ceil(sin(gametime/3.0)*30),90+ceil(sin(gametime/3.0)*30)
;mul=256,512,512
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,3
invertall = 1
ignorehitpause=1



[State 4000, palfx]
type=palfx
trigger1= anim=755 && (gametime%4=[2,3])
time=1
color=0
;add=60+ceil(sin(gametime/3.0)*30),30+ceil(sin(gametime/3.0)*30),90+ceil(sin(gametime/3.0)*30)
;mul=512,256,512
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,3
invertall = 1
ignorehitpause=1

[State 4000, FX]
type=removeexplod
trigger1= anim!=755 && numexplod(4005)
ID=4005

[State 4000, FX]
type=explod
trigger1= anim=755 && !numexplod(4005)
anim=4005
ID=4005
sprpriority=14
postype=p1
ownpal=1
removeongethit=1
ignorehitpause=1

[State 4000, FX]
type=modifyexplod
trigger1= anim=755 && (frontedgedist>-90 && time<180)
ID=4005
postype=p1
pos=0,0
vel=20,0
removetime=300
ignorehitpause=1

;[State 4000, FX]
;type=helper
;trigger1= anim=755 && numexplod(4005) && !(gametime%8)
;helpertype=normal
;stateno=4006
;ID=4006
;name="Psycho Crusher"
;postype=p1
;size.xscale=.5
;size.yscale=.5
;ownpal=1
;pausemovetime=999
;supermovetime=999
;ignorehitpause=1

[State 4000, BG PalFX]
type=bgpalfx
trigger1= anim=755
time=90
add=-90,-90,-90
sinadd=90,90,90,360
ignorehitpause=1

[State 4000, hitvar]
type=varset
trigger1= anim!=755
var(14)=0

[State 4000, hitvar]
type=varadd
trigger1= anim=755 && (movehit=1 || moveguarded=1 || movereversed=1)
var(14)=1

[State 4000, Vel]
type=velset
trigger1= anim=755
x=20
y=0

[State 4000, Vel]
type=velset
trigger1= anim=755 && var(14)<12
trigger1= (movecontact=[1,4]) || (movereversed=[1,4])
x=0
y=0

[State 4000, Hit]
type=hitdef
trigger1= anim=755 && !(time%4) && var(14)<11
attr=S,HA
damage=20,2
animtype=Diagup
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime=2,8
sparkno=s30002
;guard.sparkno=-1
sparkxy=-10,-60
hitsound= s2,2
guardsound=s3,0
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity=-12,-12
ground.cornerpush.veloff = 0
air.type=Low
air.velocity=-12,-12
guard.dist=320
getpower=0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
sprpriority=5
fall=1
fall.recover=0
;ID=4000
yaccel=.5
forcestand=1





[State 4000, HitSound]
type=playsnd
trigger1= movehit=1
trigger1= hitcount && hitpausetime=1
value=2,ifelse(hitcount=12,2,2)
channel=2
ignorehitpause=1

[State 4000, statetype]
type=statetypeset
trigger1= anim=755
statetype=A
physics=N
movetype=A

[State 4000, End]
type=changestate
trigger1= anim=755 && (frontedgedist<=-90 || time>=180)
value=3752


;---END---
[Statedef 3752]
type=S
physics=S
movetype=I
anim=4033
ctrl=0
velset=0,0

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1





[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1= Time = 0
value = 4022

[State 4002, Pos]
type=posset
triggerall = var(8)!= 0
trigger1= animelemtime(2)<-1
x=0
y=0

[State 4002, Pos]
type=posset
triggerall = var(8)!= 0
trigger1= animelemtime(2)=-1
x=-80*facing

[State 4002, Pos]
type=posset
triggerall = var(8)= 0
trigger1= animelemtime(6)<-1
x=0
y=0

[State 4002, Pos]
type=posset
triggerall = var(8)= 0
trigger1= animelemtime(6)=-1
x=-80*facing


[State 4002, palfx]
type=palfx
trigger1= !time
time=1
add=0,0,0
ignorehitpause=1

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=2
value=45,2
channel=0

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=2
value=45,1

[State 4002, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
trigger1= var(8)!= 0 && animelem=11
trigger2= var(8)= 0 && animelem=24
persistent = 0
ID = 60
anim = 60
postype = p1
pos = -7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 4002, Landing Sound]
type = PlaySnd
trigger1= var(8)!= 0 && animelem=11
trigger2= var(8)= 0 && animelem=24
value = 51,51

[State 20]
type = envshake
triggerall = var(8)!= 0
trigger1 = animelem = 11
time = 10
ampl = -2

[State 20]
type = envshake
triggerall = var(8)= 0
trigger1 = animelem = 24
time = 10
ampl = -10


[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 4002, push]
type=playerpush
trigger1= animelemtime(2)<=10
value=0

[State 4002, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1















;----------------------------hp4-------------------------------------------------------






;======================<FINISHING SHOWER>=============================
[Statedef 2300]
type=S
physics=S
movetype=A
anim=2300
ctrl=0
velset=0,0
poweradd=-1000
facep2=1
sprpriority=1


[State 0, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 155
;length = 20
;palcolor = 256
;palinvertall = 0
;palbright = 30,30,30
;palcontrast = 120,120,220
;palpostbright = 0,0,0
paladd = 20,20,20
;palmul = .65,.65,.75
;timegap = 1
;framegap = 4
;trans = "add" ;"none","add1","sub"
ignorehitpause = 0
;persistent =

[State 2300, strengthvar]
type=varset
trigger1= var(10)!=6
var(10)=6

;[State 2300, Snd]
;type=playsnd
;trigger1= !time
;value=5,10

[State 2300, Snd]
type=playsnd
trigger1= time = 0
value=800,0



[State 3100, 1]
type = superpause
trigger1 = time = 0
anim = -1
time = 33

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607;+random%2
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607;+random%2
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15


[State Corner Push]
type=varset
trigger1= animelem=5
fvar(5)= 0

[State 2300, nhb]
type=nothitby
trigger1= animelemtime(5)<=0
time=1
value=SCA

[State 2300, Vel]
type=velset
trigger1= animelem=2
x=-1
y=-.5
[State 2300, Vel]
type=veladd
trigger1= animelemtime(2)>=0
y=.005;.01

[State 2300, Snd]
type=playsnd
trigger1= animelem=2
value=31,2


[State 2300, Dust]
type=helper
trigger1= animelemtime(5)>0 && !numhelper(3303)
helpertype=normal
stateno=2303
ID=2303
name="F.S. Dust"
postype=p1
pos=0,-ceil(pos y)
ownpal=1
size.xscale=.7
size.yscale=.7
persistent=0
supermovetime=9999

[State 2300, Snd]
type=playsnd
trigger1= animelemtime(5)=5
value=180,1
channel=0

[State 2300, bullets]
type=helper
trigger1= animelemtime(5)>0 && animelemtime(5)<180 && !(time%6)
helpertype=normal
stateno=2305
ID=2305
name="Bullet"
postype=p1
size.xscale=2
size.yscale=1
ownpal=1

[State 2300, statetype]
type=statetypeset
trigger1= animelemtime(2)>=0
statetype=A
physics=N

[State 2300, End]
type=changestate
trigger1= vel y>0 && pos y>=0
value=520


[Statedef 2303]
physics=N
anim=2010
sprpriority=2

[State 2303, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256
ignorehitpause=1

[State 2303, Turn]
type=turn
trigger1= facing=(root,facing)

[State 2303, Bind]
type=posset
trigger1= 1
x=ceil(root,pos x)
y=0

[State 2303, End]
type=destroyself
trigger1= root,stateno!=2300 || root,anim!=2300


[Statedef 2305]
type=S
physics=N
movetype=A
anim=2305
ctrl=0
velset=0,0
sprpriority=3
juggle=5

[State 2305, posvar]
type=varset
trigger1= !time
fvar(0)=-20-(random/28.6)
ignorehitpause=1

[State 2305, Bind]
type=bindtoroot
trigger1= time<6
pos=fvar(0),1.65*fvar(0)
ignorehitpause=1

[State 2305, HitOverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=2306
ignorehitpause=1

[State 2305, HB]
type=hitby
trigger1= 1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 2305, strengthvar]
type=varset
trigger1= !time
var(10)=root,var(10)

[State 2305, movehitvar]
type=varset
triggerall= !var(3)
trigger1= movecontact && numtarget
trigger1= !(target,ishelper)
trigger2= numhelper(2305)
trigger2= helper(2305),var(3)
var(3)=1
ignorehitpause=1

[State 2305, sprpriorityvar]
type=varset
trigger1= !time
var(0)=ifelse(random<667,3,-1)
ignorehitpause=1

[State 3305, sprpriority]
type=sprpriority
trigger1= 1
value=var(0)

[State 2305, Snd]
type=playsnd
trigger1= time=6
value=5,6

[State 2305, Vel]
type=velset
trigger1= time=6
x=10
y=(1.65*fvar(0)+65)/8.0

[State 2305, Vel]
type=velmul
trigger1= vel y>0 && pos y>-10
y=.75

[State 2305, Vel]
type=veladd
trigger1= vel y<2 && (enemynear,statetype=S || enemynear,statetype=A) && pos y<(enemynear,pos y+enemynear,const(size.mid.pos.y))
y=.2
[State 2305, Vel]
type=veladd
trigger1= vel y>-2 && (enemynear,statetype=S || enemynear,statetype=A) && pos y>(enemynear,pos y+enemynear,const(size.mid.pos.y))
y=-.2
[State 2305, Vel]
type=veladd
trigger1= vel y<2 && (enemynear,statetype=C) && pos y<(enemynear,pos y+(enemynear,const(size.mid.pos.y)/2))
y=.2
[State 2305, Vel]
type=veladd
trigger1= vel y>-2 && (enemynear,statetype=C) && pos y>(enemynear,pos y+(enemynear,const(size.mid.pos.y)/2))
y=-.2
[State 2305, Vel]
type=veladd
trigger1= vel y<2 && (enemynear,statetype=L) && pos y<-10
y=.2
[State 2305, Vel]
type=veladd
trigger1= vel y>-2 && (enemynear,statetype=L) && pos y>-10
y=-.2

[State 2305, Vel]
type=velset
trigger1= time<6
x=0
y=0

[State 2305, jet]
type=explod
trigger1= time>=6 && !numexplod(2306)
anim=2306
ID=2306
sprpriority=(var(0)+1)
postype=p1
pos=-12,0
bindtime=-1
removetime=-1
scale=.5,.5
ownpal=1

[State 3305, shot]
type=explod
trigger1= time=5
anim=2307
ID=2307
sprpriority=(var(0)+1)
postype=p1
pos=-15,0
scale=.5,.5
ownpal=1

[State 2305, trail]
type=explod
trigger1= time>=7 && !(time%2)
anim=2308+(vel y>=1.5)+(vel y>=3)+(vel y<=-1.5)+(vel y<=-3)
ID=2308
sprpriority=(var(0)+1)
postype=p1
pos=-15,0
vfacing=ifelse(vel y<=0,1,-1)
scale=.5,.5
ownpal=1

[State 2305, HitSound]
type=playsnd
trigger1= movehit && numtarget
trigger1= !(target,time) && target,movetype=H
value=2,2
persistent=0
ignorehitpause=1

[State 2305, Hit]
type=hitdef
trigger1= time>=10
priority=4,Hit
attr=S,HP
damage=9,1
animtype=Diagup
hitflag=MAFD
guardflag=MA
pausetime=0,4
guard.pausetime=0,10
sparkno=-1
;guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-2,-4
guard.velocity=-12.97
ground.cornerpush.veloff=0
air.velocity=-2,-2
down.velocity=-2,-2
guard.velocity= -12.97
fall=1
fall.recover=0
getpower=0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
sprpriority=var(0)
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
forcestand=1

[State 3305, Sparks]
type=explod
trigger1= movehit && numtarget
trigger1= (target,movetype=H) && !(target,time)
anim=30002
ID=7000
sprpriority=5
postype=p2
pos=(target,const(size.ground.front)-10),-floor(p2dist y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=330
supermovetime=330

[State 2305, End]
type=changestate
trigger1= (pos x!=[-240,240]) || time>120
trigger2= movecontact
trigger3= time<6
trigger3= root,movetype=H
value=2306
ignorehitpause=1


[Statedef 2306]
type=A
physics=N
movetype=I
anim=2305
ctrl=0
sprpriority=4

[State 2306, nhb]
type=nothitby
trigger1= 1
time=-1
value=SCA
ignorehitpause=1

[State 2306, removejet]
type=removeexplod
trigger1= numexplod(2306)
ID=2306
ignorehitpause=1

[State 2305, Fade]
type=trans
trigger1= 1
trans=addalpha
alpha=ceil(256-17*time),ceil(17*time)

[State 2306, End]
type=destroyself
trigger1= time>=15



























;---------------------hp5-----------------------------------------------











;Rocket Uppercut
[Statedef 2200]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1200
poweradd = -1000



[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607;+random%2
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607;+random%2
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21

[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S333,8

[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15


[State 1200,sound]
type = Playsnd
trigger1 = time = 10
value = 30,9

[State 1200,sound]
type = Playsnd
trigger1 = time = 90
value = 31,1

[State 1200, explode shinning]
type = Explod
trigger1 = time = 1
sprpriority = 7
id = 1202
anim = 1202
postype = P1
pos = 0,0
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = -1

[State 1200, a]
type = ChangeState
trigger1 = time = 50
value = 2205
ctrl = 0

[State 1200, a0]
type = removeexplod
trigger1 = command != "holdpunch"
id = 1202



;-------------------------------------------------
;Normal Uppercut
[Statedef 2205]
type    = A
movetype= A
physics = A
poweradd= 0
velset = 0,0
anim = 1201
ctrl = 0
juggle =5
sprpriority = 2

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15

[State 1205, c]
type = removeexplod
trigger1 = !time
id = 1202





[State 1205, sndP]
type = PlaySnd
trigger1 = animelem = 2
value = 30,1

[State 1205, propulsor]
type = Explod
triggerall = !NumExplod(74)
trigger1 = animelem = 2
id = 74
anim = 74
sprpriority = -4
supermove = 1
postype = P1
pos = 0,-5
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = 22

[State 1205, propulsor2]
type = Explod
triggerall = !NumExplod(79)
trigger1 = animelem = 2
anim = 74
id = 79
sprpriority = 4
supermove = 1
postype = P1
pos = -25,25
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = 22

[State 1205, 5]
type = Velset
trigger1 = AnimElem = 1
x = 2.5
y = -5.3

[State 1205, 2]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 100,10
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 50,12
sparkno = s30002
sparkxy = -10, -96
hitsound = s2,6
guardsound = s3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,-25
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,25
air.hittime = 20
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
fall = 1
fall.recover = 0
kill = 0
p2stateno = 2120
getpower = 0,0


[State 3110, end]
type = ChangeState
trigger1 = hitcount > 0
value = 2130
ctrl = 0

[State 3110, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1






;CustomState
[StateDef 2120]
type = A
movetype= H
physics = A
juggle  = 1
velset = 0,-40
ctrl = 0
poweradd = 0
sprpriority = 1

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 100
TimeGap  = 1
FrameGap = 4
length = 15

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 1000, Land]
type= changestate
trigger1= vel y > 0
trigger1= pos y > -vel y
value= 5100



;Follow
[Statedef 2130]
type = S
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 3130

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 100
TimeGap  = 1
FrameGap = 4
length = 15


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
y = -20
;ignorehitpause =
;persistent =




[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 15,3;S9,1
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 3130, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, HT
hitflag = MAF
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 2140
p2stateno = 2150
fall = 1
fall.recover = 0
fall.damage = 150
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
numhits = 0














;Atmosphere Smash
[Statedef 2140]
type = A
movetype= A
physics = N
anim = 2140
poweradd = 0
velset = 0,0
sprpriority = 3


[State 4120, 2] ;Maximum Justice shout
type = PlaySnd
trigger1 = animelem = 2
value = 0,74



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = numexplod(32709) = 1
flag = nofg
flag2 = nobg
flag3 = nobardisplay


;[State 3140, superpause]
;type = SuperPause
;trigger1 = Time = 1;AnimElem = 1
;time = 101;115;80
;sound = -1;S10,1
;pos = -10,-45
;darken = 1


;[State 0, Explod]
;type = Explod
;trigger1 = time = 1
;anim = 32709
;ID = 3160
;pos = -21,-95
;;postype = left  ;p2,front,back,left,right
;facing = 1
;vfacing = 1
;bindtime = 1
;vel = 0,0
;accel = 0,0
;random = 0,0
;removetime = -2 ;240
;supermovetime = 999999
;pausemovetime = 999999
;scale = .5,.5
;sprpriority = 2
;ontop = 1
;shadow = 0,0,0
;ownpal = 0
;removeongethit = 0 ;1





;[State 0, RemoveExplod]
;type = RemoveExplod
;trigger1 = animelem = 20
;id = 32709
;ignorehitpause =
;persistent =
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = numexplod(3160) = 1
flag = nofg
flag2 = nobg
flag3 = nobardisplay

[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 19
value = 1
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 19
anim = 30002
ID = 310
pos = 0,-50
postype = p2
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ignorehitpause = 1


[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 0
time = 2
add = 256,256,256

[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelem = 20
time = 2
add = 256,256,256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 19
value = 2,6;S5,5
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 18
value = S0,2
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 2161
ID = 3160
pos = 0,100
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0.2
accel = 0,0
random = 0,0
removetime = -2
;supermove
;pausemove
scale = 1,1
sprpriority = 3
ontop = 0
;shadow = 0,0,0
;ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 2160
ID = 3160
pos = 0,100
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0.2
accel = 0,0
random = 0,0
removetime = -2
;supermove
;pausemove
scale = 1,1
sprpriority = 2
ontop = 0
;shadow = 0,0,0
;ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 20
id = 3160
;ignorehitpause =
;persistent =


[State 0, PosSet]
type = Posset
trigger1 = time = 0
x = 0
y = 150
;ignorehitpause =
;persistent =


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =


[State 3140, Bind 1]
type = TargetBind
trigger1 = time = 0
pos = 30, -80

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
y = -5
;ignorehitpause =
;persistent =

[State 0, VelAdd]
type = VelAdd
trigger1 = vel y < 0 && time = [2,20]
y = .1
;ignorehitpause =
;persistent =

[State 0, VelAdd]
type = VelAdd
trigger1 = vel y < 0 && time = [40,70]
y = .15
;ignorehitpause =
;persistent =


[State 3140, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 19
value = -100
kill = 0

[State 3140, Throw]
type = TargetState
trigger1 = AnimElem = 20
value = 2151

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 20
x = -100
y = -500
;ignorehitpause =
;persistent =

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 83
y = .05
;ignorehitpause =
;persistent =

[State 0, Helper]
type = Helper
triggerall = numhelper(3006) = 0
trigger1 = enemy, pos y = 0
helpertype = normal ;player
name = "splode"
ID = 3006
stateno = 2106
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove


[State 0, Explod]
type = Explod
triggerall = numexplod(1418) = 0
trigger1 = enemy, pos y = 0
anim = 1418
ID = 1418
pos = 30,5
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
triggerall = numexplod(14188) = 0
trigger1 = enemy, pos y = 0
anim = 1418
ID = 14188
pos = 0,10
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
triggerall = numexplod(1419) = 0
trigger1 = enemy, pos y = 0
anim = 1418
ID = 1419
pos = -30,5
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 1000, Land]
type= changestate
trigger1= vel y > 0
trigger1= pos y > -vel y
value= 52


;-----------------------------------------------------------

[Statedef 2150]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 3


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
y = -6
;ignorehitpause =
;persistent =

[State 0, VelAdd]
type = VelAdd
trigger1 = vel y < 0 && time = [2,30]
y = .2
;ignorehitpause =
;persistent =



[State 3150, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2150

;---------------------------------------------------------------

[Statedef 2151]
type = A
movetype = H
physics = N
velset = 0,0
poweradd = 40

[State 0, VelSet]
type = VelSet
trigger1 = time = 60
y = 30
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = -500
;ignorehitpause =
;persistent =

[State 3151, 4] ;Hit ground
type = changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 2155 ;Hit ground

;------------------------------------------------------------------
;HitGround
[StateDef 2155]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
poweradd = 0
sprpriority = 2

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -50
kill = 1
absolute = 0
;ignorehitpause =
;persistent =


[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 2155
;elem = 1
;ignorehitpause =
;persistent =


[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 60
freq = 80
ampl = 17
phase = 90
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3155, end]
type = Selfstate
trigger1 = AnimTime = 0 && alive = 1
value = 5120
ctrl = 0

[State 3155, end]
type = Selfstate
trigger1 = AnimTime = 0 && alive != 1
value = 5150
ctrl = 0
;------------------------------------------------------------------

;Splode
[StateDef 2106]
type = S
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 3161
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 3161
scale = 1.5,1.5
ID = 30006
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 30006
ID = 30006
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 9009, Kaboom]
type = Explod
trigger1 = Time = 1
anim = 9009
pos = 12,9
postype = p1
sprpriority = -1
supermove = 1
bindtime = 1

[State 9009, Kaboom]
type = Explod
trigger1 = Time = 3
anim = 2102
pos = -100,0
postype = p2
sprpriority = 11
supermove = 1
bindtime = 1

[State 9009, Kaboom]
type = Explod
trigger1 = Time = 3
anim = 86755
pos =26,9
scale = 1.3
postype = p2
sprpriority = 1
supermove = 1
bindtime = 1

[State 9009, Kaboom]
type = Explod
trigger1 = Time = 1
anim = 2102
pos = 0,0
postype = p2
sprpriority = 11;-1
supermove = 1
bindtime = 1

[State 9009, Kaboom]
type = Explod
trigger1 = Time = 3
anim = 2102
pos = 150,0
postype = p2
sprpriority = 11;-1
supermove = 1
bindtime = 1

[State 9009, Kaboom]
type = Explod
trigger1 = Time = 3
anim = 2102
pos = 50,-30
postype = p2
sprpriority = -1
supermove = 1
bindtime = 1

[State 9009, Kaboom]
type = Explod
trigger1 = Time = 3
anim = 2102
pos = -50,-30
postype = p2
sprpriority = -1
supermove = 1
bindtime = 1

[State 9009, Kaboom]
type = Explod
trigger1 = Time = 3
anim = 2102
pos = 100,-30
postype = p2
sprpriority = -1
supermove = 1
bindtime = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S9,7
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,201;S9,6
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = 20
;ignorehitpause =
;persistent =

[State 3106, end]
type = destroyself
trigger1 = time = 122































;---------------------hp6-------------------------------------------


[Statedef 2220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 1111
sprpriority = -1

[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S20,111


[State 3100, 1]
type = superpause
trigger1 = time = 0
anim = -1
time = 33

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607;+random%2
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607;+random%2
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15



[State 1000]
type = Explod
trigger1 = AnimElem = 5
anim = 6220
sprpriority = 8
pos = 0,0
removetime = 26

[State 210, 2]
type = HitDef
trigger1 = hitcount < 5
trigger1 = moveguarded < 5
attr = S, NA
animtype  = Hard
damage    = 20,2
guardflag = MA
pausetime = 0,12
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = -2
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
p2stateno = 27997




[State 220, 3x]
type = PlaySnd
trigger1 = AnimElem = 4
value = 30,11





[State 220, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 240, 4]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = !movehit || moveguarded
value = 0
ctrl = 1

[State 240, 4]
type = ChangeState
triggerall = AnimElem = 3
trigger1 = movehit && !moveguarded
value = 2221
ctrl = 0









[Statedef 2221]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
ctrl = 0
velset = 0,0
anim = 2200
sprpriority = -1

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 8

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 0


[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,1
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 10
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,1
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 13
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 18
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,1
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 21
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 26
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,1
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 29
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 34
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,1
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 37
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 44
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,1
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 53
attr = S, NA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 0,30
sparkno = S30002
sparkxy = -10,-70
hitsound = S2,5
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0


[State 210, 2]
type = HitDef
trigger1 = AnimElem = 60
attr = S, NA
animtype  = Hard
damage    = 100,10
guardflag = MA
pausetime = 0,20
sparkno = S30002
sparkxy = -10,-60
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = 0
guard.velocity = -8
air.velocity = 0
airguard.velocity = -6
ground.cornerpush.veloff = 0
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0
p2stateno = 5600

[State 1000]
type = Explod
trigger1 = AnimElem = 60
anim = 241
sprpriority = 8
pos = 0,0
removetime = 16


[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 220, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,88

[State 220, 3x]
type = PlaySnd
trigger1 = AnimElem = 60
value = 30,11





[State 220, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1








;îÚÇ—
[Statedef 5600]
type     = A
movetype = H
physics  = N

[State 1];ñ≥ìGÇÃèÛë‘ÇçÏÇÈ
type = NotHitBy
trigger1 = 1
value = SCA

[State 1994, ÉXÉeÅ[ÉgïœçX]
type = ChangeState
triggerall = PrevStateno =[5601,5602]
trigger1 = Time = 0
value = 5602

[State 210, 3]
type = PlayerPush
trigger1 = 1
value = 0

[State 820, êßå‰ÇµÇΩëäéËÇÃÉAÉjÉÅïœçX]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(SelfAnimExist(5052) = 1,5052,5030)

[State 821, ë¨ìxâ¡éZ]
type = VelAdd
trigger1 = BackEdgeBodyDist >= 10
trigger2 = FrontEdgeBodyDist >= 10
x = -2

[State 821, ë¨ìxâ¡éZ]
type = Velset
trigger1 = time = 0
y = 0

[State 1993, ÉXÉeÅ[ÉgïœçX] ;ï«Ç…ìñÇΩÇÈéûÇÃÉXÉeÅ[ÉgÇ…çsÇ≠
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10
trigger2 = FrontEdgeBodyDist <= 10
value = 5601


[State 821, êßå‰âèúÇµÇƒëäéËÇÃÉXÉeÅ[ÉgÇ…ñﬂÇ∑]
type = SelfState
trigger1 = time = 100
value = 5100 



;------------------
; ï«Ç…ìñÇΩÇÈ
[Statedef 5601]
type     = A
movetype = H
physics  = N


[State 1];ñ≥ìGÇÃèÛë‘ÇçÏÇÈ
type = NotHitBy
trigger1 = 1
value = SCA

[State 1995, à⁄ìÆë¨ìx]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1995, à⁄ìÆë¨ìx]
type = Veladd
trigger1 = Time = 0
x = 0
y = 0

[State 820, êßå‰ÇµÇΩëäéËÇÃÉAÉjÉÅïœçX]
type = ChangeAnim
Trigger1 = Time = 0
value = 5000

[State 1994, êUÇËï‘ÇÈ]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 20)

[State 1994, é≤à íuà⁄ìÆ]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist
y = -10

[State 1994, à⁄ìÆÇé~ÇﬂÇÈ]
type = PosFreeze
trigger1 = 1
x = 0
y = 0

[State 1994, ÉJÉÅÉâÉXÉNÉçÅ[ÉãÇÃóLñ≥]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1000, 3]
type = EnvShake
Trigger1 = Time = 0
time = 20
freq = 60
ampl = -4
phase = 120

[State 1994, ÉXÉeÅ[ÉgïœçX]
type = ChangeState
trigger1 = Time = 5
value = 5602

;------------------
; ï«Ç©ÇÁÇÃÉoÉEÉìÉh
[Statedef 5602]
type     = A
movetype = H
physics  = N

[State 210, 3]
type = PlayerPush
trigger1 = 1
value = 0

[State 1995, à⁄ìÆë¨ìx]
type = VelSet
trigger1 = Time = 0
x = 1
y = -4

[State 1995, èdóÕë„ÇÌÇË]
type = VelAdd
trigger1 = 1
y = .33


[State 1995, ÉAÉjÉÅïœçX]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse(SelfAnimExist(5052) = 1,5052,5050)



[State 1995, ëäéËÉXÉeÅ[ÉgÇ…ñﬂÇ∑]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100












[Statedef 27997]
type    = A
movetype= H
physics = N
sprpriority = 1
anim=5300

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -1

[State 335, 1]
type = VelSet
trigger1 = Time = 0
trigger2 = Vel Y > 0 && Pos Y >= 0
trigger3 = p2Stateno != 27100
x = 0
y = 0

ê;Çíºà⁄ìÆ
[State 2500, 2]
type = VelAdd
triggerall = time >= 48;18
trigger1 = Pos Y <= 0
y = .3

[State 1103, 2]
type = PosSet
trigger1 = Vel Y > 0 && Pos Y >= 0
y = 0






















;-------------------------------hp7------------------------------------------------









[Statedef 3040]
type    = U
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3042
poweradd= -1000
ctrl = 0
sprpriority = 0
facep2 = 1

[State 1350, propur]
type = Explod
triggerall = !NumExplod(74)
trigger1 = animelem = 2
anim = 74
id = 74
sprpriority = -4
supermove = 1
postype = P1
pos =40,0
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 18

[State 1350, propu2]
type = Explod
triggerall = !NumExplod(75)
trigger1 = animelem = 2
anim = 74
id = 75
sprpriority = -2
supermove = 1
postype = P1
pos = 30,15
removeongethit = 1
bindtime = -1
ownpal = 1
removetime = 18

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607;+random%2
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607;+random%2
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S50,6

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15




[State 3040]
type = ChangeState
trigger1 = AnimTime = 0
value = 3041
ctrl = 0


;---------------------------------------------------------------------------
;Hyper Missile
[Statedef 3041]
type    = U
movetype= A
physics = N
juggle  = 1
poweradd = 0
velset = 0,0
anim = 3043
ctrl = 0
sprpriority = 0
facep2 = 1



[State 1000, dust]
type = Explod
triggerall = !NumExplod(78106)
trigger1 = animelem= 5
id = 78106
anim = 78106
pos = -10,10
postype= p1
time=12
sprpriority =4
ontop = 1
bintime=-1
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(78102)
trigger1 = animelem= 6
id = 78102
anim = 78102
pos = 20,-15
postype= p1
time=9
bintime=-1
sprpriority =-4
removeongethit = 1



[State 3041]
type = Helper
trigger1 = AnimElem = 3
stateno = 23040
id = 23040
ownpal = 1
pos = 38,-101


[State 3041]
type = PlaySnd
trigger1 = AnimElem = 3
value = 420,3





[State 3041]
type = ChangeAnim
trigger1 = AnimElem = 8 && Time < 80
value = anim




[State 3041]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1




;----------------


;Hyper Missile Helper
[Statedef 23040]
type = A
movetype = A
physics = N
;anim = 6420
ctrl = 0
sprpriority = -1
velset = 0,0
;hitcountpersist = 1
poweradd = 0

[State 3150, sndP]
type = PlaySnd
trigger1 = animelem = 1
value = 30,1

[State 23040]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 6420
value = 6420


[State 23040]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 23040]
type = VelSet
trigger1 = Time = 0
x = 5

[State 23040]
type = VarSet
trigger1 = Time = 0
var(5) = abs(EnemyNear, const(size.mid.pos.y))

;Movement in forward or back
[State 23040]
type = VelAdd
trigger1 = time > 0 && p2dist x > 10
x = (p2dist x)*0.03


[State 23040]
type = VelAdd
trigger1 = Time > 0 && p2dist x > 10
y = (P2dist Y - var(5))*0.01

 
;Decrease down Speed if distance in X is bigger then distance in Y
[State 23040]
type = VelAdd
trigger1 = p2dist x > p2dist y && Vel Y > 1
y = -1
 
;Increase down Speed if distance in Y is bigger then distance in X
[State 23040]
type = VelAdd
trigger1 = p2dist x < p2dist y && Vel Y > 0
y = 0.5


[State 23040]
type = Varset
trigger1 = 1
fvar(5) = Vel Y / Vel X


[State 23040]
type = VelSet
trigger1 = Vel X > 7
x = 7



[State 23040]
type = VelSet
trigger1 = Vel X = 7
y = (Vel X)*fvar(5)








[State 23040]
type = Varset
trigger1 = Vel X > 0
fvar(0) = ((atan((-1*Vel Y)/Vel X))*(360/(2*pi)))

[State 23051]
type = null;Varset
trigger1 = Vel X > 0 && fvar(0) < 0
fvar(0) = fvar(0) + 360


[State 23040]
type = VarSet
trigger1 = Vel X < 0
fvar(0) = 180 + ((atan((-1*Vel Y)/Vel X))*(360/(2*pi)))


[State 23040]
type = VarSet
trigger1 = Vel X = 0
fvar(0) = 0



[State 23040]
type = AngleSet
trigger1 = 1
value = fvar(0)
 
[State 23040]
type = AngleDraw
trigger1 = 1



[State 23040]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 23040]
type = HitOverride
trigger1 = 1
stateno = 6429
attr = SCA,AP
slot = 0
time = -1


[State 23040]
type = HitDef
attr = A, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 35,3
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 7,20
sparkxy = -1;30,60
hitsound   = S2,5
guardsound = S3,0
sparkno = -1;S78114
guard.sparkno = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -7
air.velocity = -5
;guard.velocity = -9
;airguard.velocity = -9
;fall.xvelocity = -3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
;palfx.time = 1
;palfx.add = 256,256,256
sprpriority = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0




[State 1001, explosive]
type = Explod
triggerall = !NumExplod(788)
trigger1 = movehit
anim = 788
id =788
pos = -80, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime =36
ownpal = 1
scale = 1.2,1.2



[State 1001, med1]
type = Explod
triggerall = !NumExplod(788)
trigger1 = moveguarded = 1
anim = 788
id = 788
;velocity = 0, 0
pos = -60, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
removetime = 36
ownpal = 1
scale = 1.2,1.2




[State 23040]
type = DestroySelf
trigger1 = MoveContact


[State 23040]
type = DestroySelf
trigger1 = MoveReversed



;Missile End
[Statedef 6429] 
type = A
movetype = I
physics = N
anim = 9999
ctrl = 0
sprpriority = 1
velset = 0,0
movehitpersist = 1
hitcountpersist = 1

[State 6429]
type = Explod
trigger1 = Time < 2
anim = 7410
ignorehitpause = 1
pos = 0,0
random = 20,20
;postype = p1
ownpal = 1
ontop = 1
;bindtime = 0
;vel = -1+random%2,-2+random%3
;accel = 0,0.3
scale = 1.2,1.2


[State 6429]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 6429]
type = PlaySnd
trigger1 = Time = 0
value = 8,22


[State 6429]
type = DestroySelf
trigger1 = AnimTime = 0












;------------------------------hp9-------------------------------------------



[Statedef 2350]
type    = U
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3442
poweradd= -1000
ctrl = 0
sprpriority = 0
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 173,73

[State 3100, 1]
type = superpause
trigger1 = time = 0
anim = -1
time = 33

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = time <= 40
value = SCA,NA,SA,HA,NP,SP,HP

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607;+random%2
ID = 15660
pos = 0,81
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607;+random%2
ID = 15661
pos = 0,81
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1


[State 3000, 1]
type = Explod
trigger1 = Time = 0
anim = 8889
pos = -8,-8
removetime = 45
postype = left
scale = 1.1,1.1
bindtime = -1
supermovetime = 45
pausemovetime = 45
sprpriority = -21


[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = S3555, 0

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15




[State 3040]
type = ChangeState
trigger1 = AnimTime = 0
value = 2041
ctrl = 0


;---------------------------------------------------------------------------
;Hyper Missile
[Statedef 2041]
type    = U
movetype= A
physics = N
juggle  = 1
poweradd=0
velset = -.1,0
anim = 3443
ctrl = 0
sprpriority = 0
facep2 = 1




[State 3000, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 3910
pos = 30,-105
removetime = 68
postype = p1
scale = 1,.8
sprpriority = 9
vel=-.1,0
ignorehitpause = 1

[State 3000, 1]
type = Explod
trigger1 = AnimElem = 5
anim = 3919
pos = 25,-35
removetime = 4
postype = p1
scale = 1,1
sprpriority = 9
vel=-.1,0
ignorehitpause = 1

[State 8997, 3]
type = HitDef
trigger1 = hitcount < 20
trigger1 = moveguarded < 20
attr = A, NA
animtype = hard
damage = 12,1
guardflag = H
pausetime = 3,8
sparkno = -1;S30002
;guard.sparkno = S2927
sparkxy = -9,-75
hitsound = s2,2
guardsound = s3,0
ground.type = high
ground.slidetime = 15
ground.hittime = 15
guard.velocity = -5.8
ground.velocity = -3,-3
air.type = trip
air.velocity = -3.1,-3.5
fall = 1
envshake.time = 50
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0





[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 31,2






[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 1
ID =  3911
scale = 1,.8


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID =  3911
scale = 1,.7


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 3
ID =  3911
scale = 1,.6


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID =  3911
scale = 1,.5


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 5
ID =  3911
scale = 1,.4


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID =  3911
scale = 1,.3


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 7
ID =  3911
scale = 1,.2


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID =  3911
scale = 1,.1


[State 3041]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1