;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
;Vibration blast
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,4
channel = 1

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 11,5
channel = 2

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,10
channel = 3


[State 191, blast]
type = Helper
trigger1 = AnimElem = 3
ID = 1001
stateno = 1001
postype = p1
pos = 35,-80
name = "Blast"
ownpal = 1

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;V Blast
[Statedef 1001]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1001
sprpriority = 9
hitcountpersist = 1
poweradd = ifelse(var(15) = 1, 0, 40)

[State 1001, SprPriority]
type = SprPriority
trigger1 = animtime = 0
value = 1001

[State 1001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 70,-80

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1000, 4]
type = hitdef
trigger1 = !movehit
attr = S,HA
damage = 100,5
getpower = 5
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = 6,0
ground.type = high
ground.slidetime = 4
ground.velocity = -10
airguard.velocity = -5
guard.velocity = -5
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
fall = 1
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2


[State 1001]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=1000
;---------------------------------------------------------------------------
; Special 2 Diagonal  NEW
;---------------------------------------------------------------------------
; Vibration blast
[Statedef 1002]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1002
ctrl = 0
sprpriority = 2



[State 1000, 1] ;SHOCK BLAST SOUND
type = Playsnd
trigger1 = AnimElem = 3
value = 11,4
channel = 1

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 11,5
channel = 2

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,10
channel = 3


[State 191, blast]
type = Helper
trigger1 = AnimElem = 3
ID = 1003
stateno = 1003
postype = p1
pos = 20,-100
name = "Blast"
ownpal = 1


[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;V blast
[Statedef 1003]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1003
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
time = 1
;facing = 0
pos = 50,-110

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1000, 4]
type = hitdef
trigger1 = !movehit
attr = S,HA
damage = 100,5
getpower = 5
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
trigger2 = root, stateno !=1002
;---------------------------------------------------------------------------
; Special 2 Air Diagonal  NEW
;---------------------------------------------------------------------------
; Vibration blast
[Statedef 1005]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1010
ctrl = 0
sprpriority = 2



[State 1000, 1] ;SHOCK BLAST SOUND
type = Playsnd
trigger1 = AnimElem = 3
value = 11,4
channel = 1

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 11,5
channel = 2

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,10
channel = 3


[State 191, blast]
type = Helper
trigger1 = AnimElem = 3
ID = 1006
stateno = 1006
postype = p1
pos = 20,-100
name = "Blast"
ownpal = 1


[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;-------------------------------------------------------------------------------
;V blast
[Statedef 1006]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1004
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
time = 1
;facing = 0
pos = 95,-70

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1000, 4]
type = hitdef
trigger1 = !movehit
attr = S,HA
damage = 100,5
getpower = 5
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
airguard.velocity = -5,3
guard.velocity = -5
air.type = Low
air.velocity = -10,6
air.juggle = 5
fall.animtype = Hard
fall = 1
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2

