;---------------------------------------------------------------------------
; Basics CNS File
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Win state decider
;---------------------------------------------------------------------------
[Statedef 180]
type = S

[State 180, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 1,600

[State 180, 2]
type = ChangeState
trigger1 = Var(1) = [1,200]
value = 181

[State 180, 3]
type = ChangeState
trigger1 = Var(1) = [201,400]
value = 182

[State 180, 4]
type = ChangeState
trigger1 = Var(1) = [401,600]
value = 183

;---------------------------------------------------------------------------
; Win pose 1
;---------------------------------------------------------------------------

[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 2; NEW SOUND
value = 12,2
volume = 255
channel = 3

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2
;---------------------------------------------------------------------------
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 12,1
volume = 255
channel = 3

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 126

;-------------------------------------------------------------------------------
;Win pose 3
;-------------------------------------------------------------------------------
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 1; NEW SOUND
value = 12,0
volume = 255
channel = 3

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
[Statedef 190]
type = S

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 1,800

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [1,200]
value = 191

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [201,400]
value = 192

[State 190, 4]
type = ChangeState
trigger1 = Var(1) = [401,600]
value = 193

[State 190, 5]
type = ChangeState
trigger1 = Var(1) = [601,800]
value = 194


;---------------------------------------------------------------------------
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 94, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 11,18
volume = 255
channel = 5
ignorehitpause = 1
persistent = 0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
[Statedef 192]
type = S
ctrl = 0
anim = 192
pos = 340,220
sprpriority = 0
P2ontop = 1

[State 192, ScreenBound]
type = ScreenBound
trigger1 = animtime = 0
value = 192
movecamera = 0,0
;ignorehitpause =
persistent = 1

[State 192, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 11,20
channel = 7

[State 192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, SprPriority]
type = SprPriority
trigger1 = AnimTime = 0
value = 1193

[State 192, BindToParent]
type = BindToParent
trigger1 = animelem = 1
time = 384

[State 1192, Ricochet B]
type = Helper
trigger1 = AnimElem = 1
ID = 1191
stateno = 1191
postype = back
pos = 0,0
name = "Loot"
ownpal = 1

[State 192, Ricochet A]
type = Helper
trigger1 = AnimElem = 1
ID = 1193
stateno = 1193
postype = back
pos = 0,0
name = "Ricochet"
ownpal = 1

[State 192, Shocker A]
type = Helper
trigger1 = AnimElem = 1
ID = 1194
stateno = 1194
postype = back
pos = 0,0
name = "Shocker"
ownpal = 1

[State 192, BindToParent]
type = BindToParent
trigger1 = animelem = 1
time = 384
;facing = 0
pos = 0,0
;ignorehitpause =
;persistent = 1

[State 192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 1192

;---------------------------------------------------------------------------
[Statedef 1192]
type = S
ctrl = 0
anim = 194
sprpriority = 1

[State 1192, Ox B]
type = Helper
trigger1 = AnimElem = 1
ID = 1195
stateno = 1195
postype = back
pos = 0,0
name = "Ox"
ownpal = 1

[State 1192, Ricochet B]
type = Helper
trigger1 = AnimElem = 1
ID = 1196
stateno = 1196
postype = back
pos = 0,0
name = "Ricochet"
ownpal = 1

[State 195, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 11,21
channel = 3

[State 195, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 11,22
channel = 8

[State 195, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 11,23
channel = 8

[State 195, 1]
type = Playsnd
trigger1 = AnimElem = 6
value = 8,1
channel = 8

[State 195, 1]
type = Playsnd
trigger1 = AnimElem = 5
value = 11,24
channel = 7

[State 1192, SprPriority]
type = SprPriority
trigger1 = AnimTime = 0
value = 1192

[State 1192, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 1192

[State 1192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 1192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;-------------------------------------------------------------------------------
;Loot A
[Statedef 1191]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1191
sprpriority = 1
hitcountpersist = 1

[State 10954, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 384
facing = 0
pos = 100,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1191]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=192

;-------------------------------------------------------------------------------
;Shocker A
[Statedef 1194]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1934
sprpriority = 9
hitcountpersist = 1

[State 10954, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 384
;facing = 0
pos = 230,10

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0


[State 1194]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=192

;-------------------------------------------------------------------------------
;Ricochet A
[Statedef 1193]
type = A
movetype = A
physics = N
ctrl = 0
anim = 193
sprpriority = 9
hitcountpersist = 1

[State 10954, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 384
;facing = 0
pos = 210,19

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0


[State 1193]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=192

;-------------------------------------------------------------------------------
;Ox B
[Statedef 1195]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1920
sprpriority = 1
hitcountpersist = 1

[State 10954, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 384
facing = 0
pos = 0,10

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0


[State 1195]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=1192

;-------------------------------------------------------------------------------
;Ricochet B
[Statedef 1196]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1930
sprpriority = 9
hitcountpersist = 1

[State 10954, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 384
;facing = 0
pos = 210,19

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1196, Ricochet]
type = Explod
trigger1 =  animelem = 15
anim = 1931
ID = 1131
pos = 0,0
postype = back ;,back,left,right
facing = 1
vfacing = 1
bindtime = 0
vel = 20,0
accel = 0,0
random = 0,0
removetime = 20
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 1196, Ricochet]
type = Explod
trigger1 =  animelem = 16
anim = 1931
ID = 1131
pos = 200,0
postype = back ;,back,left,right
facing = -1
vfacing = 1
bindtime = 0
vel = -10,-3
accel = 0,0
random = 0,0
removetime = 20
scale = 1,1
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 1196]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=1192

;---------------------------------------------------------------------------
[Statedef 193]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 193, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 13,2
volume = 255
channel = 5
ignorehitpause = 1
persistent = 0

[State 193, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 193, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
[Statedef 194]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 194, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 12,11
volume = 255
channel = 5
ignorehitpause = 1
persistent = 0

[State 194, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0


;---------------------------------------------------------------------------
; Taunt
;---------------------------------------------------------------------------
[Statedef 195]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 195
ctrl = 0
sprpriority = 2


[State 195, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 11,27
channel = 3


[State 191, blast]
type = Helper
trigger1 = AnimElem = 13
ID = 1095
stateno = 1095
postype = p1
pos = -250,0
name = "Ricochet"
ownpal = 1


[State 195, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Ricochet Helper
[Statedef 1095]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1931
sprpriority = 9
hitcountpersist = 1

[State 1095, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 14
y = 0

[State 1095, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1095, 4]
type = hitdef
trigger1 = !movehit
attr = S,HA
damage    = 20,3
animtype  = Hard
getpower  = 1
givepower = 2
hitflag = MAF
guardflag = MA
pausetime = 2,15
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = 6,0
ground.type = high
ground.slidetime = 4
ground.velocity = -50
airguard.velocity = -50
air.type = Low
air.velocity = -150,111
air.juggle = 5
fall.animtype = Hard
fall = 1
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2

[State 1095, 7]
type = ChangeState
trigger1 = Pos Y > -2
value = 1096

;---------------------------------------------------------------------------
; Ricochet Attacking
[Statedef 1096]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd = 0
anim = 1931
ctrl = 0
sprpriority = 4
velset = 0,0

[State 1096, 1]
type = PlaySnd
trigger1 = Time = 10
value = 11,22

[State 1096, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1096, 3]
type = VelSet
trigger1 = Time > 16
x = 18
y = 0

[State 1096, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
attr = S, SA
hitflag = MAF
animtype  = Hard
damage = 20, 5
getpower = 0
guardflag = MA
pausetime = 0,0
priority = 6, Hit
sparkxy = -3, -114
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = -3,-4
air.velocity = -4,-3
air.hittime = 20

[State 1096, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1097
time = -1

[State 1096, 7]
type = DestroySelf
trigger1 = ScreenPos Y < -10

;---------------------------------------------------------------------------
; Ricochet Get Hit
[Statedef 1097]
type    = S
movetype= I
physics = N
juggle  = 5
poweradd = 0
anim = 1931
ctrl = 0
sprpriority = 4
velset = 0

[State 1097, 1]
type = VelSet
trigger1 = 1
x = -4
y = -5

[State 1097, 7]
type = DestroySelf
trigger1 = ScreenPos Y < -10

;---------------------------------------------------------------------------
; Basics
;---------------------------------------------------------------------------
; Stance
[Statedef 0]
type = S
physics = S
velset = vel x * (prevstateno=[100,106]), 0
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5 && anim != 1
trigger2 = Anim = 5 && AnimTime = 0
trigger3 = anim = 1 && time = 0
value = 0

[State 0, 2]
type = VelSet
trigger1 = time=16
x = 0
;----
[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0
[State 0, IDLE]
type = ChangeAnim
trigger1 = anim != 1
trigger1 = time = 700
value = 1
[State 0, IDLE]
type = Changestate
trigger1 = anim = 1
trigger1 = animtime = 0
value = 0
;----------

[State 0, 3] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050
;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 200
poweradd = ifelse(var(15) = 1, 0, 20)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 200, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = ifelse(var(15) = 1, 35, 28)
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
getpower = ifelse(var(15) = 1, 0, 28)
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
;---------------------------------------------------------------------------
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 210
poweradd = ifelse(var(15) = 1, 0, 40)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 210, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = ifelse(var(15) = 1, 60, 52)
getpower = ifelse(var(15) = 1, 0, 52)
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 210, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
;---------------------------------------------------------------------------
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 220
poweradd = ifelse(var(15) = 1, 0, 60)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = ifelse(var(15) = 1, 81, 72)
getpower = ifelse(var(15) = 1, 0, 72)
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s8222
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 2
envshake.ampl = 2
fall=1

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
;---------------------------------------------------------------------------
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 230
poweradd = ifelse(var(15) = 1, 0, 20)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 230, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 230, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = ifelse(var(15) = 1, 35, 28)
getpower = ifelse(var(15) = 1, 0, 28)
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 230, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
;---------------------------------------------------------------------------
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 240
poweradd = ifelse(var(15) = 1, 0, 40)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 240, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 240, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = ifelse(var(15) = 1, 60, 52)
getpower = ifelse(var(15) = 1, 0, 52)
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 240, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
;---------------------------------------------------------------------------
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim=250
poweradd = ifelse(var(15) = 1, 0, 60)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 250, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 250, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = ifelse(var(15) = 1, 81, 72)
getpower = ifelse(var(15) = 1, 0, 72)
animtype = High
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
;---------------------------------------------------------------------------
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 400
poweradd = ifelse(var(15) = 1, 0, 20)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 400, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 400, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = ifelse(var(15) = 1, 35, 28)
getpower = ifelse(var(15) = 1, 0, 28)
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.velocity = -5,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 400, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
;---------------------------------------------------------------------------
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 410
poweradd = ifelse(var(15) = 1, 0, 40)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 410, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 410, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = ifelse(var(15) = 1, 60, 52)
getpower = ifelse(var(15) = 1, 0, 52)
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,10
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 14
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0

[State 410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
;---------------------------------------------------------------------------
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
juggle = 1
poweradd = ifelse(var(15) = 1, 0, 60)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 420, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C, NA
damage = ifelse(var(15) = 1, 81, 72)
getpower = ifelse(var(15) = 1, 0, 72)
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = 6,0
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-12
guard.velocity = -5
air.velocity = -1,-12

[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
;---------------------------------------------------------------------------
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 430
poweradd = ifelse(var(15) = 1, 0, 20)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 430, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 430, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = ifelse(var(15) = 1, 35, 28)
getpower = ifelse(var(15) = 1, 0, 28)
animtype = Light
hitflag = MA
guardflag = MA
priority = 2, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -15,-10
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 430, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
;---------------------------------------------------------------------------
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 440
poweradd = ifelse(var(15) = 1, 0, 40)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 440, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 440, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = ifelse(var(15) = 1, 60, 52)
getpower = ifelse(var(15) = 1, 0, 52)
animtype = Medium
hitflag = MA
guardflag = MA
priority = 3, Hit
pausetime = 9,10
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 440, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Kick
;---------------------------------------------------------------------------
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 450
poweradd = ifelse(var(15) = 1, 0, 60)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 450, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 450, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = ifelse(var(15) = 1, 81, 72)
getpower = ifelse(var(15) = 1, 0, 72)
animtype = High
hitflag = MA
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = low;trip
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -10,0
air.type = Low
air.hittime = 5
air.velocity = -10,0

[State 450, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jumping Light Punch
;---------------------------------------------------------------------------
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 600
poweradd = ifelse(var(15) = 1, 0, 20)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 600, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = ifelse(var(15) = 1, 35, 28)
getpower = ifelse(var(15) = 1, 0, 28)
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)

[State 600, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Punch
;---------------------------------------------------------------------------
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 610
poweradd = ifelse(var(15) = 1, 0, 40)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 610, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 610, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = ifelse(var(15) = 1, 60, 52)
getpower = ifelse(var(15) = 1, 0, 52)
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)

[State 610, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Punch
;---------------------------------------------------------------------------
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 620
poweradd = ifelse(var(15) = 1, 0, 60)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 620, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 620, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = ifelse(var(15) = 1, 81, 72)
getpower = ifelse(var(15) = 1, 0, 72)
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = s8222
sparkxy = 0,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
air.hittime = 25
ground.velocity = -9
air.velocity = -7,17
fall = (enemynear,statetype = A)
air.fall = 1
fall.recover =0

[State 620, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Light Kick
;---------------------------------------------------------------------------
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 630
poweradd = ifelse(var(15) = 1, 0, 20)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 630, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 630, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = ifelse(var(15) = 1, 35, 28)
getpower = ifelse(var(15) = 1, 0, 28)
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)

[State 630, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Kick
;---------------------------------------------------------------------------
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 640
poweradd = ifelse(var(15) = 1, 0, 40)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 640, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 640, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = ifelse(var(15) = 1, 60, 52)
getpower = ifelse(var(15) = 1, 0, 52)
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)

[State 640, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Kick
;---------------------------------------------------------------------------
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 650
poweradd = ifelse(var(15) = 1, 0, 60)
sprpriority = 2

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 650, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 650, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = ifelse(var(15) = 1, 81, 72)
getpower = ifelse(var(15) = 1, 0, 72)
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9
air.velocity = -17,7
air.fall = 1
fall.recover =0

[State 650, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Throws
;---------------------------------------------------------------------------
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = ifelse(Command = "holdfwd",1,-1)
p2facing = -1
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = ifelse(PalNo > 6, 0, 1)
fall.recover = 0
fall.damage = 80


[State 800, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 800, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 810]
type    = S
movetype= A
physics = N
anim = 813
sprpriority = 2

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 12,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 10,-50

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 40,-90

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 5
value = 830

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 1000,1

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 4
value = 35

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -35

[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 840
ctrl = 1

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[Statedef 830]
type    = A
movetype= H
physics = N
velset = -10,-10
poweradd = 35

[State 830, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = [0,10]) && (SelfAnimExist(5060))
value = 5060

[State 830, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) && (!SelfAnimExist(5060))
value = 830

[State 830, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 40

[State 830, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 830, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0

;---------------------------------------------------------------------------
; Throw Vibration blast
[Statedef 840]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1002
ctrl = 0
sprpriority = 2

[State 840, Turn]
type = Turn
trigger1 = Animelem = 1

[State 840, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,4
channel = 1

[State 840, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,10
channel = 3


[State 840, blast]
type = Helper
trigger1 = AnimElem = 3
ID = 841
stateno = 841
postype = p1
pos = 20,-100
name = "Blast"
ownpal = 1


[State 840, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;V blast
[Statedef 841]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1003
sprpriority = 9
hitcountpersist = 1
poweradd = ifelse(var(15) = 1, 0, 40)

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 841, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 841, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 50,-110

[State 840, 1]
type = Playsnd
trigger1 = AnimElem = 8
value = 8000,4
channel = 2

[State 841, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 841, 4]
type = hitdef
trigger1 = Animelem = 5
trigger2 = Animelem = 7
trigger3 = Animelem = 9
trigger4 = Animelem = 11
attr = S,HA
damage = 35,3
getpower = 20
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = S8022
guard.sparkno = S8001
hitsound = s8000,2
guardsound = 6,0
ground.type = high
ground.slidetime = 4
ground.velocity = -10
airguard.velocity = -5,-3
guard.velocity = -5
air.type = Low
air.velocity = -10,-6
air.juggle = 5
fall.animtype = Hard
fall = 1
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2

[State 10401, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root, stateno !=840


