;============================================================================
; Mark 1-2 Mode
; Basics envisioned by ArielAleXCo and Supers+Hypers by Magus.
;----------------------------------------------------------------------------
;============================================================================
;http://www.scruffydragon.com
;----------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 77170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 77175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,2

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 77180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
;value = 181 + ((Random * 2) / 1000)     ; change the 1 to however many winposes you have
value = 182 ; short-circuit decider for now to explude the "superior tech" winpose

;-----------------------
; Winpose #1 - Superior Tech!
[Statedef 77181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,0

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver

;-----------------------

[Statedef 77182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = AnimElem = 5
value = 6,2

[State 182,1]
type = AssertSpecial     
trigger1 = Time = [0,160]
flag = RoundNotOver




;---------------------------------------------------------------------------
;Intro!
;---------------------------------------------------------------------------
[Statedef 77190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = null;ChangeAnim
trigger1 = SelfAnimExist(190)
value = 190

[State 190, 2]
type = ChangeState
trigger1 = Time = 0
value = 191


[Statedef 77191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 0] 
type = AssertSpecial
trigger1 = Time = [0,160]
flag = Intro

[State 191, 2]
type = null; PlaySnd
trigger1 = AnimElem = 6
value = 0, 0

[state 191, 5]
type = changestate
trigger1 = animtime = 0
value = 0


;-----------------------
; Taunt
[Statedef 77195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 195, 0]
type = PlaySnd
trigger1 = Time = 6
value = 6,1

[State 195, 1]
type = SelfState     
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;---------------------------------------------------------------------------
; Stand Light Punch



;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 77210]
anim = 77210
ctrl = 0
type = S
movetype = A
physics = S
poweradd = 45
sprpriority = 2

[State 210, c]
type = removeexplod
trigger1 = !time
id = 102

[State 210, d]
type = removeexplod
trigger1 = !time
id = 104


[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 210, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 210, velset]
type = velset
trigger1 = animelem = 2
x = 6
y = 0

[State 210, HitDef]
type = HitDef
trigger1 = time=0
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno=-1
sparkxy = -1
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
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
pos = 15,-85;
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
pos= 15,-85
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [0,1]
trigger1 = movecontact
value = 77220

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [2,3]
trigger1 = movecontact
value = 77240

[State 200, EnvShake]
type = EnvShake
triggerall = var(22) = 1
trigger1 = animelem = 2
trigger2 = animelem = 3
time = 12
ampl = 4
freq = 85

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 77220]
anim = 77220
ctrl = 0
type = S
movetype = A
physics = S
poweradd = 65
sprpriority = 2

[State 220, c]
type = removeexplod
trigger1 = !time
id = 102

[State 220, d]
type = removeexplod
trigger1 = !time
id = 104

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0, 1

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0, 2

[State 220, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,22

[State 220, 3x]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30,1

[State 210, velset]
type = velset
trigger1 = time= [10,30]
x = 5
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35
ignorehitpause =1


[State 250, HitDef]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
damage = 100
guardflag = MAF
pausetime = 1,15
hitsound = S2,2
guardsound = S3,0
sparkno = -1
guard.sparkno=-1
sparkxy = -1
animtype = Heavy
ground.type = low
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -2,-5
guard.velocity = -4
air.velocity = -2,-5
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 777, hsp]
type = helper
trigger1 = animelemtime(8)=1 && movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = 0,-85;
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 =animelemtime(8)=1 && moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos= 0,-85
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 420, HitDef]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA  
animtype = up
damage = 65,0  
guardflag = MA
hitflag = MAF  
priority = 4, Hit
pausetime = 7,10
hitsound = S2,2
sparkno = -1
guard.sparkno=-1
sparkxy = -1
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 30
air.hittime  = 30
ground.velocity = -.5,-15
air.velocity = -.7,-15  
guard.velocity = -3
airguard.velocity = -3,-6
fall.recover = 0
air.fall = 1
air.fall.recover = 0
yaccel = 0.66
p2stateno = 226
p2facing = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(102)
trigger1 = animelem = 3
anim = 102
id = 102
name = "propulsor"
pos = 0,0
postype = p1
facing = 1
bindtime = 13
sprpriority = 0
ownpal = 1
removeongethit = 1
removetime = 15
ownpal = 1

[State 777, hdf] ; Launcher FX
type = helper
trigger1 = animelemtime(10)=1 && movehit
helpertype = normal
stateno = 8718
ID = 8718
name = "launcher"
postype = p2
pos = 0,enemynear,const(size.head.pos.y)
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hsp]
type = helper
trigger1 = animelemtime(10)=1 && movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = 0,enemynear,const(size.head.pos.y)
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = animelemtime(10)=1 && moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 0,enemynear,const(size.head.pos.y)
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = 45, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999





[State 200, EnvShake]
type = EnvShake
triggerall = var(22) = 1
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 9
time = 12
ampl = 4
freq = 85

[State 250, 3]
type = ChangeState
triggerall = animelemtime(10)=1 && Movehit
trigger1 = command = "holdup"
trigger2 = var(7) && var(8)
value = 900
ctrl = 1

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 77230]
anim = 77230
ctrl = 0
type = S
movetype = A
physics = S
poweradd = 5
sprpriority = 2

[State 230, c]
type = removeexplod
trigger1 = !time
id = 102

[State 230, d]
type = removeexplod
trigger1 = !time
id = 104