[State 10401, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root, stateno !=1005

;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
;Vibration blast
[Statedef 1011]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1011
ctrl = 0
sprpriority = 2

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,4
channel = 1

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 11,5
channel = 2

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,10
channel = 3


[State 191, blast]
type = Helper
trigger1 = AnimElem = 3
ID = 1012
stateno = 1012
postype = p1
pos = 35,-80
name = "Blast"
ownpal = 1


[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;-------------------------------------------------------------------------------
;V Blast
[Statedef 1012]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1001
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
time = 1
;facing = 0
pos = 95,-95

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1000, 4]
type = hitdef
trigger1 = !movehit
attr = S,HA
damage = 100,5
getpower = 5
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = 6,0
ground.type = high
ground.slidetime = 4
ground.velocity = -10
airguard.velocity = -5
guard.velocity = -5
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
fall = 1
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2


[State 1012]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=1011


;---------------------------------------------------------------------------
; Special 3 DOUBLE SHOCK SHOT
;---------------------------------------------------------------------------
[Statedef 1004]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1006
ctrl = 0
sprpriority = 2


[State 1000, 1] ;SHOCK SHOT
type = Playsnd
trigger1 = AnimElem = 2
value = 11,7
channel = 1

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 5
value = 11,7
channel = 2



[State 1001, Projectile]
type = Projectile
trigger1 = AnimElem = 2  || AnimElem = 5
projanim = 1008
projhitanim = 1009
Projremanim = -1
Projcancelanim = 1009
projid = 1009
Projscale = 1,1
offset = 55,-83
projpriority = 1
projsprpriority = 4
velocity = 10,0
attr = S, SP
damage = 95,1
animtype  = Hard
animtype = Medium
hitflag = MAFD
guardflag = MA
pausetime = 5,10
sparkno = S8022
sparkxy = 33, 0
guard.sparkno = S8001
hitsound = S11,8
guardsound = S101,74
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
guard.ctrltime = 20
ground.velocity = -8
guard.velocity = -8
air.velocity = -8
airguard.velocity = -8
persistant = 1
fall = 0
air.juggle = 1
air.fall = 1
air.recover = 1
persistent = 1
envshake.time = 8
envshake.ampl = 2
forcestand = 1
yaccel = .5

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Special 3 AIR SHOCK SHOT
;---------------------------------------------------------------------------

[Statedef 1014]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 610
ctrl = 0
sprpriority = 2


[State 1000, 1] ;SHOCK SHOT
type = Playsnd
trigger1 = AnimElem = 2
value = 11,7
channel = 1

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 5
value = 11,7
channel = 2

[State 1014, Projectile]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1018
projhitanim = 1009
Projremanim = 1009
Projcancelanim = 1009
projid = 1009
Projscale = 1,1
offset = 90,10
projpriority = 1
projsprpriority = 4
velocity = 7,7
attr = S, SP
damage = 15,2
animtype = Medium
hitflag = MAFD
guardflag = MA
pausetime = 5,10
sparkno = S8022
sparkxy = 33, 0
guard.sparkno = S8001
hitsound = S11,8
guardsound = S101,74
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
guard.ctrltime = 20
ground.velocity = -8
guard.velocity = -8
air.velocity = -8
airguard.velocity = -8
persistant = 1
fall = 0
air.juggle = 1
air.fall = 1
air.recover = 1
persistent = 1
envshake.time = 8
envshake.ampl = 2
forcestand = 1
yaccel = .5

[State 1014, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------------------------
;Earthquake
[Statedef 1100]
type = S
movetype= A
physics = S
juggle  = 1
poweradd = 60
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 1100, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2, =1
time = 78
ampl = 2
freq = 118

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,4
channel = 1

[State 1000, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,10
channel = 2

[State 3100, blast]
type = Helper
trigger1 = AnimElem = 3
ID =1101
stateno =1101
postype = p1
pos = 45,-10
name = "BLAST"
ownpal = 1


[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Blast to ground
[Statedef 1101]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 1101
velset = 0,0
sprpriority=3

[State 1101, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 12,8

[State 1101, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1101, AssertSpecial]
type = null;AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible


[State 1101, HitDef]
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
attr = SC, HA
damage = 15,2
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
getpower = 0,0
givepower = 24, 24
forcestand = 1
persistent = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3

[State 1101, blast]
type = Helper
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
ID =1102
stateno =1102
postype = p1
pos = 80,0
name = "DRILL"
ownpal = 1

[State 1101, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=1100

;-------------------------------------------------------------------------------
;Earthquake Rise

[Statedef 1102]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 1102
velset = 0,1
sprpriority=1


[State 1102, 1]
type = Projectile
trigger1 = AnimElem = 1
projanim = 1102
projhitanim = 1114
projcancelanim = 1114
projhits = 1
offset = 0,0
velocity = 4,0
attr = S, SP
damage = 25,3
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
ground.hittime = 1
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1


[State 1102, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=1100

;---------------------------------------------------------------------------
; Ground Pound

[StateDef 1300]
type = A
movetype = A
physics = N
anim = 1300
ctrl = 0
velset = 0,-0.5
sprpriority = 0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 11,10

[State 1300, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal
ID = 1301
stateno = 1301
pos = 0,0
postype = p1
bindtime = -1

[State 1300, Explod]
type = Explod
trigger1 = animelem = 4
anim = 3204
ID = 3204
pos = -30,50
postype = p1
removetime = -2
sprpriority = 3


[State 1301, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal
ID = 1302
stateno = 1302
pos = 0,0
postype = p1
bindtime = -1

[State 1300, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

;-------------------------------------------------------------------------------
;
[Statedef 1301]
type = C
movetype = A
physics = N
anim = 1301
velset = 0,0
sprpriority = 3

[State 1301, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 11,4

[State 1301, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1301, HitDef]
type = HitDef
trigger1 = time= 0
attr = C, NA
damage = 50
guardflag = MA
pausetime = 0,0
hitsound = -1
guardsound = -1
sparkno = -1
sparkxy = 0,0
animtype = Back
ground.type = trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2
guard.velocity = -2
air.velocity = -4,-5

[State 1301, Explod]
type = Explod
trigger1 = time = 0
anim = 812
ID = 812
pos = 0,0
postype = p1
removetime = -2
sprpriority = 2

[State 1301, 1]
type = EnvShake
trigger1 = time = 0
time = 40
freq = 110
ampl = -7
phase = 40

[State 1301, blast]
type = Helper
trigger1 = AnimElem = 3
ID =1303
stateno =1303
postype = p1
pos = 20,40
name = "RUBBLE"
ownpal = 1

[State 1301, blast]
type = Helper
trigger1 = AnimElem = 6
ID =1304
stateno =1304
postype = p1
pos = -20,40
name = "RUBBLE"
ownpal = 1

[State 1301, blast]
type = Helper
trigger1 = AnimElem = 9
ID =1303
stateno =1303
postype = p1
pos = 10,40
name = "RUBBLE"
ownpal = 1

[State 1301, blast]
type = Helper
trigger1 = AnimElem = 12
ID =1304
stateno =1304
postype = p1
pos = -10,40
name = "RUBBLE"
ownpal = 1

[State 1301, Destroyself]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=1300
;-------------------------------------------------------------------------------
;Rock Debris

[Statedef 1302]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3113
velset = 0,0
sprpriority=3

[State 1302, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 3113
projhitanim = 3113
projcancelanim = 3113
projhits = 1
offset = (3 + Random/5),(15 + Random/50)
velocity = (5 - Random/150),(-4 - Random/150)
attr = S, SP
damage = 2,0
getpower = 1
givepower = 2
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 0,0
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

[State 1302, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 3113
projhitanim = 3113
projcancelanim = 3113
projhits = 1
offset = (-3 + Random/5),(15 + Random/50)
velocity = (-5 - Random/150),(-4 - Random/150)
attr = S, SP
damage = 2,0
getpower = 1
givepower = 2
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 0,0
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

[State 1302, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=1300


;-------------------------------------------------------------------------------
;Rubble

[Statedef 1303]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 6003
velset = 1,1
sprpriority=1

[State 1301, SprPriority]
type = SprPriority
trigger1 = AnimTime = 0
value = 1303

[State 1303, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 6003
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

[State 1303, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=1300

;---------------------------------------------------------------------------
;Rubble

[Statedef 1304]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 6003
velset = 1,1
sprpriority = 9

[State 1301, SprPriority]
type = SprPriority
trigger1 = AnimTime = 0
value = 1304

[State 1304, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 6003
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

[State 1304, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=1300

;---------------------------------------------------------------------------
; Rolling Shock
[Statedef 1500]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1500

[State 1500, Width]
type = Width
trigger1 = 1
value = -10,0

[State 1500, VarSet]
type = VarSet
trigger1 = 1
v = 0
value = 0

[State 1500, 1]
type = VelSet
trigger1 = Anim = 1500
trigger1 = AnimElem = 2
x = 5
y = -4

[State 1500, 2]
type = VelAdd
trigger1 = Time > 5
y = 1


[State 1500, 4]
type = HitDef
trigger1 = Time = 0
trigger2 = Time = 10
attr = A, SA
damage = ifelse(var(15) = 1, 50, 35)
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 2
sparkxy = -10, -50
hitsound = S2, 3
guardsound = S2, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 18
ground.velocity = -8
airguard.velocity = -4,-1
air.type = Low
air.velocity = -4,-2
air.hittime = 18

[State 1500, 5]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1501

;---------------------------------------------------------------------------
;Rolling Spin
[Statedef 1501]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
velset = 0,0
anim = 1501

[State 1501, Width]
type = Width
trigger1 = 1
value = -15,0

[State 1501, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1501, 1]
type = PosAdd
trigger1 = Anim = 1501
trigger1 = AnimElem = 2
y = -15

[State 1501, 1]
type = VelSet
trigger1 = Anim = 1501
trigger1 = AnimElem = 2
x = 7
y = -2

[State 1501, 2]
type = VelAdd
trigger1 = Time > 2
y = 1

[State 1501, 3]
type = hitdef
trigger1 = !movehit
attr = S,HA
damage = ifelse(var(15) = 1, 50, 35)
getpower = ifelse(var(15) = 1, 0, 10)
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 2,15
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = 6,0
ground.type = high
ground.slidetime = 4
ground.velocity = -5
airguard.velocity = -5
air.type = Low
air.velocity = -5,1
air.juggle = 5
fall.animtype = Hard
fall = 1


[State 1501, 4]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1502

;-------------------------------------------------------------------------------
;Charging Wave
[Statedef 1502]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1502
ctrl = 0
sprpriority = 2

[State 1502, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,4
channel = 1

[State 1502, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,10
channel = 3

[State 1502, 4]
type = hitdef
trigger1 = !movehit
attr = S,HA
damage = ifelse(var(15) = 1, 50, 35)
getpower = ifelse(var(15) = 1, 0, 10)
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 2,15
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = 6,0
ground.type = high
ground.slidetime = 0
ground.velocity = -5
airguard.velocity = -5
air.type = Low
air.velocity = -5,1
air.juggle = 5
fall.animtype = Hard
fall = 1
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2

[State 1502, blast]
type = Helper
trigger1 = AnimElem = 1
ID = 1503
stateno = 1503
postype = p1
pos = 45,-100
name = "Wave Blast"
ownpal = 1


[State 1502, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Wave Blast
[Statedef 1503]
type = A
movetype = A
physics = N
ctrl = 0
anim = 6002
sprpriority = 9
hitcountpersist = 1

[State 1503, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 80,-80

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1503, 4]
type = hitdef
trigger1 = !movehit
attr = S,HA
damage = 40,4
getpower = 10
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = 6,0
ground.type = high
ground.slidetime = 4
ground.velocity = -10
airguard.velocity = -5
guard.velocity = -5
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
fall = 1
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2


[State 1503]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=1502


