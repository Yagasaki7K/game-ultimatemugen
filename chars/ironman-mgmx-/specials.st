;---------------------------------------------------------------------------
;-------------SPECIALS------------------------------------------------------
;---------------------------------------------------------------------------
;UNI BEAM
;----------------------------------------------------
[Statedef 1000]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 1



[State 1000, snd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,5

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 22,2


[State 1000, xplod]
type = explod
triggerall = !NumExplod(1002)
trigger1 = animelem = 5
ID = 1002
anim = 1002
name = "unibeam2Y"
postype = P1
pos = 0,0
ownpal = 1
bindtime= -1
sprpriority = 6
facing = 1

[State 1000, helper]
type = Helper
triggerall = !Numhelper(1005)
trigger1 = AnimElem = 7
name = "unibeam"
StateNo = 1005
postype = p1
pos = 0, -0
ownpal = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------- Beam---------------------------
[Statedef 1005]
type = A
movetype = A
physics = N
anim =1001
juggle = 4
hitdefpersist = 1
sprpriority = 2

[State 1005, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1005, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1005
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1005, 6]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1005, beam]
type = HitDef
trigger1 = StateNo = 1000
trigger2 = animelem = 1
trigger3 = animelem = 4
trigger4 = animelem = 8
trigger5 = animelem = 12
trigger6 = animelem = 16
trigger7 = animelem = 20
attr = S, SP
projID = 1001
projanim = 1001
projhitanim = 1001
damage = 18,1
hitflag= MAFD
hitsound   = S2,2
guardflag = MA
pausetime = 0,9
sparkno = S30002
sparkxy = -10,-65
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2
air.animtype = Back
air.velocity = -2.5,-5
air.hittime = 20
air.fall = 1
givepower = 50
getpower = 60
sprpriority = 2
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 1005, beam]
type = HitDef
trigger1 = StateNo = 1000
trigger2 = animelem = 24
attr = S, SP
projID = 1001
projanim = 1001
projhitanim = 1001
damage = 18,1
hitflag= MAFD
hitsound   = S2,2
guardflag = MA
pausetime = 0,9
sparkno = S30002
sparkxy = -10,-65
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3.5,-7
air.hittime = 20
air.fall = 1
givepower = 50
getpower = 60
sprpriority = 2
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

;---------------------------------------------------------------------
;Air UniBeam
[Statedef 1350]
type    = A
movetype= A
physics = A
poweradd= 100
anim = 1350
ctrl = 0
sprpriority = 1

[State 1000, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30,5

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 22,2

[State 1000, xplod]
type = explod
triggerall = !NumExplod(1012)
trigger1 = animelem = 2
ID = 1012
anim = 1012
name = "unibeam2Y"
postype = P1
pos = 0, 0
ownpal = 1
bindtime= -1
time = 32
sprpriority = 6
facing = 1

[State 1350, x]
type = PosFreeze
trigger1 = time = [0,15]

[State 1350, y]
type = VelMul
trigger1 = Time > 15
x = .02
y = .05

[State 1350, StateTypeSet]
type = StateTypeSet
trigger1 = var(10) = 1
physics = N

[State 1350, 2]
type = RemoveExplod
trigger1 = time = 0

[State 1350, snd]
type = PlaySnd
trigger1 = time = 0
value = 11, 2

[State 1350, sndx]
type = PlaySnd
trigger1 = time = 0
value = 0, 2
channel = 0


[State 1350, sndP]
type = PlaySnd
trigger1 = animelem = 2
value = 30,1

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


[State 1350, helper]
type = Helper
triggerall = !Numhelper(1355)
trigger1 = AnimElem = 2
name = "Fire"
StateNo = 1355
postype = p1
ownpal = 1

[State 1350, Change to Fall]
type = ChangeState
trigger1 = Time = 36
value = 660
ctrl = 1

;------------ BEam2----------------
[Statedef 1355]
type = A
movetype = A
physics = N
anim = 1001
juggle = 4
hitdefpersist = 1
sprpriority = 2

[State 1355, 1]
type = BindToParent
trigger1 = 1
pos = -20, -32

[State 1355, snd]
type = PlaySnd
trigger1 = time = 0
value = 15, 0

[State 1355, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1355, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1005
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 1355, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1355, 6]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1355, beam]
type = HitDef
trigger1 = StateNo = 1350
trigger2 = animelem = 1
trigger3 = animelem = 4
trigger4 = animelem = 8
trigger5 = animelem = 12
trigger6 = animelem = 16
trigger7 = animelem = 20
trigger8 = animelem = 24
attr = S, SP
projID = 1001
projanim = 1001
projhitanim = 1001
damage = 15,1
hitflag= MAFD
hitsound   = S2,2
guardflag = MA
pausetime = 0,9
sparkno = S30002
sparkxy = -10,-70
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2
air.animtype = Back
air.velocity = -2.5,-5
air.hittime = 20
air.fall = 1
givepower = 50
getpower = 60
sprpriority = 2
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 1355, destroy]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent, MoveType = H