[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 230, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0

[State 210, velset]
type = velset
trigger1 = animelem = 1
x = -1
y = 0

[State 210, velset]
type = velset
trigger1 = animelem = 4
x = 1.5
y = 0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 50
guardflag = L;MAFD
pausetime = 2,9
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno=-1
sparkxy = -1
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 200, EnvShake]
type = EnvShake
triggerall = var(22) = 1
Trigger1 = animelem = 3
Trigger2 = animtime = 0
time = 12
ampl = 4
freq = 85

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = 20,-10
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
pos = 20,-10
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [0,1]
trigger1 = movecontact
value = 77210

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [2,3]
trigger1 = movecontact
value = 77240

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 77240]
anim = 77240
ctrl = 0
type = S
movetype = A
physics = S
poweradd = 10
sprpriority = 2

[State 240, c]
type = removeexplod
trigger1 = !time
id = 102

[State 240, d]
type = removeexplod
trigger1 = !time
id = 104

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 240, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 210, velset]
type = velset
trigger1 = animelem = 2
x = -2
y = 0

[State 210, velset]
type = velset
trigger1 = animelem = 4
x = 7
y = 0

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
damage = 70
guardflag = MA
pausetime = 11,9
hitsound = S2,1
guardsound = S3,0
sparkno= -1
guard.sparkno=-1
sparkxy = -1
animtype = hard
ground.type = low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1,-1
guard.velocity = -5
air.velocity = -1,-1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 200, EnvShake]
type = EnvShake
triggerall = var(22) = 1
trigger1 = animelem = 4
trigger2 = animelem = 9
time = 12
ampl = 4
freq = 85


[State 240, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 30, 1

[State 241, projétil]
type = projectile
trigger1 = animelem = 5
projanim = 77241
projremove = 0
projremovetime = 12
projhits = 1
attr = S, SP
offset = 20, -20
damage = 10, 2
guardflag = MA
pausetime = 0, 13
sprpriority = 4
animtype  = Medium
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.velocity = -2,0.8
air.animtype = high
air.velocity = -2,-0.8
air.hittime = 12
sparkxy = 0,200
palfx.time = 6
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.color = 0
palfx.invertall = 1
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
pos = 10,-60; ADJUST ACCORDINGLY
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
pos = 10,-60; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [0,1]
trigger1 = movecontact
value = 77210

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [2,3]
trigger1 = movecontact
value = 77250


[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 77400]
anim = 77400
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 20
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 400, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0

[State 400, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
damage = 50
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno=-1
sparkxy = -1
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 200, EnvShake]
type = EnvShake
triggerall = var(22) = 1
Trigger1 = animelem = 1
time = 12
ampl = 4
freq = 85

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = 15,-50 ; ADJUST ACCORDINGLY
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
pos = 15,-50 ; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 400, 3]
type = CtrlSet
trigger1 = Time = 16
value = 1

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [0,1]
trigger1 = movecontact
value = 77410

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [2,3]
trigger1 = movecontact
value = 77430


[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 77410]
anim = 77410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 45
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 410, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 210, velset]
type = velset
trigger1 = animelem = 3
x = 5
y = 0

[State 410, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = C, NA
damage = 70
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno=-1
sparkxy = -1
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
guard.velocity = -5
air.velocity = -3,-6
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 30, 1

[State 241, projétil]
type = projectile
trigger1 = animelem = 4
projanim = 77241
projremove = 0
projremovetime = 14
projhits = 1
attr = S, SP
offset = 20, -20
damage = 10, 2
guardflag = MA
pausetime = 0, 13
sprpriority = 4
animtype  = Medium
hitsound = S2,1
guardsound = S3,0
ground.type = Low
ground.velocity = -5
guard.velocity = -5
air.velocity = -3,-6
sparkxy = 0,200
palfx.time = 6
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.color = 0
palfx.invertall = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 200, EnvShake]
type = EnvShake
triggerall = var(22) = 1
trigger1 = animelem = 3
time = 12
ampl = 4
freq = 85

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = 10,-50; ADJUST ACCORDINGLY
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
pos = 10,-50; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [0,1]
trigger1 = movecontact
value = 77420

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [2,3]
trigger1 = movecontact
value = 77450

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 77420]
anim = 77420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65
sprpriority = 3

[State 420, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 420, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,22

[State 420, HitDef]
type = HitDef
trigger1 = AnimElem = 2  
attr = S, NA  
animtype = hard
damage = 65,0  
guardflag = MA
hitflag = MAF  
priority = 4, Hit
pausetime = 7,10
hitsound = S2,2
sparkno = -1
guard.sparkno=-1
sparkxy = -1
hitsound = S2,2
guardsound = S3,0
ground.type = high
ground.slidetime = 15
ground.hittime  = 30
air.hittime  = 30
ground.velocity = -3,0
air.velocity = -3,-5  
guard.velocity = -3
airguard.velocity = -3,-6
fall.recover = 1
air.fall = 1
air.fall.recover = 1
yaccel = 0.66
p2stateno = 226
p2facing = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 200, EnvShake]
type = EnvShake
triggerall = var(22) = 1
trigger1 = animelem = 3
time = 12
ampl = 4
freq = 85

[State 777, hdf] ; Launcher FX
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8718
ID = 8718
name = "launcher"
postype = p2
pos = 0,enemynear,const(size.head.pos.y)
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = 0,enemynear,const(size.head.pos.y)
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
pos = 0,enemynear,const(size.head.pos.y)
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 250, 3]
type = ChangeState
triggerall = (Movehit) && (time = [8,12])
trigger1 = command = "holdup"
trigger2 = var(7) && var(8)
value = 900
ctrl = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 77430]
anim = 77430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 5
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 430, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 35
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno=-1
sparkxy = -1
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 200, EnvShake]
type = EnvShake
triggerall = var(22) = 1
trigger1 = animelem = 4
time = 12
ampl = 4
freq = 85


