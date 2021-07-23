;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = -1000
anim = 3000
ctrl = 0
sprpriority = 2


[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 4
time = 33
anim = -1
sound = S8889,0
pos = 10,-70


[State 94, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 11,17
volume = 255
channel = 1
ignorehitpause = 1
persistent = 0

[State 94, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 11,13
volume = 200
channel = 2
ignorehitpause = 1
persistent = 0

[State 94, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 11,12
volume = 200
channel = 3
ignorehitpause = 1
persistent = 0

[State 94, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 11,14
volume = 200
channel = 4
ignorehitpause = 1
persistent = 0

[State 94, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 11,15
volume = 200
channel = 5
ignorehitpause = 1
persistent = 0

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = time = 25
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 3255,EnvShake]
type = EnvShake
trigger1 = AnimElem = 4, =1
time = 218
ampl = 2
freq = 118

[State 191, blast]
type = Helper
trigger1 = AnimElem = 7
ID =3001
stateno =3001
postype = p1
pos = 35,-80
name = "BLAST"
ownpal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;BLAST
[Statedef 3001]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3032
velset = 0,0
sprpriority=3

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,-80

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, AssertSpecial]
type = null;AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible


[State 0, HitDef]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 6
trigger4 = animelem = 10
trigger5 = animelem = 15
trigger6 = animelem = 19
trigger7 = animelem = 22
attr = SC, HA
damage= 35,2
animtype = heavy
hitflag = MAF
guardflag = MA
pausetime = 4,18
getpower = 0,0
givepower = 0,0
sparkno = s8222
guard.sparkno = S8001
sparkxy = 0,0
hitsound = S100,3
guardsound = S100,2
ground.type = Low
ground.slidetime = 18
ground.hittime = 30
air.hittime = 30
guard.ctrltime = 18
ground.velocity = -3, -8.5
air.velocity = -20, -8
guard.velocity = -8
yaccel = .6
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
envshake.time = 15
envshake.ampl = 5
fall.envshake.time = 15
fall.envshake.ampl = 5
forcestand = 1
persistent = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3

[State 1205, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=3000


;---------------------------------------------------------------------------------------------
;Rictor Scale
[Statedef 3100]
type = S
movetype= A
physics = S
juggle  = 1
poweradd = -1000
velset = 0,0
anim = 3100
ctrl = 0
sprpriority = 2

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70


[State 94, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 12,15
volume = 255
channel = 1
ignorehitpause = 1
persistent = 0

[State 94, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 11,13
volume = 255
channel = 2
ignorehitpause = 1
persistent = 0

[State 94, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 11,14
volume = 255
channel = 4
ignorehitpause = 1
persistent = 0

[State 94, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 11,15
volume = 255
channel = 5
ignorehitpause = 1
persistent = 0

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = time = 25
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 3100, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1, =0
time = 218
ampl = 2
freq = 118

[State 3100, blast]
type = Helper
trigger1 = AnimElem = 3
ID =3101
stateno =3101
postype = p1
pos = 55,-10
name = "BLAST"
ownpal = 1
ignorehitpause=1


[State 3100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Blast to ground
[Statedef 3101]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3102
velset = 0,0
sprpriority=3

[State 3101, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = -1,-5

[State 3101, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3101, AssertSpecial]
type = null;AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible


[State 3101, HitDef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
attr = SC, HA
damage= 15,1
animtype = heavy
hitflag = MAF
guardflag = MA
pausetime = 4,18
getpower = 0,0
givepower = 0,0
sparkno = s8222
guard.sparkno = S8001
sparkxy = -33,-5
hitsound = S100,3
guardsound = S100,2
ground.type = Low
ground.slidetime = 18
ground.hittime = 30
air.hittime = 30
guard.ctrltime = 18
ground.velocity = -3, -8.5
air.velocity = -20, -8
guard.velocity = -8
yaccel = .6
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
envshake.time = 15
envshake.ampl = 5
fall.envshake.time = 15
fall.envshake.ampl = 5
forcestand = 1
persistent = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3

[State 3101, blast]
type = Helper
trigger1 = AnimElem = 5
trigger2 = AnimElem = 10
trigger3 = AnimElem = 15
trigger4 = AnimElem = 20
trigger5 = AnimElem = 25
trigger6 = AnimElem = 30
trigger7 = AnimElem = 35
ID =3102
stateno =3102
postype = p1
pos = 80,0
name = "DRILL"
ownpal = 1
ignorehitpause=1

[State 3101, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=3100

;-------------------------------------------------------------------------------
;Rock Rise

[Statedef 3102]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3112
velset = 1,1
sprpriority=1


[State 3102, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 3112
projhitanim = 3114
projcancelanim = 3114
projhits = 1
offset = 20,150
velocity = (0 - Random/250),(9 - Random/250)
attr = S, SP
damage = 5,1
getpower = 1
givepower = 2
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 5,5
hitsound = S8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1


[State 3102, blast]
type = Helper
trigger1 = AnimElem = 4
ID =3103
stateno =3103
postype = p1
pos = 35,-80
name = "ROCKS"
ownpal = 1
ignorehitpause=1

[State 3102, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=3100

;-------------------------------------------------------------------------------
;Rock Debris

[Statedef 3103]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3113
velset = 0,0
sprpriority=3


[State 3103, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 3113
projhitanim = 3114
projcancelanim = 3114
projhits = 1
offset = (-60 + Random/5),(52 + Random/50)
velocity = (9 - Random/250),(-1 - Random/250)
attr = S, SP
damage = 5,1
getpower = 0,0
givepower = 0,0
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 5,5
hitsound = S8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3103, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 3113
projhitanim = 3114
projcancelanim = 3114
projhits = 1
offset = (-70 + Random/5),(52 + Random/50)
velocity = (9- Random/250),(-1 - Random/250)
attr = S, SP
damage = 5,1
sparkno = s8222
guard.sparkno = S8001
getpower = 0,0
givepower = 0,0
guardflag = MA
pausetime = 5,5
hitsound = S8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3103, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 3113
projhitanim = 3114
projcancelanim = 3114
projhits = 1
offset = (-80 + Random/5),(52 + Random/50)
velocity = (9 - Random/250),(-1 - Random/250)
attr = S, SP
damage = 5,1
getpower = 0,0
givepower = 0,0
sparkno = s8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3103, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 3113
projhitanim = 3114
projcancelanim = 3114
projhits = 1
offset = (-90 + Random/5),(52 + Random/50)
velocity = (9 - Random/250),(-1 - Random/250)
attr = S, SP
damage = 5,1
getpower = 0,0
givepower = 0,0
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 5,5
hitsound = S8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3103, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 3113
projhitanim = 3114
projcancelanim = 3114
projhits = 1
offset = (-100 + Random/5),(52 + Random/50)
velocity = (9 - Random/250),(-1 - Random/250)
attr = S, SP
damage = 5,1
getpower = 0,0
givepower = 0,0
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 5,5
hitsound = S8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3103, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=3100


;---------------------------------------------------------------------------
;Reaping the Whirlwind
[Statedef 3200]
type = U
movetype= A
physics = N
juggle  = 8
poweradd = -1000
velset = 0,0
anim = 3200
ctrl = 0
sprpriority = 0
facep2 = 1

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 2
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 2
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = time = 25
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 3200, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2, =1
time = 218
ampl = 2
freq = 118

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 11,13
volume = 255
channel = 1
;ignorehitpause = 1
;persistent = 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 11,14
volume = 255
channel = 2
;ignorehitpause = 1
;persistent = 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 11,15
volume = 255
channel = 3
ignorehitpause = 1
persistent = 0

[State 3200, 1]
type = Playsnd
trigger1 = Time = 1
value = 12,21

[State 3200, wind]
type = Helper
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
trigger3 = AnimElem = 19
trigger4 = AnimElem = 25
trigger5 = AnimElem = 31
trigger6 = AnimElem = 37
ID =3201
stateno =3201
postype = p1
pos = 5,0
name = "WIND"
ownpal = 1
ignorehitpause=1

[State 3200, blast]
type = Helper
trigger1 = AnimElem = 4
ID = 3204
stateno = 3204
postype = p1
pos = -5,0
name = "BLAST"
ownpal = 1
ignorehitpause=1

[State 3200, ChangeState]
type = Helper
trigger1 = AnimElem = 6
ID = 3206
stateno = 3206
postype = p1
pos = 20,20
name = "RISE"
ownpal = 1
ignorehitpause=1

[State 3200, ChangeState]
type = Helper
trigger1 = AnimElem = 6
ID = 3207
stateno = 3207
postype = p1
pos = 0,40
name = "RUBBLE"
ownpal = 1
ignorehitpause=1

[State 3200, ChangeState]
type = Helper
trigger1 = AnimElem = 6
ID = 3208
stateno = 3208
postype = p1
pos = -20,20
name = "RISE"
ownpal = 1
ignorehitpause=1


[State 3200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 7705
ctrl = 1

;---------------------------------------------------------------------------
; Wind
[Statedef 3201]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3201
velset = 0,0
sprpriority=3

[State 3201]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger1 = moveguarded < 1
damage = 10,1
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 0,0;7,7
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S8000,2
guardsound = S4,0
sparkno = S8222
guard.sparkno = S8001
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3,-11
air.velocity = -3,-11
air.juggle = 8
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
ground.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7
fall = 1
air.fall = 1
getpower = 0,0
givepower = 0,0

[State 3201]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0


[State 3201, blown wind]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
ID =3202
stateno =3202
postype = p1
pos = 0,0
name = "WIND BLOWN"
ownpal = 1
ignorehitpause=1

[State 3201, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=3200

;-------------------------------------------------------------------------------
; wind blown

[Statedef 3202]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3202
velset = 1,1
sprpriority=1

[State 3202]
type = VelAdd
trigger1 = AnimElem = 4, >= 0
y = 1.4

[State 3202, rocks]
type = Helper
trigger1 = AnimElem = 4
ID =3203
stateno =3203
postype = p1
pos = 35,-80
name = "ROCKS"
ownpal = 1
ignorehitpause=1

[State 3202, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=3200


;-------------------------------------------------------------------------------
;Rock Debris

[Statedef 3203]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3113
velset = 0,0
sprpriority=3


[State 3203, 1]
type = Projectile
trigger1 = AnimElem = 1
projanim = 3113
projhitanim = 3113
projcancelanim = 3113
projhits = 1
offset = (-60 + Random/5),(52 + Random/50)
velocity = (9 - Random/250),(-1 - Random/250)
attr = S, SP
damage = 9,1
getpower = 0,0
givepower = 0,0
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 0,0;5,5
hitsound = 8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3203, 1]
type = Projectile
trigger1 = AnimElem = 1
projanim = 3113
projhitanim = 3113
projcancelanim = 3113
projhits = 1
offset = (70 + Random/5),(90 + Random/50)
velocity = (4 - Random/250),(-4 - Random/250)
attr = S, SP
damage = 9,0
sparkno = s8222
guard.sparkno = S8001
getpower = 0,0
givepower = 0,0
guardflag = MA
pausetime = 0,0;5,5
hitsound = 8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3203, 1]
type = Projectile
trigger1 = AnimElem = 1
projanim = 3113
projhitanim = 3113
projcancelanim = 3113
projhits = 1
offset = (-70 + Random/5),(15 + Random/50)
velocity = (-4 - Random/250),(-4 - Random/250)
attr = S, SP
damage = 9,0
getpower = 0,0
givepower = 0,0
sparkno = s8222
guard.sparkno = S8001
guardflag = MA
pausetime = 0,0;5,5
hitsound = 8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3203, 1]
type = Projectile
trigger1 = AnimElem = 1
projanim = 3113
projhitanim = 3113
projcancelanim = 3113
projhits = 1
offset = (90 + Random/5),(15 + Random/50)
velocity = (9 - Random/250),(1 - Random/250)
attr = S, SP
damage = 9,0
getpower = 0,0
givepower = 0,0
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 0,0;5,5
hitsound = 8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3203, 1]
type = Projectile
trigger1 = AnimElem = 1
projanim = 3113
projhitanim = 3113
projcancelanim = 3113
projhits = 1
offset = (-90 + Random/5),(15 + Random/50)
velocity = (-9 - Random/250),(-1 - Random/250)
attr = S, SP
damage = 9,0
getpower = 0,0
givepower = 0,0
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 0,0;5,5
hitsound = s8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3203, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=3200

;-------------------------------------------------------------------------------
;Blast to ground
[Statedef 3204]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3204
velset = 0,0
sprpriority=0

[State 3101, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = -30,0

[State 3101, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3101, AssertSpecial]
type = null;AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 3101, HitDef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
trigger9 = animelem = 9
trigger10 = animelem = 10
trigger11 = animelem = 11
trigger12 = animelem = 12
attr = SC, HA
damage= 15,1
animtype = heavy
hitflag = MAF
guardflag = MA
pausetime = 4,18
getpower = 0,0
givepower = 0,0
sparkno = s8222
guard.sparkno = S8001
sparkxy = -33,-5
hitsound = s8000,5
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 30
air.hittime = 30
guard.ctrltime = 18
ground.velocity = -3, -8.5
air.velocity = -20, -8
guard.velocity = -8
yaccel = .6
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
envshake.time = 15
envshake.ampl = 5
fall.envshake.time = 15
fall.envshake.ampl = 5
forcestand = 1
persistent = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3


[State 3101, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=3200

;-------------------------------------------------------------------------------
;Rock Rise

[Statedef 3206]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3112
velset = 0,0
sprpriority=1

[State 3206, SprPriority]
type = SprPriority
trigger1 = AnimTime = 0
value = 3206

[State 3206, 1]
type = Projectile
trigger1 = AnimElem = 1
projanim = 3112
projhitanim = 3114
projcancelanim = 3114
projhits = 1
offset = 20,150
velocity = (0 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,1
getpower = 0,0
givepower = 0,0
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 5,5
hitsound = s8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3206, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=3200

;---------------------------------------------------------------------------
;Rubble

[Statedef 3207]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 6003
velset = 0,0
sprpriority = 9

[State 3207, SprPriority]
type = SprPriority
trigger1 = AnimTime = 0
value = 3207

[State 3207, 1]
type = Projectile
trigger1 = AnimElem = 1
projanim = 6003
projhitanim = 3114
projcancelanim = 3114
projhits = 1
offset = 0,150
velocity = (0 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,1
getpower = 0,0
givepower = 0,0
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 5,5
hitsound = s8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3207, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=3200

;---------------------------------------------------------------------------
;Rock Rise

[Statedef 3208]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3111
velset = 0,0
sprpriority=1

[State 3208, SprPriority]
type = SprPriority
trigger1 = AnimTime = 0
value = 3208

[State 3208, 1]
type = Projectile
trigger1 = AnimElem = 1
projanim = 3112
projhitanim = 3114
projcancelanim = 3114
projhits = 1
offset = 20,150
velocity = (0 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,1
getpower = 0,0
givepower = 0,0
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 5,5
hitsound = s8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3208, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=3200

;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
; Dizzy
[Statedef 7705]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3205
ctrl = 0
sprpriority = 2


[State 7705, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------
; Hyper 4

[Statedef 3060]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = -1000
anim = 195
ctrl = 0
sprpriority = 2


[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 4
time = 33
anim = -1
sound = S8889,0
pos = 10,-70


[State 94, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 12,13
volume = 255
channel = 1
ignorehitpause = 1
persistent = 0

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = time = 25
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 3060, 6]
type = VarSet
trigger1 = time = 10
v = 15
value = 1

[State 3060, 7]
type = VarSet
trigger1 = time = 10
v = 16
value = 800

[State 3060, PalFX]
type = PalFX
trigger1 = var(15) = 1
time = 800
add = 0, 35, 75
mul = 200, 220, 255
sinadd = 5,255,255,55
trans = 1
ignorehitpause = 1

[State 3060, 8]
type = ChangeState
trigger1 = time = 19
value = 0
ctrl = 1