;---------------------------------------------------------------------------
; Air Unibeam
[Statedef 1300]
type    = A
movetype= A
physics = A
poweradd= 100
anim = 3150
ctrl = 0
sprpriority = 1

[State 1300, x]
type = PosFreeze
trigger1 = time = [0,15]

[State 1300, y]
type = VelMul
trigger1 = Time > 15
x = .02
y = .05

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = var(10) = 1
physics = N

[State 1300, 2]
type = RemoveExplod
trigger1 = time = 0

[State 1300, snd]
type = PlaySnd
trigger1 = animelem = 4
value = 30, 7

[State 1300, sndx]
type = PlaySnd
trigger1 = time = 0
value = 21, 2

[State 1300, helper]
type = Helper
triggerall = !Numhelper(1305)
trigger1 = AnimElem = 7
name = "Beam"
StateNo = 1305
postype = p1
sprpriority = 4
pos = -100, -40
ownpal = 1

[State 1300, helper]
type = Helper
triggerall = !Numhelper(1305)
trigger1 = AnimElem = 7
name = "Beam"
StateNo = 1305
postype = p1
sprpriority = 4
pos = -40, -40
ownpal = 1

[State 1300, sndP]
type = PlaySnd
trigger1 = animelem = 2
value = 30,1

[State 3150, propulsor]
type = Explod
triggerall = !NumExplod(3151)
trigger1 = animelem = 2
anim = 3151
id = 3151
sprpriority = -4
supermove = 1
postype = P1
pos = 80,0
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = 18


[State 3150, propulsor2]
type = Explod
triggerall = !NumExplod(3152)
trigger1 = animelem = 2
anim = 3151
id = 3152
sprpriority = -4
supermove = 1
postype = P1
pos = -2,0
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = 18

[State 1300, Change to Fall]
type = ChangeState
trigger1 = Time = 22
value = 660
ctrl = 1

;------------ Beam----------------
[statedef 1305]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1301
sprpriority = 4
velset = 8,4

[State 1305, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1305, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1305
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 1305, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1305, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 1305, hit]
type = HitDef
trigger1 = animelem = 1
attr = S, SP
damage = 50,4
hitflag= MAFD
priority = 4
hitsound   = s2,2
guardflag = MA
pausetime = 0,9
sparkno = S30002
sparkxy = -10,-10
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2
air.animtype = Back
air.velocity = -2.5,-5
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8







[state 1305, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 1305, destroy]
type = Destroyself
trigger1 = time = 70


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Plasma Attack
[Statedef 1100]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0

[State 1100, 0]
type = ChangeAnim
trigger1 = command = "holdpunch" && !time
value = 1100

[State 1105,sound]
type = Playsnd
trigger1 = time = 10
value = 30,9

[State 1105,sound]
type = Playsnd
trigger1 = time = 90
value = 31,1

[State 1100, explode shinning]
type = Explod
triggerall = !NumExplod(1108)
trigger1 = time = 25
sprpriority = 7
id = 1108
anim = 1108
postype = P1
pos = 0,0
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = -1

[State 1100, a]
type = ChangeState
trigger1 = !NumExplod(1108) && command != "holdpunch"
value = 1105
ctrl = 0

[State 1100, a0]
type = removeexplod
trigger1 = command != "holdpunch"
id = 1108

[State 1100, b]
type = ChangeState
triggerall = NumExplod(1108)
trigger1 = time = 75
value = 1106
ctrl = 0



;-------------------------------------------------
;Normal Plasma
[Statedef 1105]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1101
ctrl = 0
sprpriority = 2

[State 1105, c]
type = removeexplod
trigger1 = !time
id = 1108

[State 1105,sound]
type = Playsnd
trigger1 = time = 4
value = 22,0

[State 1105, xplod]
type = explod
triggerall = !NumExplod(1106)
trigger1 = animelem = 4
ID = 1106
anim = 1106
name = "unibeamYa"
postype = P1
pos = 0, 0
ownpal = 1
bindtime= -1
sprpriority = 6
facing = 1



[State 1105, helper]
type = Helper
triggerall = !Numhelper(1102)
trigger1 = StateNo = 1105
trigger1 = animelem = 6
ID = 1102
pos = 0,-8
stateno = 1102
helpertype = normal
name = "plasma"
keyctrl = 0
ownpal = 1