[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = 20,-10 ; ADJUST ACCORDINGLY
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
pos = 20,-10 ; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 77410

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 77440]
anim = 77440
ctrl = 0
type = C
movetype = A
physics = C
velset = 5,0
poweradd = 10
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 440, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 410, HitDef]
type = HitDef
trigger1 = time=0
attr = C, NA
damage = 70
hitflag = MAFD
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno=-1
sparkxy = -1
animtype = Medium
ground.type = Trip
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = .1,-4.5
air.velocity = .1,-4.5
down.velocity = -5,0
down.hittime = 20
fall.yvelocity = -2.5
fall.recover = 0
fall = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 200, EnvShake]
type = EnvShake
triggerall = var(22) = 1
trigger1 = animelem = 3
trigger2 = animelem = 8
time = 12
ampl = 4
freq = 85


[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = 15,-10; ADJUST ACCORDINGLY
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
pos = 15,-10; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 77420


[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 77450]
anim = 77450
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25
sprpriority = 2

[State 450, snd]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 450, sndx]
type = PlaySnd
trigger1 = time = 0
value = 21,22

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
damage = 100
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = -1
guard.sparkno=-1
sparkxy = -1
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7,-4
guard.velocity = -4
air.velocity = -4,-5
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 200, EnvShake]
type = EnvShake
triggerall = var(22) = 1
trigger1 = animelem = 1
trigger2 = animelem = 3
time = 12
ampl = 4
freq = 85


[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = 15,-55; ADJUST ACCORDINGLY
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
pos = 15,-55; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 77600]
anim = 77600
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 20
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 600, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0


[State 600, HitDef]
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
trigger1 = StateNo = 600
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


[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [0,4]
trigger1 = movecontact
value = 77630


[State 600, ChangeAnim]  ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 77630]
anim = 77630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 10
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 650, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0


[State 630, HitDef]
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
trigger1 = StateNo = 600
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

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [0,4]
trigger1 = movecontact
value = 77610

[State 630, ChangeAnim]  ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 77610]
anim = 77610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 45
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
value = 30,3

[State 610, HitDef]
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

[State 8, 0]
type = ChangeState
triggerall = var(8)
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 77640


[State 610, ChangeAnim]  ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 77620]
anim = 77620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 620, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,22

[State 620, 2x]
type = PlaySnd
trigger1 = time = 0
value = 30,3

[State 620, HitDef]
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
palfx.time = 6
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.color = 0
palfx.invertall = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8


[State 240, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 30, 1

[State 241, exp]
type = explod
triggerall = !Numexplod(77241)
trigger1 = StateNo = 77620
trigger1 = animelem =3
pos = 20, -60
anim= 77241
id= 77241
postype= p1
sprpriority = 6
removetime= 10
bindtime=-1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 77241

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

[State 620, ChangeAnim]  ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 77650]
anim = 77650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25
sprpriority = 2

