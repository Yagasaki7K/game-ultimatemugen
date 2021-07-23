;-----------------------------------------------------------------------
;BASICS Attacks
;-----------------------------------------------------------------------
;---------------------------------------------------------------------------
; Stand Light Punch
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

[State 200, c]
type = removeexplod
trigger1 = !time
id = 102

[State 200, d]
type = removeexplod
trigger1 = !time
id = 104

[State 200, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 12
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S30000
sparkxy = -10,-80
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3
airguard.velocity = -6
ground.cornerpush.veloff = -9
air.fall = 1
fall.recovertime = 16
air.type = High
air.hittime = 12
envshake.time = 6
envshake.ampl = 3; or 4

[State 200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 21, 0

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0




[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 201
ctrl = 1

;-------------------------
;Second hit
;-------------------------
[Statedef 201]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 201
poweradd = 20
sprpriority = 2

[State 201, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 12
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S30000
sparkxy = -10,-80
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3
airguard.velocity = -6
ground.cornerpush.veloff = -9
air.fall = 1
fall.recovertime = 16
air.type = High
air.hittime = 12
envshake.time = 6
envshake.ampl = 3; or 4

[State 201, 1]
type = PlaySnd
trigger1 = Time = 0
value = 21, 0

[State 201, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0




[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium punch
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 40
ctrl = 0
velset = 0,0
anim = 210

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

[State 210, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 25
guardflag = MA
pausetime = 8,8
sparkno = S30000
sparkxy = -10,-80
hitsound = S2,1
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = -4
guard.velocity = -8
air.velocity = -5
airguard.velocity = -6
ground.cornerpush.veloff = -12
air.fall = 1
fall.recovertime = 26
envshake.time = 9
envshake.ampl = 4; or 5

[State 210, 4]
type = SprPriority
trigger1 = AnimElem = 1
value = 2




[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong punch
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
ctrl = 0
velset = 0,0
anim = 220
sprpriority = -1

[State 1000]
type = Explod
trigger1 = AnimElem = 4
anim = 720
sprpriority = 8
pos = 0,0
removetime = 26

[State 210, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 45
guardflag = MA
pausetime = 0,12
sparkno = S30002
sparkxy = -10,-70
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 14
ground.hittime = 15
ground.velocity = -10
guard.velocity = -8
air.velocity = -5
airguard.velocity = -6
ground.cornerpush.veloff = -12
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 220, c]
type = removeexplod
trigger1 = !time
id = 102

[State 220, d]
type = removeexplod
trigger1 = !time
id = 104

[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 220, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,2

[State 220, 3x]
type = PlaySnd
trigger1 = AnimElem = 4
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









[StateDef 225]
anim = 77200
ctrl = 0
type = S
movetype = A
physics = S
poweradd = 60
sprpriority = 2

[State 200, c]
type = removeexplod
trigger1 = !time
id = 102

[State 200, d]
type = removeexplod
trigger1 = !time
id = 104

[State 200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 21, 2

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

;[State 210, velset]
;type = velset
;trigger1 = animelem = 4
;x = 3
;y = 0

[State 200, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 45
guardflag = MA
pausetime = 12,12
hitsound = S2,0
guardsound = S3,0
sparkno = S30002
sparkxy = -10,-50
hitsound = S2,2
guardsound = S3,0
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10
guard.velocity = -2
air.velocity = -2,-3
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8




[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1










;---------------------------------------------------------------------------

; Standing light kick
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 230
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
value = 0, 3

[State 230, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,3

[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = light
damage    = 12
guardflag = MA
pausetime = 8,8
sparkno = S30000
sparkxy = -10,-10
hitsound = S2,3
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -3
air.velocity = -3
airguard.velocity = -6
ground.cornerpush.veloff = -9
air.fall = 1
fall.recovertime = 16
envshake.time = 6
envshake.ampl = 3; or 4




[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing medium kick
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
ctrl = 0
velset = 0,0
anim = 240
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
value = 0, 5

[State 240, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,5

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 45
guardflag = MA
pausetime = 0,12
sparkno= S30002
sparkxy = -10,-60
hitsound = S2,5
guardsound = S3,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -10
guard.velocity = -4
air.velocity = -5
airguard.velocity = -12
ground.cornerpush.veloff = -8
air.fall = 1
fall.recovertime = 26
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 1000]
type = Explod
trigger1 = AnimElem = 2
anim = 241
sprpriority = 8
pos = 0,0
removetime = 16


[State 241, snd]
type = PlaySnd
trigger1 = animelem = 5
value = 30,4



[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Standing strong kick  (launcher)
[Statedef 255]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 60
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

[State 250, c]
type = removeexplod
trigger1 = !time
id = 102

[State 250, d]
type = removeexplod
trigger1 = !time
id = 104


[State 250, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 5

[State 250, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,5

[State 250, 2x]
type = PlaySnd
trigger1 = time = 0
value = 30,3

[State 250, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 45
animtype  = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = S30002
sparkxy = -10,-120
hitsound = S2,2
guardsound = S3,0
ground.type = high
air.type = High
ground.slidetime = 20
ground.hittime = 30
air.hittime = 40
guard.ctrltime = 20
ground.velocity = -1,-13
guard.velocity = -6
air.velocity = -1,-11
airguard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
fall = 0
air.fall = 0
fall.recover = 0
air.recover = 0
yaccel = .4
envshake.time = 12
envshake.ampl = 6
fall.envshake.time = 20
fall.envshake.ampl = 8


;superjump follow
[State 420, jump combo]
type = Changestate
trigger1 = movehit ; when you hit the opponent
trigger1 = command = "holdup"
value = 9996; the superjump state
ctrl = 1 ; these menas that you re-gain control

[State 250, xplod]
type = explod
trigger1 = StateNo = 255
trigger1 = animelem = 3
ID = 251
anim = 251
name = "unikick2"
postype = P1
pos = -2,8
ownpal = 1
sprpriority = 6
facing = 1
bindtime= -1


[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------------

; Stand Hard Kick
[StateDef 240]
anim = 77250
ctrl = 0
type = S
movetype = A
physics = S
poweradd = 40
sprpriority = 2

[State 250, c]
type = removeexplod
trigger1 = !time
id = 102

[State 250, d]
type = removeexplod
trigger1 = !time
id = 104

[State 250, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 4

[State 250, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,4

[State 210, velset]
type = velset
trigger1 = animelem = 2
x = 10
y = 0

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 25
animtype = medium
guardflag = MA
pausetime = 8,8
hitsound = S2,4
guardsound = S3,0
sparkno=S30000
sparkxy = -10,-43
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -4
guard.velocity = -4
air.velocity = -4
envshake.time = 9
envshake.ampl = 4; or 5


;[State 1000]
;type = Explod
;trigger1 = AnimElem = 5
;anim = 77241
;sprpriority = 8
;pos = 0,0
;removetime = 9



[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 20
ctrl = 0
anim = 400
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 400, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 12
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 8,8
sparkno = S30000
sparkxy = -10,-50
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -3
air.velocity = -1.5,-3
envshake.time = 6
envshake.ampl = 3; or 4





[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching medium punch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 60
ctrl = 0
anim = 410
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 410, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,2

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 45
animtype  = Hard
hitflag = MAF
guardflag = HL
pausetime = 12,12
sparkno = S30002
sparkxy = -10,-80
hitsound = S2,2
guardsound = S3,0
ground.type = high
air.type = High
ground.slidetime = 20
ground.hittime = 30
air.hittime = 40
guard.ctrltime = 20
ground.velocity = -1,-13
guard.velocity = -6
air.velocity = -1,-11
airguard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
fall = 0
air.fall = 0
fall.recover = 0
air.recover = 0
yaccel = .4
envshake.time = 12
envshake.ampl = 6
fall.envshake.time = 20
fall.envshake.ampl = 8


;superjump follow
[State 420, jump combo]
type = Changestate
trigger1 = movehit ; when you hit the opponent
trigger1 = command = "holdup"
value = 9996; the superjump state
ctrl = 1 ; these menas that you re-gain control



[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching strong punch
[Statedef 411]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 40
ctrl = 0
anim = 420
sprpriority = 0

[State 420, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 420, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 420, helper]
type = Explod
triggerall = !Numexplod(421)
trigger1 = StateNo = 411
trigger1 = animelem = 5
ID = 421
anim = 421
name = "unibeamX"
postype = P1
pos = -5,4
bindtime= -1
ownpal = 1
sprpriority = 4
facing = 1
time = 22

[State 421, snd]
type = PlaySnd
;trigger1 = time = 20
trigger1 = animelem = 5
value = 30,11

[State 421, hit]
type = HitDef
trigger1 = Time = 0
attr = S, NA
guardflag = MA
damage    = 25
hitflag = MAF
priority = 6, Hit
pausetime = 2, 8
sparkno = S30000
sparkxy = -10,-60
hitsound = S2, 1
guardsound = S3, 0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -5,-.5
air.type = High
air.velocity = -4
air.hittime = 20
envshake.time = 9
envshake.ampl = 4; or 5


[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



;--------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching light kick
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 20
ctrl = 0
anim = 430
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 3

[State 430, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,3


[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 12
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 8,8
sparkno = S30000
sparkxy = -10,-10
hitsound = S2,3
guardsound = S3,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -3
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20
envshake.time = 6
envshake.ampl = 3; or 4



[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Medium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 40
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 4

[State 440, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,4

[State 440, vel]
type=velset
trigger1=animelem=3
x=5

[State 440, sts]
type=statetypeset
trigger1=animelemtime(3)>=0
statetype=S
physics=S

[State 440, push]
type=playerpush
trigger1=animelemtime(3)>=0&&animelemtime(8)<0&&movehit
value=0
ignorehitpause=1

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 25
hitflag = MAFD
guardflag = L
pausetime = 0,8
sparkno = S30000
sparkxy = -10,-10
hitsound = S2,4
guardsound = S3,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.2,-3
guard.velocity = -5
envshake.time = 9
envshake.ampl = 4; or 5

[State 1000]
type = Explod
trigger1 = AnimElem = 4
anim = 441
sprpriority = -8
pos = 0,0
removetime = 16


[State 241, snd]
type = PlaySnd
trigger1 = animelem = 4
value = 30,4



[State 440, end]
type=changestate
trigger1=!animtime
value= 11
ctrl=1

;--------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouch Strong Kick

[Statedef 450]
type=C
movetype=A
physics=C
anim=450
velset=0,0
poweradd=60
juggle=4
sprpriority=1
ctrl=0

[State 450, snd]
type = PlaySnd
trigger1 = Time = 2
value = 0, 5

[State 450, sndx]
type = PlaySnd
trigger1 = time = 0
value = 21,5

[State 450, hit]
type=hitdef
trigger1=animelem=4
attr=C,NA
damage=45
animtype=Heavy
guardflag=L
hitflag=MAFD
priority=4,Hit
pausetime=12,12
hitsound=s2,5
guardsound=s3,0
sparkno = S30002
sparkxy = -10,-55
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity=-8,-4
air.type=Low
air.velocity=-8,-4
down.velocity=-2,-4
fall=1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 450, helper]
type = explod
triggerall = !Numexplod(451)
trigger1 = animelem = 4
anim = 451
id = 451
postype = P1
pos = 0,0
ownpal = 1
sprpriority = -4
facing = 1

[State 241, snd]
type = PlaySnd
trigger1 = animelem = 4
value = 30,4


[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



;---------------------------------------------------------------------------
;Jump Light Punch
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 20
ctrl = 0
anim = 600
sprpriority = 2

[State 600, StateTypeSet]
type = StateTypeSet
trigger1 = var(10) = 1
physics = N

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
damage    = 12
animtype = light
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 12,12
sparkno = S30000
sparkxy = -10,-60
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -4
guard.velocity = -10.6
airguard.velocity = -6
air.type = low
air.velocity = -1,-7
down.velocity = -4, -4
p2facing = 1
yaccel = 0.5
envshake.time = 6
envshake.ampl = 3; or 4






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

[State 610, 1x]
type = PlaySnd
trigger1 =  animelem = 2
value = 30,4



[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
;Jump Medium Punch
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 20
ctrl = 0
anim = 610
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
value = 30,11

[State 610, uni]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
animtype = Medium
guardflag = HA
hitflag = MAFD
;priority = 4, Hit
sprpriority = 2
pausetime = 12,12
sparkno = S30000
sparkxy = -10,-70
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
air.velocity = -1,-7
down.velocity = -4,-4
p2facing = 1
yaccel = 0.5
envshake.time = 9
envshake.ampl = 4; or 5

[State 610, xplod]
type = explod
triggerall = !NumExplod(615)
trigger1 = StateNo = 610
trigger1 = animelem = 2
ID = 615
anim =615
name = "unibeamY"
postype = P1
pos = 3,-20
ownpal = 1
removetime = 11
bindtime= -1
sprpriority = 6
facing = 1





[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
;---------------------------------------------------------------------------
;Jump Strong Punch A Front
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 60
ctrl = 0
anim = 620
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 620, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,2

[State 620, 2x]
type = PlaySnd
trigger1 = time = 0
value = 30,11
channel=0

[State 620, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = -1;S30002
sparkxy = -1;-10,-60
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -7,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -12,12
air.hittime = 20
yaccel = 0.5
down.velocity = -4,-4
p2facing = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
air.fall=1
fall.recover=0
air.recover=0

[State 0, Explod]
type = Explod
trigger1 = movehit = 1
anim = 30002
ID = 310
pos = 0,-80
postype = p2
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ignorehitpause = 1


[State 620, xplod]
type = explod
triggerall = !NumExplod(621)
trigger1 = StateNo = 620
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



[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;-------------------------------------------------------
;Jump Strong Punch A UP
[Statedef 622]
type    = A
movetype= A
physics = A
juggle  = 5
ctrl = 0
anim = 630
poweradd = 60

[State 630, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 45
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
air.velocity = -12,12
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
trigger1 = StateNo = 630
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
value = 660

;---------------------------------------------------------------------------
; Proton Shot (Down
[Statedef 621]
type    = A
movetype= A
physics = A
juggle  = 5
ctrl = 0
anim = 640
poweradd = 60

[State 640, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 45
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 6, Hit
pausetime = 12, 12
sparkno = S30002
sparkxy = -10, -40
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -8 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -12,12
air.hittime = 20
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
air.fall=1
fall.recover=0
air.recover=0



[State 640, xplod]
type = explod
triggerall = !NumExplod(641)
trigger1 = StateNo = 621
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





[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
;Jump Light Kick
[Statedef 641]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 40
ctrl = 0
anim = 650
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 4

[State 650, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,4

[State 650, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
animtype = Light
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 12,12
sparkno = S30000
sparkxy = -10,-40
hitsound = S2,4
guardsound = S3,0
ground.type = High
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -5
guard.velocity = -17
airguard.velocity = -6
air.type = Low
air.velocity = -1,-7
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1
envshake.time = 9
envshake.ampl = 4; or 5




[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660










; Air Medium Kick
[StateDef 631]
anim = 77640
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 20
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 3

[State 670, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,3

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 12
animtype = Light
guardflag = HA
hitflag = MAFD
;priority = 4, Hit
sprpriority = 2
pausetime = 12,12
sparkno = S30000
sparkxy = -10,-50
hitsound = S2,3
guardsound = S3,0
ground.type = Low
ground.slidetime = 14
ground.hittime = 15
ground.velocity = -4
guard.slidetime = 13
guard.velocity = -8.6
airguard.velocity = -5,0
air.type = Low
air.velocity = -1,-7
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1
envshake.time = 6
envshake.ampl = 3; or 4





[State 640, ChangeAnim]  ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1












;---------------------------------------------------------------------------
;Jump Medium Kick
[Statedef 670]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 670
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
triggerall = var(7)
triggerall = var(28) = [0,1]
trigger1 = movecontact
value = 620

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(28) = [2,3]
trigger1 = movecontact
value = 650

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
;---------------------------------------------------------------------------
;Jump Strong Kick   A
[Statedef 680]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 680
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

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(28) = [0,1]
trigger1 = movecontact
value = 1300

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(28) = [2,3]
trigger1 = movecontact
value = 1350

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;--------------------------------------------------------------------------
;Jump Strong Kick  B
[Statedef 651]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 60
ctrl = 0
anim = 690
sprpriority = 2

[State 690, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 5

[State 690, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,5

[State 690, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = S30002
sparkxy = -10,-40
hitsound = S2,5
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -12,12
air.hittime = 20
p2facing = 1
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
air.fall=1
fall.recover=0
air.recover=0




[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
;---------------------------------------------------------------------------
;Knee Dive
[Statedef 700]
type    = A
movetype= A
physics = A
juggle  = 3
ctrl = 0
anim = 700
velset = 3, 4
poweradd = 35

[State 700, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
damage = 55, 0
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 6, Hit
pausetime = 4, 14
sparkno = -1
guard.sparkno=-1
sparkxy = -1
hitsound = S2, 2
guardsound = S3, 0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -6
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -1.8,-3
air.hittime = 12

[State 700, snd]
type = PlaySnd
trigger1 = Time = 1
value = 21, 0

[State 700, snd]
type = PlaySnd
trigger1 = animelem = 3
value = 30,1

[State 700, propulsor]
type = Explod
triggerall = !NumExplod(701)
trigger1 = StateNo = 700
trigger1 = animelem = 3
anim = 701
id = 701
name = "propulsor2"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 20

[State 700, c]
type = removeexplod
trigger1 = AnimTime = 0
id = 701

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

[State 700, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
;Throw
;---------------------------------------------------------------------------
[Statedef 800]
type = S
movetype = A
physics = S
velset = 0,0
anim = 800
ctrl = 0

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 2, miss
sparkno = -1
guard.sparkno=-1
hitsound = S1, 1
sprpriority = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 804
p2stateno = 805
guard.dist = 0
fall = 1

[State 830, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------------------

[Statedef 804]
type = S
movetype = A
physics = S
anim = 801
velset = 0,0


[State 1000, 1]
type = PlaySnd
trigger1 = Time = 1
value =3,1

[State 777, hsp] ; particles
type = helper
trigger1 = !time
helpertype = normal
stateno = 8705
ID = 8705
name = "hitspark5"
postype = p2
pos = 0,-60
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value =21,2

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem =5
value =30,1
channel= 2

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value =30,2
channel= 3

[State 810, a]
type = Width
trigger1 = 1
value = 80, 0

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1


[State 1410, Invincibility]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 80,0
[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 70,0
[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 60,0
[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 4
pos = 50,0
[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 5
pos =40,0

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(102)
trigger1 = StateNo = 804
trigger1 = animelem = 5
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

[State 3500, a2]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 3201 , a6]
type = HitDef
trigger1 = !time
attr = S, HA
damage    = 0,20
priority = 7, hit
animtype = hard
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkxy = 10,-50;(enemy ,const(size.mid.pos.x)),(enemy ,const(size.mid.pos.y))
sparkno = -1;Sifelse(random>500,8520,8521)
sprpriority = 6
guard.sparkno = -1
hitsound   = S5,4
guardsound = S7,1
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
p2stateno = 865
givepower = 5
kill = 1

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
[State 1045, Super Jump Afterimage]
type = null
trigger1 = animelem = 6
length = 100
PalBright   =  320, 320, 320
PalContrast =  10, 10, 10
PalAdd      =  80,80,100
PalMul      = .50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 45

[State 3500, A5]
type = Veladd
trigger1 = time >= 41
x = 2

[State 3500, A6]
type = Velset
trigger1 = animelem = 6
x = 6

[State 1410, State]
type = sprpriority
trigger1 = 1
value = 2

[State 3500, b1]
type = ChangeState
trigger1 = movehit
value = 806
ctrl = 0

;-----------------------------------------------------------------------------
;Going to Wall
;----------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 806]
type    = S
movetype = A;I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 802

; MakeDust effect, use it on running moves or dash moves
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
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
value = 866

[State 3502, 10]
type = PlaySnd
trigger1 = p2stateno = 866
value = 31,1
volume = 200
persistent = 0

[State 3502, 5] ;change
type = ChangeState
triggerall = time>=12
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
value = 807
ctrl = 0

;--------------End
[Statedef 807]
type    = S
movetype = A;I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 1

[State 751, c]
type = removeexplod
trigger1 = !time
id = 102


[State 777, a01]
type = ChangeAnim
trigger1 = !time && prevstateno != 9000
value = 803
ctrl = 1

[State 3505, a1]
type = Turn
trigger1 =!time

[State 3505, dd]
type = PlaySnd
trigger1 = time =1
value = 22,8
channel = 7
volume =1024

[State 3502, Bind 1]
type = TargetBind
trigger1 = !time
pos = 10, -65
time = 1

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1

[State 3505, p2] ;explodpedr
type = helper
trigger1 = p2stateno = 867
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

[State 3506, ea]
type = TargetLifeAdd
trigger1= p2stateno = 867
value = -20


[State 3505, 10]
type = PlaySnd
trigger1 = p2stateno = 867
value = 31,4
volume = 200
persistent = 0

[State 3505, f0]
type = EnvShake
trigger1 = p2stateno = 867
time = 8
freq = 60
ampl = -4
persistent = 0


[State 3505, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------
;P2 MOvement
[Statedef 805]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
poweradd = 80

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = -2

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 808

[State 850, 1]
type = screenbound
trigger1 = 1
value = 1

[State 7696, 6]
type = ChangeState
trigger1 = Time = 29
ctrl = 1
value =  5010

;------------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;Throw 2
;-----------------------------------------------------------------------------
[Statedef 820]
type = S
movetype = A
physics = S
velset = 0,0
anim = 800
ctrl = 0

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 2, miss
sparkno = -1
hitsound = S1, 1
sprpriority = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 814
p2stateno = 815
guard.dist = 0
fall = 1

[State 830, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------------------

[Statedef 814]
type = S
movetype = A
physics = N
anim = 810
velset = 0,0


[State 1000, 1]
type = PlaySnd
trigger1 = Time = 1
value =3,1

[State 777, hsp] ; particles
type = helper
trigger1 = !time
helpertype = normal
stateno = 8705
ID = 8705
name = "hitspark5"
postype = p2
pos = 0,-60
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1



[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value =21,2

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value =30,2
channel= 2

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value =30,1
channel= 4

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 10
value =0,3
channel= 4

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 11
value =22,10
channel= 3


[State 810, a]
type = Width
trigger1 = 1
value = 80, 0


[State 1410, Invincibility]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 80,0
[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 70,0
[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 60,0
[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 4
pos = 50,0
[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 5
pos =75,-20

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 6
pos = 50,-55
[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 7
pos = 50,-55
[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 8
pos = 75,-35

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 9
pos = 50,-20
[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 10
pos =40,0


[State 1205, propulsor]
type = Explod
triggerall = !NumExplod(74)
trigger1 = animelem = 6
id = 74
anim = 74
sprpriority = 4
supermove = 1
postype = P1
pos = 10,10
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime = 37

[State 777, es]
type = Explod
triggerall = !NumExplod(61)
trigger1 = animelem = 6
sprpriority = 10
anim = 61
id=61
pos = 0, 6
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 1205, propulsor2]
type = Explod
triggerall = !NumExplod(79)
trigger1 = animelem = 6
anim = 74
id = 79
sprpriority = 4
supermove = 1
postype = P1
pos = -5,15
removeongethit = 1
scale =1,1
bindtime = -1
ownpal = 1
removetime =37

[State 751,VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 4
y= -6

[State 1350, x]
type = PosFreeze
trigger1 = time = [133,138]

[State 751,VelSet]
type = VelSet
trigger1 = AnimElem = 8
x =0
y= 0

[State 1000, 2]
type = HitDef
trigger1 = AnimElem = 10
;offset = -0, -200
attr = S, NA
animtype  = Heavy
guardflag = MA
hitflag = MAF
damage = 100,8
pausetime = 0,5
sparkno = -1
guard.sparkno=-1
sparkxy = -51
hitsound = S2,2
guardsound = S3,0
ground.type = Heavy
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -9,25
air.velocity = -9,25
fall=1
air.fall=1
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

[State 1410, State]
type = sprpriority
trigger1 = 1
value = 2

[State 1410, State]
type = sprpriority
trigger1 = AnimElem = 5
value = -2

[State 1410, State]
type = sprpriority
trigger1 = AnimElem = 10
value = 2

[State 1410, State]
type = ChangeState
trigger1 = animtime = 0
value = 660
ctrl = 1
;-----------------------------------------------------------------------------

[Statedef 815]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
poweradd = 80


[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = -2

[State 1410, State]
type = sprpriority
trigger1 = AnimElem = 5
value = 2

[State 1410, State]
type = sprpriority
trigger1 = AnimElem = 10
value = -2

[State 751,VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = -4
y= -6

[State 1350, x]
type = PosFreeze
trigger1 = time = [133,138]

[State 751,VelSet]
type = VelSet
trigger1 = AnimElem = 8
x =0
y= 0

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 812


[State 850, 1]
type = screenbound
trigger1 = 1
value = 1

[State 7696, 6]
type = ChangeState
trigger1 = Time = 200
ctrl = 1
value =  5010




























;Super Jump
[Statedef 9996]; change these for the number that you want
type = A
movetype = I
physics = N
anim = 40 ; these is the jump anim
velset = 0,0
ctrl = 0

[State 9999, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 9999, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 9999, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 9999, 4]
type = VelSet
trigger1 = animtime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)*1.5 ; you can change these value, to make it fit how you want the superjump

[State 9999, 5]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1

[State 9999, 6]
type = PlaySnd
trigger1 = Time = 0
value = S15, 3

[State 9999, 7] ;Dust Spark
type = explod
trigger1 = Animelem = 1 ; the first sprite of the anim
anim = 30045 ; the anim of the dust
pos = 0,0 ; the position, maybe you need to adjust these
sprpriority = 4