[State 1105, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------Plasma--------
[statedef 1102]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1102
velset = 6,0

[state 1102, snd]
type = playsnd
trigger1 = time = 0
value = 30,3

[State 1102, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1102, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1102
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 1102, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1102, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 1102, hit]
type = HitDef
trigger1 = animelem = 1
attr = A, SP
hitflag = MAF
guardflag = MA
pausetime = 2, 9
damage = 100,10
animtype = Back
hitsound = s2, 2
sparkno= S30002
sparkxy = -10,-70
guardsound = S0, 12
ground.velocity = -8, -6
air.velocity = -8, -3.2
guard.slidetime = 18
guard.hittime = 26
guard.velocity = -12
sprpriority = 2
air.hittime = 20
air.fall = 1
fall.recover = 0
givepower = 50
getpower = 60
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8



[state 1210, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 1210, destroy]
type = Destroyself
trigger1 = time = 70


;--Enhaced Plasma---------------------
[Statedef 1106]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1101
ctrl = 0
sprpriority = 2

[State 1106, c]
type = removeexplod
trigger1 = !time
id = 1108

[State 1106,sound]
type = Playsnd
trigger1 = time = 4
value = 22,0

[State 1106, xplod]
type = explod
triggerall = !NumExplod(1107)
trigger1 = animelem = 4
ID = 1107
anim = 1107
name = "unibeamYa"
postype = P1
pos = 0, 0
ownpal = 1
bindtime= -1
sprpriority = 6
facing = 1



[State 1106, helper]
type = Helper
triggerall = !Numhelper(1103)
trigger1 = StateNo = 1106
trigger1 = animelem = 4
ID = 1103
pos = 0,-8
stateno = 1103
helpertype = normal
name = "plasma"
keyctrl = 0
ownpal = 1

[State 1106, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------Plasma Blue Red--------
[statedef 1103]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1103
velset = 10,0

[state 1103, snd]
type = playsnd
trigger1 = time = 0
value = 30,3

[State 1103, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1103, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1102
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 1103, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1103, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 1103, hit]
type = HitDef
trigger1 = animelem = 1
attr = A, SP
hitflag = MAF
guardflag = MA
pausetime = 2, 9
damage = 120, 12
animtype = Back
sparkno = S30002
sparkxy = -10,-70
guard.sparkno=-1
hitsound = s2, 2
guardsound = S0, 12
ground.velocity = -8, -6
air.velocity = -8, -3.2
guard.slidetime = 18
guard.hittime = 26
guard.velocity = -12
sprpriority = 2
air.hittime = 20
air.fall = 1
fall.recover = 0
givepower = 50
getpower = 60
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[state 1210, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 1210, destroy]
type = Destroyself
trigger1 = time = 70


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Rocket Uppercut
[Statedef 1200]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0

[State 1200, 0]
type = ChangeAnim
trigger1 = command = "holdpunch" && !time
value = 1200

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
triggerall = !NumExplod(1202)
trigger1 = time = 25
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
trigger1 = !NumExplod(1202) && command != "holdpunch"
value = 1205
ctrl = 0

[State 1200, a0]
type = removeexplod
trigger1 = command != "holdpunch"
id = 1202

[State 1100, b]
type = ChangeState
triggerall = NumExplod(1202)
trigger1 = time = 75
value = 1206
ctrl = 0

;-------------------------------------------------
;Normal Uppercut
[Statedef 1205]
type    = A
movetype= A
physics = A
poweradd= 100
velset = 0,0
anim = 1201
ctrl = 0
juggle =5
sprpriority = 2

[State 1205, c]
type = removeexplod
trigger1 = !time
id = 1202

[State 1205,sound]
type = Playsnd
trigger1 = time = 0
value = 22,3



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
attr = S, SA
animtype  = Heavy
damage    = 100,10
guardflag = MA
hitflag = MAF
pausetime = 10,7
priority = 7, Hit
sparkno = S30002
sparkxy = -10,-70
guard.sparkno=-1
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5,-9
air.velocity = -6, -11
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 1105, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;-----------------------
;Charged Uppercut
[Statedef 1206]
type    = A
movetype= A
physics = N
poweradd= 100
velset = 0,0
anim = 1205
juggle =8
ctrl = 0
sprpriority = 2

[State 1206, c]
type = removeexplod
trigger1 = !time
id = 1202

[State 1206,sound]
type = Playsnd
trigger1 = time = 0
value = 22,3

[State 1206, spark]
type = Explod
triggerall = !NumExplod(1203)
trigger1 = animelem = 1
anim = 1203
id = 1203
supermove = 1
ontop = 1
bindtime=-1
removeongethit = 1

[State 1206, spark2]
type = Explod
triggerall = !NumExplod(1204)
trigger1 = animelem = 2
id= 1204
anim = 1204
supermove = 1
ontop = 1
bindtime=-1
time= 22
removeongethit = 1

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



[State 1206, 5]
type = Velset
trigger1 = AnimElem = 1
x = 6.3
y = -4.8
;x = 2.3
;y = -4.8

[State 1206, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
attr = S, SA
animtype  = Heavy
damage    = 14,1
guardflag = MA
hitflag = MAF
pausetime = 8,7
priority = 7, Hit
sparkno = S30002
sparkxy = -10,-70
guard.sparkno=-1
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -.5,-7
air.velocity = -.5, -7
fall = 1
air.fall = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 1105, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 621
ctrl = 1
;---------------------------------------------------------------------------
; FLY MODE
;---------------------------------------------------------------------------

[Statedef 9000]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,-3
anim = 4004
juggle = 0
poweradd = -1

;------------------------
; FLY TIMER
[State 1032, 7]
type = VarSet
trigger1 = Time = 0
V = 5
Value = 1

;----------------
[State 9700, 4]
type = Projectile
trigger1 = time = 0
trigger1 = pos Y < -10
projanim = 8931
projhitanim = 8931
projpriority = 1
projshadow = -1
projheightbound = 0,-10
offset = 0,0
velocity = 0,10

;----------------
[State 9700, 4]
type = Projectile
trigger1 = time = 0
trigger1 = pos Y >= -10
projanim = 155
projhitanim = 8931
projpriority = 1
projshadow = -1
projheightbound = 0,-10
offset = 0,0
velocity = 0,-1

[State 9000, 1]
type = Velset
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
y = -3

[State 9000, 2]
trigger1 = Animtime = 0
type = ChangeState
value = 9001
ctrl = 1

[State 9000, 4]
type = PlaySnd
trigger1 = StateNo = 9000
trigger1 = animelem = 2
value = 30,1

[State 9000, 4]
type = PlaySnd
trigger1 = animelem = 1
value = 20,10
channel=2

[State 181, ground dust]
type = Explod
triggerall = pos y >= -2
triggerall = !NumExplod(61)
trigger1 = StateNo = 9000
trigger1 = animelem = 1
anim = 61
id = 61
postype = P1
pos = 0,10
ownpal = 1
sprpriority = 4
facing = 1
time  = 40


;----------------------------------
[Statedef 9001]
type    = A
movetype= I
ctrl = 0
anim = 4001
velset = 0,0,
poweradd = 1

[State 818, CHARGE]
type = PowerAdd
triggerall = stateno = 9001
trigger1 = power != 3000
trigger1 = power <= 1000
trigger1 = power > 0
value = 6

[State 818, CHARGE]
type = PowerAdd
triggerall = stateno = 9001
trigger1 = power != 3000
trigger1 = power <= 2000
trigger1 = power > 1000
value = 4

[State 818, CHARGE]
type = PowerAdd
triggerall = stateno = 9001
trigger1 = power != 3000
trigger1 = power <= 3000
trigger1 = power > 2000
value = 2

[State 9001, Stop1]
type = VelSet
trigger1 = command != "holdfwd"
trigger2 = command != "holdback"
trigger3 = command != "holdup"
trigger4 = command != "holddown"
trigger5 = Pos Y < -205
trigger6 = Pos Y > -40
x = 0
y = 0

[State 9001, Stop2]
type = ChangeAnim
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
triggerall = anim != 4001
value = 4001

[State 9001, GoUpAnim]
type = ChangeAnim
trigger1 = command = "holdup"
trigger1 = Anim != 4000
value = 4000

[State 9001, GoDownAnim]
type = ChangeAnim
trigger1 = command = "holddown"
trigger1 = Anim != 4001
value = 4001

[State 9001, GoBackAnim]
type = ChangeAnim
trigger1 = command = "holdback"
trigger1 = Anim != 4002
triggerall = command != "holdup"
triggerall = command != "holddown"
value = 4002

[State 9001, GoForwardAnim]
type = ChangeAnim
trigger1 = command = "holdfwd"
trigger1 = Anim != 4003
triggerall = command != "holdup"
triggerall = command != "holddown"
value = 4003


[State 9001,Turn]
type = Turn
trigger1 = P2Dist X < -10

[State 9001,Land]
type = ChangeState
trigger1 = Pos Y >= 0
value = 660
ctrl = 1

[State 9001,GoUp2]
type = VelSet
trigger1 = command = "holdup"
y = -4

[State 9001,GoDown2]
type = VelSet
trigger1 = command = "holddown"
y = 4

[State 9001,GoBack2]
type = VelSet
trigger1 = command = "holdback"
x = -4

[State 9001,GoFwd2]
type = VelSet
trigger1 = command = "holdfwd"
x = 4

[State 9001, UpBorder]
type = PosSet
trigger1 = Pos Y < -280
y = -280

[State 9001, UpBorder]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 9001, 1a]
type = VarSet
trigger1 = time = 0
;trigger1 = PrevStateNo != 9000
v = 15
value = 0

;---------------------------------------------------------------------------
; Uni Air
[State 9001, 5]
type = ChangeState
trigger1 = var(8) = 0 && command = "uni_air"
value = 99130
ctrl = 1

[State 9001, 5]
type = ChangeState
trigger1 = var(8) != 0 && command = "uni_air"
value = 98115
ctrl = 1

;---------------------------------------------------------------------------
;Air Uni Beam
[State 9001, 5]
type = ChangeState
trigger1 = var(8) = 0 && command = "uni_beam"
value = 991350
ctrl = 1

[State 9001, Beam X]
type = ChangeState
trigger1 = var(8) != 0 && command = "uni_beam"
value = 98105
ctrl = 1

;---------------------------------------------------------------------------
; FLY MODE END
[State 9001, 61]
type = ChangeState
trigger1 = Var(5) <= 0
trigger2 = Win = 1
trigger3 = Lose = 1
trigger4 = power = 3000
value = 660
ctrl = 1

[State 9001, 62]
type = VarSet
trigger1 = Win = 1
trigger2 = Lose = 1
v =15
value = 0


;---------------------------------------------------------------------------
;Z up
[State 9001, 6]
type = ChangeState
trigger1 = command =  "up_z"
trigger2 = stateno = 99600 && MoveContact
trigger3 = stateno = 99601 && MoveContact
trigger4 = stateno = 99602 && MoveContact
trigger5 = stateno = 99603 && MoveContact
trigger6 = stateno = 99604 && MoveContact
value = 99606
ctrl = 1

;Z down
[State 9001, 7]
type = ChangeState
trigger1 = command =  "down_z"
trigger2 = stateno = 99600 && MoveContact
trigger3 = stateno = 99601 && MoveContact
trigger4 = stateno = 99602 && MoveContact
trigger5 = stateno = 99603 && MoveContact
trigger6 = stateno = 99604 && MoveContact
value = 99607
ctrl = 1

; C down
[State 9001, 7]
type = ChangeState
trigger1 = command = "down_c"
trigger2 = stateno = 99600 && MoveContact
trigger3 = stateno = 99601 && MoveContact
trigger4 = stateno = 99602 && MoveContact
trigger5 = stateno = 99603 && MoveContact
trigger6 = stateno = 99604 && MoveContact
value = 99608
ctrl = 1

;---------------------------------------------------------------------------
; X button
[State 9001, 6]
trigger1 = command = "x"
type = ChangeState
value = 99600
ctrl = 1

;---------------------------------------------------------------------------
; Y button
[State 9001, 6]
type = ChangeState
trigger1 = command = "y"
trigger2 = stateno = 99600 && MoveContact
trigger3 = stateno = 99601 && MoveContact
value = 99602
ctrl = 1

;---------------------------------------------------------------------------
; Z button
[State 9001, 6]
type = ChangeState
trigger1 = command = "z"
trigger2 = stateno = 99600 && MoveContact
trigger3 = stateno = 99601 && MoveContact
trigger4 = stateno = 99602 && MoveContact
trigger5 = stateno = 99603 && MoveContact
trigger6 = stateno = 99605 && MoveContact
value = 99604
ctrl = 1

;---------------------------------------------------------------------------
; A button
[State 9001, 6]
type = ChangeState
trigger1 = command = "a"
trigger2 = stateno = 99600 && MoveContact
value = 99601
ctrl = 1

;---------------------------------------------------------------------------
; B button
[State 9001, 6]
type = ChangeState
trigger1 = command = "b"
trigger2 = stateno = 99600 && MoveContact
trigger3 = stateno = 99601 && MoveContact
trigger4 = stateno = 99602 && MoveContact
value = 99603
ctrl = 1

;---------------------------------------------------------------------------
; C button
[State 9001, 6]
type = ChangeState
trigger1 = command = "c"
trigger2 = stateno = 99600 && MoveContact
trigger3 = stateno = 99601 && MoveContact
trigger4 = stateno = 99602 && MoveContact
trigger5 = stateno = 99603 && MoveContact
trigger6 = stateno = 99604 && MoveContact
trigger7 = stateno = 99605 && MoveContact
trigger8 = stateno = 99606 && MoveContact
value = 99605
ctrl = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------
;Air UniBeam
[Statedef 991350]
type    = A
movetype= A
physics = A
poweradd= 100
anim = 1350
ctrl = 0
sprpriority = 1

[State 1000, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30,5

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 22,2

[State 1000, xplod]
type = explod
triggerall = !NumExplod(1012)
trigger1 = animelem = 2
ID = 1012
anim = 1012
name = "unibeam2Y"
postype = P1
pos = 0, 0
ownpal = 1
bindtime= -1
time = 32
sprpriority = 6
facing = 1

[State 1350, x]
type = PosFreeze
trigger1 = time = [0,15]

[State 1350, y]
type = VelMul
trigger1 = Time > 15
x = .02
y = .05

[State 1350, StateTypeSet]
type = StateTypeSet
trigger1 = var(10) = 1
physics = N

[State 1350, 2]
type = RemoveExplod
trigger1 = time = 0

[State 1350, snd]
type = PlaySnd
trigger1 = time = 0
value = 11, 2

[State 1350, sndx]
type = PlaySnd
trigger1 = time = 0
value = 0, 2
channel = 0


[State 1350, sndP]
type = PlaySnd
trigger1 = animelem = 2
value = 30,1

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


[State 1350, helper]
type = Helper
triggerall = !Numhelper(1355)
trigger1 = AnimElem = 2
name = "Fire"
StateNo = 1355
postype = p1
ownpal = 1

[State 1350, Change to Fall]
type = ChangeState
trigger1 = Time = 36
value = 9001
ctrl = 1

;

;---------------------------------------------------------------------------
;FLY_X
[Statedef 99600]
type    = A
movetype= A
juggle  = 1
poweradd= 11
ctrl = 0
anim = 600
velset= 0,0
sprpriority = 2


[State 600, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 600, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0


[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 25
animtype = light
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 7,8
sparkno = -1
guard.sparkno=-1
sparkxy = -1
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -4
guard.velocity = -10.6
airguard.velocity = -6
air.type = low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-7.5,-6)
down.velocity = -4, -4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
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
persistent=0
ownpal = 1

[State 600, 3]
type = CtrlSet
trigger1 = Time = 17
value = 1


[State 610, xplod]
type = explod
triggerall = !NumExplod(605)
trigger1 = animelem = 2
ID = 605
anim =605
name = "unibeamh"
postype = P1
pos = 0,0
ownpal = 1
removetime = 9
removeongethit =1
bindtime= -1
sprpriority = 6
facing = 1

[State 610, 1x]
type = PlaySnd
trigger1 =  animelem = 2
value = 30,4

[State 600, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1

;---------------------------------------------------------------------------
;FLY_Y
[Statedef 99602]
type    = A
movetype= A
juggle  = 1
poweradd= 65
ctrl = 0
anim = 610
velset= 0,0
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 610, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1


[State 610, 1x]
type = PlaySnd
trigger1 = time = 0
value = 30,4

[State 610, uni]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 52
animtype = Medium
guardflag = HA
hitflag = MAFD
;priority = 4, Hit
sprpriority = 2
pausetime = 2,12
sparkno = -1
guard.sparkno=-1
sparkxy = -10,-55
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 14
ground.hittime = 15
ground.velocity = -9,1
guard.slidetime = 13
guard.velocity = -8.6
airguard.velocity = -5,0
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-7.5,-6)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 610, xplod]
type = explod
triggerall = !NumExplod(615)
trigger1 = animelem = 2
ID = 615
anim =615
name = "unibeamY"
postype = P1
pos = 0,0
ownpal = 1
removetime = 11
bindtime= -1
sprpriority = 6
facing = 1


[State 777, hsp]
type = helper
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
persistent=0
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
persistent=0
ownpal = 1

[State 99602, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1

;---------------------------------------------------------------------------
;FLY_Z
[Statedef 99604]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 620
velset= 0,0
poweradd = 60

[State 620, 2x]
type = PlaySnd
trigger1 = time = 0
value = 30,11
channel=0

[State 620, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 82
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 0,12
sparkno = -1
guard.sparkno=-1
sparkxy = -1
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -7,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -7,-2
air.hittime = 20
yaccel = 0.5
down.velocity = -4,-4
p2facing = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 620, xplod]
type = explod
triggerall = !NumExplod(621)
trigger1 = animelem = 1
ID = 621
anim =621
name = "unibeamYo"
postype = P1
pos = -3,0
ownpal = 1
removetime = 15
bindtime= -1
removeongethit =1
sprpriority = 6
facing = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
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
persistent=0
ownpal = 1

[State 620, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 620, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,2

[State 99604, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1
;----------------------------------------------------------------------------
;FLY_Z-UP
[Statedef 99606]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 630
velset= 0,0
poweradd = 60

[State 630, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 82, 0
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 6, Hit
pausetime = 12, 12
sparkno = -1
guard.sparkno=-1
sparkxy = -1
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -5,-8
air.hittime = 20
yaccel = 0.5
down.velocity = -4,-4
p2facing = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 640, xplod]
type = explod
triggerall = !NumExplod(631)
trigger1 = animelem = 1
ID = 631
anim =631
name = "unibeamYuo"
postype = P1
pos = -3,0
ownpal = 1
removetime = 15
removeongethit =1
bindtime= -1
sprpriority = 6
facing = 1


[State 630, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 630, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,2

[State 630, 2x]
type = PlaySnd
trigger1 = time = 0
value = 30,11


[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
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
persistent=0
ownpal = 1

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1

;---------------------------------------------------------------------------
;FLY_Z_DOWN
[Statedef 99607]
type    = A
movetype= A
juggle  = 1
ctrl = 0
anim = 640
velset= 0,0
poweradd = 60

[State 640, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 82, 0
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 6, Hit
pausetime = 0, 12
sparkno = -1
guard.sparkno=-1
sparkxy = -5, -5000
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -8 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -7,13
air.hittime = 20
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 640, xplod]
type = explod
triggerall = !NumExplod(641)
trigger1 = animelem = 1
ID = 641
anim =641
name = "unibeamYfuo"
postype = P1
pos = -3,0
ownpal = 1
removetime = 14
bindtime= -1
removeongethit =1
sprpriority = 6
facing = 1


[State 640, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 640, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,2

[State 640, 2x]
type = PlaySnd
trigger1 = time = 0
value = 30,11


[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
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
persistent=0
ownpal = 1


[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1

;---------------------------------------------------------------------------
;FLY_A
[Statedef 99601]
type    = A
movetype= A
juggle  = 1
poweradd= 20
ctrl = 0
anim = 650
velset= 0,0
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 650, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0


[State 650, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 28
animtype = Light
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 8,8
sparkno = -1
guard.sparkno=-1
sparkxy = -1
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -5
guard.velocity = -17
airguard.velocity = -6
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-9,-8)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
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
persistent=0
ownpal = 1
[State 600, 3]
type = CtrlSet
trigger1 = Time = 17
value = 1

[State 99601, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1

;---------------------------------------------------------------------------
;FLY_B
[Statedef 99603]
type    = A
movetype= A
juggle  = 1
poweradd= 65
ctrl = 0
anim = 670
velset= 0,0
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 670, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1
[State 670, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45
animtype = Medium
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 8,8
sparkno = -1
guard.sparkno=-1
sparkxy = -5,-35
hitsound = S2,1
guardsound = S3,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -9
guard.velocity = -8.5
airguard.velocity = -5,0
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-7.5,-6)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 777, hsp]
type = helper
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
persistent=0
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
persistent=0
ownpal = 1

[State 99603, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1

;---------------------------------------------------------------------------
;FLY_C
[Statedef 99605]
type    = A
movetype= A
juggle  = 1
poweradd= 65
ctrl = 0
anim = 680
velset= 0,0
sprpriority = 2

[State 680, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 680, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,2

[State 680, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 80
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = -1
guard.sparkno=-1
sparkxy = -1
hitsound = S2,1
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = 0 ,-7
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -5,-2
air.hittime = 20
p2facing = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
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
persistent=0
ownpal = 1

[State 99605, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1
;-----------------------------------------------------------------------------
;FLY_C  DOWN
[Statedef 99608]
type    = A
movetype= A
juggle  = 1
poweradd= 65
ctrl = 0
anim = 690
velset= 0,0
sprpriority = 2

[State 690, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 690, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,2

[State 690, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 80
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = -1
guard.sparkno=-1
sparkxy = -10,-40
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -3,19
air.hittime = 20
p2facing = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
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
persistent=0
ownpal = 1

[State 99605, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 9001
ctrl = 1
;-------------------------------------------------------------------------------

 ;Air Unibeam
[Statedef 99130]
type    = A
movetype= A
poweradd= 100
anim = 3150
ctrl = 0
sprpriority = 1

[State 1300, x]
type = PosFreeze
trigger1 = time = [0,15]

[State 1300, y]
type = VelMul
trigger1 = Time > 15
x = .02
y = .05

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = var(10) = 1
physics = N

[State 1300, 2]
type = RemoveExplod
trigger1 = time = 0

[State 1300, snd]
type = PlaySnd
trigger1 = animelem = 4
value = 30, 7

[State 1300, sndx]
type = PlaySnd
trigger1 = time = 0
value = 21, 2

[State 1300, helper]
type = Helper
triggerall = !Numhelper(1305)
trigger1 = AnimElem = 7
name = "Beam"
StateNo = 1305
postype = p1
sprpriority = 4
pos = -100, -40
ownpal = 1

[State 1300, helper]
type = Helper
triggerall = !Numhelper(1305)
trigger1 = AnimElem = 7
name = "Beam"
StateNo = 1305
postype = p1
sprpriority = 4
pos = -40, -40
ownpal = 1

[State 1300, sndP]
type = PlaySnd
trigger1 = animelem = 2
value = 30,1

[State 1300, propulsor]
type = Explod
triggerall = !NumExplod(3151)
trigger1 = animelem = 2
id = 3151
anim = 3151
sprpriority = -4
supermove = 1
postype = P1
pos = 80,0
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = 18

[State 1300, propulsor2]
type = Explod
triggerall = !NumExplod(3152)
trigger1 = animelem = 2
id = 3152
anim = 3151
sprpriority = -4
supermove = 1
postype = P1
pos = -2,0
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = 18


[State 1300, Change to Fall]
type = ChangeState
trigger1 = Time = 22
value = 9001
ctrl = 1

;------------ Beam----------------
[statedef 1305]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1301
sprpriority = 4
velset = 8,4


[State 1305, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 1305, hit]
type = HitDef
trigger1 = animelem = 1
attr = S, SP
damage = 30,1
hitflag= MAFD
priority = 4
hitsound   = 30,3
sparkno = -1
guard.sparkno=-1
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
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
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



[state 1305, snd]
type = playsnd
trigger1 = movehit = 1
value = 30,8

[State 1305, des]
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

[State 1305, sma_size1]
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

[state 1305, sndx]
type = playsnd
trigger1 = moveguarded = 1
value = 30,8

[state 1305, destroy]
type = Destroyself
trigger1 = movecontact = 1

;-----------------------------------------------------------------------------
;Air Misil
;-----------------------------------------------------------------------------
[Statedef 98105]
type    = A
movetype= A
physics = A
poweradd= 100
anim = 78105
ctrl = 0
sprpriority = 1

[State 1000, snd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 31,1

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 22,2

[State 3150, helper]
type = Helper
trigger1 = animelem = 5
name = "bigmisil"
StateNo = 78101
postype = p1
pos = -65, -47
sprpriority = -6
ownpal = 1

[State 1350, x]
type = PosFreeze
trigger1 = time = [0,15]

[State 1350, y]
type = VelMul
trigger1 = Time > 15
x = .02
y = .05

[State 1350, StateTypeSet]
type = StateTypeSet
trigger1 = var(10) = 1
physics = N

[State 1350, 2]
type = RemoveExplod
trigger1 = time = 0


[State 1350, propulsor]
type = Explod
triggerall = !NumExplod(74)
trigger1 = animelem = 2
anim = 74
id = 74
sprpriority = -4
supermove = 1
postype = P1
pos = 67,-27
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = 18

[State 1350, propulsor2]
type = Explod
triggerall = !NumExplod(75)
trigger1 = animelem = 2
anim = 74
id = 75
sprpriority = -2
supermove = 1
postype = P1
pos = 40,-18
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = 18

[State 1000, sndx]
type = PlaySnd
trigger1 = animelem = 2
value = 30,1

[State 1350, Change to Fall]
type = ChangeState
trigger1 = animTime = 0
value = 9001
ctrl = 1

;--------------------------------------------------------------------------
;Air Misil Diagonal
;--------------------------------------------------------------------------
; Air Unibeam
[Statedef 98115]
type    = A
movetype= A
physics = A
poweradd= 100
anim = 78115
ctrl = 0
sprpriority = 1

[State 1300, x]
type = PosFreeze
trigger1 = time = [0,9]

[State 1300, y]
type = VelMul
trigger1 = Time > 9
x = .02
y = .05

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = var(10) = 1
physics = N

[State 1300, 2]
type = RemoveExplod
trigger1 = time = 0

[State 1300, snd]
type = PlaySnd
trigger1 = animelem = 4
value = 30, 7

[State 1300, sndx]
type = PlaySnd
trigger1 = time = 0
value = 21, 2

[State 3150, helper]
type = Helper
trigger1 = animelem = 6
name = "bigmisil"
StateNo = 78117
postype = p1
pos = 0, 0
sprpriority = -6
ownpal = 1

[State 1300, sndP]
type = PlaySnd
trigger1 = animelem = 2
value = 30,1

[State 3150, propulsor]
type = Explod
triggerall = !NumExplod(3151)
trigger1 = animelem = 2
anim = 3151
id = 3151
sprpriority = -4
supermove = 1
postype = P1
pos = 80,0
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = 14

[State 3150, propulsor2]
type = Explod
triggerall = !NumExplod(3152)
trigger1 = animelem = 2
anim = 3151
id = 3152
sprpriority = -4
supermove = 1
postype = P1
pos = -2,0
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = 14

[State 1300, Change to Fall]
type = ChangeState
trigger1 = Time = 14
value = 9001
ctrl = 1


;-----------------------------------------------------------------------------
; Iron Crusher
;--------------------------------------------------------------------------
[Statedef 1400]
type    = A
movetype= A
physics = N
anim = 1400
poweradd = 65
sprpriority = 3
ctrl = 0

[State 1400, 1]
type = VelSet
trigger1 = AnimElem = 2
x = 9



[State 1400, 4]
type = PlaySnd
trigger1 = StateNo = 1400
trigger1 = time = 1
value = 22,6

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(102)
trigger1 = StateNo = 1400
trigger1 = animelem = 2
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



[State 1400, 4a]
type = PlaySnd
trigger1 = time = 7
value = 30,1

[State 750, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 100,10
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 9,9
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
ground.velocity = -8,-4
fall = 1
air.animtype = low
air.velocity = -8,-12
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
type = ChangeState
trigger1 = Time = 30
value = 1401
ctrl = 1

;----------------------------
[Statedef 1401]
type    = S
physics = S
anim = 1402
sprpriority = 1
ctrl = 0

[State 751, c]
type = removeexplod
trigger1 = !time
id = 102

[State 751, c]
type = removeexplod
trigger1 = !time
id = 103

[State 751, 4]
type = VelMul
trigger1 = 1
x = 0.2

[State 751, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;-----------------------------------------------------------------------------
; Iron Crusher   (air)
;--------------------------------------------------------------------------
[Statedef 1405]
type    = A
movetype= A
physics = N
anim = 1400
poweradd = 65
sprpriority = 1
ctrl = 0

[State 1405, 1]
type = VelSet
trigger1 = AnimElem = 3
x = 9
y = -1

[State 1405, 4]
type = PlaySnd
trigger1 = StateNo = 1405
trigger1 = time = 1
value = 22,6

[State 1405, propulsor]
type = Explod
triggerall =!NumExplod(102)
trigger1 = StateNo = 1405
trigger1 = animelem = 2
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

[State 1405, flames]
type = Explod
triggerall =!NumExplod(103)
trigger1 = StateNo = 1405
trigger1 = animelem = 2
anim = 1401
id = 103
name = "flamefr"
postype = P1
pos = 110,-48
ownpal = 1
sprpriority = 8
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 1405, 4a]
type = PlaySnd
trigger1 = time = 7
value = 30,1

[State 1405, 1]
type = HitDef
trigger1 = Time=0
attr = A, NA
damage = 100
animtype = heavy
guardflag = HA
ground.type = Low
pausetime = 9,9
sparkno = S8500
sparkxy = 10,-70
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
ground.velocity = 10,-5
fall = 1
air.animtype = low
air.velocity = 10,-5
air.juggle = 3
air.fall = 1
down.velocity = -10
down.hittime = 30
down.bounce = 0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =10,-70
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
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
pos = 10,-70;
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1



[State 1405, 4]
type = ChangeState
trigger1 = Time = 50
value = 1406
ctrl = 1

;----------------------------
[Statedef 1406]
type    = A
physics = N
anim = 1402
sprpriority = 1
ctrl = 0

[State 1406, c]
type = removeexplod
trigger1 = !time
id = 102

[State 751, c]
type = removeexplod
trigger1 = !time
id = 103

[State 1406, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1