[State 680, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 680, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,22

[State 650, HitDef]
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

[State 650, ChangeAnim]  ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------
;Super Jump Start
;---------------------------------------------------------------------

[Statedef 900]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1


[State 700,VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "holdup"
trigger2 = command = "holdfwd"
var(2) = 1

[State 700,VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "holdback"
var(2) = 2

[State 700,NotHitBy]
type = NotHitBy
triggerall = prevstateno = [150,153]
trigger1 = Time <= 10
value = SCA, NT,ST,HT
time = 30

[State 700,NotHitBy]
type = NotHitBy
trigger1 = animelem = 1
value = SCA, NT,ST,HT
time = 20

[State 700,ChangeAnim]
type = ChangeAnim
triggerall = var(2) = 0
trigger1 = time = 0
value = 41
[State 700,ChangeAnim]
type = ChangeAnim
triggerall = var(2) = 1
trigger1 = time = 0
value = 42
[State 700,ChangeAnim]
type = ChangeAnim
triggerall = var(2) = 2
trigger1 = time = 0
value = 43

[State 700,VelSet]
type = VelSet
triggerall = var(2) = 1
trigger1 = time = 0
x = 1
y = -15

[State 700,VelSet]
type = VelSet
triggerall = var(2) = 2
trigger1 = time = 0
x = -1
y = -15

[State 700,VelSet]
type = VelSet
triggerall = var(2) = 0
trigger1 = time = 0
x = 0
y = -15


[State 700,ChangeState]
type = ChangeState
trigger1 = time = 0
value = 901
ctrl = 1

;---------------------------------------------------------------------------
; super Salto Movimiento
;---------------------------------------------------------------------------
[Statedef 901]
type = A
;movetype = I
physics = A
;ctrl = 1

[State 1045, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1045, d]
type = removeexplod
trigger1 = !time
id = 104

[State 1045, 7]
type = Explod
triggerall = !NumExplod(61)
trigger1 = time = 0
anim = 61
id= 61
pos = 0, 0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 1045, 8]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 701,turn]
type = turn
triggerall = frontedgedist > 25
trigger1 = P2dist X < -5

[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright   =  0,0,0
PalContrast =  120,120,220
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 20

[State 1045, Super Jump Afterimage]
type = null;AfterImage
trigger1 = time = 0
length = 100
PalBright   =  320, 320, 320
PalContrast =  10, 10, 10
PalAdd      =  80,80,100
PalMul      = .50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 30


[State 777, hsp]; Superjump FX helper
type = helper
trigger1 = !time
helpertype = normal
stateno = 8715
ID = 2999
name = "superjump"
postype = p1
pos = 0,-10
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State 100, 4]
type = PlaySnd
trigger1 = time = 4
value = 30,1
;-------------------------------------------------------------------------
;MODE SUPERS
;-------------------------------------------------------------------------
;STAND MISIL
;----------------------------------------------------
[Statedef 78100]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 78100
ctrl = 0
sprpriority = 1




[State 1000, dust]
type = Explod
triggerall = !NumExplod(78101)
trigger1 = StateNo = 78100
trigger1 = animelem= 5
id = 78101
anim = 78101
pos = -3,0
postype= p1
time=12
sprpriority =4
ontop = 1
bintime=-1
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(78102)
trigger1 = StateNo = 78100
trigger1 = animelem= 6
id = 78102
anim = 78102
pos = 5,0
postype= p1
time=9
bintime=-1
sprpriority =-4
removeongethit = 1

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
value = 22,22

[State 3150, helper]
type = Helper
trigger1 = animelem = 5
name = "bigmisil"
StateNo = 78101
postype = p1
pos = -90, -22
sprpriority = -6
ownpal = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;Misil Helper
;-------------------------------------------------------------------------------
[Statedef 78101]
type = S
movetype = A
physics = S
poweradd = 0
anim = 3002
sprpriority = -6

[State 78101, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 78101, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 78102
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 78101, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 78101, vel]
type = VelSet
trigger1 = 1
x = 8

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 30,1

[State 78101, fire]
type = Explod
triggerall = !NumExplod(3002)
trigger1 = StateNo = 78101
id=3002
anim = 3003
bindtime = -1
removeongethit = 1

[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 110, 1
pausetime = 0,9
sparkno = -1;S30002
sparkxy = -1;-10,-90
hitsound = S2,5
guardsound= S3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-5
air.velocity = -4, -5
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8



[State 1001, explosive]
type = Explod
triggerall = !NumExplod(788)
trigger1 = movehit = 1
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
pos = -80, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
removetime = 36
ownpal = 1
scale = 1.2,1.2

[State 1000, sndx]
type = PlaySnd
trigger1 = moveguarded = 1 || movehit = 1
value = 31,7

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 3151, destroy]
type = Destroyself
trigger1 = time = 50

[Statedef 78102]
type = S
movetype = A
physics = S
poweradd = 0
anim = 788
sprpriority = -6

[State 1000, sndx]
type = PlaySnd
trigger1 = time=0
value = 31,7

[state 3151, destroy]
type = Destroyself
trigger1 = animtime = 0
;-----------------------------------------------------------------------------
;Air Misil
;-----------------------------------------------------------------------------
[Statedef 78105]
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
value = 22,22

[State 1000, dust]
type = Explod
triggerall = !NumExplod(78106)
trigger1 = StateNo = 78105
trigger1 = animelem= 5
id = 78106
anim = 78106
pos = 0,0
postype= p1
time=12
sprpriority =4
ontop = 1
bintime=-1
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(78102)
trigger1 = StateNo = 78105
trigger1 = animelem= 6
id = 78102
anim = 78102
pos = 30,-25
postype= p1
time=9
bintime=-1
sprpriority =-4
removeongethit = 1

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

[State 1000, sndx]
type = PlaySnd
trigger1 = animelem = 2
value = 30,1

[State 1350, Change to Fall]
type = ChangeState
trigger1 = animTime = 0
value = 660
ctrl = 1
;------------------------------------------------------------------------------
;Crouch Misil
;------------------------------------------------------------------------------
[Statedef 78110]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 78110
ctrl = 0
sprpriority = 1




[State 1000, dust]
type = Explod
triggerall = !NumExplod(78101)
trigger1 = StateNo = 78110
trigger1 = animelem= 5
id = 78101
anim = 78101
pos = 20,30
postype= p1
time=12
sprpriority =4
ontop = 1
bintime=-1
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(78102)
trigger1 = StateNo = 78110
trigger1 = animelem= 6
id = 78102
anim = 78102
pos = 0,35
postype= p1
time=9
bintime=-1
sprpriority =-4
removeongethit = 1


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
value = 22,22

[State 3150, helper]
type = Helper
trigger1 = animelem = 5
name = "bigmisil"
StateNo = 78101
postype = p1
pos = -60, 9
sprpriority = -6
ownpal = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Air Misil Diagonal
;--------------------------------------------------------------------------
; Air Unibeam
[Statedef 78115]
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


[State 1300, sndx]
type = PlaySnd
trigger1 = time = 0
value = 21, 22

[State 1000, dust]
type = Explod
triggerall = !NumExplod(78114)
trigger1 = StateNo = 78115
trigger1 = animelem= 5
id = 78114
anim = 78114
pos = -30,-30
postype= p1
time=14
sprpriority =4
ontop = 1
bintime=-1
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(78102)
trigger1 = StateNo = 78115
trigger1 = animelem= 6
id = 78102
anim = 78102
pos = 20,-20
postype= p1
time=9
bintime=-1
sprpriority =-4
removeongethit = 1



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
value = 660
ctrl = 1

;------------------------------------------------------------------------------
;Misil Helper  Diagonal
;-------------------------------------------------------------------------------
[Statedef 78117]
type = S
movetype = A
physics = N
poweradd = 0
anim = 78117
sprpriority = 4
velset = 7,3

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 30,1

[State 78101, fire]
type = Explod
triggerall = !NumExplod(78118)
trigger1 = StateNo = 78117
id=78118
anim = 78118
bindtime = -1
removeongethit = 1

[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAFD
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 110, 1
pausetime = 0,9
sparkno = -1
sparkxy = -1
hitsound = s2,5
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-1
air.velocity = -4, -1
down.velocity= -4, -1
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
down.hittime = 40
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 1001, explosive]
type = Explod
triggerall = !NumExplod(788)
trigger1 = movehit = 1
anim = 788
id =788
pos = -60, -20
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
pos = -60, -20
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
removetime = 36
ownpal = 1
scale = 1.2,1.2

[State 1000, sndx]
type = PlaySnd
trigger1 = moveguarded = 1 || movehit = 1
value = 31,7

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id =78118


[State 2310, changestate]
type = ChangeState
trigger1 = Pos Y >= 60
value= 78118
ctrl = 1

[Statedef 78118]
type = S
movetype = A
physics = S
poweradd = 0
anim = 788
sprpriority = 4
velset = 0,0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id =78118

[State 1000, sndx]
type = PlaySnd
trigger1 = !time
value = 31,7

[state 3151, destroy]
type = Destroyself
trigger1 = animtime = 0


;--------------------------------------------------------------------------
;MODE HYPERS
;--------------------------------------------------------------------------
;Heavy Uni Artillery
[Statedef 3000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3000
ctrl = 0
juggle =6
sprpriority = 1
poweradd = -1000

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


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




[State 3000, 3]
type = PlaySnd
trigger1 = time = 0
value = 50,50




[State 3000, HitDef]
type = HitDef
trigger1 = Time % 6 = 0 && Time < 135 ;95
attr = S, NA
damage = 8, 3
guardflag = MA
pausetime = 2,2
sparkno = -1
sparkxy = -1
guard.sparkno = -1
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -2
guard.velocity = -1
air.velocity = -1,-1
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 3000, HitDef]
type = HitDef
trigger1 = Time > 135
attr = S, NA
damage = 10, 4
guardflag = MA
pausetime = 8,2
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound = S2,2
guardsound = S3,0
sparkxy = -20,0
animtype = Hard
ground.type = Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -11, -8
guard.velocity = -5
air.velocity = -1,-1
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
fall = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0


[State 3000, 3x]
type = PlaySnd
trigger1 = animelem = 18
trigger2 = animelem = 20
value = 31,9
channel=5

[State 3000, 3x]
type = PlaySnd
trigger1 = animelem = 19
trigger2 = animelem = 21
value = 31,10
channel=4


[State 3150, helper]
type = Helper
trigger1 = animelem = 18
trigger2 = animelem = 20
name = "msil"
StateNo = 3001
postype = p1
pos = 0, 0
sprpriority = 6
ownpal = 1

[State 3150, helper]
type = Helper
trigger1 = animelem = 19
trigger2 = animelem = 21
name = "msil2"
StateNo = 3001
postype = p1
pos = 50, 10
sprpriority = 6
ownpal = 1

[State 3150, helper]
type = Helper
trigger1 = animelem = 19
;trigger2 = animelem = 21
name = "msil3"
StateNo = 3001
postype = p1
pos = -5, 30
sprpriority = 6
ownpal = 1

[State 3150, helper]
type = Helper
trigger1 = animelem = 21
;trigger2 = animelem = 20
name = "msil4"
StateNo = 3001
postype = p1
pos = 20, 30
sprpriority = 6
ownpal = 1

[State 3150, helper]
type = Helper
trigger1 = animelem = 21
name = "bigmisil"
StateNo = 3002
postype = p1
pos = 0, 0
sprpriority = -6
ownpal = 1

[State 3000, 3x]
type = PlaySnd
trigger1 = animelem = 21
value = 31,7
channel=4

[State 3000, gethit]
type = Explod
triggerall = !NumExplod(3009)
trigger1 = animelem = 19
trigger2 = animelem = 21
anim = 3008
id = 3009
pos = 50,0
postype = p1
sprpriority = 6
ownpal = 1
facing = 1
bindtime = -1
removetime = 14
removeongethit = 1

[State 3000, gethit]
type = Explod
triggerall = !NumExplod(3008)
trigger1 = animelem = 18
trigger2 = animelem = 20
anim = 3008
id = 3008
pos = 0,0
postype = p1
sprpriority = 6
ownpal = 1
facing = 1
bindtime = -1
removetime = 14
removeongethit = 1


[State 3000, gethit]
type = Explod
triggerall = !NumExplod(3028)
trigger1 = animelem = 21
anim = 3008
id = 3028
pos = 10,60
postype = p1
sprpriority = 6
ownpal = 1
facing = 1
bindtime = -1
removetime = 14
removeongethit = 1


[State 3000, gethit]
type = Explod
triggerall = !NumExplod(78114)
trigger1 = animelem = 21
anim = 78114
id = 78114
pos = 40,-10
postype = p1
sprpriority = 6
ownpal = 1
facing = 1
bindtime = -1
removetime = 14
removeongethit = 1

[State 3150, helper]
type = Helper
trigger1 = animelem = 18
;trigger2 = animelem = 20
name = "msil5"
StateNo = 3001
postype = p1
pos = -30, 60
sprpriority = 6
ownpal = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 140
ignorehitpause =1


[State 3000, back]
type = ChangeState
trigger1 = Time = 140
value = 3005
ctrl = 1

;------------------------------
; Artillery - (move end)
[Statedef 3005]
type    = S
physics = S
ctrl = 0
anim = 3005
sprpriority = 2

[State 3005, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------
;Misil small
[Statedef 3001]
type = S
movetype = A
physics = S
poweradd = 0
anim = 3001
sprpriority = 9

[State 0, ]
type = VelSet
trigger1 = 1
x = 10

[State 2005, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 4, 1
pausetime = 0,9
sparkno = -1
sparkxy = -1
guard.sparkno = -1
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-5
air.velocity = -4, -5
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

;[state 3151, destroy]
;type = Destroyself
;trigger1 = movecontact = 1

[state 3151, destroy]
type = changestate
trigger1 = movecontact=1
value= 78318

[state 3151, destroy]
type = Destroyself
trigger1 = time = 50
 ;--------------------------------
[Statedef 78318]
type = S
movetype = A
physics = S
poweradd = 0
anim = 8787
sprpriority = 4
velset = 0,0

[State 1001, med1]
type = Explod
trigger1 = time=0
anim = 788
id = 788
scale= 0.5, 0.5
pos = -50+ random%20,-85+ random%20
postype = p2
sprpriority = 6
ontop = 1
bindtime=-1
removeongethit = 1
removetime = 36
ownpal = 1

[state 3151, destroy]
type = Destroyself
trigger1 =time = 20



;------------------------------------------------------------------------------
;Misil Big
[Statedef 3002]
type = S
movetype = A
physics = S
poweradd = 0
anim = 3002
sprpriority = -6

[State 0, ]
type = VelSet
trigger1 = 1
x = 10

[State 4000, fire]
type = Explod
triggerall = !NumExplod(3002)
trigger1 = StateNo = 3002
id=3002
anim = 3003
bindtime = -1
removeongethit = 1

[State 2005, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 35, 3
pausetime = 0,9
sparkno = -1
sparkxy = -1
guard.sparkno = -1
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-5
air.velocity = -4, -5
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 1001, explosive]
type = Explod
triggerall = !NumExplod(788)
trigger1 = movehit = 1
anim = 788
id =788
pos = -40, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime =36
ownpal = 1

[State 1001, med1]
type = Explod
triggerall = !NumExplod(788)
trigger1 = moveguarded = 1
anim = 788
id = 788
;velocity = 0, 0
pos = -40, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
removetime = 36
ownpal = 1

[State 1000, sndx]
type = PlaySnd
trigger1 = moveguarded = 1 || movehit = 1
value = 31,7

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 3151, destroy]
type = Destroyself
trigger1 = time = 50

;--------------------------------------------------------------------------
;Hyper Misil Air Assault
;--------------------------------------------------------------------------
[Statedef 3619]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 2
anim = 78119
ctrl=0
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

[State 3150, sndx]
type = PlaySnd
trigger1 = !time
value = 50, 6

[State 3000, end]
type = ChangeState
trigger1 = !AnimTime ;Time = 175
value = 3620
ctrl = 1

;---------------------------------------------------------------------------
;Begin Misil Assault
;---------------------------------------------------------------------------
[Statedef 3620]
type    = A
movetype= A
physics = A
poweradd= 100
anim = 78115
ctrl = 0
sprpriority = 1



[State 78120, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 78120, x]
type = PosFreeze
trigger1 = time = [0,15]

[State 78120, y]
type = VelMul
trigger1 = Time > 15
x = .02
y = .05

[State 78120, StateTypeSet]
type = StateTypeSet
trigger1 = var(10) = 1
physics = N




[State 1000, dust]
type = Explod
triggerall = !NumExplod(78114)
trigger1 = StateNo = 3620
trigger1 = animelem= 9
id = 78114
anim = 78114
pos = -30,-30
postype= p1
time=14
sprpriority =4
ontop = 1
bintime=-1
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(78114)
trigger1 = StateNo = 3620
trigger1 = animelem= 10
id = 78114
anim = 78114
pos = -50,-50
postype= p1
time=14
sprpriority =4
ontop = 1
bintime=-1
removeongethit = 1




[State 3150, helper]
type = Helper
trigger1= animelem = 9
name = "bigmisil"
StateNo = 78122
postype = p1
pos = -5, 0
sprpriority = 6
ownpal = 1

[State 3150, helper]
type = Helper
trigger1= animelem = 10
name = "bigmisil"
StateNo = 78122
postype = p1
pos = -15, -20
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
triggerall = !NumExplod(3152)
trigger1 = animelem = 2
anim = 3152
id = 3152
sprpriority = -4
supermove = 1
postype = P1
pos = 0,0
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = -1


[State 3150, Change to Fall]
type = ChangeState
trigger1 = Time = 150
value = 3621
ctrl = 1

;---------------------------------------------------------------------------
; Hyper Misil - (move end)
[Statedef 3621]
type    = S
physics = S
ctrl = 0
anim = 78116
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

;------------------------------------------------------------------------------
;Misil Helper  Diagonal
;-------------------------------------------------------------------------------
[Statedef 78122]
type = S
movetype = A
physics = N
poweradd = 0
anim = 78117
sprpriority = 4
velset = 7,3
juggle=1

[State 0, VelAdd]
type = VelAdd
trigger1 = time=0
x = 0.1
y = 2

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 30,1

[State 78101, fire]
type = Explod
triggerall = !NumExplod(78118)
trigger1 = StateNo = 78122
id=78118
anim = 78118
bindtime = -1
removeongethit = 1
priority = 6

[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAFD
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 25, 5
pausetime = 0,9
sparkno = -1
sparkxy = -1
guard.sparkno = -1
hitsound = s2,5
guardsound = s3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-1
air.velocity = -4, -1
down.velocity= -4, -1
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
down.hittime = 40
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 1001, explosive]
type = Explod
triggerall = !NumExplod(788)
trigger1 = movehit = 1
anim = 788
id =788
pos = -60, 0
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

[State 1000, sndx]
type = PlaySnd
trigger1 = moveguarded = 1 || movehit = 1
value = 31,7

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id =78118

[State 2310, changestate]
type = ChangeState
trigger1 = Pos Y >= 60
value= 78118
ctrl = 1
;----------------------------------------------------------------------------
;Air Strike (War Destroyer)
;----------------------------------------------------------------------------
[Statedef 3700]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 2
anim = 3700
ctrl=0
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



[State 3700, 3]
type = PlaySnd
trigger1 = time = 10
value = 50,6

[State 3401, exp]
type = Explod
triggerall = !NumExplod(3703)
trigger1 = animelem = 2
anim = 3703
id = 3703
pos = 0,0
postype = P1
sprpriority =-6 ;-4
bindtime = -1
removetime = -1

[State 3401, exp]
type = Explod
triggerall = !NumExplod(3709)
trigger1= animelem = 7
anim = 3709
id = 3709
pos = 0,0
postype = P1
sprpriority = 5
bindtime = -1
removetime = 14

[State 3401, exp]
type = Explod
triggerall = !NumExplod(3711)
trigger1= animelem = 7
anim = 3709
id = 3711
pos = 43,0
postype = P1
sprpriority = 5
bindtime = -1
removetime = 14


[State 3150, helper]
type = Helper
trigger1= animelem = 7
name = "bigmisil"
StateNo = 3702
postype = p1
pos = 1, 0
sprpriority = 6
ownpal = 1

[State 3150, helper]
type = Helper
trigger1= animelem = 7
name = "bigmisil"
StateNo = 3702
postype = p1
pos = 43, 0
sprpriority = 6
ownpal = 1

[State 3200, HitDef]
type = HitDef
trigger1 = Time % 22 = 0 && Time < 135 ;95
attr = S, NA
damage = 1, 0
guardflag = MA
pausetime = 2,2
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno=-1
sparkxy = 0,-60
animtype = Hard
ground.type = Low
ground.slidetime = 15
ground.hittime  = 5
ground.velocity = -2
guard.velocity = -1
ground.cornerpush.veloff = -15
air.velocity = -1,-1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 0, NotHitBy]
type = NotHitBy
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 140
ignorehitpause =1



[State 3401, end]
type = ChangeState
trigger1 = Time = 140
value = 3705
ctrl = 1
;--------------------------------------------------------------------------
;continue
;---------------------------------------------------------------------------
[Statedef 3705]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3701
juggle =4
sprpriority = 2

[State 3700, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1



[State 3155, 2]
type = removeexplod
trigger1 = !time
id = 3703



[State 3401, exp]
type = Explod
triggerall = !NumExplod(3708)
trigger1 = time = 1
anim = 3708
id = 3708
pos = 0,0
postype = P1
sprpriority = -6
bindtime = -1
removetime = 21


[State 3150, helper]
type = Helper
trigger1= animelem = 2
name = "bigmisil"
StateNo = 3709
postype = p2
pos = ifelse(random<500,-80,-15), -200
sprpriority = 6
ownpal = 2

[State 3150, helper]
type = Helper
trigger1= animelem = 2
name = "bigmisil"
StateNo = 3709
postype = p2
pos = ifelse(random<500,15,80),-200;43, -200
sprpriority = 6
ownpal = 1

[State 3200, HitDef]
type = HitDef
trigger1 = Time % 22 = 0 && Time < 135 ;95
attr = S, NA
damage = 1, 0
guardflag = MA
pausetime = 0,0
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
sparkxy = -1
animtype = Hard
ground.type = Low
ground.slidetime = 15
ground.cornerpush.veloff = -15
ground.hittime  = 5
ground.velocity = -2
guard.velocity = -1
air.velocity = -1,-1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 144
ignorehitpause =1

 [State 3401, end]
type = ChangeState
trigger1 = Time = 144
value = 3701
ctrl = 1

;------------------------------
; Destroyer end (move end)
[Statedef 3701]
type    = S
physics = S
ctrl = 0
anim = 3702
sprpriority = 2

[State 3400, 3]
type = PlaySnd
trigger1 = time = 5
value = 22,55

[State 3155, 2]
type = removeexplod
trigger1 = !time
id = 3708

[State 3403, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;Misil Helper  Go up War destroyer
;-------------------------------------------------------------------------------
[Statedef 3702]
type = S
movetype = A
physics = S
poweradd = 0
anim = 3704
sprpriority = -4
velset = 0,-10

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 30,1

[State 78101, fire]
type = Explod
triggerall = !NumExplod(3705)
trigger1 = StateNo = 3702
id=3705
anim = 3705
bindtime = -1
removeongethit = 1
priority = 6

[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAFD
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 15, 3
pausetime = 0,9
sparkno = -1
;sparkxy = 0,300
guard.sparkno = -1
hitsound = s2,5
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-1
air.velocity = -4, -1
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
down.hittime = 40
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0

[State 1001, explosive]
type = Explod
triggerall = !NumExplod(788)
trigger1 = movehit = 1
anim = 788
id =788
pos = -40, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime =36
ownpal = 1

[State 1001, med1]
type = Explod
triggerall = !NumExplod(788)
trigger1 = moveguarded = 1
anim = 788
id = 788
;velocity = 0, 0
pos = -40, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
removetime = 36
ownpal = 1


[State 1000, sndx]
type = PlaySnd
trigger1 = moveguarded = 1 || movehit = 1
value = 31,7

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 3151, destroy]
type = Destroyself
trigger1 = time = 50

;------------------------------------------------------------------------------
;Misil Helper  Go Down War destroyer
;-------------------------------------------------------------------------------
[Statedef 3709]
type = S
movetype = A
physics = N
poweradd = 0
anim = 3706
sprpriority = 4
velset = 0,12

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 30,1

[State 78101, fire]
type = Explod
triggerall = !NumExplod(3707)
trigger1 = StateNo = 3709
id=3707
anim = 3707
bindtime = -1
removeongethit = 1
priority = 6

[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAFD
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 22, 2
pausetime = 0,9
sparkno = -1
;sparkxy = 0,300
guard.sparkno = -1
hitsound = s2,5
guardsound= S3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -1, 1
air.velocity = -1, 1
down.velocity = -1, 1
down.hittime = 40
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
getpower = 0,0


[State 1001, explosive]
type = Explod
triggerall = !NumExplod(788)
trigger1 = movehit = 1
anim = 788
id =788
pos = -40, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime =36
ownpal = 1

[State 1001, med1]
type = Explod
triggerall = !NumExplod(788)
trigger1 = moveguarded = 1
anim = 788
id = 788
;velocity = 0, 0
pos = -40, 0
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
removetime = 36
ownpal = 1

[State 1000, sndx]
type = PlaySnd
trigger1 = moveguarded = 1 || movehit = 1
value = 31,7

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[State 2310, changestate]
type = ChangeState
trigger1 = Pos Y >= 75
value= 78418
ctrl = 1
;--------------------------
[Statedef 78418]
type = S
movetype = A
physics = S
poweradd = 0
anim = 789
sprpriority = 4
velset = 0,0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id =78118


[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAFD
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 20, 3
pausetime = 0,9
sparkno = -1
sparkxy = -1
guard.sparkno = -1
hitsound = s2,5
guardsound= S3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -1, 1
air.velocity = -1, 1
down.velocity = -1, 1
down.hittime = 40
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 1000, sndx]
type = PlaySnd
trigger1 = !time
value = 31,7

[state 3151, destroy]
type = Destroyself
trigger1 = animtime = 0


;----------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Fire Attack
;----------------------------------------------------
[Statedef 1238]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 78238
ctrl = 0
sprpriority = 1



[State 1000, snd]
type = PlaySnd
trigger1 = time = 0
value = 22,66

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 1000, helper]
type = Helper
trigger1 = AnimElem = 3
name = "Fire"
StateNo = 1239
postype = p1
pos = 0, -0
ownpal = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------- Fire 1---------------------------
[Statedef 1239]
type = A
movetype = A
physics = N
anim =78239
juggle = 4
hitdefpersist = 1
sprpriority = 2

[State 1005, snd]
type = PlaySnd
trigger1 = time = 0
value = 31, 8

[State 1005, 6]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1005, fire]
type = HitDef
trigger1 = Time = 0
attr = A, SA
hitflag = MAF
guardflag = MA
pausetime = 2, 9
damage = 100,10
animtype = Back
sparkno = S30002
sparkxy = -10,-70
hitsound = S2,1
guardsound = S31, 8
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
palfx.time = 40
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
p2stateno = 7697





[State 1005, 8]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent, MoveType = H

;------------------------------------------------------------------------------
;Hyper Fire Attack
;------------------------------------------------------------------------------
[Statedef 3368]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3368
ctrl = 0
sprpriority = 1
poweradd = -1000

[State 9999, 7] ;Dust Spark
type = explod
trigger1 = Animelem = 1
anim = 21583
pos = -100,0
sprpriority = 4
postype = p1


[State 9999, 7] ;Dust Spark
type = explod
trigger1 = Animelem = 1
anim = 21584
pos = 0,0
sprpriority = 4
postype = p1
scale = 1.2,1.2


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


[State 3000, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = heavy
damage    = 25,2
guardflag = MA
pausetime = 0,12
ground.type = High
ground.slidetime = 19
ground.hittime = 21
ground.velocity = -0
guard.velocity = -0
air.velocity = -0,-5
airguard.velocity = -10
ground.cornerpush.veloff = -6
air.fall = 1
fall.recovertime = 28
getpower = 0,0

[State 3000, 3]
type = PlaySnd
trigger1 = time = 0
value = 50,22
channel = 4

[state 3000, snd]
type = playsnd
trigger1 = AnimElem = 3
value = 31,8
channel = 7





[State 1000, helper]
type = Helper
trigger1 = AnimElem = 3
name = "Fire"
StateNo = 4239
postype = p1
pos = -15, 12
ownpal = 1
[State 1000, helper]
type = Helper
trigger1 = AnimElem = 4
name = "Fire"
StateNo = 4239
postype = p1
pos = -15, 12
ownpal = 1
[State 1000, helper]
type = Helper
trigger1 = AnimElem = 5
name = "Fire"
StateNo = 4239
postype = p1
pos = -15, 12
ownpal = 1
[State 1000, helper]
type = Helper
trigger1 = AnimElem = 6
name = "Fire"
StateNo = 4239
postype = p1
pos = -15, 12
ownpal = 1
[State 1000, helper]
type = Helper
trigger1 = AnimElem = 7
name = "Fire"
StateNo = 4239
postype = p1
pos = -15, 12
ownpal = 1
[State 1000, helper]
type = Helper
trigger1 = AnimElem = 8
name = "Fire"
StateNo = 4239
postype = p1
pos = -15, 12
ownpal = 1




[State 0, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 80


[State 3100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;------- Fire 1---------------------------
[Statedef 4239]
type = A
movetype = A
physics = N
anim =2222
juggle = 1
hitdefpersist = 1
sprpriority = 2

[State 1005, snd]
type = PlaySnd
trigger1 = time = 0
value = 31, 8

[State 1005, 6]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1005, fire]
type = HitDef
trigger1 = Time % 6 = 0 && Time < 130
attr = A, SA
hitflag = MAF
guardflag = MA
pausetime = 2, 9
damage = 5,1
animtype = Back
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound = S2,1
guardsound = S31, 8
ground.velocity = -3, 1
air.velocity = -3, -1
guard.slidetime = 18
guard.hittime = 26
guard.velocity = -12
sprpriority = 2
air.hittime = 20
;air.fall = 1
;fall.recover = 0
palfx.time = 40
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
;p2stateno = 7697
fall = 1
getpower = 0,0

[State 1005, fire]
type = HitDef
trigger1 = Time > 130
attr = A, SA
hitflag = MAF
guardflag = MA
pausetime = 2, 9
damage = 2,1
animtype = Back
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound = S2,1
guardsound = S31, 8
ground.velocity = -3, 0
air.velocity = -3, -1
guard.slidetime = 18
guard.hittime = 26
guard.velocity = -12
sprpriority = 2
air.hittime = 20
;air.fall = 1
;fall.recover = 0
palfx.time = 40
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
fall = 1





[State 1005, 8]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent, MoveType = H

 
;---------------------------------------------------------------------------
;                        PRESENTED by ScruffyDragon.
;---------------------------------------------------------------------------
