
;___________________________________________________
;___________________________________________________
;
;power wave	GD					2000
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;weak
;
;___________________________________________________

[StateDef 2000]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 2
velset = 0,0

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.125+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(9) = 0
stateType		= S
moveType 		= I
physics 		= S

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State increase power bar ]
Type 		= PowerAdd
Trigger1 	= NumHelper(2000)
Trigger1 	= Helper(2000),movecontact 
Value 			= Floor(Fvar(7)*68.6+(random*.001))
persistent 		= 0

[State Call projectile]
Type 		= Helper
Trigger1 	= AnimelemTime(7) = 1
helperType 		= normal
name 			= "powerwaveGDGD"
ID 			= 2000
Pos			= 3,0
PosType 		= p1;p2,front,back,left,right
facing 			= 1
StateNo			= StateNo+1
keyctrl			= 0
ownpal 			= 1
supermoveTime 		= 1
pausemoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,4
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 7, = 1
Value		= 7,5
;Channel     = 0
Volume      = 50
;___________________________________________________
;___________________________________________________
;
;"powerwaveGD GD"

[StateDef 	2001]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle 			= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 2

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 2.5

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State move has been hit or reversed]
Type 		= ChangeState
Trigger1 	= movecontact ;|| movereversed
Value	 		= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= FrontEdgeDist <= -30

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Dust]
Type 		= MakeDust
Trigger1 	= Time%(random%3+1) = 0
Pos 			= -5+5-(random%10),5-(random%10)
Pos2 			=5+5-(random%10),5-(random%10)
spacing 		= 12-(random%3)

[State no hit]
Type 		= NotHitBy
Trigger1 	= 1
Value 			= SCA,AA,AT

;does not work properly, because MY projectiles use custom get hit states
[State override]
Type 		= HitOverRide
Trigger1 	= 1
attr 				= SCA,AP
slot 				= 1
StateNo 			= StateNo +1
Time 				= 1
forceair 			= 0

[State proper behaviour]
Type 		= ReversalDef
Trigger1 	= 1
pausetime			= 0
sparkno				= 0
sparkxy 			= 0,-64
hitsound			= S240,0
p1stateno			= stateno+1
;p2stateno			= target,stateno+1;does not matter
reversal.attr 			= SCA,AP
 
[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,FVar(0)*19.4+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

;yes, my hitdefs are ugly
;a bigger make up is needed
[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(2) = 1
attr 				= S, SP
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 			= back
fall.AnimType 			= back
priority 			= 3,Hit
damage 				= Floor((78.3+((random%2)*9.7))*(Parent,Fvar(0))), Floor((9.7+(random*.001))*(Parent,Fvar(0)))
pauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
guard.pauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
sparkno 			= 0
guard.sparkno 			= 40
sparkxy 			= 16, -36
hitsound			= S240, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 17
guard.slideTime 		= 17
ground.hitTime 			= Floor(Parent,Fvar(4)*32)
guard.hitTime 			= Floor(Parent,Fvar(4)*32)
air.hitTime 			= Floor(Parent,Fvar(4)*36)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.58333333
ground.velocity 		= -3.4444446563721
guard.velocity 			= -3.4444446563721
air.velocity 			= -3.4444446563721, -12.0500001907349
airguard.velocity 		= -3.4444446563721, -12.0500001907349
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
air.juggle 			= 0
sprpriority			= 2
;p1facing 			= -1
p1getp2facing 			= 0
;p2facing 			= -1
;p1StateNo			=
p2StateNo 			= 5610
p2getp1state 			= 1
;mindist 			=
;maxdist 			=
;snap 				= 
forcestand 			= 0
fall 				= 0
fall.xvelocity 			= 0
fall.yvelocity 			= 0
fall.recover 			= 1
Fall.RecoverTime 		= 65
fall.damage 			= 0
air.fall 			= 0
down.velocity 			= 0

down.bounce 			= 0
id 				= 0
chainID 			= -1
nochainID 			= -1,-1
hitonce 			= 1
kill 				= 1
guard.kill 			= 1
fall.kill 			= 1
numhits 			= 1
getpower			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5
palfx.Time 			= 9
palfx.mul 			= 256,256,256
palfx.add 			= 0,0,0
;envshake.Time 			= 7
;envshake.freq 			= 20
;envshake.ampl 			= -2
;envshake.phase			= 0
;fall.envshake.Time 		= 7
;fall.envshake.freq 		= 20
;fall.envshake.ampl 		= -2
;fall.envshake.phase		= 0

;___________________________________________________
;dissapearing state (if it hits)

[StateDef 2002]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 2

[State Initial Anim ]
Type 		= null;ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State pause everithing when it has hit]
Type 		= null;Pause
Trigger1 	= Time%2 && Time <= 12
Time 			= 1
MoveTime 		= 1

[State no shadow ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;
;strong
;
;___________________________________________________

[StateDef 2010]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 2
velset = 0,0

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.125+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(9) = 0
stateType		= S
moveType 		= I
physics 		= C

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State increase power bar ]
Type 		= PowerAdd
Trigger1 	= NumHelper(2000)
Trigger1 	= Helper(2000),movecontact 
Value 			= Floor(Fvar(7)*68.6+(random*.001))
persistent 		= 0

[State Call projectile]
Type 		= Helper
Trigger1 	= AnimelemTime(7) = 1
helperType 		= normal
name 			= "powerwaveGDGF"
ID 			= 2000
Pos			= 0,0
PosType 		= p1;p2,front,back,left,right
facing 			= 1
StateNo			= StateNo+1
keyctrl			= 0
ownpal 			= 1
supermoveTime 		= 1
pausemoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,16
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 7, = 1
Value		= 7,5
;Channel     = 0
Volume      = 50
;___________________________________________________
;___________________________________________________
;
;"powerwaveGD GF"

[StateDef 	2011]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle 			= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 2

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 7

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State move has been hit or reversed]
Type 		= ChangeState
Trigger1 	= movecontact ;|| movereversed
Value	 		= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= FrontEdgeDist <= -30

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Dust]
Type 		= MakeDust
Trigger1 	= Time%(random%3+1) = 0
Pos 			= -5+5-(random%10),5-(random%10)
Pos2 			=5+5-(random%10),5-(random%10)
spacing 		= 12-(random%3)

[State no hit]
Type 		= NotHitBy
Trigger1 	= 1
Value 			= SCA,AA,AT

;does not work properly, because MY projectiles use custom get hit states
[State override]
Type 		= HitOverRide
Trigger1 	= 1
attr 				= SCA,AP
slot 				= 1
StateNo 			= StateNo +1
Time 				= 1
forceair 			= 0

[State proper behaviour]
Type 		= ReversalDef
Trigger1 	= 1
pausetime			= 0
sparkno				= 0
sparkxy 			= 0,-64
hitsound			= S240,0
p1stateno			= stateno+1
;p2stateno			= target,stateno+1;does not matter
reversal.attr 			= SCA,AP

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,FVar(0)*19.4+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

;yes, my hitdefs are ugly
;a bigger make up is needed
[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(2) = 1
attr 				= S, SP
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 			= back
fall.AnimType 			= back
priority 			= 3,Hit
damage 				= Floor((78.3+((random%4)*9.7))*(Parent,Fvar(0))), Floor((9.7+(random*.001))*(Parent,Fvar(0)))
pauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
guard.pauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
sparkno 			= 0
guard.sparkno 			= 40
sparkxy 			= 16, -36
hitsound			= S240, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 16
ground.hitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
air.hitTime 			= Floor(Parent,Fvar(4)*33)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.58333333
ground.velocity 		= -4.4444446563721, -7.0500001907349
guard.velocity 			= -13.4444446563721
air.velocity 			= -4.4444446563721, -7.0500001907349
airguard.velocity 		= -4.4444446563721, -7.0500001907349
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
air.juggle 			= 0
sprpriority			= 2
;p1facing 			= -1
p1getp2facing 			= 0
;p2facing 			= -1
;p1StateNo			=
p2StateNo 			= 5610
p2getp1state 			= 1
;mindist 			=
;maxdist 			=
;snap 				= 
forcestand 			= 0
fall 				= 0
fall.xvelocity 			= 0
fall.yvelocity 			= 0
fall.recover 			= 1
Fall.RecoverTime 		= 65
fall.damage 			= 0
air.fall 			= 0
down.velocity 			= 0

down.bounce 			= 0
id 				= 0
chainID 			= -1
nochainID 			= -1,-1
hitonce 			= 1
kill 				= 1
guard.kill 			= 1
fall.kill 			= 1
numhits 			= 1
getpower			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5
palfx.Time 			= 9
palfx.mul 			= 256,256,256
palfx.add 			= 0,0,0
;envshake.Time 			= 7
;envshake.freq 			= 20
;envshake.ampl 			= -2
;envshake.phase			= 0
;fall.envshake.Time 		= 7
;fall.envshake.freq 		= 20
;fall.envshake.ampl 		= -2
;fall.envshake.phase		= 0

;___________________________________________________
;dissapearing state (if it hits)

[StateDef 2012]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 2

[State Initial Anim ]
Type 		= null;ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State pause everithing when it has hit]
Type 		= null;Pause
Trigger1 	= Time%2 && Time <= 12
Time 			= 1
MoveTime 		= 1

[State no shadow ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0


;___________________________________________________
;___________________________________________________
;
;power wave	98					2050
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;weak
;
;___________________________________________________

[StateDef 2050]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 0
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.125+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(9) = 0
stateType		= C 
moveType 		= I
physics 		= C

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State increase power bar ]
Type 		= PowerAdd
Trigger1 	= NumHelper(2050)
Trigger1 	= Helper(2050),movecontact 
Value 			= Floor(Fvar(7)*93.75+(random*.001))
Persistent 		= 0

[State Call projectile]
Type 		= Helper
Trigger1 	= AnimelemTime(7) = 1
helperType 		= normal
name 			= "powerwave1998GD"
ID 			= 2050
Pos			= 0,0
PosType 		= p1;p2,front,back,left,right
facing 			= 1
StateNo			= StateNo+1
keyctrl			= 0
ownpal 			= 1
supermoveTime 		= 1
pausemoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 9,1
Channel     = 0
Volume      = 70

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 7, = 1
Value		= 7,11
;Channel     = 0
Volume      = 50
;___________________________________________________
;___________________________________________________
;
;"powerwave1998GD"

[StateDef 	2051]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle 			= 14
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 1


[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 2.5

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State EndVel]
Type 		= VelSet
Trigger1 	= !AnimelemTime(7)
X 			= 0

[State move has been hit or reversed]
Type 		= ChangeState
Trigger1 	= movecontact ;|| movereversed
Value	 		= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= FrontEdgeDist <= -30 || Animtime = 0

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Override]
type = hitby
trigger1 = Time >= 0
value = SCA, NP,SP,HP
time = -1
ignorehitpause = 1

[State Override]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, AA, AP, AT
slot = 0
stateno = stateno+1
time = -1
ignorehitpause = 1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,FVar(0)*19.4+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit 1]
Type 		= Hitdef
Trigger1 	= animelem = 2 && animelem = 4, < 0
attr 				= S, SP
hitflag 			= MA
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
damage 			= Floor((88.3+((random%2)*9.7))*(Parent,Fvar(0))), Floor((9.7+(random*.001))*(Parent,Fvar(0)))
pauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
guard.pauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
sparkno 			= S1041
guard.sparkno 		= S1042
sparkxy 			= 21, -12
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 16
ground.hitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
air.hitTime 			= Floor(Parent,Fvar(4)*36)
guard.ctrlTime 			= 16
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -4.0444446563721, -7.51999998092651
guard.velocity 			= -13.4444446563721
air.velocity 			= -4.0444446563721, -7.01999998092651
airguard.velocity 		= -4.4444446563721, -7.51999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 2
fall 				= 1
fall.yvelocity 			= -3.4
Fall.RecoverTime 		= 65
getpower			= Floor(109.375+(random*.001)*Parent,Fvar(5)),Floor(109.375+(random*.001)*Parent,Fvar(5))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5

[State hit 2]
Type 		= Hitdef
Trigger1 	= animelem = 4
attr 				= S, SP
hitflag 			= MA
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
damage 			= Floor((88.3+((random%2)*9.7))*(Parent,Fvar(0))), Floor((9.7+(random*.001))*(Parent,Fvar(0)))
pauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
guard.pauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
sparkno 			= S1041
guard.sparkno 		= S1042
sparkxy 			= 21, -12
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 16
ground.hitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
air.hitTime 			= Floor(Parent,Fvar(4)*36)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -12.0444446563721
guard.velocity 			= -13.4444446563721
air.velocity 			= -4.0444446563721, -7.01999998092651
airguard.velocity 		= -4.4444446563721, -7.51999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 2
fall 				= ifelse(p2statetype = A, 1,0)
fall.yvelocity 			= -3.4
Fall.RecoverTime 		= 65
getpower			= Floor(109.375+(random*.001)*Parent,Fvar(5)),Floor(109.375+(random*.001)*Parent,Fvar(5))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5


;___________________________________________________
;dissapearing state (if it hits)

[StateDef 2052]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 1

[State Override]
type = nothitby
trigger1 = Time >= 0
value = SCA
time = -1
ignorehitpause = 1

[State Override]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, AA, AP, AT
slot = 0
stateno = stateno
time = -1
ignorehitpause = 1

[State Initial Anim ]
Type 		= null;ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State pause everithing when it has hit]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 12
Time 			= 1
MoveTime 		= 1

[State no shadow ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0



;___________________________________________________
;
;strong
;
;___________________________________________________

[StateDef 2060]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 0
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.125+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(9) = 0
stateType		= S 
moveType 		= I
physics 		= S

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State increase power bar ]
Type 		= PowerAdd
Trigger1 	= NumHelper(2050)
Trigger1 	= Helper(2050),movecontact 
Value 			= Floor(Fvar(7)*93.75+(random*.001))
persistent 		= 0

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(5)
X 			= 10

[State Accel]
Type 		= VelAdd 
Trigger1 	= vel X>0
X 			= -2

[State Call projectile]
Type 		= Helper
Trigger1 	= AnimelemTime(7) = 1
helperType 		= normal
name 			= "powerwave1998GD"
ID 			= 2050
Pos			= 0,0
PosType 		= p1;p2,front,back,left,right
facing 			= 1
StateNo			= StateNo+1
keyctrl			= 0
ownpal 			= 1
supermoveTime 		= 1
pausemoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,4
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 7, = 1
Value		= 7,11
;Channel     = 0
Volume      = 50

;___________________________________________________
;___________________________________________________
;
;"powerwave1998GF"

[StateDef 	2061]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle 			= 14
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 5

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State EndVel]
Type 		= VelSet
Trigger1 	= !AnimelemTime(7)
X 			= 0

[State move has been hit or reversed]
Type 		= ChangeState
Trigger1 	= movecontact ;|| movereversed
Value	 		= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= FrontEdgeDist <= -30 || Animtime = 0

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Override]
type = hitby
trigger1 = Time >= 0
value = SCA, NP,SP,HP
time = -1
ignorehitpause = 1

[State Override]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, AA, AP, AT
slot = 0
stateno = stateno+1
time = -1
ignorehitpause = 1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,FVar(0)*19.4+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit 1]
Type 		= Hitdef
Trigger1 	= animelem = 2 && animelem = 4, < 0
attr 				= S, SP
hitflag 			= MA
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
damage 			= Floor((88.3+((random%2)*9.7))*(Parent,Fvar(0))), Floor((9.7+(random*.001))*(Parent,Fvar(0)))
pauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
guard.pauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
sparkno 			= S1041
guard.sparkno 		= S1042
sparkxy 			= 21, -12
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 16
ground.hitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
air.hitTime 			= Floor(Parent,Fvar(4)*36)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -4.0444446563721, -7.51999998092651
guard.velocity 			= -13.4444446563721
air.velocity 			= -4.0444446563721, -7.01999998092651
airguard.velocity 		= -4.4444446563721, -7.51999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 2
fall 				= 1
fall.yvelocity 			= -3.4
Fall.RecoverTime 		= 65
getpower			= Floor(109.375+(random*.001)*Parent,Fvar(5)),Floor(109.375+(random*.001)*Parent,Fvar(5))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5

[State hit 2]
Type 		= Hitdef
Trigger1 	= animelem = 4
attr 				= S, SP
hitflag 			= MA
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
damage 			= Floor((88.3+((random%2)*9.7))*(Parent,Fvar(0))), Floor((9.7+(random*.001))*(Parent,Fvar(0)))
pauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
guard.pauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
sparkno 			= S1041
guard.sparkno 		= S1042
sparkxy 			= 21, -12
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 16
ground.hitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
air.hitTime 			= Floor(Parent,Fvar(4)*13)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -12.0444446563721
guard.velocity 			= -13.4444446563721
air.velocity 			= -4.0444446563721, -7.01999998092651
airguard.velocity 		= -4.4444446563721, -7.51999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 2
fall 				= ifelse(p2statetype = A, 1,0)
fall.yvelocity 			= -3.4
Fall.RecoverTime 		= 65
getpower			= Floor(109.375+(random*.001)*Parent,Fvar(5)),Floor(109.375+(random*.001)*Parent,Fvar(5))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5

;___________________________________________________
;dissapearing state (if it hits)

[StateDef 2062]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 1

[State Override]
type = nothitby
trigger1 = Time >= 0
value = SCA
time = -1
ignorehitpause = 1

[State Override]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, AA, AP, AT
slot = 0
stateno = stateno
time = -1
ignorehitpause = 1

[State Initial Anim ]
Type 		= null;ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State pause everithing when it has hit]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 12
Time 			= 1
MoveTime 		= 1

[State no shadow ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;___________________________________________________
;
;power wave	1999					2100
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;weak
;
;___________________________________________________

[StateDef 2100]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 0
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.125+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(9) = 0
stateType		= S 
moveType 		= I
physics 		= S

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State Increase power bar ]
Type 		= PowerAdd
Trigger1 	= NumHelper(2100)
Trigger1 	= Helper(2100),movecontact 
Value 			= Floor(Fvar(7)*68.6+(random*.001))
persistent 		= 0

[State Dust]
type = Helper
trigger1 = animelem = 7, = 1
name = "Power Wave"
id = 2101
pos = 64,0
postype = p1
stateno = 2101
helpertype = normal
keyctrl = 0
ownpal = 1

[State  PROJ]
type = Projectile
trigger1 = AnimElem = 7, = 1
attr = S, SP
projID = 2101
projanim = 2101
projhitanim = 2102
projshadow = 68,68,68
offset = 64,0
velocity = 7
ownpal = 1
damage = 88,10
animtype = Hard
hitflag = MAFP
guardflag = M
pausetime = 0,13
sparkno = S1041
sparkxy = 23,0
guard.sparkno = S1042
hitsound			= S240, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -9
air.animtype = Back
air.fall = 1
air.velocity = -4,-4
down.hittime = 12
down.velocity = -6,0
guard.pausetime = 0,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
yaccel = .50
air.juggle = 14
getpower = 40,40
givepower = 21,21

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,4
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 7, = 1
Value		= 7,5
;Channel     = 0
Volume      = 50
;___________________________________________________
;___________________________________________________
;
;--------------------------------
;PROJECTILE DUST EFFECT 99
;--------------------------------
[Statedef 2101]
type = S
movetype = A
physics = N
anim = 9999
velset = 7,0
juggle = 5
ctrl = 0

[State 2101, DUST]
type = MakeDust
trigger1 = Time >= 0
pos = 0,0
spacing = 3

[State 2101, END]
type = Destroyself
trigger1 = parent, numprojid(2101) <= 0

;___________________________________________________
;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 2110]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 14
facep2 			= 1
sprpriority 		= 0
velset = 0,0
anim = stateno

[State Mulset]
type = varset
trigger1 = movehit
trigger1 = animelem = 9, >= 0
persistent = 0
ignorehitpause = 1
var(6) = 4

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.125+(random*.001))

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(10) = 0
stateType		= S 
moveType 		= I
physics 		= S

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(5)
X 			= 10

[State Accel]
Type 		= VelAdd 
Trigger1 	= vel X>2
X 			= -2

[State hit ]
Type 		= Hitdef
Trigger1 	= animelem = 9
attr 				= S, SP
hitflag 			= MA
guardflag 			= L
affectteam 			= E
AnimType 			= Back
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
damage 			= Floor((137.2+((random%3)*9.8))*(Fvar(0))), Floor((9.7+(random*.001))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*10)
guard.pauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*10)
sparkno 			= S1041
guard.sparkno 		= S1042
sparkxy 			= -16, -36
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 22
guard.slideTime 		= 34
ground.hitTime 		= Floor(Fvar(4)*22)
guard.hitTime 		= Floor(Fvar(4)*36)
air.hitTime 		= Floor(Fvar(4)*33)
guard.ctrlTime 		= 36
airguard.ctrlTime 	= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -13.4846286773682
guard.velocity 			= -13.4846286773682
air.velocity 			= -4.4846286773682, -7.51999998092651
airguard.velocity 		= -4.4846286773682, -7.51999998092651
ground.cornerpush.veloff 	= -18.5
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= -18.5
sprpriority			= 2
fall 				= ifelse(p2statetype = A, 1,0)
fall.yvelocity 		= -3.4
getpower			= Floor(Fvar(5)*64), Floor(Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5

[State Accel]
Type 		= Explod
Trigger1 	= AnimelemTime(7) = 1
Anim 			= 2111
ID 			= 2111
Pos 			= 0,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 9
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,16
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 7, = 1
Value		= 7,6
;Channel     = 0
Volume      = 50

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

;___________________________________________________
;___________________________________________________
;
;"powerwave1999GF"

[StateDef 	2111]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle 			= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State move has been hit or reversed]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value	 		= StateNo+1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Override]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, AP,AA,AT
slot = 0
stateno = stateno+1
time = 1
ignorehitpause = 1

[State Override]
type = hitby
trigger1 = Time >= 0
value = SCA, NP,SP,HP
time = 1
ignorehitpause = 1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,FVar(0)*29.4+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State Parentvar]
type = Parentvarset
trigger1 = animtime =  0
ignorehitpause = 1
var(19) = 0

;yes, my hitdefs are ugly
;a bigger make up is needed
[State hit ]
Type 		= Hitdef
Trigger1 	= animelem = 4
attr 				= S, SP
hitflag 			= MAP
guardflag 			= L
affectteam 			= E
AnimType 			= Back
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
damage 			= Floor((137.2+((random%3)*9.8))*(Parent,Fvar(0))), Floor((9.7+(random*.001))*(Parent,Fvar(0)))
pauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*10)
guard.pauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
sparkno 			= S1041
guard.sparkno 		= S1042
sparkxy 			= 16, -36
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 16
ground.hitTime 		= Floor(Parent,Fvar(4)*16)
guard.hitTime 		= Floor(Parent,Fvar(4)*16)
air.hitTime 		= Floor(Parent,Fvar(4)*13)
guard.ctrlTime 		= 0
airguard.ctrlTime 	= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -13.4846286773682
guard.velocity 			= -13.4846286773682
air.velocity 			= -4.4846286773682, -7.51999998092651
airguard.velocity 		= -4.4846286773682, -7.51999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 2
fall 				= 0
fall.yvelocity 		= -3.4
getpower			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5

;___________________________________________________
;dissapearing state (if it hits)

[StateDef 2112]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 1

[State Initial Anim ]
Type 		= null;ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State pause everithing when it has hit]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 12
Time 			= 1
MoveTime 		= 1

[State no shadow ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;___________________________________________________
;
;power wave	2000				2150
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;weak
;
;___________________________________________________

[StateDef 2150]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 0
velset = 0,0

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.125+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(9) = 0
stateType		= S 
moveType 		= I
physics 		= S

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State increase power bar ]
Type 		= PowerAdd
Trigger1 	= NumHelper(2150)
Trigger1 	= Helper(2150),movecontact 
Value 			= Floor(Fvar(7)*68.6+(random*.001))
persistent 		= 0

[State Dust]
type = Helper
trigger1 = animelem = 7, = 1
name = "Power Wave"
id = 2151
pos = 64,0
postype = p1
stateno = 2151
helpertype = normal
keyctrl = 0
ownpal = 1

[State  PROJ]
type = Projectile
trigger1 = AnimElem = 7, = 1
attr = S, SP
projID = 2151
projanim = 2151
projhitanim = 2152
projshadow = 68,68,68
offset = 64,0
velocity = 7
ownpal = 1
damage = 88,10
animtype = Hard
hitflag = MFAP
guardflag = M
pausetime = 0,13
sparkno = S1041
sparkxy = 23,0
guard.sparkno = S1042
hitsound			= S240, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -9
air.animtype = Back
air.fall = 1
air.velocity = -4,-4
down.hittime = 12
down.velocity = -6,0
guard.pausetime = 0,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
yaccel = .50
air.juggle = 14
getpower = 40,40
givepower = 21,21

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,4
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 7, = 1
Value		= 7,5
;Channel     = 0
Volume      = 50

;___________________________________________________
;___________________________________________________
;
;--------------------------------
;PROJECTILE DUST EFFECT 2K
;--------------------------------
[Statedef 2151]
type = S
movetype = A
physics = N
anim = 9999
velset = 7,0
juggle = 5
ctrl = 0

[State 2151, DUST]
type = MakeDust
trigger1 = Time >= 0
pos = 0,0
spacing = 3

[State 2151, END]
type = Destroyself
trigger1 = parent, numprojid(2151) <= 0

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 2160]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 0
velset = 0,0


[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.125+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(9) = 0
stateType		= S 
moveType 		= I
physics 		= S

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State increase power bar ]
Type 		= PowerAdd
Trigger1 	= NumHelper(2150)
Trigger1 	= Helper(2150),movecontact 
Value 			= Floor(Fvar(7)*68.6+(random*.001))
persistent 		= 0

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(5)
X 			= 10

[State Accel]
Type 		= VelAdd 
Trigger1 	= vel X>0
X 			= -2

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(5)
X 			= 10

[State Accel]
Type 		= VelAdd 
Trigger1 	= vel X>0
X 			= -2

[State Call projectile]
Type 		= Helper
Trigger1 	= AnimelemTime(7) = 1
helperType 		= normal
name 			= "powerwave2000GF"
ID 			= 2150
Pos			= 0,0
PosType 		= p1;p2,front,back,left,right
facing 			= 1
StateNo			= StateNo+1
keyctrl			= 0
ownpal 			= 1
supermoveTime 		= 1
pausemoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,16
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 7, = 1
Value		= 7,6
;Channel     = 0
Volume      = 50

;___________________________________________________
;___________________________________________________
;
;"powerwave2000GF"

[StateDef 	2161]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle 			= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State move has been hit or reversed]
Type 		= ChangeState
Trigger1 	= movecontact ;|| movereversed
Value	 		= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= animtime = 0

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Override]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, AP,AA,AT
slot = 0
stateno = stateno+1
time = 1
ignorehitpause = 1

[State Override]
type = hitby
trigger1 = Time >= 0
value = SCA, NP,SP,HP
time = 1
ignorehitpause = 1

[State proper behaviour]
Type 		= ReversalDef
Trigger1 	= 1
pausetime			= 0
sparkno				= 0
sparkxy 			= 0,-64
hitsound			= S240,0
p1stateno			= stateno+1
;p2stateno			= target,stateno+1;does not matter
reversal.attr 			= SCA,AP

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,FVar(0)*29.4+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

;yes, my hitdefs are ugly
;a bigger make up is needed
[State hit ]
Type 		= Hitdef
Trigger1 	= Animelem = 4
attr 				= S, SP
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
damage 			= Floor((137.2+((random%3)*9.8))*(Parent,Fvar(0))), Floor((9.7+(random*.001))*(Parent,Fvar(0)))
pauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
guard.pauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
sparkno 			= S1041
guard.sparkno 		= S1042
sparkxy 			= 16, -36
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 16
ground.hitTime 		= Floor(Parent,Fvar(4)*16)
guard.hitTime 		= Floor(Parent,Fvar(4)*16)
air.hitTime 		= Floor(Parent,Fvar(4)*13)
Guard.CtrlTime 		= 36
airguard.ctrlTime 	= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -4.4846286773682, -9.51999998092651
guard.velocity 			= -13.4846286773682
air.velocity 			= -4.4846286773682, -86.81999998092651
airguard.velocity 		= -4.4846286773682, -86.81999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 2
fall 				= 1
fall.yvelocity 			= -3.4
Fall.RecoverTime 		= 65
getpower			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5

;___________________________________________________
;dissapearing state (if it hits)

[StateDef 2162]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 1

[State Initial Anim ]
Type 		= null;ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State pause everithing when it has hit]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 12
Time 			= 1
MoveTime 		= 1

[State no shadow ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0


;___________________________________________________
;___________________________________________________
;
;power wave	2002				2200
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;weak
;
;___________________________________________________

[StateDef 2200]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 0
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(9) = 0
stateType		= S 
moveType 		= I
physics 		= S

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State increase power bar ]
Type 		= PowerAdd
Trigger1 	= NumHelper(2200)
Trigger1 	= Helper(2200),movecontact 
Value 			= Floor(Fvar(7)*109.375+(random*.001))
persistent 		= 0

[State Dust]
type = Helper
trigger1 = animelem = 7, = 1
name = "Power Wave"
id = 2201
pos = 64,0
postype = p1
stateno = 2201
helpertype = normal
keyctrl = 0
ownpal = 1

[State  PROJ]
type = Projectile
trigger1 = AnimElem = 7, = 1
attr = S, SP
projID = 2201
projanim = 2201
projhitanim = 2202
projshadow = 68,68,68
offset = 64,0
velocity = 7
ownpal = 1
damage = 88,10
animtype = Hard
hitflag = MFAP
guardflag = M
pausetime = 0,13
sparkno = S1041
sparkxy = 23,0
guard.sparkno = S1042
hitsound			= S240, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -9
air.animtype = Back
air.fall = 1
air.velocity = -4,-4
down.hittime = 12
down.velocity = -6,0
guard.pausetime = 0,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
yaccel = .50
air.juggle = 14
getpower = 40,40
givepower = 21,21

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,4
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 7, = 1
Value		= 7,5
;Channel     = 0
Volume      = 50
;___________________________________________________
;___________________________________________________
;
;--------------------------------
;PROJECTILE DUST EFFECT 2K2
;--------------------------------
[Statedef 2201]
type = S
movetype = A
physics = N
anim = 9999
velset = 7,0
juggle = 5
ctrl = 0

[State 2201, DUST]
type = MakeDust
trigger1 = Time >= 0
pos = 0,0
spacing = 3

[State 2201, END]
type = Destroyself
trigger1 = parent, numprojid(2201) <= 0

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 2210]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 14
facep2 			= 1
sprpriority 		= 0
velset = 0,0
anim = stateno

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(10) = 0
stateType		= S 
moveType 		= I
physics 		= S

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(5)
X 			= 10

[State Accel]
Type 		= VelAdd 
Trigger1 	= vel X>2
X 			= -2

[State Accel]
Type 		= Explod
Trigger1 	= AnimelemTime(7) = 1
Anim 			= 2161
ID 			= 2211
Pos 			= 0,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 9
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State Mulset]
type = varadd
trigger1 = movehit
trigger1 = animelem = 9, >= 0
persistent = 0
var(6) = 5

[State NOJUGGLE]
type = varset
trigger1 = movehit
trigger1 = animelem = 9, >= 0
ignorehitpause = 1
persistent = 0
var(13) = 100

[State hit ]
Type 		= Hitdef
Trigger1 	= Animelem = 9
attr 				= S, SP
hitflag 			= MAP
guardflag 			= L
affectteam 			= E
AnimType 			= Back
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
damage 			= Floor((137.2+((random%3)*9.8))*(Fvar(0))), Floor((9.7+(random*.001))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*1),Floor(Fvar(3)*10)
guard.pauseTime 		= Floor(Fvar(3)*1), Floor(Fvar(3)*10)
sparkno 			= S1041
guard.sparkno 		= S1042
sparkxy 			= -16, -36
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 32
ground.hitTime 		= Floor(Fvar(4)*16)
guard.hitTime 		= Floor(Fvar(4)*32)
air.hitTime 		= Floor(Fvar(4)*32)
Guard.CtrlTime 		= 36
airguard.ctrlTime 	= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -4.4846286773682, -9.01999998092651
guard.velocity 			= -12
air.velocity 			= -4.4846286773682, -8.61999998092651
airguard.velocity 		= -4.4846286773682, -8.61999998092651
ground.cornerpush.veloff 	= -18.5
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= -18.5
airguard.cornerpush.veloff 	= 0
sprpriority			= 2
fall 				= 1
fall.yvelocity 			= -3.4
Fall.Recover 		= 0
getpower			= Floor(Fvar(5)*64), Floor(Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5
p2getp1state = 1
p2stateno = 1004

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,16
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 7, = 1
Value		= 7,6
;Channel    = 0
Volume      = 50


;___________________________________________________

;___________________________________________________
;___________________________________________________

;"powerwave2002GF"

[StateDef 	2211]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle 			= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= 2161

[State move has been hit or reversed]
Type 		= ChangeState
Trigger1 	= movecontact ;|| movereversed
Value	 		= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= animtime = 0

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Override]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, AP,AA,AT
slot = 0
stateno = stateno+1
time = 1
ignorehitpause = 1

[State Override]
type = hitby
trigger1 = Time >= 0
value = SCA, NP,SP,HP
time = 1
ignorehitpause = 1

[State proper behaviour]
Type 		= ReversalDef
Trigger1 	= 1
pausetime			= 0
sparkno				= 0
sparkxy 			= 0,-64
hitsound			= S240,0
p1stateno			= stateno+1
;p2stateno			= target,stateno+1;does not matter
reversal.attr 			= SCA,AP

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,FVar(0)*29.4+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0
  
[State Parentvar]
type = Parentvarset
trigger1 = animtime =  0
ignorehitpause = 1
var(19) = 0

;yes, my hitdefs are ugly
;a bigger make up is needed
[State hit ]
Type 		= Hitdef
Trigger1 	= Animelem = 4
attr 				= S, SP
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
damage 			= Floor((137.2+((random%3)*9.8))*(Parent,Fvar(0))), Floor((9.7+(random*.001))*(Parent,Fvar(0)))
pauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*10)
guard.pauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
sparkno 			= S1041
guard.sparkno 		= S1042
sparkxy 			= 16, -36
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 16
ground.hitTime 		= Floor(Parent,Fvar(4)*16)
guard.hitTime 		= Floor(Parent,Fvar(4)*16)
air.hitTime 		= Floor(Parent,Fvar(4)*13)
Guard.CtrlTime 		= 36
airguard.ctrlTime 	= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -4.4846286773682, -9.01999998092651
guard.velocity 			= -12
air.velocity 			= -4.4846286773682, -8.61999998092651
airguard.velocity 		= -4.4846286773682, -8.61999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 2
fall 				= 1
fall.yvelocity 			= -3.4
Fall.Recover 		= 0
getpower			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5
p2getp1state = 1
p2stateno = 1004

;___________________________________________________
;dissapearing state (if it hits)

[StateDef 2212]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 1

[State Initial Anim ]
Type 		= null;ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State pause everithing when it has hit]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 12
Time 			= 1
MoveTime 		= 1

[State no shadow ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;___________________________________________________
;
;power wave	1995					2250
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;weak
;
;___________________________________________________

[StateDef 2250]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 0
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.125+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(9) = 0
stateType		= S 
moveType 		= I
physics 		= S

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State increase power bar ]
Type 		= PowerAdd
Trigger1 	= NumHelper(2250)
Trigger1 	= Helper(2250),movecontact 
Value 			= Floor(Fvar(7)*109.375+(random*.001))
persistent 		= 0

[State Dust]
type = Helper
trigger1 = animelem = 7, = 1
name = "Power Wave"
id = 2251
pos = 64,0
postype = p1
stateno = 2251
helpertype = normal
keyctrl = 0
ownpal = 1

[State  PROJ]
type = Projectile
trigger1 = AnimElem = 7, = 1
attr = S, SP
projID = 2251
projanim = 2251
projhitanim = 2252
projshadow = 68,68,68
offset = 64,0
velocity = 4
ownpal = 1
damage = 88,10
animtype = Hard
hitflag = MFAP
guardflag = M
pausetime = 0,13
sparkno = S1041
sparkxy = 23,0
guard.sparkno = S1042
hitsound			= S240, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -9
air.animtype = Back
air.fall = 1
air.velocity = -4,-4
down.hittime = 12
down.velocity = -6,0
guard.pausetime = 0,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
yaccel = .50
air.juggle = 14
getpower = 40,40
givepower = 21,21

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 9,1
Channel     = 0
Volume      = 70

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 7, = 1
Value		= 7,5
;Channel     = 0
Volume      = 50

;___________________________________________________
;___________________________________________________
;
;--------------------------------
;PROJECTILE DUST EFFECT 95
;--------------------------------
[Statedef 2251]
type = S
movetype = A
physics = N
anim = 9999
velset = 4,0
juggle = 5
ctrl = 0

[State 2251, DUST]
type = MakeDust
trigger1 = Time >= 0
pos = 0,0
spacing = 6

[State 2251, END]
type = Destroyself
trigger1 = parent, numprojid(2251) <= 0
;___________________________________________________

;___________________________________________________
;
;strong
;
;___________________________________________________

[StateDef 2260]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 0
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.125+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(9) = 0
stateType		= S 
moveType 		= I
physics 		= S

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State increase power bar ]
Type 		= PowerAdd
Trigger1 	= NumHelper(2250)
Trigger1 	= Helper(2250),movecontact 
Value 			= Floor(Fvar(7)*109.375+(random*.001))
persistent 		= 0

[State Dust]
type = Helper
trigger1 = animelem = 7, = 1
name = "Power Wave"
id = 2261
pos = 64,0
postype = p1
stateno = 2261
helpertype = normal
keyctrl = 0
ownpal = 1

[State  PROJ]
type = Projectile
trigger1 = AnimElem = 7, = 1
attr = S, SP
projID = 2261
projanim = 2261
projhitanim = 2262
projshadow = 68,68,68
offset = 64,0
velocity = 7
ownpal = 1
damage = 88,10
animtype = Hard
hitflag = MFAP
guardflag = M
pausetime = 0,13
sparkno = S1041
sparkxy = 23,0
guard.sparkno = S1042
hitsound			= S240, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -9
air.animtype = Back
air.fall = 1
air.velocity = -4,-4
down.hittime = 12
down.velocity = -6,0
guard.pausetime = 0,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
yaccel = .50
air.juggle = 14
getpower = 40,40
givepower = 21,21

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,4
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 7, = 1
Value		= 7,5
;Channel     = 0
Volume      = 50

;___________________________________________________
;___________________________________________________
;
;--------------------------------
;PROJECTILE DUST EFFECT 95i
;--------------------------------
[Statedef 2261]
type = S
movetype = A
physics = N
anim = 9999
velset = 7,0
juggle = 5
ctrl = 0

[State 2261, DUST]
type = MakeDust
trigger1 = Time >= 0
pos = 0,0
spacing = 3

[State 2261, END]
type = Destroyself
trigger1 = parent, numprojid(2261) <= 0
;___________________________________________________


;___________________________________________________
;
;MOTW Wave
;
;___________________________________________________

[StateDef 2070]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= ifelse(var(10) <= 0, -500,0)
juggle  		= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 0
velset = 0,0

;========================================
[State Cancel penalty]
type = VarAdd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Max Drain]
type = varadd
trigger1 = Time = 0
trigger1 = var(10) > 0
var(10) = -500

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= 2070

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(9) = 0
stateType		= S
moveType 		= I
physics 		= S

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 76
add = 32,16,0
sinadd = 64,32,5,3

[State Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 13
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 76

[State Dust]
type = Helper
trigger1 = AnimElem = 8, = 0
trigger2 = Animelem = 25, = 0
name = "Power Wave"
id = 2261
pos = 64,0
postype = p1
stateno = 2261
helpertype = normal
keyctrl = 0
ownpal = 1

[State Dust]
type = Helper
trigger1 = Animelem = 16, = 0
name = "Power Wave"
id = 2261
pos = 32,0
postype = p1
stateno = 2261
helpertype = normal
keyctrl = 0
ownpal = 1

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State JuggleVar2]
type = Varset
trigger1 = projhit2261 >= 1
var(22) = 1

[State Juggle checking projectile]
type = AssertSpecial
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State  PROJ]
type = Projectile
trigger1 = AnimElem = 8, = 0
trigger2 = Animelem = 25, = 0
attr = S, SP
projID = 2261
projanim = 2301
projhitanim = 2302
projshadow = 68,68,68
;projmisstime = 4
;projpriority = 1
offset = 64,0
velocity = 7
ownpal = 1
damage = 38,10
animtype = Hard
hitflag = MFAPD
guardflag = M
pausetime = 0,13
sparkno = S1041
sparkxy = 23,0
guard.sparkno = S1042
hitsound			= S240, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -9
air.animtype = Back
air.fall = 1
air.velocity = -4,-4
down.hittime = 12
down.velocity = -6,0
guard.pausetime = 0,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
yaccel = .50
air.juggle = 1
getpower = 0,0
givepower = 21,21

[State  PROJ]
type = Projectile
trigger1 = animelem = 16, = 0
attr = S, SP
projID = 2261
projanim = 2301
projhitanim = 2302
projshadow = 68,68,68
;projmisstime = 4
;projpriority = 5
offset = 32,0
velocity = 7
ownpal = 1
damage = 48,10
animtype = Hard
hitflag = MFAPD
guardflag = M
pausetime = 0,13
sparkno = S1041
sparkxy = 23,0
guard.sparkno = S1042
hitsound			= S240, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -9
air.animtype = Back
air.fall = 1
air.velocity = -4,-4
down.hittime = 12
down.velocity = -6,0
guard.pausetime = 0,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
yaccel = .50
air.juggle = 1
getpower = 0,0
givepower = 21,21

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 9,9
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
trigger1 = AnimElem = 8, = 0
trigger2 = Animelem = 16, = 0
trigger3 = Animelem = 25, = 0
Value		= 7,5
;Channel     = 0
Volume      = 50

;___________________________________________________

;___________________________________________________
;
;Fake Wave
;
;___________________________________________________

[StateDef 2080]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 0
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= stateno

[State Go to idle (compatibility for 'counter' code)]
Type 		= StateTypeSet
Trigger1 	= AnimelemTime(9) = 0
stateType		= S 
moveType 		= I
physics 		= S

[State Return to stand]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value			= 0
ctrl 			= 1

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 5,1
Channel     = 0
Volume      = 50

;___________________________________________________
;___________________________________________________
;___________________________________________________
;
;MOTW Power Charge Link			3500	
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;weak
;
;___________________________________________________

[StateDef 3500]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

;Setup States
[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.375+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Initial Vel]
Type 		= Velset
Trigger1 	= animelem = 4
x = 5

[State Initial Velmul]
Type 		= Velmul
Trigger1 	= animelem = 4, > 0
x = .94

[State DUST]
type = MakeDust
trigger1 = Animelem = 8, < 0
pos = 0,0
spacing = 2

[State varset]
Type 		= Varset
Trigger1 	= time = 0
var(3) = 0

[State command]
Type 		= Varset
Trigger1    = command = "motwf"
Trigger1 	= animelem = 2, > 0 && Animelem = 11, < 0
var(3) = 1

[State esp]
Type 		= ChangeState
Trigger1 	= Animtime = 0
Value 			= 0
ctrl = 1

[State esp]
Type 		= ChangeState
Triggerall 	= animelem = 11
Trigger1    = var(3) = 1
trigger2 	= var(9) = 1
Value 	= 3501
ctrl = 0

[State Hit]
type = HitDef
trigger1 = ifelse(var(16) > 1, p2stateno != 5040,(p2stateno != [5020,5040]))  
trigger1 = p2stateno != [154,155]
trigger1 = AnimElem = 8
attr = S, SA
animtype = hard
damage = 77,10
guardflag = MA
hitflag = MAF
pausetime = 10,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = 0,-77
hitsound = S240,0
guardsound = S200,3
ground.type = high
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -6
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = -6
ground.cornerpush.veloff = -8.5
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -8.5
getpower = 88,88
givepower = 21,21
guard.pausetime = 11,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
fall = ifelse(p2statetype = A,1,0)
yaccel = .5

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,20
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,23
;Channel     = 0
Volume      = 50

; Follow Up 1
[StateDef 3501]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 14
velset = 0,0

;Setup States
[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*29.375+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Initial Vel]
Type 		= Velset
Trigger1 	= animelem = 3
x = 6

[State Initial Velmul]
Type 		= Velmul
Trigger1 	= animelem = 3, > 0
x = .94

[State DUST]
type = MakeDust
trigger1 = Animelem = 8, < 0
pos = 0,0
spacing = 2

[State varset]
Type 		= Varset
Trigger1 	= time = 0
var(3) = 0

[State command]
Type 		= Varset
Trigger1    = command = "motwf"
Trigger1 	= animelem = 2, > 0 && Animelem = 9, < 0
var(3) = 1

[State esp]
Type 		= ChangeState
Trigger1 	= Animtime = 0
Value 			= 0
ctrl = 1

[State esp]
Type 		= ChangeState
Triggerall 	= animelem = 9
Trigger1    = var(3) = 1
trigger2    = var(9) = 1 && movehit
Value 			= 3502
ctrl = 0

[State JuggleVar1]
type = Varset
trigger1 = time = 0
trigger2 = animtime = 0
ignorehitpause = 1
var(22) = 0

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

[State Hit]
type = HitDef
trigger1 = (p2stateno != [5020,5040])  
trigger1 = p2stateno != [154,155]
trigger1 = AnimElem = 5
attr = S, SA
damage = 37,10
hitflag = MAF
guardflag = MA
animtype = Back
ground.animtype = low
pausetime = 10,11
sparkno = S1041
guard.sparkno = S1042
sparkxy = -6,-63
hitsound = S240,0
guardsound = S200,3
ground.velocity = -4,-6
air.velocity = -4,-6
guard.velocity = -11
fall = 1
fall.recovertime = 35
guard.velocity = -12
getpower = 24,24
givepower = 21,21
fall.yvelocity = -3.4
guard.pausetime = 11,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
yaccel = .49
p2getp1state = 1
p2stateno = 1004

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,21
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,23
;Channel     = 0
Volume      = 50

; Follow Up 2
[StateDef 3502]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 14
velset = 0,0

;Setup States
[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*29.375+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Initial Vel]
Type 		= Velset
Trigger1 	= animelem = 2
x = 6

[State Initial Velmul]
Type 		= Velmul
Trigger1 	= animelem = 2, > 0
x = .94

[State DUST]
type = MakeDust
trigger1 = Animelem = 5, < 0
pos = 0,0
spacing = 2

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl = 1

[State JuggleVar1]
type = Varset
trigger1 = animtime = 0
ignorehitpause = 1
var(22) = 0

[State Juggle checking]
type = AssertSpecial
triggerall = NumTarget
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State Hit]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage = 48,10
hitflag = MAF
guardflag = MA
animtype = Back
ground.animtype = low
pausetime = 11,13
sparkno = S1041
guard.sparkno = S1042
sparkxy = -6,-54
hitsound = S280,0
guardsound = S200,3
ground.velocity = -6,-9
air.velocity = -6,-6
guard.velocity = -11
fall = 1
fall.recovertime = 35
guard.velocity = -12
getpower = 24,24
givepower = 21,21
fall.yvelocity = -3.4
guard.pausetime = 11,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
yaccel = .55
p2getp1state = 1
p2stateno = 1022

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,22
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,23
;Channel     = 0
Volume      = 50

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 3510]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 1
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

;Setup States
[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*109.375+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Initial Vel]
Type 		= Velset
Trigger1 	= animelem = 4
x = 8

[State Initial Velmul]
Type 		= Velmul
Trigger1 	= animelem = 4, > 0
x = .94

[State DUST]
type = MakeDust
trigger1 = Animelem = 8, < 0
pos = 0,0
spacing = 2

[State varset]
Type 		= Varset
Trigger1 	= time = 0
var(3) = 0

[State command]
Type 		= Varset
Trigger1    = command = "motwf"
Trigger1 	= animelem = 2, > 0 && Animelem = 11, < 0
var(3) = 1

[State esp]
Type 		= ChangeState
Trigger1 	= Animtime = 0
Value 			= 0
ctrl = 1

[State esp]
Type 		= ChangeState
Triggerall 	= animelem = 11
Trigger1    = var(3) = 1
trigger2 	= var(9) = 1
Value 	= 3501
ctrl = 0

[State REV]
type = ReversalDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = Animelem = 5
Trigger4 = Animelem = 6
reversal.attr = SCA, AA, AP 
hitflag = MAFP
numhits = 0
pausetime = 11,13
sparkno = S1042
hitsound = S8,4
sparkxy = -999,-999

[State Hit]
type = HitDef
trigger1 = ifelse(var(16) > 1, p2stateno != 5040,(p2stateno != [5020,5040]))  
trigger1 = p2stateno != [154,155]
trigger1 = AnimElem = 8
attr = S, SA
animtype = hard
damage = 87,10
guardflag = MA
hitflag = MAF
pausetime = 10,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = 0,-77
hitsound = S240,0
guardsound = S200,3
ground.type = high
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -6
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = -12
ground.cornerpush.veloff = -12.5
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -12.5
getpower = 88,88
givepower = 21,21
guard.pausetime = 11,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
fall = ifelse(p2statetype = A,1,0)
yaccel = .5

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,20
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,23
;Channel     = 0
Volume      = 50

;========================================================
;Snake arm custom hit "sliding" state
;=====================================

;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 1022]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1022, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = IfElse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 1022, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 1022, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 1022, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 1022, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 1023

[State 1022, FFB Light]
type = ForceFeedback
trigger1 = Anim = 5000
trigger2 = Anim = 5010
persistent = 0
time = 6
waveform = square

[State 1022, FFB Medium]
type = ForceFeedback
trigger1 = Anim = 5001
trigger2 = Anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 1022, FFB Hard]
type = ForceFeedback
trigger1 = Anim = 5012
trigger2 = Anim = 5002
trigger3 = Anim = 5030
trigger4 = Anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 1023]
type    = A
movetype= H
physics = N
ctrl = 0

[State 1023, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 1023, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1023, 3]
type = ChangeState
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 0  ;.
value = 1025 ;HITA_FALL

[State 1023, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1024 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 1024]
type    = A
movetype= H
physics = N

[State 1024, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 1024, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1024, 3]
type = ChangeState
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 0  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 1025 ;HITA_FALL
;---------------------------------------------------------------------------;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 1025]
type    = A
movetype= H
physics = N

[State 1025, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 1025, 2] ;Coming down anim
type = ChangeAnim
trigger1 = Anim = [5050,5059]
trigger1 = Vel Y >= IfElse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = Anim+10
persistent = 0

[State 1025, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1025, 4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1026 ;HIT_BOUNCE

;---------------------------------------------------------------------------
;-----------------------------------
;subsob
[Statedef 1026]
type    = S
movetype= H
physics = N

[State 1026, VelSet]
type = VelSet
trigger1 = Time = 0
trigger1 =  Vel x > 0
x = 4
y = 0

[State 1026, VelSet]
type = VelSet
trigger1 = Time = 0
trigger1 =  Vel x < 0
x = -4
y = 0

[State 1026, NH]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1026, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 1026, var]
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = Floor(Vel y)

[State 1026, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5080

[State 1026, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1026, 3] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 1026, 4]
type = GameMakeAnim
trigger1 = Time = 1
value = 61
pos = 0, 0
under = SysVar(1) <= 10

[State 1026, 5]
type = HitFallDamage
trigger1 = Time = 3

[State 1026, 6]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (SysVar(1) > 5) + (SysVar(1) > 14)

[State 1026, 7]
type = ChangeState
trigger1 = Time = 20
value = 1027

[State 1026, 8]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20
;---------------------------------------

; HIT_LIEDOWN
[Statedef 1027]
type    = L
movetype= H
physics = N
ctrl = 0

[State 1027, SCRN]
type = ScreenBound
trigger1 = Time >= 0
value = 1
movecamera = 1,0

[State 1027, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

9[State 1027, 1]
type = HitFallDamage
trigger1 = Time = 0

[State 1027, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 3]
type = ChangeAnim
trigger1 = Time = 0
value = 5110

[State 1027, var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = Floor(Vel y)

[State 1027, 4]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1027, 5] ;If just died
type = SelfState
triggerall = !Alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 1027, 6]
type = SelfState
triggerall = Alive
trigger1 = Time = 50
value = 5120

[State 1027, 7]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 1027, 8] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 1027, 9]
type = ForceFeedback
trigger1 = Alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 1027, 10]
type = ForceFeedback
trigger1 = !Alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine
;---------------------------------------------------------------------------


;Air Shoot
[Statedef 3600]
type = A
movetype = A
physics = N
poweradd = 0
juggle = 14
ctrl = 0
anim = 3600
velset = 0,0

;========================================
[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4151 || prevstateno = 4161
trigger2 = prevstateno = 4601 || prevstateno = 4602
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Posadd]
type = Posadd
triggerall = Time = 0
trigger1 = prevstateno = 4151 || prevstateno = 4161 
ignorehitpause = 1
persistent = 0
y = -80

[State Posadd]
type = Posadd
triggerall = Time = 0
trigger1 = prevstateno = 4601 || prevstateno = 4611
ignorehitpause = 1
persistent = 0
y = -70

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4151 || prevstateno = 4161
trigger2 = prevstateno = 4601 || prevstateno = 4602
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= time = 0
Value 	= ifelse(var(10) <= 0, -500, 0)

[State Max Drain]
type = varadd
trigger1 = Time = 0
trigger1 = var(10) > 0
var(10) = -500

[State Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 25
add = 32,16,0
sinadd = 64,32,5,3

[State Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 13
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 25

[State voice]
type = PlaySnd
trigger1 = animelem = 3
volume = 50
value = 9,15
channel = 0

[State Fx]
type = PlaySnd
trigger1 = animelem = 3
value = 7,10

[State velset]
Type 		= velset
Trigger1 	= animelem = 3
x = 6.5
y = 5.5

[State veladd]
Type 		= veladd
Trigger1 	= animelem = 3, > 0
y = .45

[State esp]
Type 		= ChangeState
Trigger1 	= movehit
Value 			= 3602

[State esp]
Type 		= ChangeState
Trigger1 	= moveguarded
Value 			= 3605

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && vel y > 0
Value 			= 4152

[State NOJUGGLE]
type = varset
trigger1 = movehit
trigger1 = animelem = 3, >= 0
trigger1 = var(13)<= 0
persistent = 0
ignorehitpause = 1
var(13) = 82

[State hit]
type = HitDef
trigger1 = p2stateno != 5020 && p2stateno != 5040  
trigger1 = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = A, SA
hitflag = MAF
animtype = HARD
damage = 10,10
guardflag = HA
pausetime = 1,1
sparkno = S304
guard.sparkno = S1042
ground.type = low
sparkxy = 25,-40
hitsound = S10,4
guardsound = S8,4
ground.velocity = -6,6
air.velocity = -6,6
airguard.velocity = -2.5,-1
fall = 1
fall.recover = 0
guard.velocity = -12
guard.slidetime = 17
guard.hittime = 17
getpower = 0,0
givepower = 21,21
air.juggle = 15
guard.pausetime = 1,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
fall.yVelocity = -6.4
yaccel = .5
p2facing = 1
p2getp1state = 1
p2stateno = 3604

[State explod]
Type 		= Explod
Trigger1 	= AnimelemTime(3) = 0
Anim 			= 3615
ID 			= 3615
Pos 			= -32,-22
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1


[State Accel]
Type 		= Explod
Trigger1 	= !AnimelemTime(3)
Anim 			= 3616
ID 			= 3616
Pos 			= -12,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 9
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

;Contact
[Statedef 3602]
type = A
movetype = A
physics = N
poweradd = 0
ctrl = 0
anim = 3602
velset = 0,0

[State Posadd]
type = Posadd
trigger1 = Time = 0
ignorehitpause = 1
persistent = 0
y = 15
x = 15

[State hit]
type = HitDef
trigger1 = p2stateno != 5020 && p2stateno != 5040  
trigger1 = p2stateno != [154,155]
trigger1 = AnimElem = 4
attr = A, SA
hitflag = MAFD
animtype = HARD
damage = 127,10
guardflag = HA
pausetime = 11,13
sparkno = S1041
guard.sparkno = S1042
ground.type = low
sparkxy = -10,-50
hitsound = S280,0
guardsound = S8,4
ground.velocity = -6,6
air.velocity = -6,6
airguard.velocity = -2.5,-1
fall = 1
fall.recover = 0
fall.yvelocity = -3.4
guard.velocity = -12
guard.slidetime = 17
guard.hittime = 17
getpower = 0,0
givepower = 21,21
air.juggle = 15
guard.pausetime = 11,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
fall.yVelocity = -6.4
yaccel = .5
p2getp1state = 1
p2stateno = 671
snap = 20,0

[State Bind]
type = TargetBind
trigger1 = time = 0
pos = 20, -36
time = 1

[State esp]
Type 		= ChangeState
Trigger1 	= animtime = 0
Value 			= 3603

;Jump back
[Statedef 3603]
type = A
movetype = I
physics = A
poweradd = 0
ctrl = 0
anim = 3603
velset = 0,0

[State vel]
Type	= veladd
Trigger1 = time = 0
x = -4
y = -7

;P2 Hit
[Statedef 3604]
type    = L
movetype= H ;Get hit
physics = N
ctrl = 0

[State 1]
type = Width
trigger1 = time >= 0
edge = 0,0

[State 1]
type = ScreenBound
Trigger1 = Time >= 0
value = 0

[State 2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3604

[State liftoff]
type = selfState
Trigger1 = AnimTime = 0
value = 5030


;Guarded
[Statedef 3605]
type = A
movetype = A
physics = N
poweradd = 0
ctrl = 0
anim = 3605
velset = 0,0

[State Posadd]
type = Posadd
trigger1 = Time = 0
ignorehitpause = 1
persistent = 0
y = 15
x = 15

[State esp]
Type 		= ChangeState
Trigger1 	= animtime = 0
Value 			= 3603

;--------------------------------------------------------------




;Air Slash
[Statedef 3610]
type = A
movetype = A
physics = N
poweradd = 0
juggle = 14
ctrl = 0
anim = 3610
velset = 0,0

;========================================
[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4151 || prevstateno = 4161
trigger2 = prevstateno = 4601 || prevstateno = 4602
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Posadd]
type = Posadd
triggerall = Time = 0
trigger1 = prevstateno = 4151 || prevstateno = 4161 
ignorehitpause = 1
persistent = 0
y = -70

[State Posadd]
type = Posadd
triggerall = Time = 0
trigger1 = prevstateno = 4601 || prevstateno = 4611
ignorehitpause = 1
persistent = 0
y = -55

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4151 || prevstateno = 4161
trigger2 = prevstateno = 4601 || prevstateno = 4602
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= time = 0
Value 	= ifelse(var(10) <= 0, -500, 0)

[State Max Drain]
type = varadd
trigger1 = Time = 0
trigger1 = var(10) > 0
var(10) = -500

[State Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 25
add = 32,16,0
sinadd = 64,32,5,3

[State Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 13
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 25

[State voice]
type = PlaySnd
trigger1 = animelem = 4
volume = 50
value = 9,5
channel = 0

[State Fx]
type = PlaySnd
trigger1 = animelem = 4
value = 7,10

[State velset]
Type 		= velset
Trigger1 	= animelem = 4
x = 10.5

[State velset]
Type 		= velmul
Trigger1 	= animelem = 9, >= 0
x = .92

[State veladd]
Type 		= veladd
Trigger1 	= animelem = 9, > 0
y = .45

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && vel y > 0
Value 			= 4152

[State hit]
type = HitDef
triggerall = p2stateno != 5020 && p2stateno != 5040  
triggerall = p2stateno != [154,155]
trigger1 = AnimElem = 5
trigger2 = Animelem = 6
trigger3 = Animelem = 7
trigger4 = Animelem = 8
attr = A, SA
hitflag = MAF
animtype = HARD
damage = 48,10
guardflag = HA
pausetime = 11,13
sparkno = S1041
guard.sparkno = S1042
ground.type = low
sparkxy = -15,-70
hitsound = S280,0
guardsound = S8,4
ground.velocity = -9,-7
air.velocity = -9,-6
airguard.velocity = -2.5,-1
fall = 1
fall.recover = 0
guard.velocity = -12
guard.slidetime = 17
guard.hittime = 17
getpower = 0,0
givepower = 21,21
air.juggle = 15
guard.pausetime = 11,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
yaccel = .5
p2getp1state = 1
p2stateno = 1028

[State explod]
Type 		= Explod
Trigger1 	= AnimelemTime(5) = 0
Anim 			= 4032
ID 			= 4032
Pos 			= 6,-2
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -1
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State explod]
Type 		= Explod
Trigger1 	= AnimelemTime(5) = 0
Anim 			= 4033
ID 			= 4033
Pos 			= 6,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State explod]
Type 		= RemoveExplod
trigger1    = animelem = 9
Trigger1 	= NumExplod(4032) 
ID 			= 4032

;---------------------------------------------------
; Hit by Fast Kung Fu Palm - shaking from the hit
; (a custom gethit state)
[Statedef 1028]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1028, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 1028

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1029

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 1029]
type    = A
movetype= H
physics = N

[State 1029, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1029, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 1029, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1029, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1030

[State 1029, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1030]
type    = A
movetype= H
physics = N

[State 1030, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1030, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1030, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1030, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1030, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1030, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1030

[State 1030, Sound]
type = PlaySnd
trigger1 = animelem = 1
value = F7,0

[State 1030, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1031

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 1031]
type    = A
movetype= H
physics = N

[State 1031, hitfallset]
type = hitfallset
trigger1 = Time = 0
value = 0

[State 1031, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6

[State 1031, Vel X]
type = VelSet
trigger1 = Time = 0
x = .2

[State 1031, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1031, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 1031, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1031, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1031, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1031, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1031, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100





;___________________________________________________
;
;POWER DUNK EX
;
;___________________________________________________

[StateDef 3620]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0
anim = stateno

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = (prevstateno = 4300 || prevstateno = 4310) && var(10) > 0
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = (prevstateno = 4300 || prevstateno = 4310) && var(10) > 0
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State NHB]
type = Nothitby	
trigger1 = 1
value = SCA
time = 1

[State Power Drain]
type = poweradd
trigger1 = Time = 0
trigger1 = var(10) <= 0
value = -500

[State Max Drain]
type = varadd
trigger1 = Time = 0
trigger1 = var(10) > 0
var(10) = -500

[State Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 50
add = 32,16,0
sinadd = 64,32,5,3

[State Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 14
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 50

[State posadd ]
Type 		= posadd
Trigger1 	= animelem = 3
X 			= 16

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 9,18
Channel     = 0
Volume      = 50

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= animelem = 4
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 6,Hit
Damage 			= Floor(48.8*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*22),Floor(Fvar(3)*24)
Guard.PauseTime 		= Floor(Fvar(3)*21), Floor(Fvar(3)*21)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 4,-66
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*32)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.586363625526428
Ground.Velocity 		= -1.63655853271484, -9.6969699859619
guard.Velocity 			= -12.61205725
air.Velocity 			= -1.63655853271484, -7.26969699859619
AirGuard.Velocity 		= -1.61205725, -8.96969699859619
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5


[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;rising

[StateDef 3621]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 3.612
Y 			= -10.3425638580322

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.5

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(39.2+9.8*(random%3))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State Juggle checking]
type = AssertSpecial
trigger1 = Var(22) = 1
ignorehitpause = 1
flag = NoJuggleCheck

[State hit ]
Type 		= Hitdef
Trigger1 	= animelem = 1
trigger2    = animelem = 2
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 6,Hit
Damage 			= Floor(38.8*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*11)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 4,-116
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*32)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.586363625526428
Ground.Velocity 		= -4.63655853271484, -9.6969699859619
guard.Velocity 			= -12.61205725
air.Velocity 			= -4.63655853271484, -7.26969699859619
AirGuard.Velocity 		= -4.61205725, -8.96969699859619
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 1,4
;Channel     = 0
Volume      = 50


;___________________________________________________
;going down

[StateDef 3622]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14 
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0
[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= -10 && Time
Value 			= StateNo+1

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.5

[State explod]
Type 		= Explod
Trigger1 	= AnimelemTime(6) = 0
Anim 			= 3616
ID 			= 3616
Pos 			= -13,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State explod]
Type 		= Explod
Trigger1 	= AnimelemTime(6) = 0
Anim 			= 3615
ID 			= 3615
Pos 			= -20,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 4
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1


[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*49+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State Juggle checking]
type = AssertSpecial
trigger1 = Var(22) = 1
flag = NoJuggleCheck

[State hit ]
Type 		= Hitdef
triggerall = ifelse(enemynear,gethitvar(fall) = 0, (p2stateno != [5020,5040]), p2stateno != 5040)
triggerall = (p2stateno != [154,155]) 
Trigger1 	= animelem = 6 
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((88+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*3),Floor(Fvar(3)*4)
Guard.PauseTime 		= Floor(Fvar(3)*3), Floor(Fvar(3)*3)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -1,-45
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*32)
Air.HitTime 		= Floor(Fvar(4)*32)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.636363625526428
Ground.Velocity 		= -9.63655853271484
guard.Velocity 			= -12.61205725
air.Velocity 			= -5.63655853271484, 8.6680269241333
AirGuard.Velocity 		= -5.61205725, 8.6680269241333
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
P2stateno 			= 671
P2getp1state 		= 1
Fall 				= ifelse(p2statetype = A, 1, 0)
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 6
Value		= 9,19
;Channel     = 0
Volume      = 50

;___________________________________________________
;idling for you

[StateDef 3623]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
velset = 0,0
HitCountPersist 	= 0
SprPriority 		= 2

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State Pos]
Type 		= posset
Trigger1 	= time = 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

[State LandFX]
Type 		= Playsnd
Trigger1 	= time = 0
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1





;___________________________________________________
;
;MOTW POWER CHARGE EX
;
;___________________________________________________
;___________________________________________________

;Start
[StateDef 3800]
Type    		= S
MoveType		= A
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
facep2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= 3800

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Power Drain]
type = poweradd
trigger1 = Time = 0
trigger1 = var(10) <= 0
value = -500

[State Max Drain]
type = varadd
trigger1 = Time = 0
trigger1 = var(10) > 0
var(10) = -500

[State Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 50
add = 32,16,0
sinadd = 64,32,5,3

[State Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 14
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 50

[State REV]
type = ReversalDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
reversal.attr = SCA, AA, AP 
hitflag = MAFP
numhits = 0
pausetime = 11,18
sparkno = S1042
hitsound = S8,4
sparkxy = -999,-999

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= stateno + 1
ctrl 			= 0
;_________________________________________________

;Attack
[StateDef 	3801]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 14
sprpriority 		= 2

;sets the move's anim
[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

;initial vel. for going forward
[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 16.5582046508789

;Friction for the move
[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.890690295696259

;once the animation's time ends, it goes to the next state
[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0 || moveguarded
Value 			= stateno+1
ctrl = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*38.8+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State Accel]
Type 		= Explod
Trigger1 	= !AnimelemTime(2)
Anim 			= 4033
ID 			= 4033
Pos 			= 0,10
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

;this hit stunts p2 in place, for  the next attacks
[State hit]
Type 		= Hitdef
Triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040) 
Triggerall = (p2stateno != [154,155])
Trigger1 	= animelem = 3
attr 				= S, HA
hitflag 			= M
guardflag 			= M
affectteam 			= E
AnimType 			= Hard
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
Damage 			= Floor((57.9+((random%2)*9.7))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*31),Floor(Fvar(3)*33)
guard.pauseTime 		= Floor(Fvar(3)*31),Floor(Fvar(3)*31)
sparkno 			= S1041
guard.sparkno 		= S1042
sparkxy 			= -5,-62
hitsound 			= S260, 0
guardsound 			= S8, 4
ground.Type 		= Low
air.Type 			= High
ground.slideTime 		= 17
guard.slideTime 		= 32
ground.hitTime 			= Floor(Fvar(4)*32)
Guard.HitTime 			= Floor(Fvar(4)*32)
air.hitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 56
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.58333333
ground.velocity 		= -6,0
guard.velocity 			= -6
air.velocity 			= -4, -5.51851892471313
airguard.velocity 		= -4, -5.51851892471313
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority 			= 2
fall 					= 0
fall.yvelocity 			= -3.4
fall.recover 			= 0
getpower 			= 0,0
GivePower 			= Floor(5.625+(random*.001)),Floor(5.625+(random*.001))
attack.width 		= 5,5
p1stateno = stateno+1
envshake.time = 11
envshake.freq = 90
envshake.ampl = -4
p2getp1state = 1
p2stateno = 8500

[State DUST]
type = MakeDust
trigger1 = Animelem = 4, < 12
pos = -16,0
spacing = 2

[State REV]
type = ReversalDef
trigger1 = AnimElem = 1 || AnimElem = 2
reversal.attr = SCA, AA, AP 
hitflag = MAFP
numhits = 0
pausetime = 11,21
sparkno = S1042
hitsound = S8,4
sparkxy = -999,-999

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,22
Channel     = 0
Volume      = 30

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value		= 7,13
;Channel     = 0
Volume      = 50

;Attack2
[StateDef 3802]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 25
add = 32,16,0
sinadd = 64,32,5,3

[State REV]
type = ReversalDef
Trigger1 = AnimElem = 1 || animelem = 2 || animelem = 3
reversal.attr = SCA, AA, AP 
hitflag = MAFP
numhits = 0
pausetime = 11,21
sparkno = S1042
hitsound = S8,4
sparkxy = -999,-999

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Posadd]
Type 		= null ;posadd
Trigger1 	= animelem = 2
X 		= 8

[State InitVel]
Type 		= Velset
Trigger1 	= !AnimelemTime(3)
X = 0


[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(4)
X 			= 14.64306259155273

[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.90038498687744

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor((Fvar(0)*29.4)+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State Varset]
Type 		= varset
Trigger1 	= time = 0
var(3) = 0

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State Accel]
Type 		= Explod
Trigger1 	= !AnimelemTime(4)
Anim 			= 4033
ID 			= 4033
Pos 			= -16,10
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State hit ]
Type 		= Hitdef
Triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040) 
Triggerall = (p2stateno != [154,155])
Trigger1 	= animelem = 4
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= MA
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((107.8+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*13)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 3, -64
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.514999988079071
Ground.Velocity 		= -6,-6.0750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -6, -6.0750007629395
AirGuard.Velocity 		= -4.61205725, -4.51851892471313
ground.cornerpush.veloff 	= -0
Down.CornerPush.VelOff 		= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
p2getp1state = 1
p2stateno = 1022
envshake.time = 9
envshake.freq = 90
envshake.ampl = -4

[State DUST]
type = MakeDust
trigger1 = Animelem = 4, < 8
pos = -16,0
spacing = 2

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 4
Value		= 7,13
;Channel     = 0
Volume      = 50
;___________________________________________________
;idle

[StateDef 3803]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
facep2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= 3803

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1
;_________________________________________________








;___________________________________________________
;___________________________________________________
;___________________________________________________
;
;Burn knuckle 98				4000	
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;weak
;
;___________________________________________________

[StateDef 4000]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
facep2 		= 1
anim 			= stateno
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

;Setup States
[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*109.375+(random*.001))

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 9,2
Channel     = 0
Volume      = 70

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;Advancing in the air
[StateDef 4001]
Type    		= A
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 14
anim			= stateno

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Time
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 7.6
Y 			= -0.78

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.127

[State Land]
Type 		= posset 
Trigger1 	= time = 9
Y 		= 0

[State Explod]
Type 		= Explod
Trigger1 	= Animelem = 1
Anim 			= 4030
ID 			= 4030
Pos 			= 0,0
PosType 		= p1
Facing 		= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -1
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 2
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State Explod]
Type 		= null ;Explod
Trigger1 	= Animelem = 1
Anim 			= 4033
ID 			= 4033
Pos 			= 0,0
PosType 		= p1
Facing 		= 1
VFacing 		= 1
BindTime 		= 1
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ownpal 			= 1
removeongethit 		= 1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*29.4+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0, (p2stateno != 5020 && p2stateno != 5040), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= Animelem = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= MA
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 5,Hit
Damage 				= Floor((117.65+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*11)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 5, -72
hitsound			= S280, 0
guardsound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*36)
Air.HitTime 			= Floor(Fvar(4)*36)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		      = -3.7484527587891, -7.81851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= -3.7484527587891, -6.81851892471313
AirGuard.Velocity 		= -3.71205725, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
Fall.RecoverTime 		= 65
fall.yvelocity = -3.4
GetPower 			= Floor(Fvar(5)*(109.375+(random*.001))),Floor(Fvar(5)*(109.375+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1, = 0
Value		= 7,1
;Channel    = 0
Volume      = 50

;___________________________________________________
;Recovery state
[StateDef 4002]
Type    		= S
moveType		= I
physics 		= S
ctrl 			= 0
poweradd 		= 0
velset = 0,0

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State explod]
Type 		= RemoveExplod
Trigger1 	= NumExplod(4030) 
ID 			= 4030

[State esp]
Type 		= PosSet
Trigger1 	= time = 0
Y 			= 0

[State LandFX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;
;strong
;
;___________________________________________________

[StateDef 4010]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*109.375+(random*.001))

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,0
Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1
;___________________________________________________
;Advancing State
[StateDef 4011]
Type    		= A
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 14
facep2 			= 0
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Time
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 9.4
Y 			= -2.23

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.222222223877907

[State Land]
Type 		= posset
Trigger1 	= time = 18
Y 			= 0


[State Accel]
Type 		= Explod
Trigger1 	= !AnimelemTime(1)
Anim 			= 4030
ID 			= 4030
Pos 			= 0,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -1
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(9.8*(random%3))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0, (p2stateno != 5020 && p2stateno != 5040), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= Animelem = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= MA
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((166.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*11)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 5, -72
hitsound			= S280, 0
guardsound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*36)
Air.HitTime 		= Floor(Fvar(4)*36)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		      = -3.7484527587891, -7.81851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= -3.7484527587891, -6.81851892471313
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
Fall.RecoverTime 		= 65
fall.yvelocity = -3.4
GetPower 			= Floor(Fvar(5)*(109.375+(random*.001))),Floor(Fvar(5)*(109.375+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,1
;Channel     = 0
Volume      = 50


;___________________________________________________
;idle

[StateDef 4012]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Accel]
Type 		= RemoveExplod
Trigger1 	= NumExplod(4030)
ID 			= 4030

[State esp]
Type 		= PosSet
Trigger1 	= time = 0
Y 			= 0

[State LandFX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;
;MOTW Burning knuckle
;
;___________________________________________________

[StateDef 4020]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
facep2 			= 1
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State NHB]
type = Nothitby
trigger1 = 1
value = SCA
time = 8

[State Blink Yellow]
type = PalFX
trigger1 = Time = 0
time = 40
add = 32,16,0
sinadd = 64,32,5,3

[State Afterimage]
type = AfterImage
trigger1 = Time = 0
length = 13
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 45

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= ifelse(var(10) <= 0,-500,0)

[State Max Drain]
type = varadd
trigger1 = Time = 0
trigger1 = var(10) > 0
var(10) = -500

[State Initial Anim]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo - 10

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 9,8
Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1
;___________________________________________________
;Advancing State
[StateDef 4021]
Type    		= A
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 14
facep2 			= 0
hitdefpersist 		= 0
movehitpersist	 	= 0
hitcountpersist 	= 0
sprpriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo - 10

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Time
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 9.4
Y 			= -2.23

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.222222223877907

[State Land]
Type 		= posset
Trigger1 	= time = 18
Y 			= 0


[State Accel]
Type 		= Explod
Trigger1 	= !AnimelemTime(1)
Anim 			= 4032
ID 			= 4030
Pos 			= 0,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -1
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State Accel]
Type 		= Explod
Trigger1 	= !AnimelemTime(1)
Anim 			= 4033
ID 			= 4033
Pos 			= 0,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1


[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(9.8*(random%3))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0, (p2stateno != 5020 && p2stateno != 5040), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= Animelem = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((126.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*11)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 5, -72
hitsound			= S280, 0
guardsound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*36)
Air.HitTime 		= Floor(Fvar(4)*36)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 				= 0.45333333
Ground.Velocity 		      = -9.7484527587891, -10.81851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= -9.7484527587891, -9.81851892471313
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
Fall.RecoverTime 		= 65
fall.yvelocity = -3.4
GetPower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
p2getp1state = 1
p2stateno = 1028

[State NOJUGGLE]
type = varset
trigger1 = movehit
trigger1 = animelem = 3, >= 0
trigger1 = var(13)<= 0
persistent = 0
ignorehitpause = 1
var(13) = 88

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,1
;Channel     = 0
Volume      = 50


;___________________________________________________
;idle

[StateDef 4022]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State AFTER]
type = AfterImagetime
trigger1 = Time = 0
time = 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo - 10

[State Accel]
Type 		= RemoveExplod
Trigger1 	= NumExplod(4030)
ID 			= 4030

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

[State LandFX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;___________________________________________________



;___________________________________________________
;___________________________________________________
;
;rising tackle 98				4100
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 4100]
Type    		= C
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*125+(random*.001))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State esp]
Type 		= PosAdd
Trigger1 	= AnimElemTime(AnimElemNo(0)) = 0 && AnimElemNo(0) > 1
X 			= 8

[State proper behaviour]
Type 		= ReversalDef
Trigger1 	= animelem = 2
pausetime			= 0
sparkno				= 0
sparkxy 			= 0,-64
hitsound			= 5,0
p1stateno			= stateno+1
;p2stateno			= target,stateno+1;does not matter
reversal.attr 			= SCA,AP,AT
 
[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*19.6+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0, (p2stateno != 5020 && p2stateno != 5040), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= animelem = 3
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor((19.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 0, -44
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -2, -17.51851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -17.51851892471313
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -0
Down.CornerPush.VelOff 		= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -12
AirGuard.CornerPush.VelOff 	= -9
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0
Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Fvar(5)*(15.625+(random*.001))),Floor(Fvar(5)*(15.625+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,7
Channel     = 0
Volume      = 50

;___________________________________________________
;rising

[StateDef 4101]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Time
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 1.01111102104187
Y 			= -7.04435443878174

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.419354826211929

[State Accel]
Type 		= VelMul 
Trigger1 	= 1
X 			= 0.92193877696991

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*19.6+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16) <= 0, (p2stateno != 5020 && p2stateno != 5040), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= AnimelemTime(1) = 1
Trigger2 	= AnimelemTime(3) = 1 ;&& UniqHitCount > 0
Trigger3 	= AnimelemTime(5) = 1 ;&& UniqHitCount > 1
Trigger4 	= AnimelemTime(7) = 1 ;&& UniqHitCount > 2
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor((19.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*1),Floor(Fvar(3)*2)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 0, -44
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -2, -15.51851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -15.51851892471313
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0
Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Fvar(5)*(15.625+(random*.001))),Floor(Fvar(5)*(15.625+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,8
;Channel     = 0
Volume      = 50

;___________________________________________________
;Idle in the ground

[StateDef 4102]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State LandFX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 4110]
Type    		= C
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

;Setup States
[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*125+((random%10)*.1))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State esp]
Type 		= PosAdd
Trigger1 	= AnimElemTime(AnimElemNo(0)) = 0 && AnimElemNo(0) > 1
X 			= 8

[State proper behaviour]
Type 		= ReversalDef
Trigger1 	= AnimelemNo(0) = 3
pausetime			= 0
sparkno				= 0
sparkxy 			= 0,-64
hitsound			= 5,0
p1stateno			= stateno+1
;p2stateno			= target,stateno+1;does not matter
reversal.attr 			= SCA,AP,AT

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor((Fvar(0)*9.7)+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0, (p2stateno != 5020 && p2stateno != 5040), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= AnimelemTime(3) = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor(68.6*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 0, -44
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -2, -17.51851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -17.51851892471313
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -12
AirGuard.CornerPush.VelOff 	= -9
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Fvar(5)*(15.625+(random*.001))),Floor(Fvar(5)*(15.625+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,7
Channel     = 0
Volume      = 50

;___________________________________________________
;rising

[StateDef 4111]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Time
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 4.66163873672485
Y 			= -11.6400890350342

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.523809552192688

[State Accel]
Type 		= VelMul 
Trigger1 	= 1
X 			= 0.92193877696991

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(1) = 0
Trigger2 	= AnimelemTime(3) = 1 ;&& UniqHitCount > 0
Trigger3 	= AnimelemTime(5) = 1 ;&& UniqHitCount > 1
Trigger4 	= AnimelemTime(7) = 1 ;&& UniqHitCount > 2
Trigger5 	= AnimelemTime(9) = 1 ;&& UniqHitCount > 3
Trigger6 	= AnimelemTime(11) = 0 ;&& UniqHitCount > 4
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor(18.6*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*2),Floor(Fvar(3)*2)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 0, -44
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -2, -15.51851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -15.51851892471313
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Fvar(5)*(15.625+(random*.001))),Floor(Fvar(5)*(15.625+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,8
;Channel     = 0
Volume      = 50

;___________________________________________________
;landing

[StateDef 4112]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State LandFX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1



;___________________________________________________
;___________________________________________________
;
;raising tackle 2K2				4150
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 4150]
Type    		= C
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 1
SprPriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310
trigger4 = (prevstateno = 4953 || prevstateno = 4963) && var(10) > 0
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310
trigger4 = (prevstateno = 4953 || prevstateno = 4963) && var(10) > 0
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*125+(random*.001))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State esp]
Type 		= PosAdd
Trigger1 	= animelem = 1
Trigger2    = animelem = 2
Trigger3    = animelem = 3
X 			= 8

[State REV]
type = ReversalDef
trigger1 = AnimElem = 2
reversal.attr = SCA, AA, AP 
hitflag = MAFP
numhits = 0
pausetime = 11,13
sparkno = S1042
hitsound = S8,4
sparkxy = -999,-999
 
[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*19.6+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= animelem = 3
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 5,Hit
Damage 			= Floor((19.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*12),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*10)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 0, -44
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*32)
Air.HitTime 		= Floor(Fvar(4)*13)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.58333333
Ground.Velocity 		= -1.5, -12.51851892471313
guard.Velocity 		= -12.61205725
air.Velocity 		= -1.5, -12.51851892471313
AirGuard.Velocity 		= -4.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -0
AirGuard.CornerPush.VelOff 	= -0
Air.Juggle 			= 0
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(15.625+(random*.001))),Floor(Fvar(5)*(15.625+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 9,3
Channel     = 0
Volume      = 70

;___________________________________________________
;rising

[StateDef 4151]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 1
MoveHitPersist 		= 1
HitCountPersist 	= 1
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 1.01111102104187
Y 			= -8.08

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.419354826211929

[State Accel]
Type 		= VelMul 
Trigger1 	= 1
X 			= 0.88

[State Accel]
Type 		= Velset
Trigger1 	= animelem = 8, = [0,2]
Y 		= 0.1
x           = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*19.6+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State Juggle checking]
type = AssertSpecial
triggerall = NumTarget
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State hit ]
Type 		= Hitdef
triggerall = ifelse(enemynear,gethitvar(fall) = 0, (p2stateno != [5020,5040]), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= animelem = 1
Trigger2 	= Animelem = 3        
Trigger3 	= Animelem = 5        
Trigger4 	= Animelem = 7
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((19.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*2),Floor(Fvar(3)*4)
Guard.PauseTime 		= Floor(Fvar(3)*2), Floor(Fvar(3)*2)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 5, -96
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*32)
Air.HitTime 		= Floor(Fvar(4)*13)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.58333333
Ground.Velocity 		= -2, -12.51851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -12.51851892471313
AirGuard.Velocity 		= -4.61205725, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 		= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(15.625+(random*.001))),Floor(Fvar(5)*(15.625+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,8
;Channel     = 0
Volume      = 50

[State varset]
Type 		= Varset
Trigger1 	= time = 0
var(3) = 0

[State command]
Type 		= Varset
Trigger1    = command = "ashoot" && var(10) > 0
Trigger1 	= animelem = 1, > 0 && Animelem = 7, <= 0
var(3) = 1

[State command]
Type 		= Varset
Trigger1    = command = "aslash" && var(10) > 0
Trigger1 	= animelem = 1, > 0 && Animelem = 7, <= 0
var(3) = 2

[State esp]
Type 		= ChangeState
Trigger1 	= animelem = 7, = 1 && var(9) = 1 && var(10) > 0 && movehit
Value 	= ifelse(random <= 500,3600,3610)
ctrl = 0


[State esp]
Type 		= ChangeState
Trigger1 	= animelem = 2, > 0 && animelem = 8, <= 0 && var(3) = 1
Value 	= 3600
ctrl = 0

[State esp]
Type 		= ChangeState
Trigger1 	= animelem = 2, > 0 && animelem = 8, <= 0 && var(3) = 2
Value 	= 3610
ctrl = 0

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Time
Value 			= StateNo+1

;___________________________________________________
;Idle in the ground

[StateDef 4152]
Type    		= C
MoveType		= I
physics 		= C
Ctrl 			= 0
PowerAdd 		= 0
velset = 0,0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State AFTER]
type = AfterImagetime
trigger1 = time = 0
time = 0

[State JuggleVar]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State Vel ]
Type 		= posset
Trigger1 	= time = 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State LandFX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________


;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 4160]
Type    		= C
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = (prevstateno = 4953 || prevstateno = 4963) && var(10) > 0
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310
trigger4 = (prevstateno = 4953 || prevstateno = 4963) && var(10) > 0
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

;Setup States
[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*125+((random%10)*.1))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State esp]
Type 		= PosAdd
Trigger1 	= animelem = 1
Trigger2    = animelem = 2
Trigger3    = animelem = 3
X 			= 8

[State REV]
type = ReversalDef
trigger1 = AnimElem = 2
reversal.attr = SCA, AA, AP 
hitflag = MAFP
numhits = 0
pausetime = 11,13
sparkno = S1042
hitsound = S8,4
sparkxy = -999,-999

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor((Fvar(0)*9.7)+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= animelem = 3
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 5,Hit
Damage 			= Floor((58.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*12),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*10)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 0, -44
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*32)
Air.HitTime 		= Floor(Fvar(4)*13)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.58333333
Ground.Velocity 		= -1.5, -12.51851892471313
guard.Velocity 		= -12.61205725
air.Velocity 		= -1.5, -12.51851892471313
AirGuard.Velocity 		= -4.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -0
AirGuard.CornerPush.VelOff 	= -0
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65

GetPower 			= Floor(Fvar(5)*(15.625+(random*.001))),Floor(Fvar(5)*(15.625+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,7
Channel     = 0
Volume      = 50

;___________________________________________________
;rising

[StateDef 4161]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 4.66163873672485
Y 			= -11.6190890350342

[State Accel]
Type 		= VelAdd 
Trigger1 	= animelem = 12, <= 1
Y 			= 0.523809552192688

[State Accel]
Type 		= VelAdd 
Trigger1 	= animelem = 12, > 1
Y 			= 0.593809552192688

[State Accel]
Type 		= VelMul 
Trigger1 	= 1
X 			= 0.92393877696991

[State Accel]
Type 		= Velset 
Trigger1 	= animelem = 11, = 1
x           = 0


[State Accel]
Type 		= Velset 
Trigger1 	= animelem = 12, = [0,1]
y                 = 0

[State Juggle checking]
type = AssertSpecial
triggerall = NumTarget
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State hit ]
Type 		= Hitdef
triggerall = ifelse(enemynear,gethitvar(fall) = 0, (p2stateno != [5020,5040]), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= Animelem = 1
Trigger2 	= Animelem = 3
Trigger3 	= Animelem = 5
Trigger4 	= Animelem = 7
Trigger5 	= Animelem = 9
Trigger6 	= Animelem = 11
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((18.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*2),Floor(Fvar(3)*3)
Guard.PauseTime 		= Floor(Fvar(3)*2), Floor(Fvar(3)*2)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 5, -96
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*32)
Air.HitTime 		= Floor(Fvar(4)*13)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
Yaccel 			= 0.58333333
Ground.Velocity 		= -2, -11.51851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -11.51851892471313
AirGuard.Velocity 		= -4.61205725, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 		= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(15.625+(random*.001))),Floor(Fvar(5)*(15.625+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,8
;Channel     = 0
Volume      = 50

[State varset]
Type 		= Varset
Trigger1 	= time = 0
var(3) = 0

[State command]
Type 		= Varset
Trigger1    = command = "ashoot" && var(10) > 0
Trigger1 	= animelem = 1, > 0 && Animelem = 12, <= 0
var(3) = 1

[State command]
Type 		= Varset
Trigger1    = command = "aslash" && var(10) > 0
Trigger1 	= animelem = 1, > 0 && Animelem = 12, <= 0
var(3) = 2

[State esp]
Type 		= ChangeState
Trigger1 	= animelem = 7, = 1 && movehit && var(9) = 1 && var(10) > 0
Value 	= ifelse(random <= 500,3600,3610)
ctrl = 0

[State esp]
Type 		= ChangeState
Trigger1 	= animelem = 2, > 0 && animelem = 12, <= 0 && var(3) = 1
Value 	= 3600
ctrl = 0

[State esp]
Type 		= ChangeState
Trigger1 	= animelem = 2, > 0 && animelem = 12, <= 0 && var(3) = 2
Value 	= 3610
ctrl = 0

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Time
Value 			= StateNo+1

;___________________________________________________
;landing

[StateDef 4162]
Type    		= C
MoveType		= I
physics 		= C
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State LandFX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 1,5
;Channel     = 0
Volume      = 10

[State JuggleVar]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;___________________________________________________
;
;power charge 98				4300	
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 4300]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(FVar(7)*62.5+(random*.001))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Posadd]
Type 		= posadd
Trigger1 	= animelem = 2
X 		= 8

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 10.0447984695435

[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.86235943365097

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor((Fvar(0)*29.4)+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State Varset]
Type 		= varset
Trigger1 	= time = 0
var(3) = 0

;[State Varset]
;Type 		= varset
;Trigger1    = command = "DUx" || command = "DUy"
;Trigger1 	= animelem = 5, > 0
;var(3) = ifelse(command = "DUy",2,1)

;[State esp]
;Type 		= ChangeState
;Trigger1 	= AnimTime = 0
;trigger1    = var(3) = 1 && movecontact
;Value 			= 4150

;[State esp]
;Type 		= ChangeState
;Trigger1 	= AnimTime = 0
;trigger1    = var(3) = 2 && movecontact
;Value 			= 4160

[State Varset]
Type 		= varset
Trigger1    = command = "DPa" || command = "DPb"
Trigger1 	= animelem = 5, > 0
var(3) = ifelse(command = "DPb",4,3)

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
trigger1    = var(3) = 3 && movecontact
Value 			= 4700

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
trigger1    = (var(3) = 4 || var(9) = 1) && movecontact
Value 			= 4710

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value		= StateNo+1

[State NOJUGGLE]
type = varset
trigger1 = movehit
trigger1 = animelem = 6, >= 0
persistent = 0
ignorehitpause = 1
var(13) = 38

[State hit ]
Type 		= Hitdef
Triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040) 
Triggerall = p2stateno != [154,155]
trigger1  	= var(10) <= 0 && var(13) <= 0
Trigger1 	= animelem = 6
Attr 				= S, SA
HitFlag 			= MAF
GuardFlag 			= MA
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((58.8+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*11)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 3, -64
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*32)
Air.HitTime 		= Floor(Fvar(4)*1300)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.554999988079071
Ground.Velocity 		= -2.3,-12.0750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -12.0750007629395
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -0
Down.CornerPush.VelOff 		= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 		= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 		= 5,5
p2getp1state = 1
p2stateno = 1004

[State hit ]
Type 		= Hitdef
Triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040) 
Triggerall = p2stateno != [154,155]
trigger1  	= var(10) > 0 && var(13) <= 0
Trigger1 	= animelem = 6
Attr 				= S, SA
HitFlag 			= MAF
GuardFlag 			= MA
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((58.8+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*11)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 3, -64
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*32)
Air.HitTime 		= Floor(Fvar(4)*1300)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.554999988079071
Ground.Velocity 		= -2.3,-10.0750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -10.0750007629395
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -0
Down.CornerPush.VelOff 		= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 		= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 		= 5,5
p2getp1state = 1
p2stateno = 1004

[State DUST]
type = MakeDust
trigger1 = Animelem = 6, < 0
pos = -16,0
spacing = 2

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,14
Channel     = 0
Volume      = 30

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 4
Value		= 7,13
;Channel     = 0
Volume      = 50
;___________________________________________________
;idling for you

[StateDef 4301]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
facep2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 4310]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(FVar(7)*62.5+(random*.001))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Posadd]
Type 		= posadd
Trigger1 	= animelem = 2
X 		= 8

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 7.64306259155273

[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.90038498687744

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor((Fvar(0)*29.4)+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State Varset]
Type 		= varset
Trigger1 	= time = 0
var(3) = 0

[State Varset]
Type 		= null ;varset
Trigger1    = command = "DUx" || command = "DUy"
Trigger1 	= animelem = 5, > 0
var(3) = ifelse(command = "DUy",2,1)

[State esp]
Type 		= null ;ChangeState
Trigger1 	= AnimTime = 0
trigger1    = var(3) = 1 && movecontact
Value 			= 4150

[State esp]
Type 		= null ;ChangeState
Trigger1 	= AnimTime = 0
trigger1    = var(3) = 2 && movecontact
Value 			= 4160

[State Varset]
Type 		= varset
Trigger1    = command = "DPa" || command = "DPb"
Trigger1 	= animelem = 5, > 0
var(3) = ifelse(command = "DPb",4,3)

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
trigger1    = var(3) = 3 && movecontact
Value 			= 4700

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
trigger1    = (var(3) = 4 || var(9) = 1) && movecontact
Value 			= 4710

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State NOJUGGLE]
type = varset
trigger1 = movehit
trigger1 = animelem = 6, >= 0
ignorehitpause = 1
persistent = 0
var(13) = 38

[State hit ]
Type 		= Hitdef
Triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040) 
Triggerall = p2stateno != [154,155]
trigger1  	= var(10) <= 0 && var(13) <= 0
Trigger1 	= animelem = 6
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= MA
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((58.8+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*11)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 3, -64
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.554999988079071
Ground.Velocity 		= -2.3,-12.0750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -12.0750007629395
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -0
Down.CornerPush.VelOff 		= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
p2getp1state = 1
p2stateno = 1004


[State hit ]
Type 		= Hitdef
Triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040) 
Triggerall = p2stateno != [154,155]
trigger1  	= var(10) > 0 && var(13) <= 0
Trigger1 	= animelem = 6
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= MA
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((58.8+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*11)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 3, -64
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.554999988079071
Ground.Velocity 		= -2.3,-10.0750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -10.0750007629395
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -0
Down.CornerPush.VelOff 		= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
p2getp1state = 1
p2stateno = 1004

[State DUST]
type = MakeDust
trigger1 = Animelem = 6, < 0
pos = -16,0
spacing = 2

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,14
Channel     = 0
Volume      = 30

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 4
Value		= 7,13
;Channel     = 0
Volume      = 50
;___________________________________________________
;idle

[StateDef 4311]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
facep2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0


[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= 4301

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1
;_________________________________________________


;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 1004]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1004, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 1004, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5012

[State 1004, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 1004, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 1004, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 1008

[State 1004, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 1004, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 1004, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 1008]
type    = A
movetype= H
physics = N
ctrl = 0

[State 1008, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = anim= 5012
value = 5030

[State 1008, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 1008, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1008, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 1006 ;HITA_FALL

[State 1008, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1005 ;HITA_UP (transition)

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 1005]
type    = A
movetype= H
physics = N

[State 1005, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 1005, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1005, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 1006 ;HITA_FALL

;---------------------------------------------------------------------------

; HITA_FALL (knocked up, falling)
[Statedef 1006]
type    = A
movetype= H
physics = N

[State 1006, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 1006, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 1006, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1006, 4] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 1006, 0fall]
type = HitFallSet
trigger1 = Time = 0
value = 0

[State 1006, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), -20, -20)
value = 5100 ;HIT_BOUNCE

;-----------------------------------------


;---------------------------------------------------------------------------
; HITG_SHAKE
[Statedef 8500]
type    = S
movetype= H
physics = N
velset = 0,0

[State 8500, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim2
trigger1 = Time = 0
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + 2

[State 8500, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 8500, 5] ;State type gets set to aerial if getting hit up
type = Posset
trigger1 = 1
ignorehitpause
y = 0

[State 8500, 6]
type = changestate
trigger1 = HitShakeOver
value = 8501

[State 8500, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 8500, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 8500, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140


;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 8501]
type    = S
movetype= H
physics = S

[State 8501, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 8501, 2]
type = ChangeAnim2
trigger1 = time = 0
value = ifelse((GetHitVar(groundtype) = 1),5005,5015) + 2

[State 8501, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 8501, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 8501, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 8501, 6]
type = SelfState
trigger1 = HitOver && alive
value = 0
ctrl = 1

[State 8501, 6]
type = SelfState
trigger1 = !alive
value = 5030
ctrl = 0


;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; HITG_SHAKE
[Statedef 1009]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1009, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim2
trigger1 = Time = 0
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + 2

[State 1009, 4] ;Freeze anim
type = ChangeAnim2
trigger1 = Time > 0
value = anim

[State 1009, 5] ;State type gets set to aerial if getting hit up
type = Posset
trigger1 = Time = 0
y = 0

[State 1009, 6]
type = selfState
trigger1 = HitShakeOver
value = 5001 ;HITG_SLIDE

[State 1009, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 1009, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 1009, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140







;___________________________________________________
;___________________________________________________
;
;power charge 99				4350
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 4350]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(FVar(7)*62.5+(random*.001))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State Posadd]
Type 		= posadd
Trigger1 	= animelem = 2
X 		= 8

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 10.9447984695435
[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.86935943365097

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor((Fvar(0)*29.4)+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimElemTime(4) = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor((58.8+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 3, -44
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.574999988079071
Ground.Velocity 		= -2,-12.0750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -12.0750007629395
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 0
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,14
Channel     = 0
Volume      = 50

;___________________________________________________
;idle

[StateDef 4351]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
facep2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 4360]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(FVar(7)*62.5+(random*.001))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Posadd]
Type 		= posadd
Trigger1 	= animelem = 2
X 		= 8

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 7.64306259155273

[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.91238498687744

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor((Fvar(0)*29.4)+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimElemTime(4) = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor((58.8+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 3, -44
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.574999988079071
Ground.Velocity 		= -2,-12.0750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -12.0750007629395
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 0
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,14
Channel     = 0
Volume      = 50

;___________________________________________________
;idle

[StateDef 4361]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
facep2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0
[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo
[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;___________________________________________________
;
;power charge GD				4400
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 4400]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(FVar(7)*62.5+(random*.001))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Posadd]
Type 		= posadd
Trigger1 	= animelem = 2
X 		= 8

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 10.9447984695435

[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.86935943365097

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor((Fvar(0)*29.4)+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimElemTime(4) = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor((58.8+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 3, -44
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.574999988079071
Ground.Velocity 		= -2,-12.0750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -12.0750007629395
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 0
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,14
Channel     = 0
Volume      = 50

;___________________________________________________
;idling for you

[StateDef 4401]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
facep2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 4410]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(FVar(7)*62.5+(random*.001))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State Posadd]
Type 		= posadd
Trigger1 	= animelem = 2
X 		= 8

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 7.64306259155273

[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.903738498687744

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor((Fvar(0)*29.4)+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimElemTime(4) = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor((58.8+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 3, -44
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.574999988079071
Ground.Velocity 		= -2,-12.0750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -2, -12.0750007629395
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 0
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,14
Channel     = 0
Volume      = 50

;___________________________________________________
;idle

[StateDef 4411]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
facep2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;___________________________________________________
;
;crack shot 98				4500
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 4500]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

;Setup States
[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*93.75+((random%10)*.1))

[State Pos ]
Type 		= Posadd
Trigger1 	= animelem = 2
trigger2    = animelem = 3
X 			= 8

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,2
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value		= 7,3
;Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;going to air

[StateDef 4501]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Time
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 3.5
Y 			= -5.95
[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.588235318660736

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(9.8*(random%2))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimElemTime(1) = 1
Trigger2 	= AnimElemTime(2) = 1 && UniqHitcount > 0
Trigger3 	= AnimElemTime(3) = 1 && UniqHitcount > 1
Trigger4 	= AnimElemTime(4) = 1 && UniqHitcount > 2
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= High
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor(68.6*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*7),Floor(Fvar(3)*9)
Guard.PauseTime 		= Floor(Fvar(3)*7), Floor(Fvar(3)*7)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 0, -60
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -12.8279581069946
guard.Velocity 			= -12.8279581069946
air.Velocity 			= -3.8279581069946, -7.51851892471313
AirGuard.Velocity 		= -3.8279581069946, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 0
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 0
down.Velocity 			= 0

Down.Bounce 			= 0
ID 			= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Fvar(5)*(31.25+(random*.001))),Floor(Fvar(5)*(31.25+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;idle

[StateDef 4502]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

[State LandFX]
Type 		= Playsnd
Trigger1 	= animelem = 1
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 4510]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*93.75+((random%10)*.1))

[State Pos ]
Type 		= Posadd
Trigger1 	= animelem = 2
trigger2    = animelem = 3
X 			= 8

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,2
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value		= 7,3
;Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;going to air

[StateDef 4511]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Time
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 5
Y 			= -7.23188447952271

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.56521737575531

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(9.8*(random%2))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimElemTime(1) = 1
Trigger2 	= AnimElemTime(2) = 1 && UniqHitcount > 0
Trigger3 	= AnimElemTime(3) = 1 && UniqHitcount > 1
Trigger4 	= AnimElemTime(4) = 1 && UniqHitcount > 2
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= High
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor((68.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*7),Floor(Fvar(3)*9)
Guard.PauseTime 		= Floor(Fvar(3)*7), Floor(Fvar(3)*7)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 0, -60
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -12.8279581069946
guard.Velocity 			= -12.8279581069946
air.Velocity 			= -3.8279581069946, -7.51851892471313
AirGuard.Velocity 		= -3.8279581069946, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 0
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 0
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Fvar(5)*(31.25+(random*.001))),Floor(Fvar(5)*(31.25+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;idle

[StateDef 4512]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

[State LandFX]
Type 		= Playsnd
Trigger1 	= animelem = 1
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;______________________________________________________________________
;______________________________________________________________________

;crack shot 2002				4600	

;______________________________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 	4600]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*93.75+((random%10)*.1))

[State Pos ]
Type 		= Posadd
Trigger1 	= animelem = 2
trigger2    = animelem = 3
X 			= 8

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 9,4
Channel     = 0
Volume      = 60

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value		= 7,3
;Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;air

[StateDef 4601]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 3.5
Y 			= -6.06

[State Accel]
Type 		= Veladd 
Trigger1 	= 1
Y 			= 0.61

;[State Accel]
;Type 		= Veladd 
;Trigger1 	= animelem = 7 , >4
;Y 			= 0.90

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*18.4+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 4
Value		= 9,5
Channel     = 0
Volume      = 60

[State hit ]
Type 		= Hitdef
triggerall = ifelse(enemynear,gethitvar(fall) = 0, (p2stateno != [5020,5040]), p2stateno != 5040)
triggerall = p2stateno != [154,155]
Trigger1 		= animelem = 3 
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= High
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((78.43+((random%2)*9.7))*Fvar(0)), Floor((9.7+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*7),Floor(Fvar(3)*9)
Guard.PauseTime 		= Floor(Fvar(3)*7), Floor(Fvar(3)*7)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 0, -60
HitSound 			= S260, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -12.8279581069946
guard.Velocity 			= -12.8279581069946
air.Velocity 			= -4.0279581069946, -7.51851892471313
AirGuard.Velocity 		= -4.0279581069946, -7.51851892471313
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 					= ifelse(p2statetype = A, 1,0)
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(31.25+(random*.001))),Floor(Fvar(5)*(31.25+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State hit ]
Type 		= Hitdef
triggerall = ifelse(enemynear,gethitvar(fall) = 0, (p2stateno != [5020,5040]), p2stateno != 5040)
triggerall = p2stateno != [154,155]
Trigger1 		= animelem = 4 && movehit
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= High
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((39.2+((random%2)*9.7))*Fvar(0)), Floor((9.7+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*7),Floor(Fvar(3)*9)
Guard.PauseTime 		= Floor(Fvar(3)*7), Floor(Fvar(3)*7)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 0, -60
HitSound 			= S260, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -12.8279581069946
guard.Velocity 			= -12.8279581069946
air.Velocity 			= -4.0279581069946, -7.51851892471313
AirGuard.Velocity 		= -4.0279581069946, -7.51851892471313
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 					= ifelse(p2statetype = A, 1,0)
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(31.25+(random*.001))),Floor(Fvar(5)*(31.25+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State varset]
Type 		= Varset
Trigger1 	= time = 0
var(3) = 0

[State command]
Type 		= Varset
Trigger1    = command = "ashoot" && var(10) > 0
Trigger1 	= animelem = 3, > 0 && Animelem = 5, <= 0
var(3) = 1

[State command]
Type 		= Varset
Trigger1    = command = "aslash" && var(10) > 0
Trigger1 	= animelem = 3, > 0 && Animelem = 5, <= 0
var(3) = 2

[State esp]
Type 		= ChangeState
Trigger1 	= var(9) = 1 && animelem = 4, = 1 && var(10) > 0 && movehit
Value 	= ifelse(random <= 500, 3600,3610)
ctrl = 0

[State esp]
Type 		= ChangeState
Trigger1 	= animelem = 3, > 0 && animelem = 5, <= 0 && var(3) = 1
Value 	= 3600
ctrl = 0

[State esp]
Type 		= ChangeState
Trigger1 	= animelem = 3, > 0 && animelem = 5, <= 0 && var(3) = 2
Value 	= 3610
ctrl = 0

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= -5 && vel y > 0
Value 			= StateNo+1

;___________________________________________________
;idle

[StateDef 4602]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 1

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= time = 0
Y 			= 0

[State LandFX]
Type 		= Playsnd
Trigger1 	= time = 0
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 4610]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*93.75+((random%10)*.1))

[State Pos ]
Type 		= Posadd
Trigger1 	= animelem = 2
trigger2    = animelem = 3
X 			= 8

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,2
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value		= 7,3
;Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;air

[StateDef 4611]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= -5 && Time
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 4.46
Y 			= -7.35

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.56521737575531

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*18.4+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(enemynear,gethitvar(fall) = 0, (p2stateno != [5020,5040]), p2stateno != 5040)
triggerall = p2stateno != [154,155]
Trigger1 		= animelem = 3 
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= High
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((97.6+((random%2)*9.7))*Fvar(0)), Floor((9.7+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*7),Floor(Fvar(3)*9)
Guard.PauseTime 		= Floor(Fvar(3)*7), Floor(Fvar(3)*7)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 0, -60
HitSound 			= S260, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -12.8279581069946
guard.Velocity 			= -12.8279581069946
air.Velocity 			= -4.0279581069946, -7.51851892471313
AirGuard.Velocity 		= -4.0279581069946, -7.51851892471313
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 					= ifelse(p2statetype = A, 1,0)
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(31.25+(random*.001))),Floor(Fvar(5)*(31.25+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State hit ]
Type 		= Hitdef
triggerall = ifelse(enemynear,gethitvar(fall) = 0, (p2stateno != [5020,5040]), p2stateno != 5040)
triggerall = p2stateno != [154,155]
Trigger1 		= movehit && animelem = 4
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= High
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((49.6+((random%2)*9.7))*Fvar(0)), Floor((9.7+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*7),Floor(Fvar(3)*9)
Guard.PauseTime 		= Floor(Fvar(3)*7), Floor(Fvar(3)*7)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 0, -60
HitSound 			= S260, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -12.8279581069946
guard.Velocity 			= -12.8279581069946
air.Velocity 			= -4.0279581069946, -7.51851892471313
AirGuard.Velocity 		= -4.0279581069946, -7.51851892471313
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 					= ifelse(p2statetype = A, 1,0)
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(31.25+(random*.001))),Floor(Fvar(5)*(31.25+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State varset]
Type 		= Varset
Trigger1 	= time = 0
var(3) = 0

[State command]
Type 		= Varset
Trigger1    = command = "ashoot" && var(10) > 0
Trigger1 	= animelem = 3, > 0 && Animelem = 5, <= 0
var(3) = 1

[State command]
Type 		= Varset
Trigger1    = command = "aslash" && var(10) > 0
Trigger1 	= animelem = 3, > 0 && Animelem = 5, <= 0
var(3) = 2

[State esp]
Type 		= ChangeState
Trigger1 	= var(9) = 1 && animelem = 4, = 1 && var(10) > 0 && movehit
Value 	= ifelse(random <= 500, 3600,3610)
ctrl = 0

[State esp]
Type 		= ChangeState
Trigger1 	= animelem = 3, > 0 && animelem = 5, <= 0 && var(3) = 1
Value 	= 3600
ctrl = 0

[State esp]
Type 		= ChangeState
Trigger1 	= animelem = 3, > 0 && animelem = 5, <= 0 && var(3) = 2
Value 	= 3610
ctrl = 0

;___________________________________________________
;idle

[StateDef 4612]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= time = 0
Y 			= 0

[State LandFX]
Type 		= Playsnd
Trigger1 	= time = 0
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;___________________________________________________
;
;crack shot GD					4650	
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 4650]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*93.75+((random%10)*.1))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,2
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value		= 7,3
;Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;air

[StateDef 4651]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Time
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 2.125
Y 			= -3.75490236282349

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.588235318660736

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimElemTime(3) = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor((137.2+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*7),Floor(Fvar(3)*9)
Guard.PauseTime 		= Floor(Fvar(3)*7), Floor(Fvar(3)*7)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 0, -60
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -8.8279581069946, -7.51851892471313
guard.Velocity 			= -8.8279581069946
air.Velocity 			= -3.8279581069946, -7.51851892471313
AirGuard.Velocity 		= -3.8279581069946, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 0
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Fvar(5)*(31.25+(random*.001))),Floor(Fvar(5)*(31.25+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;idling

[StateDef 4652]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

[State LandFX]
Type 		= Playsnd
Trigger1 	= time = 0
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 4660]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*93.75+((random%10)*.1))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,2
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value		= 7,3
;Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;air

[StateDef 4661]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Time
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 2
Y 			= -5.23188447952271

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.56521737575531

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(18.4+(9.7*(random%4)))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimElemTime(4) = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor((137.2+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*7),Floor(Fvar(3)*9)
Guard.PauseTime 		= Floor(Fvar(3)*7), Floor(Fvar(3)*7)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 0, -60
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -8.8279581069946
guard.Velocity 			= -8.8279581069946
air.Velocity 			= -3.8279581069946, -7.51851892471313
AirGuard.Velocity 		= -3.8279581069946, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 0
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 0
down.Velocity 			= 0
GetPower 			= Floor(Fvar(5)*(31.25+(random*.001))),Floor(Fvar(5)*(31.25+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
;___________________________________________________
;idle

[StateDef 4662]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

[State LandFX]
Type 		= Playsnd
Trigger1 	= time = 0
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;___________________________________________________
;
;power dunk 98					4700
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 4700]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = (prevstateno = 4300 || prevstateno = 4310) && var(10) > 0
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = (prevstateno = 4300 || prevstateno = 4310) && var(10) > 0
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*62.5+((random%10)*.1))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State posadd ]
Type 		= posadd
Trigger1 	= animelem = 3
X 			= 16

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 9,6
Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;air

[StateDef 4701]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 2.89
Y 			= -8.67630207061768

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.470588237047195

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*39.2+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= animelem = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 6,Hit
Damage 			= Floor((58+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*11)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 4,-66
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*16)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.636363625526428
Ground.Velocity 		= -4.03655853271484, -8.96969699859619
guard.Velocity 			= -12.61205725
air.Velocity 			= -4.03655853271484, -8.26969699859619
AirGuard.Velocity 		= -4.61205725, -8.96969699859619
ground.cornerpush.veloff 	= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(78.125+(random*.001))),Floor(Fvar(5)*(78.125+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 1,4
;Channel     = 0
Volume      = 50


;___________________________________________________
;going down

[StateDef 4702]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= -10 && Time
Value 			= StateNo+1

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.470588237047195

[State Accel]
Type 		= Explod
Trigger1 	= !AnimelemTime(6)
Anim 			= 4730
ID 			= 4730
Pos 			= 0,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 9
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*29.4+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State Juggle checking projectile]
type = AssertSpecial
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State hit 1]
Type 		= Hitdef
triggerall = ifelse(enemynear,gethitvar(fall) = 0, (p2stateno != [5020,5040]), p2stateno != 5040)
triggerall = p2stateno != [154,155] 
Trigger1 = animelem = 6 && p2statetype = A
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((88+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*3),Floor(Fvar(3)*4)
Guard.PauseTime 		= Floor(Fvar(3)*3), Floor(Fvar(3)*3)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -1,-45
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 36
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*32)
Air.HitTime 		= Floor(Fvar(4)*32)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.636363625526428
Ground.Velocity 		= -9.63655853271484
guard.Velocity 			= -12.61205725
air.Velocity 			= -5.63655853271484, 8.6680269241333
AirGuard.Velocity 		= -5.61205725, 8.6680269241333
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
P2stateno 			= 671
P2getp1state 		= 1
Fall 				= ifelse(p2statetype = A, 1, 0)
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(78.125+(random*.001))),Floor(Fvar(5)*(78.125+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State hit 2]
Type 		= Hitdef
triggerall = ifelse(enemynear,gethitvar(fall) = 0, (p2stateno != [5020,5040]), p2stateno != 5040)
triggerall = (p2stateno != [154,155]) 
Trigger1 	= animelem = 6 && p2statetype != A
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((88+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*3),Floor(Fvar(3)*4)
Guard.PauseTime 		= Floor(Fvar(3)*3), Floor(Fvar(3)*3)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -1,-45
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 26
Guard.SlideTime 		= 36
Ground.HitTime 		= Floor(Fvar(4)*26)
Guard.HitTime 		= Floor(Fvar(4)*36)
Air.HitTime 		= Floor(Fvar(4)*36)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.636363625526428
Ground.Velocity 		= -9.63655853271484
guard.Velocity 			= -12.61205725
air.Velocity 			= -5.63655853271484, 8.6680269241333
AirGuard.Velocity 		= -5.61205725, 8.6680269241333
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
;P2StateNo 			= 5610
;P2GetP1State 		= 1
Fall 				= ifelse(p2statetype = A, 1, 0)
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(78.125+(random*.001))),Floor(Fvar(5)*(78.125+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 5
Value		= 9,7
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 6
Value		= 7,10
;Channel     = 0
Volume      = 50


;___________________________________________________
;idle

[StateDef 4703]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
velset = 0,0
HitCountPersist 	= 0
SprPriority 		= 2

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State Vel ]
Type 		= posset
Trigger1 	= time = 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

[State LandFX]
Type 		= Playsnd
Trigger1 	= time = 0
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 4710]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = (prevstateno = 4300 || prevstateno = 4310) && var(10) > 0
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = (prevstateno = 4300 || prevstateno = 4310) && var(10) > 0
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*62.5+((random%10)*.1))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State posadd ]
Type 		= posadd
Trigger1 	= animelem = 3
X 			= 16

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,9
Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;rising

[StateDef 4711]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 3.612
Y 			= -10.3425638580322

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.5

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(39.2+9.8*(random%3))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= animelem = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 6,Hit
Damage 			= Floor(68.8*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*11)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 4,-66
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*32)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.586363625526428
Ground.Velocity 		= -4.63655853271484, -9.6969699859619
guard.Velocity 			= -12.61205725
air.Velocity 			= -4.63655853271484, -7.26969699859619
AirGuard.Velocity 		= -4.61205725, -8.96969699859619
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(78.125+(random*.001))),Floor(Fvar(5)*(78.125+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 1,4
;Channel     = 0
Volume      = 50


;___________________________________________________
;going down

[StateDef 4712]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14 
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0
[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= -10 && Time
Value 			= StateNo+1

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.5

[State Accel]
Type 		= Explod
Trigger1 	= !AnimelemTime(6)
Anim 			= 4730
ID 			= 4730
Pos 			= 0,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 9
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*49+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State Juggle checking]
type = AssertSpecial
trigger1 = Var(22) = 1
flag = NoJuggleCheck

[State hit ]
Type 		= Hitdef
triggerall = ifelse(enemynear,gethitvar(fall) = 0, (p2stateno != [5020,5040]), p2stateno != 5040)
triggerall = (p2stateno != [154,155]) 
Trigger1 	= animelem = 6  && p2statetype = A
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((88+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*3),Floor(Fvar(3)*4)
Guard.PauseTime 		= Floor(Fvar(3)*3), Floor(Fvar(3)*3)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -1,-45
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*32)
Air.HitTime 		= Floor(Fvar(4)*32)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.636363625526428
Ground.Velocity 		= -9.63655853271484
guard.Velocity 			= -12.61205725
air.Velocity 			= -5.63655853271484, 8.6680269241333
AirGuard.Velocity 		= -5.61205725, 8.6680269241333
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
P2stateno 			= 671
P2getp1state 		= 1
Fall 				= ifelse(p2statetype = A, 1, 0)
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(78.125+(random*.001))),Floor(Fvar(5)*(78.125+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State hit ]
Type 		= Hitdef
triggerall = ifelse(enemynear,gethitvar(fall) = 0, (p2stateno != [5020,5040]), p2stateno != 5040)
triggerall = p2stateno != [154,155] 
Trigger1 	= animelem = 6 && p2statetype != A
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= H
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((108+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*3),Floor(Fvar(3)*4)
Guard.PauseTime 		= Floor(Fvar(3)*3), Floor(Fvar(3)*3)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -1,-45
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 26
Guard.SlideTime 		= 36
Ground.HitTime 		= Floor(Fvar(4)*26)
Guard.HitTime 		= Floor(Fvar(4)*36)
Air.HitTime 		= Floor(Fvar(4)*32)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.636363625526428
Ground.Velocity 		= -9.63655853271484
guard.Velocity 			= -12.61205725
air.Velocity 			= -5.63655853271484, 8.6680269241333
AirGuard.Velocity 		= -5.61205725, 8.6680269241333
ground.cornerpush.veloff 	= -0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= ifelse(p2statetype = A, 1, 0)
fall.yVelocity 		= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(78.125+(random*.001))),Floor(Fvar(5)*(78.125+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 6
Value		= 7,10
;Channel     = 0
Volume      = 50

;___________________________________________________
;idling for you

[StateDef 4713]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
velset = 0,0
HitCountPersist 	= 0
SprPriority 		= 2

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State Pos]
Type 		= posset
Trigger1 	= time = 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

[State LandFX]
Type 		= Playsnd
Trigger1 	= time = 0
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;___________________________________________________
;
;power drive & power shoot 99	4900
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 4900]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 	= 0
HitCountPersist 	= 0
velset = 0,0
SprPriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.125+((random%10)*.1))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosAdd
Trigger1 	= animelem = 3
trigger2    = animelem = 4
Trigger3 	= animelem = 5
trigger4    = animelem = 6
Trigger5 	= animelem = 7
X 			= 8

[State esp]
Type 		= PosAdd
Trigger1 	= animelem = 9
X 			= 4

[State esp]
Type 		= PosAdd
Trigger1 	= animelem = 10
trigger2    = animelem = 12
X 			= 11

[State esp]
Type 		= PosAdd
Trigger1 	= animelem = 11
X 			= 14

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(9.7*(random%4))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0,(p2stateno != [5020,5040]), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= AnimElem = 6 
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= MA
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((78.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*4),Floor(Fvar(3)*4)
Guard.PauseTime 		= Floor(Fvar(3)*4), Floor(Fvar(3)*4)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 4, -69
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 		= High
Air.Type 			= Low
Ground.SlideTime 		= 36
Guard.SlideTime 		= 36
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 			= -12
guard.Velocity 			= -12
air.Velocity 			= -3.8279581069946, -7.51851892471313
AirGuard.Velocity 		= -3.8279581069946, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
SprPriority 			= 2
Fall 				= ifelse(p2statetype = A, 1,0)
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(54.6875+(random*.001))),Floor(Fvar(5)*(54.6875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 5,2
Channel     = 0
Volume      = 50

[State Fx]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value		= 7,15
;Channel     = 0
Volume      = 50

;___________________________________________________
;second attack

[StateDef 4901]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosAdd
Trigger1 	= animelem = 1
X 			= 11

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 4.70119142532349

[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.967367623329163

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(9.7*(random%4))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State Explod]
type = Explod
trigger1 = AnimElem = 2, = 0
id = 4903
anim = 4903
bindtime = -1
pos = 0,0
sprpriority = 3
removetime = 10
supermovetime = 99999999
pausemovetime = 99999999
shadow = 68,68,68
ownpal = 1

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0,(p2stateno != [5020,5040]), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= Animelem = 2
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= MA
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((98.2+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*12)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -5, -81
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 0
Guard.SlideTime 		= 0
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*32)
Air.HitTime 		= Floor(Fvar(4)*13)
Guard.CtrlTime 		= 0
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.58333333
Ground.Velocity 		= -4.8279581069946, -7.51851892471313
guard.Velocity 			= -12.8279581069946
air.Velocity 			= -4.8279581069946, -7.51851892471313
AirGuard.Velocity 		= -3.8279581069946, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(109.375+(random*.001))),Floor(Fvar(5)*(109.375+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
p2getp1state = 1
p2stateno = 1022

[State Fx]
Type 		= Playsnd
Trigger1 	= Animelem = 2
Value		= 7,15
;Channel     = 0
Volume      = 50

;___________________________________________________
;idling

[StateDef 4902]
Type    		= S
MoveType		= I
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelMul
Trigger1 	= !Time && Anim != StateNo
X 			= 0.969367623329163

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
Ctrl = 1

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 4910]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 1
HitDefPersist 		= 0
velset = 0,0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*78.125+((random%10)*.1))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp1]
Type 		= PosAdd
trigger1    = animelem = 4
trigger2    = animelem = 5
trigger3    = animelem = 6
trigger4    = animelem = 10
trigger5    = animelem = 11
trigger6    = animelem = 12
X 			= 8

[State esp2]
Type 		= veladd
Trigger1 	= time = 0
X 			= 1

[State esp5]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(9.7*(random%3))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0,(p2stateno != [5020,5040]), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= AnimElem = 6 
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= MA
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((78+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*4),Floor(Fvar(3)*4)
Guard.PauseTime 		= Floor(Fvar(3)*4), Floor(Fvar(3)*4)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= 4, -69
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 		= High
Air.Type 			= Low
Ground.SlideTime 		= 44
Guard.SlideTime 		= 44
Ground.HitTime 			= Floor(Fvar(4)*22)
Guard.HitTime 			= Floor(Fvar(4)*44)
Air.HitTime 			= Floor(Fvar(4)*44)
guard.ctrlTime 			= 44
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 			= -12
guard.Velocity 			= -12
air.Velocity 			= -3.8279581069946, -7.51851892471313
AirGuard.Velocity 		= -3.8279581069946, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
SprPriority 			= 2
Fall 				= ifelse(p2statetype = A, 1,0)
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(54.6875+(random*.001))),Floor(Fvar(5)*(54.6875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 5,2
Channel     = 0
Volume      = 50

[State Fx]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value		= 7,15
;Channel     = 0
Volume      = 50

;___________________________________________________
;second hit

[StateDef 4911]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimElemTime(2)
X 			= 3.93
Y 			= -3.55

[State InitVel]
Type 		= VelAdd
Trigger1 	= AnimElemTime(2) >= 0
trigger1    = Animelem = 4, <= 0
Y 			= 0.40625

[State InitVel]
Type 		= VelAdd
trigger1    = Animelem = 5, >= 0
Y 			= 0.6025

[State esp]
Type 		= PosAdd
Trigger1 	= animelem = 1
X 			= 8

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 & Vel Y > 0
Value 			= StateNo+1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(19.6+9.8*(random%3))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
triggerall = ifelse(var(16)<= 0,(p2stateno != [5020,5040]), p2stateno != 5040)  
triggerall = p2stateno != [154,155]
Trigger1 	= AnimElemTime(3) = 1
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= HA
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((108.2+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*12)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -5, -82
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.Velocity 		= -4.8279581069946, -7.51851892471313
guard.Velocity 			= -12.8279581069946
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
air.Velocity 			= -3.8279581069946, -7.51851892471313
AirGuard.Velocity 		= -3.8279581069946, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
SprPriority 			= 2
Fall 				= 1
fall.xVelocity 			= -12
fall.yVelocity 			= 0
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(109.375+(random*.001))),Floor(Fvar(5)*(109.375+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
p2getp1state = 1
p2stateno = 1022

[State Fx]
Type 		= Playsnd
Trigger1 	= Animelem = 2
Value		= 7,15
;Channel     = 0
Volume      = 50

;___________________________________________________
;idling

[StateDef 4912]
Type    		= S
MoveType		= I
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
SprPriority 		= 2
velset = 0,0
anim = stateno

[State esp]
Type 		= PosAdd
Trigger1 	= animelem = 2
trigger2    = animelem = 3
X 			= -16

[State esp]
Type 		= PosAdd
Trigger1 	= animelem = 4
X 			= 4

[State esp]
Type 		= Posset
Trigger1 	= time = 0
y = 0


[State LandFX]
Type 		= Playsnd
Trigger1 	= time = 0
Value		= 1,5
;Channel     = 0
Volume      = 10

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 	= 0
Ctrl = 1

;___________________________________________________
;___________________________________________________
;
;Slide 98						4950
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 4950]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
velset            = 0,0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*62.5+((random%10)*.1))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 5,1
Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;slide in ground

[StateDef 4951]
Type    		= C
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 11.5630588531494

[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.938345646381378

[State esp]
Type 		= ChangeState
Trigger1 	= movecontact
Value 			= StateNo+2

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(9.8*(random%2))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040) 
Triggerall = p2stateno != [154,155]
Trigger1 	= Animelem = 1
Attr 				=  C, SA
HitFlag 			= M
GuardFlag 			= L
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((28.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*12)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -15, -11
HitSound 			= S260, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*32)
Air.HitTime 		= Floor(Fvar(4)*13)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.58333333
Ground.Velocity 		= 0
guard.Velocity 			= 0
air.Velocity 			= -3.8279581069946, -7.51851892471313
AirGuard.Velocity 		= -3.8279581069946, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
SprPriority 			= 2
Fall 				= ifelse(p2statetype = A,1,0)
fall.yVelocity 		= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,12
;Channel     = 0
Volume      = 50

[State DUST]
type = MakeDust
trigger1 = vel x > 0
pos = 22,0
spacing = 1

;___________________________________________________
;slide failed

[StateDef 4952]
Type    		= C
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;kicking

[StateDef 4953]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Displacement]
Type 		= PosAdd 
Trigger1 	= !AnimelemTime(1) || !AnimelemTime(2) || !AnimelemTime(3) || !AnimelemTime(4) || !AnimelemTime(5) || !AnimelemTime(6) 
X 			= 8

[State Varset]
Type 		= varset
Trigger1 	= time = 0
var(3) = 0

[State Varset]
Type 		= varset
Trigger1    = command = "DUx" || command = "DUy"
Trigger1 	= animelem = 5, > 0
var(3) = ifelse(command = "DUy",2,1)

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
trigger1    = var(3) = 1 && movecontact
Value 			= 4150

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
trigger1    = (var(3) = 2 || var(9) = 1) && movecontact
Value 			= 4160

[State Varset]
Type 		= null ;varset
Trigger1    = command = "DPa" || command = "DPb"
Trigger1 	= animelem = 5, > 0
var(3) = ifelse(command = "DPb",4,3)

[State esp]
Type 		= null ;ChangeState
Trigger1 	= AnimTime = 0
trigger1    = var(3) = 3 && movecontact
Value 			= 4700

[State esp]
Type 		= null ;ChangeState
Trigger1 	= AnimTime = 0
trigger1    = var(3) = 4 && movecontact
Value 			= 4710

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State NOJUGGLE]
type = varset
trigger1 = movehit
trigger1 = animelem = 6, >= 0
persistent = 0
ignorehitpause = 1
var(13) = 22

[State hit ]
Type 		= Hitdef
Triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040) 
Triggerall = p2stateno != [154,155]
Trigger1 	= var(10) <= 0 && AnimElem = 6 
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor(39.2*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*13)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -8, -72
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.574999988079071
Ground.Velocity 		= -2,-12.5750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -2.61205725, -12.5750007629395
AirGuard.Velocity 		= -3.8279581069946, -4.0750007629395
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
p2getp1state = 1
p2stateno = 1004

[State hit ]
Type 		= Hitdef
Triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040) 
Triggerall = p2stateno != [154,155]
Trigger1 	= var(10) > 0 && AnimElem = 6 
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor(39.2*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*13)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -8, -72
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.574999988079071
Ground.Velocity 		= -2,-12.0750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -2.61205725, -12.0750007629395
AirGuard.Velocity 		= -3.8279581069946, -4.0750007629395
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
p2getp1state = 1
p2stateno = 1004

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 6
Value		= 5,0
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 6
Value		= 7,13
;Channel     = 0
Volume      = 50

;___________________________________________________
;idle

[StateDef 4954]
Type    		= S
MoveType		= I
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 4960]
Type    		= C
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

;========================================
[State Cancel penalty]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(10) = -200

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Initial Power ]
Type 		= PowerAdd
Trigger1 	= !Time && Anim != StateNo
Value 			= Floor(Fvar(7)*62.5+((random%10)*.1))

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 5,1
Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;sliding

[StateDef 4961]
Type    		= C
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
velset            = 0,0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 11.5886793136597

[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.934559270381927

[State esp]
Type 		= ChangeState
Trigger1 	= movecontact
Value 			= StateNo+2

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*9.8+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040) 
Triggerall = p2stateno != [154,155]
Trigger1 	= Animelem = 1
Attr 				=  C, SA
HitFlag 			= M
GuardFlag 			= L
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((28.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*13)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -15, -11
HitSound 			= S260, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*16)
Guard.HitTime 		= Floor(Fvar(4)*32)
Air.HitTime 		= Floor(Fvar(4)*13)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.58333333
Ground.Velocity 		= 0
guard.Velocity 			= 0
air.Velocity 			= -3.8279581069946, -7.51851892471313
AirGuard.Velocity 		= -3.8279581069946, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
SprPriority 			= 2
Fall 				= ifelse(p2statetype = A,1,0)
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,12
;Channel     = 0
Volume      = 50

[State DUST]
type = MakeDust
trigger1 = vel x > 0
pos = 22,0
spacing = 1

;___________________________________________________
;idling

[StateDef 4962]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1


;___________________________________________________
;kicking

[StateDef 4963]
Type    		= S
MoveType		= A
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Anim ]
Type 		= VelSet
Trigger1 	= time = 0
X 			= 0
Y 			= 0

[State Displacement]
Type 		= PosAdd 
Trigger1 	= !AnimelemTime(1) || !AnimelemTime(2) || !AnimelemTime(3) || !AnimelemTime(4) || !AnimelemTime(5) || !AnimelemTime(6) 
X 			= 8

[State Varset]
Type 		= varset
Trigger1 	= time = 0
var(3) = 0

[State Varset]
Type 		= varset
Trigger1    = command = "DUx" || command = "DUy"
Trigger1 	= animelem = 5, > 0
var(3) = ifelse(command = "DUy",2,1)

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
trigger1    = var(3) = 1 && movecontact
Value 			= 4150

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
trigger1    = (var(3) = 2 || var(9) = 1) && movecontact
Value 			= 4160

[State Varset]
Type 		= null ;varset
Trigger1    = command = "DPa" || command = "DPb"
Trigger1 	= animelem = 5, > 0
var(3) = ifelse(command = "DPb",4,3)

[State esp]
Type 		= null ;ChangeState
Trigger1 	= AnimTime = 0
trigger1    = var(3) = 3 && movecontact
Value 			= 4700

[State esp]
Type 		= null ;ChangeState
Trigger1 	= AnimTime = 0
trigger1    = var(3) = 4 && movecontact
Value 			= 4710

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State NOJUGGLE]
type = varset
trigger1 = movehit
trigger1 = animelem = 6, >= 0
persistent = 0
ignorehitpause = 1
var(13) = 22

[State hit ]
Type 		= Hitdef
Triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040) 
Triggerall = p2stateno != [154,155]
Trigger1 	= var(10) <= 0 && AnimElem = 6
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor(39.2*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*13)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -8, -72
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.574999988079071
Ground.Velocity 		= -2,-12.5750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -2.61205725, -12.5750007629395
AirGuard.Velocity 		= -3.8279581069946, -4.0750007629395
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
p2getp1state = 1
p2stateno = 1004

[State hit ]
Type 		= Hitdef
Triggerall = ifelse(var(16)<= 0, (p2stateno != [5020,5040]), p2stateno != 5040) 
Triggerall = p2stateno != [154,155]
Trigger1 	= var(10) > 0 && AnimElem = 6
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor(39.2*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*13)
SparkNo 			= S1041
Guard.SparkNo 		= S1042
sparkxY 			= -8, -72
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.574999988079071
Ground.Velocity 		= -2,-12.0750007629395
guard.Velocity 			= -12.61205725
air.Velocity 			= -2.61205725, -12.0750007629395
AirGuard.Velocity 		= -3.8279581069946, -4.0750007629395
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 65
GetPower 			= Floor(Fvar(5)*(46.875+(random*.001))),Floor(Fvar(5)*(46.875+(random*.001)))
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
p2getp1state = 1
p2stateno = 1004

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 6
Value		= 5,0
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 6
Value		= 7,13
;Channel     = 0
Volume      = 50


;___________________________________________________
;idling

[StateDef 4964]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;___________________________________________________
;___________________________________________________
;
;
;6000-7950 DM's
;600 to 795
;___________________________________________________
;___________________________________________________
;___________________________________________________
;___________________________________________________
;
;Buster Wolf
;
;___________________________________________________

;StartUp
[StateDef 6000]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
;Juggle  		= 14
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 1
anim			= stateno
velset		= 0,0

;========================================
[State Cancel penalty]
type = poweradd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
value = -1000

[State Juggle var]
type = varset
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State AFTER]
type = AfterImage
trigger1 = Time = 0
time = 150
;PalBright = 0, 0, 0
;PalContrast =  250,250,250
;PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 45
FrameGap = 15

[State Envcolor]
type = EnvColor
trigger1 = var(40) <= 0
trigger1 = time = 0
value = 0,0,0
time = 28
under = 1

[State Super Pause]
type = SuperPause
trigger1 = time = 0
movetime = 17
poweradd = ifelse(var(10) <= 0, -1000, 0)
time = 28
anim = -1
p2defmul = 1
darken = 0

[State Maxout]
type = Varset
trigger1 = time = 0
trigger1 = var(10) > 0
var(10) = 1

[State NOTHITBY]
type = Nothitby
trigger1 = 1
value = SCA

[State Super1]
type = Explod
trigger1 = time = 0
anim = 1351
id   = 1351
pos = -8,-85
postype = p1
supermove = 1
sprpriority = 1
bindtime = 30
ontop = 1
ownpal = 1

[State Super2]
type = Explod
trigger1 = time = 0
anim = 1352
id   = 1352
pos = -8,-85
postype = p1
sprpriority = -2
supermove = 1
bindtime = 30
ontop = 0
ownpal = 1

[State Chime]
type = PlaySnd
trigger1 = Time = 0
value = 14,0
volume = -10

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 9,13
Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 	= StateNo+1

;Dash
[StateDef 6001]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 1
velset		= 0,0
anim			= stateno

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

[State Explod]
Type 		= Explod
Trigger1 	= Animelem = 1
Anim 			= 6020
ID 			= 6020
Pos 			= 0,-1
PosType 		= p1
Facing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
SprPriority 		= 2
shadow 			= 68,68,68
ownpal 			= 1
removeongethit 		= 1

[State Explod2]
Type 		= Explod
Trigger1 	= time = 0
Anim 			= 6021
ID 			= 6021
Pos 			= 0,0
PosType 		= p1
Facing 		= 1
BindTime 		= 1
Vel 			= 0,0
Accel 			= 0,0
SprPriority 		= 3
shadow 			= 68,68,68
ownpal 			= 1
removeongethit 		= 1

[State esp]
Type 		= Velset
Trigger1 	= time = 0
x = 15

[State esp]
Type 		= velmul
Trigger1 	= time > 0
x = .892

[State esp]
Type 		= ChangeState
Trigger1 	= movecontact
Value 	= StateNo+2

[State esp]
Type 		= ChangeState
Trigger1 	= time >= 10
Value 	= StateNo+1

[State hit]
Type 		= Hitdef
Trigger1 	= animelem = 1
attr 				= S, HA
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
damage 			= Floor((108.3+((random%2)*9.7))*(Fvar(0))), Floor((9.7+(random*.001))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*30),Floor(Fvar(3)*30)
guard.pauseTime 		= Floor(Fvar(3)*30), Floor(Fvar(3)*30)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0, -89
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 56
ground.hitTime 			= Floor(Fvar(4)*36)
guard.hitTime 			= Floor(Fvar(4)*36)
air.hitTime 			= Floor(Fvar(4)*5)
guard.ctrlTime 			= 56
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -2.4444446563721, -6.2
guard.velocity 			= -2.4444446563721
air.velocity 			= -4.0444446563721, -5.01999998092651
airguard.velocity 		= -4.4444446563721, -5.51999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 1
fall 				= 1
fall.yvelocity 		= -3.4
Fall.Recover 		= 0
getpower			= 0,0
GivePower 			= 0,0
attack.width 			= 5,5
p2getp1state = 1
p2stateno = 1004

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1, = 1
Value		= 7,26
;Channel     = 0
Volume      = 50

;Miss
[StateDef 6002]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
;Juggle  		= 10
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 1
anim			= stateno
velset		= 0,0

[State AFTER]
type = AfterImagetime
trigger1 = Time = 0
time = 0

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 	= 0
ctrl 		= 1

;Hit
[StateDef 6003]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle = 14
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 1
velset		= 0,0
anim			= stateno

[State JuggleVar2]
type = Varset
trigger1 = animtime = 0
var(22) = 0

[State Juggle checking]
type = AssertSpecial
triggerall = NumTarget
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State posadd]
Type 		= posadd
Trigger1 	= Animelem = 1
x		= 16

[State posadd]
Type 		= posadd
Trigger1 	= Animelem = 21
Trigger2    = Animelem = 22
x		= 8

[State Explod]
Type 		= Explod
Trigger1 	= Animelem = 3
Anim 			= 6022
ID 			= 6022
Pos 			= -28,0
PosType 		= p1
Facing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
SprPriority 		= 3
shadow 			= 68,68,68
ownpal 			= 1
removeongethit 		= 1

[State Explod]
Type 		= Explod
Trigger1 	= Animelem = 3
Anim 			= 6023
ID 			= 6023
Pos 			= -28,0
PosType 		= p1
Facing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
SprPriority 		= -1
shadow 			= 68,68,68
ownpal 			= 1
removeongethit 		= 1

[State EnvShake]
type = EnvShake
trigger1 = AnimElem = 3, = 0
time = 20
ampl = -5
freq = 90

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value		= 9,14
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 3, = 1
Value		= 7,27
;Channel     = 0
Volume      = 50

[State hit]
Type 		= null ;Hitdef
Trigger1 	= animelem = 6
attr 				= S, HP
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Diagup
air.AnimType 		= Diagup
fall.AnimType 		= Diagup
priority 			= 3,Hit
damage 			= Floor((138.3+((random%2)*9.7))*(Fvar(0))), Floor((9.7+(random*.001))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*1),Floor(Fvar(3)*30)
guard.pauseTime 		= Floor(Fvar(3)*1), Floor(Fvar(3)*30)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0, -89
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 32
ground.hitTime 			= Floor(Fvar(4)*36)
guard.hitTime 			= Floor(Fvar(4)*60)
air.hitTime 			= Floor(Fvar(4)*5)
guard.ctrlTime 			= 60
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -4.4444446563721, -12.2
guard.velocity 			= -4.4444446563721
air.velocity 			= -4.0444446563721, -10.01999998092651
airguard.velocity 		= -4.4444446563721, -10.51999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 1
fall 				= 1
fall.yvelocity 		= -3.4
Fall.RecoverTime 		= 150
getpower			= 0,0
GivePower 			= 0,0
attack.width 			= 5,5

[State hit]
Type 		= Hitdef
Trigger1 	= animelem = 6
Trigger2    = animelem = 7
Trigger3    = Animelem = 8
attr 				= S, HP
hitflag 			= MAFP
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= Back
fall.AnimType 		= Back
priority 			= 3,Hit
damage 			= Floor((24.3+((random%2)*9.7))*(Fvar(0))), Floor((9.7+(random*.001))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*1),Floor(Fvar(3)*2)
guard.pauseTime 		= Floor(Fvar(3)*1), Floor(Fvar(3)*2)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0, -79
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 32
ground.hitTime 			= Floor(Fvar(4)*36)
guard.hitTime 			= Floor(Fvar(4)*60)
air.hitTime 			= Floor(Fvar(4)*5)
guard.ctrlTime 			= 60
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -4.4444446563721, -12.2
guard.velocity 			= -4.4444446563721
air.velocity 			= -4.0444446563721, -10.01999998092651
airguard.velocity 		= -4.4444446563721, -10.51999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 1
fall 				= 1
fall.yvelocity 		= -3.4
Fall.RecoverTime 		= 150
getpower			= 0,0
GivePower 			= 0,0
attack.width 			= 5,5

[State hit]
Type 		= Hitdef
Trigger1 	= Animelem = 9
attr 				= S, HP
hitflag 			= MAFP
guardflag 			= M
affectteam 			= E
AnimType 			= Diagup
air.AnimType 		= Diagup
fall.AnimType 		= Diagup
priority 			= 3,Hit
damage 			= Floor((57.3+((random%2)*9.7))*(Fvar(0))), Floor((9.7+(random*.001))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*1),Floor(Fvar(3)*30)
guard.pauseTime 		= Floor(Fvar(3)*1), Floor(Fvar(3)*30)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0, -79
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 32
ground.hitTime 			= Floor(Fvar(4)*36)
guard.hitTime 			= Floor(Fvar(4)*60)
air.hitTime 			= Floor(Fvar(4)*5)
guard.ctrlTime 			= 60
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -4.4444446563721, -12.2
guard.velocity 			= -4.4444446563721
air.velocity 			= -4.0444446563721, -10.01999998092651
airguard.velocity 		= -4.4444446563721, -10.51999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 1
fall 				= 1
fall.yvelocity 		= -3.4
Fall.RecoverTime 		= 150
getpower			= 0,0
GivePower 			= 0,0
attack.width 			= 5,5

[State AFTER]
type = AfterImagetime
trigger1 = Time = 0
trigger2 = Animtime = 0
time = 0

[State AFTER]
type = AfterImage
trigger1 = Time = 1
time = 150
;PalBright = 0, 0, 0
;PalContrast =  250,250,250
;PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 16
FrameGap = 4

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 	= 6004
ctrl 		= 1

;End
[StateDef 6004]
Type    		= S
MoveType		= I
physics 		= N
Ctrl 			= 1
PowerAdd 		= 0
Juggle = 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 1
velset		= 0,0
anim = stateno+1

[State AFTER]
type = AfterImagetime
trigger1 = Time = 0
time = 0

[State esp]
Type 		= Changeanim
Trigger1 	= Time = 0
trigger1 	= random <= 500
Value 	= stateno

[State esp]
Type 		= Changeanim
Trigger1 	= Time = 0
trigger1 	= random <= 500
Value 	= 850

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 	= 0
ctrl 		= 1

;___________________________________________________
;Buster Wolf SDM
;
;___________________________________________________

;StartUp
[StateDef 6030]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
;Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 1
anim			= stateno
velset		= 0,0

;========================================
[State Cancel penalty]
type = poweradd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
value = -1000

[State Juggle var]
type = varset
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State AFTER]
type = AfterImage
trigger1 = Time = 0
time = 45
;PalBright = 0, 0, 0
;PalContrast =  250,250,250
;PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 45
FrameGap = 15

[State Envcolor]
type = EnvColor
trigger1 = var(40) <= 0
trigger1 = time = 0
value = 0,0,0
time = 28
under = 1

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

[State 2K1 PowerDrain]
type = poweradd
trigger1 = Time = 0
trigger1 = var(21) = 5
value = -1000

[State 2K PowerDrain]
type = poweradd
trigger1 = Time = 0
trigger1 = var(21) = 4
value = -2000

[State Super Pause]
type = SuperPause
trigger1 = time = 0
movetime = 17
poweradd = -1000
time = 28
anim = -1
p2defmul = 1
darken = 0

[State Maxout]
type = Varset
trigger1 = time = 0
trigger1 = var(10) > 0
var(10) = 1

[State NOTHITBY]
type = Nothitby
trigger1 = 1
value = SCA

[State Super1]
type = Explod
trigger1 = time = 0
anim = 1353
id   = 1353
pos = -8,-85
postype = p1
supermove = 1
sprpriority = 1
bindtime = 30
ontop = 1
ownpal = 1

[State Super2]
type = Explod
trigger1 = time = 0
anim = 1354
id   = 1354
pos = -8,-85
postype = p1
sprpriority = -2
supermove = 1
bindtime = 30
ontop = 0
ownpal = 1

[State Chime]
type = PlaySnd
trigger1 = Time = 0
value = 14,4
volume = -10

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,24
Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 	= StateNo+1

;Dash
[StateDef 6031]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 1
velset		= 0,0
anim			= 6031

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

[State Explod]
Type 		= Explod
Trigger1 	= Animelem = 1
Anim 			= 6020
ID 			= 6020
Pos 			= 0,-1
PosType 		= p1
Facing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
SprPriority 		= 2
shadow 			= 68,68,68
ownpal 			= 1
removeongethit 		= 1

[State Explod2]
Type 		= Explod
Trigger1 	= time = 0
Anim 			= 6021
ID 			= 6021
Pos 			= 0,0
PosType 		= p1
Facing 		= 1
BindTime 		= 1
Vel 			= 0,0
Accel 			= 0,0
SprPriority 		= 3
shadow 			= 68,68,68
ownpal 			= 1
removeongethit 		= 1

[State esp]
Type 		= Velset
Trigger1 	= time = 0
x = 15

[State esp]
Type 		= velmul
Trigger1 	= time > 0
x = .892

[State esp]
Type 		= ChangeState
Trigger1 	= movecontact
Value 	= stateno+2

[State esp]
Type 		= ChangeState
Trigger1 	= time >= 10
Value 	= stateno+1

[State hit]
Type 		= Hitdef
Trigger1 	= animelem = 1
attr 				= S, HA
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= Back
fall.AnimType 		= Back
priority 			= 3,Hit
damage 			= Floor((108.3+((random%2)*9.7))*(Fvar(0))), Floor((9.7+(random*.001))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*30),Floor(Fvar(3)*30)
guard.pauseTime 		= Floor(Fvar(3)*30), Floor(Fvar(3)*30)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0, -89
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 56
ground.hitTime 			= Floor(Fvar(4)*36)
guard.hitTime 			= Floor(Fvar(4)*36)
air.hitTime 			= Floor(Fvar(4)*5)
guard.ctrlTime 			= 56
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -2.0444446563721, -6.2
guard.velocity 			= -2.0444446563721
air.velocity 			= -2.0444446563721, -5.01999998092651
airguard.velocity 		= -2.0444446563721, -5.51999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 1
fall 				= 1
fall.yvelocity 		= -3.4
Fall.Recover 		= 0
getpower			= 0,0
GivePower 			= 0,0
attack.width 			= 5,5
p2getp1state = 1
p2stateno = 1004

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 1, = 1
Value		= 7,26
;Channel     = 0
Volume      = 50

;Miss
[StateDef 6032]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
;Juggle  		= 10
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 1
anim			= 6002
velset		= 0,0

[State AFTER]
type = AfterImagetime
trigger1 = animtime = 0
time = 0

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 	= 0
ctrl 		= 1

;Hit
[StateDef 6033]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle = 14
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 1
velset		= 0,0
anim			= 6033

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

[State Juggle checking]
type = AssertSpecial
triggerall = NumTarget
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

[State posadd]
Type 		= posadd
Trigger1 	= Animelem = 1
x		= 16

[State posadd]
Type 		= posadd
Trigger1 	= Animelem = 14
Trigger2    = Animelem = 15
x		= 8

[State Explod]
Type 		= Explod
Trigger1 	= Animelem = 3
Anim 			= 6022
ID 			= 6022
Pos 			= -28,0
PosType 		= p1
Facing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
SprPriority 		= 3
shadow 			= 68,68,68
ownpal 			= 1
removeongethit 		= 1

[State Explod]
Type 		= Explod
Trigger1 	= Animelem = 3
Anim 			= 6023
ID 			= 6023
Pos 			= -28,0
PosType 		= p1
Facing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
SprPriority 		= -1
shadow 			= 68,68,68
ownpal 			= 1
removeongethit 		= 1

[State EnvShake]
type = EnvShake
trigger1 = AnimElem = 3, = 0
time = 20
ampl = -5
freq = 90

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value		= 7,25
Channel     = 0
Volume      = 50

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 3, = 1
Value		= 7,27
;Channel     = 0
Volume      = 50

[State hit]
Type 		= Hitdef
Trigger1 	= animelem = 6
Trigger2    = animelem = 7
Trigger3    = Animelem = 8
attr 				= S, HP
hitflag 			= MAFP
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= Back
fall.AnimType 		= Back
priority 			= 3,Hit
damage 			= 27,10
pauseTime 			= Floor(Fvar(3)*1),Floor(Fvar(3)*1)
guard.pauseTime 		= Floor(Fvar(3)*1), Floor(Fvar(3)*1)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0, -79
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 32
ground.hitTime 			= Floor(Fvar(4)*36)
guard.hitTime 			= Floor(Fvar(4)*60)
air.hitTime 			= Floor(Fvar(4)*5)
guard.ctrlTime 			= 60
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -4.4444446563721, -2.2
guard.velocity 			= -4.4444446563721
air.velocity 			= -4.0444446563721, -2.01999998092651
airguard.velocity 		= -4.4444446563721, -2.51999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 1
fall 				= 1
fall.yvelocity 		= -3.4
Fall.RecoverTime 		= 150
getpower			= 0,0
GivePower 			= 0,0
attack.width 			= 5,5

[State hit]
Type 		= Hitdef
Trigger1 	= Animelem = 9
attr 				= S, HP
hitflag 			= MAFP
guardflag 			= M
affectteam 			= E
AnimType 			= up
air.AnimType 		= up
fall.AnimType 		= up
priority 			= 3,Hit
damage 			= 31,10
pauseTime 			= Floor(Fvar(3)*1),Floor(Fvar(3)*40)
guard.pauseTime 		= Floor(Fvar(3)*1), Floor(Fvar(3)*30)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0, -79
hitsound			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 32
ground.hitTime 			= Floor(Fvar(4)*36)
guard.hitTime 			= Floor(Fvar(4)*60)
air.hitTime 			= Floor(Fvar(4)*5)
guard.ctrlTime 			= 60
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 			= 0.58333333
ground.velocity 		= -6.4444446563721, -4.2
guard.velocity 			= -12.4444446563721
air.velocity 			= -6.0444446563721, -4.01999998092651
airguard.velocity 		= -6.4444446563721, -4.51999998092651
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority			= 1
fall 				= 1
fall.yvelocity 		= -3.4
Fall.Recover 		= 0
getpower			= 0,0
GivePower 			= 0,0
attack.width 			= 5,5

[State AFTER]
type = AfterImagetime
trigger1 = Time = 0
trigger2 = !movehit && Animtime = 0
time = 0

[State AFTER]
type = AfterImage
trigger1 = Time = 1
time = 500
;PalBright = 0, 0, 0
;PalContrast =  250,250,250
;PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 11
FrameGap = 3

[State esp]
Type 		= ChangeState
Trigger1 	= movehit && animtime = 0
Value 	= 6034
ctrl 		= 0

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 	= 0
ctrl 		= 1

;Rider Kick Start
[StateDef 6034]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;Jump
[StateDef 6035]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 6,-10

[State snd]
type = NULL ;PlaySnd
trigger1 = Time = 0
value = 1,4
volume = 0

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

[State veladd ]
Type 		= veladd
Trigger1 	= 1
y = .55

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= time = 14
Value 			= StateNo+1

;Rider Kick
[StateDef 6036]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
juggle = 14
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State velset]
Type 		= velset
Trigger1 	= animelem = 3
x = 4.5
y = 5.5

[State veladd]
Type 		= veladd
Trigger1 	= animelem = 3, > 0
y = .45

[State width]
Type 		= width
Trigger1 	= animelem = 3, > 0
edge = 40

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

[State Juggle checking]
type = AssertSpecial
triggerall = NumTarget
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= pos y >= 0 && vel y > 0
Value 			= StateNo+1

[State Accel]
Type 		= null ;Explod
Trigger1 	= !AnimelemTime(1)
Anim 			= 3601
ID 			= 3601
Pos 			= 5,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 9
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State explod]
Type 		= RemoveExplod
trigger1    = animelem = 18
Trigger1 	= NumExplod(4032) 
ID 			= 4032

[State Fx]
type = PlaySnd
trigger1 = animelem = 3
value = 7,10

[State change]
type = changestate
trigger1 = movehit
value = 6037

[State hit]
type = HitDef
trigger1 = p2stateno != 5020 && p2stateno != 5040  
trigger1 = p2stateno != [154,155]
trigger1 = AnimElem = 3
attr = A, HA
hitflag = MAF
animtype = HARD
damage = 10,10
guardflag = HA
pausetime = 1,1
sparkno = S304
guard.sparkno = S1039
ground.type = low
sparkxy = 15,-50
hitsound = S10,4
guardsound = S8,4
ground.velocity = -9,6
air.velocity = -9,6
airguard.velocity = -2.5,-1
fall = 1
fall.recover = 0
guard.velocity = -12
guard.slidetime = 17
guard.hittime = 17
getpower = 0,0
givepower = 21,21
air.juggle = 15
guard.pausetime = 1,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
yaccel = .5
P2stateno 			= 6040
P2getp1state 		= 1
p2facing = 1
Down.HitTime 		= 50

;Contact
[Statedef 6037]
type = A
movetype = A
physics = N
poweradd = 0
ctrl = 0
anim = 3602

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

[State Posadd]
type = Posadd
trigger1 = Time = 0
ignorehitpause = 1
persistent = 0
y = 15
x = 15

[State Bind]
type = TargetBind
trigger1 = time = 0
pos = 20, -36
time = 1

[State esp]
Type 		= ChangeState
Trigger1 	= pos y > 20 && vel y > 0 
Value 	= 6038

;Land and Finisher
[Statedef 6038]
type = S
movetype = A
physics = N
poweradd = 0
ctrl = 0
anim = 6038
velset = 0,0

[State lifeadd]
type = targetlifeadd
trigger1 = time = 1
value = -21

[State spr]
type = sprpriority
trigger1 = animelem = 3
value = -2

[State Juggle checking]
type = AssertSpecial
triggerall = NumTarget
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

[State Posadd]
type = Posset
trigger1 = Time = 0
y = 0

[State after]
type = afterimagetime
trigger1 = animTime = 0
time = 0

[State EnvShake]
type = EnvShake
trigger1 = time = 1
time = 20
ampl = -6
freq = 90

[State SndGrnd]
type = PlaySnd
trigger1 = Animelem = 1
value = 6,1
volume = 50

[State Ground FX]
type = Explod
trigger1 = time = 1
id = 61
anim = F61
pos = 20,0
sprpriority = -3
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1

[State Bind]
type = TargetBind
trigger1 = time = 0
pos = 20, 0
time = 1

[State Bind]
type = Targetstate
trigger1 = time = 0
value = 6041

[State SndVoice]
type = PlaySnd
trigger1 = Animelem = 24, = 1
value = 7,30
channel = 0
volume = 80

[State SndGrnd]
type = PlaySnd
trigger1 = AnimElem = 24, = 1
value = 6,1
volume = 50

[State Ground FX]
type = Explod
trigger1 = animelem = 24, = 1
id = 61
anim = F61
pos = 6,0
sprpriority = -3
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1

[State SndFx]
type = PlaySnd
trigger1 = AnimElem = 24, = 1
value = 7,18
volume = 100

[State hit ]
Type 		= Hitdef
Trigger1 	= Animelem = 8
Attr 				=  C, HA
HitFlag 			= MAFD
GuardFlag 			= L
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((21.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*4),Floor(Fvar(3)*6)
Guard.PauseTime 		= Floor(Fvar(3)*4), Floor(Fvar(3)*6)
SparkNo 			= S1040
Guard.SparkNo 		= S1042
sparkxY 			= 0, -11
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*56)
Guard.HitTime 		= Floor(Fvar(4)*56)
Air.HitTime 		= Floor(Fvar(4)*56)
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.58333333
Ground.Velocity 		= -0, -0
guard.Velocity 			= -0
air.Velocity 			= -0,0
AirGuard.Velocity 		= 0, 0
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
SprPriority 			= -2
Fall 				= 0
fall.yVelocity 		= -3.4
Fall.RecoverTime 		= 65
GetPower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State hit ]
Type 		= Hitdef
trigger1    = Animelem = 18
Attr 				=  C, HA
HitFlag 			= MAFD
GuardFlag 			= L
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((31.6+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*11),Floor(Fvar(3)*13)
Guard.PauseTime 		= Floor(Fvar(3)*11), Floor(Fvar(3)*13)
SparkNo 			= S1040
Guard.SparkNo 		= S1042
sparkxY 			= -23, -11
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Fvar(4)*100)
Guard.HitTime 		= Floor(Fvar(4)*100)
Air.HitTime 		= Floor(Fvar(4)*100)
down.hittime		= 100
Guard.CtrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.58333333
Ground.Velocity 		= -0, -0
guard.Velocity 			= -0
air.Velocity 			= -0,0
AirGuard.Velocity 		= 0, 0
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
SprPriority 			= -2
Fall 				= 0
fall.yVelocity 		= -3.4
Fall.RecoverTime 		= 65
GetPower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State  PROJ]
type = Projectile
trigger1 = Animelem = 24, = 1
attr = S, HP
projID = 8183
projanim = 8301
projremove = 0
projremovetime = 30
projshadow = 68,68,68
projpriority = 9999
offset = -20,0
velocity = 0
ownpal = 1
Damage 			= Floor((46.28+((random%2)*9.7))*(Fvar(0))), Floor((29.1+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*0),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*0), Floor(Fvar(3)*10)
AnimType 			= Back
Air.AnimType 		= Back
hitflag = MFADP
guardflag = M
sparkxY 			= 100, floor(enemynear,pos y - 46)
sparkno = S1040
guard.sparkno = S1042
hitsound			= S280, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
YAccel 			= 0.58264462809917355371900826446281
Ground.Velocity 		= -4,-12.818181818181818181818181818164
guard.Velocity 			= -3.818181818181818181818181818164
air.Velocity 			= -4, -12.818181818181818181818181818164
AirGuard.Velocity 		= -3.61205725, -12.818181818181818181818181818164
Down.Velocity 			= -4, -14.818181818181818181818181818164
Fall 				= 1
fall.yVelocity 			= -3.6
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
down.hittime = 12
down.velocity = -6,0
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
air.juggle = 14
getpower = 0,0
givepower = Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
p2getp1state = 1
p2stateno = 6042

[State esp]
Type 		= ChangeState
Trigger1 	= animtime = 0
Value 	= 0
ctrl = 1

;P2 Hit
[Statedef 6040]
type    = L
movetype= H ;Get hit
physics = N
ctrl = 0

[State 1]
type = Width
trigger1 = time >= 0
edge = 0,0

[State 2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 6040

[State liftoff]
type = selfState
Trigger1 = AnimTime = 0
value = 5030

;P2 Hit
[Statedef 6041]
type    = L
movetype= H ;Get hit
physics = N
ctrl = 0

[State 1]
type = Width
trigger1 = time >= 0
edge = 0,0

[State 2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 6041

[State liftoff]
type = selfState
Trigger1 = AnimTime = 0
value = 5030

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 6042]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3] ;Freeze
type = ChangeAnim2
trigger1 = selfanimexist(5090)
value = 5090

[State 3] ;Freeze
type = ChangeAnim2
trigger1 = !selfanimexist(5090)
value = 5030

[State 5]
type = changeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 6043;HITA_UP

;---------------------------------------------------------------------------
;Bounce
[Statedef 6043]
type    = L
movetype= H
physics = N
velset = -1,-6

[State 1008, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 674, Gravity] 
type = Veladd
trigger1 = Time > 0
y = gethitvar(yaccel)

[State 674, 1] 
type = ChangeAnim2
trigger1 = Time = 0
value = 674

[State 674, 2]
type = changestate
trigger1 = vel y > 0 && pos y >= -10
value = 673

;---------------------------------------------------------------------------

;___________________________________________________
;___________________________________________________
;
;shining knuckle				6250 	
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;HSDM
;
;___________________________________________________

[StateDef 6280]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Anim ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State esp]
Type 		= null ;SuperPause
Trigger1 	= AnimelemTime(3) = 0 
Time 			= 29
Anim 			= 100
Sound 			= 20, 0
Pos 			= -44,-96
MoveTime 		= 0
Darken 			= 1
P2DefMul 		= 1
PowerAdd 		= -1000
UnHittable 		= 1

[State AFTER]
type = AfterImage
trigger1 = time = 0
time = 45
;PalBright = 0, 0, 0
;PalContrast =  250,250,250
;PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 12
FrameGap = 10

[State esp]
Type 		= null ;Helper
Trigger1 	= AnimTime = 0
helperType 		= normal
Name 			= "ShiningKnuckle"
ID 			= 6298
Pos 			= 0,0
PosType 		= p1;p2,front,back,left,right
Facing 			= 1
StateNo 		= 6298
keyCtrl 		= 0
ownpal 			= 1
SuperMoveTime 		= 1
pauseMoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front 	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;advancing

[StateDef 6281]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 10

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.125

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
Y 			= -0.5

[State InitVel]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= movehit && AnimTime = 0
Trigger2 	= AnimTime = 0 || moveguarded
Value 			= StateNo+1

[State Accel]
Type 		= Explod
Trigger1 	= !AnimelemTime(1)
Anim 			= 6299
ID 			= 6299
Pos 			= 0,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(77.6+9.7*(random%2))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit]
Type 		= Hitdef
Trigger1 	= AnimElemTime(AnimElemNo(0)) = 1 && UniqHitCount < AnimElemNo(0)
Attr 				=  S, HA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor((164.9+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*6),Floor(Fvar(3)*8)
Guard.PauseTime 		= Floor(Fvar(3)*6), Floor(Fvar(3)*8)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= -9,-92
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 0
Guard.SlideTime 		= 0
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -12.61205725, -7.51851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= -3.8279581069946, -7.51851892471313
AirGuard.Velocity 		= -3.8279581069946, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5610
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 0
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Fvar(5)*64), Floor(Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;stops

[StateDef 6282]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;helper follow
[StateDef 6288]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(3)
X 			= 20

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.125

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
Y 			= -0.5

[State InitVel]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

[State esp]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0 || BackEdgeDist-(parent,BackEdgeDist) >0
Value 			= StateNo+1

[State esp]
Type 		= NotHitBy
Trigger1 	= 1
Value 			= SCA,AA,AT,AP

;___________________________________________________
;
;HSDM
;
;___________________________________________________

[StateDef 6290]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
anim = stateno
velset = 0,0

[State noFG]
type = AssertSpecial
trigger1 = animelem = 3, >= 0
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
flag = NoFG

[State HsdmBG]
type = Explod
trigger1 = animelem = 3
ID = 8400
anim = 8400
postype = left
pos = 0, 0
bindtime = -1
removetime = -1
supermovetime = 9999
sprpriority = -4
scale = 1.16,1.16
ownpal = 1

[State Anim ]
Type 		= Nothitby
Trigger1 	= 1
ignorehitpause = 1
Value = SCA

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State Envcolor]
type = EnvColor
trigger1 = var(40) <= 0
trigger1 = Animelem = 3
value = 0,0,0
time = 28
under = 1

[State Super Pause]
type = SuperPause
trigger1 = animelem = 3
movetime = 29
poweradd = -1000
time = 29
anim = -1
p2defmul = 1
darken = 0

[State Maxout]
type = Varset
trigger1 = animelem = 3
trigger1 = var(10) > 0
var(10) = 1

[State NOTHITBY]
type = Nothitby
trigger1 = 1
value = SCA

[State Super1]
type = Explod
trigger1 = animelem = 3
anim = 1355
id   = 1355
pos = -20,-95
postype = p1
supermove = 1
sprpriority = 1
bindtime = 30
ontop = 1
ownpal = 1

[State Super2]
type = Explod
trigger1 = animelem = 3
anim = 1356
id   = 1356
pos = -20,-95
postype = p1
sprpriority = -2
supermove = 1
bindtime = 30
ontop = 0
ownpal = 1

[State Chime]
type = PlaySnd
trigger1 = animelem = 3
value = 14,5
volume = -10

[State AFTER]
type = AfterImage
trigger1 = Time = 0
time = 70
;PalBright = 0, 0, 0
;PalContrast =  250,250,250
;PalAdd = 10, 10, 10
;PalMul = .2,.2,.2
Length = 44
FrameGap = 22

[State esp]
Type 		= null ;Helper
Trigger1 	= AnimTime = 0
helperType 		= normal
Name 			= "ShiningKnuckle"
ID 			= 6298
Pos 			= 0,0
PosType 		= p1;p2,front,back,left,right
Facing 			= 1
StateNo 		= 6298
keyCtrl 		= 0
ownpal 			= 1
SuperMoveTime 		= 1
pauseMoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front 	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

[State SndV]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value 	= 7,31
volume = 50
channel = 0

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 5
Value		= 7,26
Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;advancing

[StateDef 6291]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State noFG]
type = AssertSpecial
trigger1 = animelem = 1, >=0
ignorehitpause = 1
flag = NoFG

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 		= 22

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.125

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
Y 			= -0.5

[State InitVel]
Type 		= PosSet
Trigger1 	= Pos Y > 0
Y 			= 0

[State InitVel]
Type 		= Velmul
Trigger1 	= movecontact
X 		= .92

[State esp]
Type 		= ChangeState
Trigger1 	= movehit && AnimTime = 0
Value 			= StateNo+2

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State Accel]
Type 		= Explod
Trigger1 	= !AnimelemTime(1)
Anim 			= 6299
ID 			= 6299
Pos 			= 0,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*(77.6+9.7*(random%2))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= Animelem = 1
Attr 				=  S, HA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor((164.9+((random%2)*9.8))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*28),Floor(Fvar(3)*30)
Guard.PauseTime 		= Floor(Fvar(3)*28), Floor(Fvar(3)*28)
SparkNo 			= S1040
Guard.SparkNo 		= S1042
sparkxY 			= -9,-92
HitSound 			= S260, 0
GuardSound 			= S8, 4
Ground.Type 		= High
Air.Type 			= Low
Ground.SlideTime 		= 0
Guard.SlideTime 		= 0
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= 0,0
guard.Velocity 			= -12.61205725
air.Velocity 			= -4, -6
AirGuard.Velocity 		= -3.8279581069946, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Fall 				= 0
fall.yVelocity 			= -3.4
Fall.Recover 			= 0
GetPower 			= 0, 0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
;snap				= 60,0
p2getp1state = 1
p2stateno = 8500

[State Bind]
type = targetbind
trigger1 = movehit
ignorehitpause
pos = 60,0


;___________________________________________________
;failed

[StateDef 6292]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
Velset = 0,0

[State RemE]
type = removeexplod
trigger1 = time = 0
id = 8400

[State AFTER]
type = AfterImagetime
trigger1 = AnimTime = 0
time = 0

[State Land]
type = Posset
trigger1 = Time = 0
y = 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1


;___________________________________________________
;advancing

[StateDef 6293]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State noFG]
type = AssertSpecial
trigger1 = animelem = 1, >=0
ignorehitpause = 1
flag = NoFG

[State Land]
type = Posset
trigger1 = Time = 0
y = 0

[State AFTER]
type = AfterImage
trigger1 = Time = 0
time = 70
;PalBright = 0, 0, 0
;PalContrast =  250,250,250
;PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 6
FrameGap = 2

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 2.456789546

[State InitVel]
Type 		= VelMul
Trigger1 	= !AnimelemTime(1)
X 			= .834546579878912

[State explod]
Type 		= Explod
Trigger1 	= AnimelemTime(3) = 0
Anim 			= 4033
ID 			= 4033
Pos 			= -10,14
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State hit ]
Type 		= Hitdef
Trigger1 	= Animelem = 3
Attr 				=  S, HA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Hard
Air.AnimType 			= back
Fall.AnimType 			= back
Priority 			= 3,Hit
Damage 				= Floor(67.9*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*40),Floor(Fvar(3)*42)
Guard.PauseTime 		= Floor(Fvar(3)*40), Floor(Fvar(3)*42)
SparkNo 			= S1040
Guard.SparkNo 		= S1042
sparkxY 			= -10, -46
HitSound 			= S260, 0
GuardSound 			= S8, 4
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.574999988079071
Ground.Velocity 		= 0,0
guard.Velocity 			= 0
air.Velocity 			= -4, -6
AirGuard.Velocity 		= -3.8279581069946, -12.0750007629395
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Fall 				= 0
fall.yVelocity 			= -3.4
Fall.Recover 			= 0
GetPower 			= 0, 0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 20,5
;p2getp1state = 1
;p2stateno = 1009

;___________________________________________________
;rt incia

[StateDef 6294]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 14
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State noFG]
type = AssertSpecial
trigger1 = animelem = 1, >=0
ignorehitpause = 1
flag = NoFG


[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State esp]
Type 		= PosAdd
Trigger1 	= AnimElemTime(AnimElemNo(0)) = 0 && AnimElemNo(0) > 1
X 			= 8

[State FX]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value		= 7,8
;Channel     = 0
Volume      = 50

[State SndV]
Type 		= Playsnd
Trigger1 	= Animelem = 3
Value 	= 7,32
volume = 50
channel = 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 1
Attr 				=  S, HA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor(67.6*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*10),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*10), Floor(Fvar(3)*10)
SparkNo 			= S1040
Guard.SparkNo 		= S1042
sparkxY 			= 0, -56
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= 0, -17.51851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= 0, -17.51851892471313
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= -9
Down.CornerPush.VelOff 		= -9
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= -9
AirGuard.CornerPush.VelOff 	= -9
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.Recover 			= 0
GetPower 			= 0, 0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State explod]
Type 		= Explod
Trigger1 	= AnimelemTime(2) = 1
Anim 			= 8301
ID 			= 8301
Pos 			= -60,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= 1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 0
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 1

[State SndGrnd]
type = PlaySnd
trigger1 = Animelem = 2, = 0
value = 6,1
volume = 50

[State SndFx]
type = PlaySnd
trigger1 = Animelem = 2, = 1
value = 7,18
volume = 100

[State Ground FX]
type = Explod
trigger1 = AnimElem = 2, = 0
id = 61
anim = F61
pos = 0,0
sprpriority = -3
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1

[State EnvShake]
type = EnvShake
trigger1 = AnimElem = 2, = 0
time = 12
ampl = -5
freq = 90
;-------------------------------------------------
;rising

[StateDef 6295]
Type    		= A
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 0
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State noFG]
type = AssertSpecial
trigger1 = animelem = 1, >=0
ignorehitpause = 1
flag = NoFG

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State esp]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && Time
Y 			= 0

[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Time
Value 			= StateNo+1

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 4.66163873672485
Y 			= -9.21851892471313

[State Accel]
Type 		= VelAdd 
Trigger1 	= animelem = 22, < 0
Y 			= 0.23555555555555555555555555555556

[State Accel]
Type 		= VelAdd 
Trigger1 	= animelem = 22, >= 0
Y 			= 0.4555555555555555555555555555556


[State Accel]
Type 		= VelMul 
Trigger1 	= 1
X 			= 0.92193877696991

[State hit ]
Type 		= Hitdef
Trigger1 	= Animelem = 1
Trigger2 	= Animelem = 3 ;&& UniqHitCount > 0
Trigger3 	= Animelem = 5  ;&& UniqHitCount > 1
Trigger4 	= Animelem = 7  ;&& UniqHitCount > 2
Trigger5 	= Animelem = 9 ;&& UniqHitCount > 3
Trigger6 	= Animelem = 11 ;&& UniqHitCount > 4
Trigger7 	= Animelem = 13 ;&& UniqHitCount > 4
Trigger8 	= Animelem = 15   ;&& UniqHitCount > 4
Trigger9 	= Animelem = 17   ;&& UniqHitCount > 4
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Back
Air.AnimType 		= back
Fall.AnimType 		= back
Priority 			= 3,Hit
Damage 			= Floor(16.4*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*1),Floor(Fvar(3)*1)
Guard.PauseTime 		= Floor(Fvar(3)*1), Floor(Fvar(3)*1)
SparkNo 			= S1040
Guard.SparkNo 		= S1042
sparkxY 			= 0, -98
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= 0, -9.01851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= 0, -9.01851892471313
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 150
GetPower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

[State hit ]
Type 		= Hitdef
Trigger1 	= Animelem = 19   ;&& UniqHitCount > 4
Attr 				=  S, SA
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Diagup
Air.AnimType 		= Diagup
Fall.AnimType 		= Diagup
Priority 			= 3,Hit
Damage 			= Floor(9.4*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*1),Floor(Fvar(3)*1)
Guard.PauseTime 		= Floor(Fvar(3)*1), Floor(Fvar(3)*1)
SparkNo 			= S1040
Guard.SparkNo 		= S1042
sparkxY 			= 0, -98
HitSound 			= S240, 0
GuardSound 			= S8, 4
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
Air.HitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58333333
Ground.Velocity 		= -.5, -10.51851892471313
guard.Velocity 			= -12.61205725
air.Velocity 			= -.5, -10.51851892471313
AirGuard.Velocity 		= -3.61205725, -7.51851892471313
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Fall 				= 1
fall.yVelocity 			= -3.4
Fall.RecoverTime 		= 150
GetPower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5


;___________________________________________________
;falling

[StateDef 6296]
Type    		= S
MoveType		= I
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0

[State LandFX]
Type 		= Playsnd
Trigger1 	= Time = 0
Value		= 1,5
;Channel     = 0
Volume      = 10

[State Anim ]
Type 		= Posset
Trigger1 	= time = 0
y = 0


[State AFTER]
type = AfterImagetime
trigger1 = AnimTime = 0
time = 0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State RemE]
type = removeexplod
trigger1 = time = 0
id = 8400


[State Anim ]
Type 		= ChangeState
Trigger1 	= !AnimTime
Value 			= 0
ctrl 			= 1

;___________________________________________________
;helper follow

[StateDef 6298]
Type    		= S
MoveType		= I
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
velset = 0,0
FaceP2 			= 0
SprPriority 		= 2
anim = 6298

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(3)
X 			= 20

[State Accel]
Type 		= VelAdd 
Trigger1 	= 1
Y 			= 0.125

[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
Y 			= -0.5

[State InitVel]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

[State esp]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0 || BackEdgeDist-(parent,BackEdgeDist) >0
Value 			= StateNo+1

[State esp]
Type 		= NotHitBy
Trigger1 	= 1
Value 			= SCA,AA,AT,AP


;___________________________________________________
;___________________________________________________
;
;high angle geiser 2002			6150
;___________________________________________________
;___________________________________________________

;___________________________________________________

;debil

;___________________________________________________


;___________________________________________________
;move starts just calls a super pause and "charges" the move
[StateDef 		6150]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
facep2 			= 1
sprpriority 		= 2
velset = 0,0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

;========================================
[State Cancel penalty]
type = poweradd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
value = -1000

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State Envcolor]
type = EnvColor
trigger1 = var(40) <= 0
trigger1 = time = 0
value = 0,0,0
time = 28
under = 1

[State Super Pause]
type = SuperPause
trigger1 = time = 0
movetime = 29
poweradd = ifelse(var(10) <= 0, -1000, 0)
time = 29
anim = -1
p2defmul = 1
darken = 0

[State Maxout]
type = Varset
trigger1 = time = 0
trigger1 = var(10) > 0
var(10) = 1

[State NOTHITBY]
type = Nothitby
trigger1 = 1
value = SCA

[State Super1]
type = Explod
trigger1 = time = 0
anim = 1351
id   = 1351
pos = 4,-45
postype = p1
supermove = 1
sprpriority = 1
bindtime = 30
ontop = 1
ownpal = 1

[State Super2]
type = Explod
trigger1 = time = 0
anim = 1352
id   = 1352
pos = 4,-45
postype = p1
sprpriority = -2
supermove = 1
bindtime = 30
ontop = 0
ownpal = 1

[State Chime]
type = PlaySnd
trigger1 = Time = 0
value = 14,0
volume = -10

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 9,11
Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;move goes forward and NOT leaves the ground

[StateDef 	6151]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 14
sprpriority 		= 2

[State AFTER]
type = AfterImage
trigger1 = Time = 1
time = 70
;PalBright = 0, 0, 0
;PalContrast =  250,250,250
;PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 18
FrameGap = 6

;sets the move's anim
[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

;initial vel. for going forward
[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 12.5582046508789

;Friction for the move
[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.860690295696259

;once the animation's time ends, it goes to the next state
[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*38.8+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

;this hit stunts p2 in place, for  the next attacks
[State hit]
Type 		= Hitdef
Trigger1 	= Animelem = 3
attr 				= S, HA
hitflag 			= M
guardflag 			= M
affectteam 			= E
AnimType 			= Hard
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
Damage 			= Floor((77.9+((random%2)*9.7))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*43),Floor(Fvar(3)*45)
guard.pauseTime 		= Floor(Fvar(3)*43),Floor(Fvar(3)*45)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 5,-62
hitsound 			= S280, 0
guardsound 			= S8, 4
ground.Type 		= Low
air.Type 			= High
ground.slideTime 		= 0
guard.slideTime 		= 0
ground.hitTime 			= Floor(Fvar(4)*32)
Guard.HitTime 			= Floor(Fvar(4)*32)
air.hitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 56
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.58333333
ground.velocity 		= 0,0
guard.velocity 			= 0
air.velocity 			= 0, -7.51851892471313
airguard.velocity 		= 0, -7.51851892471313
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority 			= 2
fall 					= 0
fall.yvelocity 			= -3.4
fall.recover 			= 0
getpower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 		= 5,5
envshake.time = 11
envshake.freq = 90
envshake.ampl = -4


;___________________________________________________
;rises , and keeps on moving forward

[StateDef 	6152]
Type    		= A
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 14
sprpriority 		= 2
velset = 0,0

[State Width]
Type 		= Width
Trigger1 	= Animelem = 4, >= 0
edge	= 50,0

;changes to the current anim
[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

;vel for moving forward
[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(2)
X 			= 3
;Gravity
[State Accel]
Type 		= VelAdd 
Trigger1 	= AnimelemTime(2) >= 0
Y 			= 0.409036860879904875148632580261593
;Starts moving up
[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(2)
Y 			= -5.9310344827586206896551724137931

;stops  the movement and snaps p1 in the floor if he goes beyond it
[State InitVel]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

;Once p1 lands,goes to the next state
[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Vel Y > 0
Value 			= StateNo+1

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

[State Juggle checking]
type = AssertSpecial
triggerall = NumTarget
trigger1 = var(22) = 1
flag = NoJuggleCheck

;makes p2 fall to the air
[State hit]
Type 		= Hitdef
Trigger1 	= Animelem = 1
attr 				= S, HA
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= Back
fall.AnimType 		= Back
priority 			= 3,Hit
Damage 			= Floor(27.6*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*12),Floor(Fvar(3)*12)
guard.pauseTime 		= Floor(Fvar(3)*12), Floor(Fvar(3)*12)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0,-70
hitsound 			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 0
guard.slideTime 		= 0
ground.hitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
air.hitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.426666666666666666666666666666667
ground.velocity 		= -2, -6.4
guard.velocity 			= -2
air.velocity 			= -2, -6.4
airguard.velocity 		= -2.8279581069946, -6.4
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
fall 				= 1
fall.yvelocity 			= -3.4
fall.recover 			= 0
getpower			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5

;keeps on hitting while going up
[State hit]
Type 		= Hitdef
Trigger1 	= Animelem = 2
Trigger2 	= Animelem = 3
attr 				= S, HA
hitflag 			= MAF
guardflag 			= M
affectteam			= E
AnimType 			= Back
air.AnimType 		= Back
fall.AnimType		= Back
priority 			= 3,Hit
Damage 			= Floor(27.6*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*ifelse(AnimElemNo(0)=2,12,12)),Floor(Fvar(3)*12)
guard.pauseTime 		= Floor(Fvar(3)*ifelse(AnimElemNo(0)=2,12,12)), Floor(Fvar(3)*12)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0,ifelse(animelemtime(3)= 0,-122,-92)
hitsound 			= S280, 0
guardsound 			= S8, 4
ground.Type 			= High
air.Type 			= High
ground.slideTime 		= 0
guard.slideTime 		= 0
ground.hitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
air.hitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.426666666666666666666666666666667
ground.velocity 		= -4.5, -7.4
guard.velocity 			= -4.5
air.velocity 			= -4.5, -7.4
airguard.velocity 		= -4.8279581069946, -7.4
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
fall 				= 1
fall.yvelocity 			= -3.4
Fall.RecoverTime 		= 65
getpower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5

;___________________________________________________
;calls the geyser

[StateDef 	6153]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0	
poweradd 		= 0
facep2 		= 0
sprpriority 	= 2
velset = 0,0

;changes to the current anim
[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

;changes to idle once the atacking part of the move is done
[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(3)
stateType 		= S 
moveType 		= I
physics 		= S

;returns to the standing state
[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State SndVoice]
type = PlaySnd
trigger1 = Time = 0
value = 9,12
channel = 0
volume = 80

[State SndGrnd]
type = PlaySnd
trigger1 = Animelem = 1, = 0
value = 6,1
volume = 50

[State SndFx]
type = PlaySnd
trigger1 = Animelem = 1, = 0
value = 7,18
volume = 100

[State Ground FX]
type = Explod
trigger1 = AnimElem = 1, = 0
id = 61
anim = F61
pos = 58,0
sprpriority = -3
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1

[State EnvShake]
type = EnvShake
trigger1 = AnimElem = 1, = 0
time = 12
ampl = -5
freq = 90

[State AFTER]
type = AfterImagetime
Trigger1 = Animtime = 0
time = 0

[State JuggleVar2]
type = Varset
trigger1 = animtime = 0
ignorehitpause = 1
var(22) = 0

[State Juggle checking]
type = AssertSpecial
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State  PROJ]
type = Projectile
trigger1 = AnimElem = 1, = 0
attr = S, HP
projID = 6154
projanim = 6154
projremove = 0
projremovetime = 30
projshadow = 68,68,68
projpriority = 9999
offset = 16,0
velocity = 0
ownpal = 1
Damage 			= Floor((86.5+((random%2)*9.7))*(Fvar(0))), Floor((29.1+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*0),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*0), Floor(Fvar(3)*10)
AnimType 			= Up
Air.AnimType 		= Up
hitflag = MFAP
guardflag = M
sparkxY 			= 21, -42
sparkno = S1040
guard.sparkno = S1042
hitsound			= S280, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
YAccel 			= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -3.818181818181818181818181818164
air.Velocity 			= -2, -12.818181818181818181818181818164
AirGuard.Velocity 		= -3.61205725, -12.818181818181818181818181818164
Fall 				= 1
fall.yVelocity 			= -3.6
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
down.hittime = 12
down.velocity = -6,0
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
air.juggle = 14
getpower = 0,0
givepower = Floor(15.625+(random*.001)),Floor(15.625+(random*.001))


;___________________________________________________
;___________________________________________________
;geyser helper

;"highanglegeyser2002DM"

[StateDef 	6154]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 3

;changes to the proper anim
[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

;if the projectile hits something it goes to the dissapearng state
[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

; if the animation ends, it destroys itself
[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*77.6+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
attr 				= C, HP
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Up
air.AnimType 			= Up
fall.AnimType 			= Up
priority 			= 3,Hit
Damage 				= Floor((97+((random%2)*9.7))*Parent,Fvar(0)), Floor((9.8+((random%10)*.1))*(Parent,Fvar(0)))
pauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
guard.pauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
sparkno 			= 0
guard.sparkno 			= 40
sparkxy 			= 21, -42
hitsound 			= 5, 0
guardsound 			= 6, 0
ground.Type 			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 16
ground.hitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
air.hitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.607438016528925619834710743801653
ground.velocity 		= -2,-13.3636363636363636363636363636364
guard.velocity 			= -12.61205725
air.velocity 			= -2, -13.3636363636363636363636363636364
airguard.velocity 		= -3.61205725, -13.3636363636363636363636363636364
ground.cornerpush.veloff	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
air.juggle 			= 0
sprpriority 			= 2
;p1facing 			= -1
p1getp2facing 			= 0
;p2facing 			= -1
;p1StateNo			=
p2StateNo 			= 5610
p2getp1state 			= 1
;mindist 			=
;maxdist 			=
;snap 				= 
forcestand 			= 0
fall 				= 1
fall.xvelocity 			= 0
fall.yvelocity 			= 0
fall.recover 			= 0
Fall.RecoverTime 		= 65
fall.damage 			= 0
air.fall 			= 1
down.velocity 			= 0

down.bounce 			= 0
id 				= 0
chainID 			= -1
nochainID 			= -1,-1
hitonce 			= 1
kill 				= 1
guard.kill 			= 1
fall.kill 			= 1
numhits 			= 1
getpower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5
palfx.Time 			= 9
palfx.mul 			= 256,256,256
palfx.add 			= 0,0,0
;envshake.Time 			= 7
;envshake.freq 			= 20
;envshake.ampl 			= -2
;envshake.phase 		= 0	
;fall.envshake.Time 		= 7
;fall.envshake.freq 		= 20
;fall.envshake.ampl 		= -2
;fall.envshake.phase 		= 0

;___________________________________________________
;dissapearing state

[StateDef 	6155]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 3

;projectiles have no shadow
[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

;staggered pause effect
[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 12
Time 			= 1
moveTime 		= 1

;projectile dissapears once it's animation is done playing
[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;___________________________________________________
;strong
;___________________________________________________
;___________________________________________________
;move starts just calls a super pause and "charges" the move

[StateDef 		6160]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle 			= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 2
velset = 0,0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

;========================================
[State Cancel penalty]
type = poweradd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
value = -1000

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State Envcolor]
type = EnvColor
trigger1 = var(40) <= 0
trigger1 = time = 1
value = 0,0,0
time = 28
under = 1

[State Super Pause]
type = SuperPause
trigger1 = time = 1
movetime = 29
poweradd = ifelse(var(10) <= 0, -1000, 0)
time = 29
anim = -1
p2defmul = 1
darken = 0

[State Maxout]
type = Varset
trigger1 = time = 1
trigger1 = var(10) > 0
var(10) = 1

[State NOTHITBY]
type = Nothitby
trigger1 = 1
value = SCA

[State Super1]
type = Explod
trigger1 = time = 1
anim = 1351
id   = 1351
pos = 4,-45
postype = p1
supermove = 1
sprpriority = 1
bindtime = 30
ontop = 1
ownpal = 1

[State Super2]
type = Explod
trigger1 = time = 1
anim = 1352
id   = 1352
pos = 4,-45
postype = p1
sprpriority = -2
supermove = 1
bindtime = 30
ontop = 0
ownpal = 1

[State Chime]
type = PlaySnd
trigger1 = Time = 1
value = 14,0
volume = -10

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1, = 1
Value		= 9,11
Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;move goes forward and NOT leaves the ground

[StateDef 		6161]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 14
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 2

;sets the move's anim
[State Anim ]
Type		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 		= StateNo

;initial vel. for going forward
[State 	InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 12.5582046508789

;Friction for the move
[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.860690295696259

;once the animation's time ends, it goes to the next state
[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= stateno+1

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Var(15) = 1
Value 			= Floor(Fvar(0)*38.8+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

;this hit stunts p2 in place, for  the next attacks
[State hit]
Type 		= Hitdef
Trigger1 	= Animelem = 3
attr 				= S, HA
hitflag 			= M
guardflag 			= M
affectteam 			= E
AnimType 			= Hard
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
Damage 			= Floor((67.9+((random%2)*9.7))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*43),Floor(Fvar(3)*45)
guard.pauseTime 		= Floor(Fvar(3)*43),Floor(Fvar(3)*45)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 5,-62
hitsound 			= S280, 0
guardsound 			= S8, 4
ground.Type 		= Low
air.Type 			= High
ground.slideTime 		= 0
guard.slideTime 		= 0
ground.hitTime 			= Floor(Fvar(4)*32)
Guard.HitTime 			= Floor(Fvar(4)*32)
air.hitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 56
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.58333333
ground.velocity 		= 0,0
guard.velocity 			= 0
air.velocity 			= 0, -7.51851892471313
airguard.velocity 		= 0, -7.51851892471313
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority 			= 2
fall 					= 0
fall.yvelocity 			= -3.4
fall.recover 			= 0
getpower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 		= 5,5
envshake.time = 14
envshake.freq = 90
envshake.ampl = -4

;rises , and keeps on moving forward
[StateDef 	6162]
Type    		= A
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 14
sprpriority 		= 2
velset = 0,0

[State Width]
Type 		= Width
Trigger1 	= Animelem = 4, >= 0
edge	= 50,0

;changes to the current anim
[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

;vel for moving forward
[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(2)
X 			= 3
;Gravity
[State Accel]
Type 		= VelAdd 
Trigger1 	= AnimelemTime(2) >= 0
Y 			= 0.409036860879904875148632580261593
;Starts moving up
[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(2)
Y 			= -5.9310344827586206896551724137931

;stops  the movement and snaps p1 in the floor if he goes beyond it
[State InitVel]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

;Once p1 lands,goes to the next state
[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Vel Y > 0
Value 			= StateNo+1

[State JuggleVar2]
type = Varset
trigger1 = Movehit
var(22) = 1

[State Juggle checking]
type = AssertSpecial
triggerall = NumTarget
trigger1 = var(22) = 1
flag = NoJuggleCheck

;makes p2 fall to the air
[State hit]
Type 		= Hitdef
Trigger1 	= Animelem = 1
attr 				= S, HA
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= Back
fall.AnimType 		= Back
priority 			= 3,Hit
Damage 			= Floor(27.6*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*12),Floor(Fvar(3)*12)
guard.pauseTime 		= Floor(Fvar(3)*12), Floor(Fvar(3)*12)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0,-70
hitsound 			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 0
guard.slideTime 		= 0
ground.hitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
air.hitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.426666666666666666666666666666667
ground.velocity 		= -2, -6.4
guard.velocity 			= -2
air.velocity 			= -2, -6.4
airguard.velocity 		= -2.8279581069946, -6.4
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
fall 				= 1
fall.yvelocity 			= -3.4
fall.recover 			= 0
getpower			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5

;keeps on hitting while going up
[State hit]
Type 		= Hitdef
Trigger1 	= Animelem = 2
Trigger2 	= Animelem = 3
attr 				= S, HA
hitflag 			= MAF
guardflag 			= M
affectteam			= E
AnimType 			= Back
air.AnimType 		= Back
fall.AnimType		= Back
priority 			= 3,Hit
Damage 			= Floor(27.6*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*ifelse(AnimElemNo(0)=2,12,12)),Floor(Fvar(3)*12)
guard.pauseTime 		= Floor(Fvar(3)*ifelse(AnimElemNo(0)=2,12,12)), Floor(Fvar(3)*12)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0,ifelse(animelemtime(3)= 0,-122,-92)
hitsound 			= S280, 0
guardsound 			= S8, 4
ground.Type 			= High
air.Type 			= High
ground.slideTime 		= 0
guard.slideTime 		= 0
ground.hitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
air.hitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.426666666666666666666666666666667
ground.velocity 		= -4.5, -7.4
guard.velocity 			= -4.5
air.velocity 			= -4.5, -7.4
airguard.velocity 		= -4.8279581069946, -7.4
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
fall 				= 1
fall.yvelocity 			= -3.4
Fall.RecoverTime 		= 65
getpower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5

;___________________________________________________
;calls the geyser

[StateDef 	6163]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0	
poweradd 		= 0
facep2 		= 0
sprpriority 	= 2
velset = 0,0

;changes to the current anim
[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

;changes to idle once the atacking part of the move is done
[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(3)
stateType 		= S 
moveType 		= I
physics 		= S

;returns to the standing state
[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State SndVoice]
type = PlaySnd
trigger1 = Time = 0
value = 9,12
channel = 0
volume = 80

[State SndGrnd]
type = PlaySnd
trigger1 = Animelem = 1, = 0
value = 6,1
volume = 50

[State SndFx]
type = PlaySnd
trigger1 = Animelem = 1, = 0
value = 7,18
volume = 100

[State Ground FX]
type = Explod
trigger1 = AnimElem = 1, = 0
id = 61
anim = F61
pos = 58,0
sprpriority = -3
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1

[State EnvShake]
type = EnvShake
trigger1 = AnimElem = 1, = 0
time = 12
ampl = -5
freq = 90

[State AFTER]
type = AfterImagetime
Trigger1 = Animtime = 0
time = 0

[State JuggleVar2]
type = Varset
trigger1 = animtime = 0
ignorehitpause = 1
var(22) = 0

[State Juggle checking]
type = AssertSpecial
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State  PROJ]
type = Projectile
trigger1 = AnimElem = 1, = 0
attr = S, HP
projID = 6154
projanim = 8301
projremove = 0
projremovetime = 30
projshadow = 68,68,68
projpriority = 9999
offset = 16,0
velocity = 0
ownpal = 1
Damage 			= Floor((86.5+((random%2)*9.7))*(Fvar(0))), Floor((29.1+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*0),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*0), Floor(Fvar(3)*10)
AnimType 			= Up
Air.AnimType 		= Up
hitflag = MFAP
guardflag = M
sparkxY 			= 21, -42
sparkno = S1040
guard.sparkno = S1042
hitsound			= S280, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
YAccel 			= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -3.818181818181818181818181818164
air.Velocity 			= -2, -12.818181818181818181818181818164
AirGuard.Velocity 		= -3.61205725, -12.818181818181818181818181818164
Fall 				= 1
fall.yVelocity 			= -3.6
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
down.hittime = 12
down.velocity = -6,0
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
air.juggle = 14
getpower = 0,0
givepower = Floor(15.625+(random*.001)),Floor(15.625+(random*.001))


;___________________________________________________
;___________________________________________________
;geyser helper

;"highanglegeyser2002DM"

[StateDef 	6164]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 3

;changes to the proper anim
[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

;if the projectile hits something it goes to the dissapearng state
[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

; if the animation ends, it destroys itself
[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0


[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*77.6+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
attr 				= C, HP
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Up
air.AnimType 			= Up
fall.AnimType 			= Up
priority 			= 3,Hit
Damage 				= Floor((97+((random%2)*9.7))*Parent,Fvar(0)), Floor((9.8+((random%10)*.1))*(Parent,Fvar(0)))
pauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
guard.pauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
sparkno 			= 0
guard.sparkno 			= 40
sparkxy 			= 21, -42
hitsound 			= 5, 0
guardsound 			= 6, 0
ground.Type 			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 16
ground.hitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
air.hitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.607438016528925619834710743801653
ground.velocity 		= -2,-13.3636363636363636363636363636364
guard.velocity 			= -12.61205725
air.velocity 			= -2, -13.3636363636363636363636363636364
airguard.velocity 		= -12.61205725, -13.3636363636363636363636363636364
ground.cornerpush.veloff	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
air.juggle 			= 0
sprpriority 			= 2
;p1facing 			= -1
p1getp2facing 			= 0
;p2facing 			= -1
;p1StateNo			=
p2StateNo 			= 5610
p2getp1state 			= 1
;mindist 			=
;maxdist 			=
;snap 				= 
forcestand 			= 0
fall 				= 1
fall.xvelocity 			= 0
fall.yvelocity 			= 0
fall.recover 			= 0
Fall.RecoverTime 		= 65
fall.damage 			= 0
air.fall 			= 1
down.velocity 			= 0

down.bounce 			= 0
id 				= 0
chainID 			= -1
nochainID 			= -1,-1
hitonce 			= 1
kill 				= 1
guard.kill 			= 1
fall.kill 			= 1
numhits 			= 1
getpower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5
palfx.Time 			= 9
palfx.mul 			= 256,256,256
palfx.add 			= 0,0,0
;envshake.Time 			= 7
;envshake.freq 			= 20
;envshake.ampl 			= -2
;envshake.phase 		= 0	
;fall.envshake.Time 		= 7
;fall.envshake.freq 		= 20
;fall.envshake.ampl 		= -2
;fall.envshake.phase 		= 0

;___________________________________________________
;dissapearing state

[StateDef 	6165]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 3

;projectiles have no shadow
[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

;staggered pause effect
[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 12
Time 			= 1
moveTime 		= 1

;projectile dissapears once it's animation is done playing
[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0


;___________________________________________________
;___________________________________________________
;SDM
;___________________________________________________
;___________________________________________________
;move starts just calls a super pause and "charges" the move

[StateDef 		6180]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle 			= 10
facep2 			= 1
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 2
velset = 0,0

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

;========================================
[State Cancel penalty]
type = poweradd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
value = -1000

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

[State JuggleVar1]
type = Varset
trigger1 = time = 0
ignorehitpause = 1
var(22) = 0

[State Envcolor]
type = EnvColor
trigger1 = var(40) <= 0
trigger1 = time = 0
value = 0,0,0
time = 28
under = 1

[State Super Pause]
type = SuperPause
trigger1 = time = 0
movetime = 29
poweradd = -1000
time = 29
anim = -1
p2defmul = 1
darken = 0

[State Maxout]
type = Varset
trigger1 = time = 0
trigger1 = var(10) > 0
var(10) = 1

[State NOTHITBY]
type = Nothitby
trigger1 = 1
value = SCA

[State Super1]
type = Explod
trigger1 = time = 0
anim = 1353
id   = 1353
pos = 4,-45
postype = p1
supermove = 1
sprpriority = 1
bindtime = 30
ontop = 1
ownpal = 1

[State Super2]
type = Explod
trigger1 = time = 0
anim = 1354
id   = 1354
pos = 4,-45
postype = p1
sprpriority = -2
supermove = 1
bindtime = 30
ontop = 0
ownpal = 1

[State Chime]
type = PlaySnd
trigger1 = Time = 0
value = 14,4
volume = -10

[State Voice]
Type 		= Playsnd
Trigger1 	= Animelem = 1
Value		= 7,28
Channel     = 0
Volume      = 50

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;___________________________________________________
;move goes forward and NOT leaves the ground

[StateDef 		6181]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 2

[State AFTER]
type = AfterImage
trigger1 = Time = 1
time = 70
;PalBright = 0, 0, 0
;PalContrast =  250,250,250
;PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 18
FrameGap = 6

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

;sets the move's anim
[State Anim ]
Type		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 		= StateNo

;initial vel. for going forward
[State 	InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(1)
X 			= 12.5582046508789

;Friction for the move
[State InitVel]
Type 		= VelMul
Trigger1 	= 1
X 			= 0.860690295696259

;once the animation's time ends, it goes to the next state
[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= StateNo+1

;this hit stunts p2 in place, for  the next attacks
[State hit]
Type 		= Hitdef
Trigger1 	= Animelem = 3
attr 				= S, HA
hitflag 			= M
guardflag 			= M
affectteam 			= E
AnimType 			= Hard
air.AnimType 		= back
fall.AnimType 		= back
priority 			= 3,Hit
Damage 			= Floor((117+((random%2)*9.7))*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*43),Floor(Fvar(3)*45)
guard.pauseTime 		= Floor(Fvar(3)*43),Floor(Fvar(3)*45)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 5,-62
hitsound 			= S280, 0
guardsound 			= S8, 4
ground.Type 		= Low
air.Type 			= High
ground.slideTime 		= 0
guard.slideTime 		= 0
ground.hitTime 			= Floor(Fvar(4)*32)
Guard.HitTime 			= Floor(Fvar(4)*32)
air.hitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 56
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.58333333
ground.velocity 		= 0,0
guard.velocity 			= 0
air.velocity 			= 0, -7.51851892471313
airguard.velocity 		= 0, -7.51851892471313
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
sprpriority 			= 2
fall 					= 0
fall.yvelocity 			= -3.4
fall.recover 			= 0
getpower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 		= 5,5
envshake.time = 14
envshake.freq = 90
envshake.ampl = -4

;___________________________________________________
;rises , and keeps on moving forward

[StateDef 		6182]
Type    		= A
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 2
velset = 0,0

[State Width]
Type 		= Width
Trigger1 	= Animelem = 4, >= 0
edge	= 50,0

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

;changes to the current anim
[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

;vel for moving forward
[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(2)
X 			= 3
;Gravity
[State Accel]
Type 		= VelAdd 
Trigger1 	= AnimelemTime(2) >= 0
Y 			= 0.409036860879904875148632580261593

;Starts moving up
[State InitVel]
Type 		= VelAdd 
Trigger1 	= !AnimelemTime(2)
Y 			= -5.9310344827586206896551724137931

;stops  the movement and snaps p1 in the floor if he goes beyond it
[State InitVel]
Type 		= PosSet
Trigger1 	= Pos Y >= 0
Y 			= 0

;Once p1 lands,goes to the next state
[State esp]
Type 		= ChangeState
Trigger1 	= Pos Y >= 0 && Vel Y > 0
Value 			= StateNo+1

[State JuggleVar2]
type = Varset
trigger1 = Movehit
ignorehitpause = 1
var(22) = 1

;makes p2 fall to the air
[State hit]
Type 		= Hitdef
Trigger1 	= Animelem = 1
attr 				= A, HA
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Back
air.AnimType 		= Back
fall.AnimType 		= Back
priority 			= 3,Hit
Damage 			= Floor(34.6*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*12),Floor(Fvar(3)*12)
guard.pauseTime 		= Floor(Fvar(3)*12), Floor(Fvar(3)*12)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0,-70
hitsound 			= S280, 0
guardsound 			= S8, 4
ground.Type			= Low
air.Type 			= High
ground.slideTime 		= 0
guard.slideTime 		= 0
ground.hitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
air.hitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.426666666666666666666666666666667
ground.velocity 		= -2, -6.4
guard.velocity 			= -2
air.velocity 			= -2, -6.4
airguard.velocity 		= -2.8279581069946, -6.4
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
fall 				= 1
fall.yvelocity 			= -3.4
fall.recover 			= 0
getpower			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5

;keeps on hitting while going up
[State hit]
Type 		= Hitdef
Trigger1 	= Animelem = 2
Trigger2 	= Animelem = 3
attr 				= A, HA
hitflag 			= MAF
guardflag 			= M
affectteam			= E
AnimType 			= Back
air.AnimType 		= Back
fall.AnimType		= Back
priority 			= 3,Hit
Damage 			= Floor(35.6*Fvar(0)), Floor((9.8+((random%10)*.1))*(Fvar(0)))
pauseTime 			= Floor(Fvar(3)*ifelse(AnimElemNo(0)=2,12,12)),Floor(Fvar(3)*12)
guard.pauseTime 		= Floor(Fvar(3)*ifelse(AnimElemNo(0)=2,12,12)), Floor(Fvar(3)*12)
sparkno 			= S1040
guard.sparkno 		= S1042
sparkxy 			= 0,ifelse(animelemtime(3)= 0,-122,-92)
hitsound 			= S280, 0
guardsound 			= S8, 4
ground.Type 			= High
air.Type 			= High
ground.slideTime 		= 0
guard.slideTime 		= 0
ground.hitTime 			= Floor(Fvar(4)*16)
Guard.HitTime 			= Floor(Fvar(4)*32)
air.hitTime 			= Floor(Fvar(4)*13)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.426666666666666666666666666666667
ground.velocity 		= -4.5, -7.4
guard.velocity 			= -4.5
air.velocity 			= -4.5, -7.4
airguard.velocity 		= -4.8279581069946, -7.4
ground.cornerpush.veloff 	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
fall 				= 1
fall.yvelocity 			= -3.4
Fall.RecoverTime 		= 65
getpower 			= 0,0
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5


;___________________________________________________
;calls the geyser

[StateDef 	6183]
Type    		= S
moveType		= A
physics 		= S
ctrl 			= 0	
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist		= 0
hitcountpersist 	= 0
sprpriority 		= 2
velset = 0,0

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

;changes to the current anim
[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

;changes to idle once the atacking part of the move is done
[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(3)
stateType 		= S 
moveType 		= I
physics 		= S

;returns to the standing state
[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State SndGrnd]
type = PlaySnd
trigger1 = Animelem = 1, = 0
value = 6,1
volume = 50

[State SndVoice]
type = PlaySnd
Trigger1 	= time = 0
value = 7,30
channel = 0
volume = 80


[State SndFx]
type = PlaySnd
Trigger1 	= Animelemtime(1)%6 = 1 && (NumprojID(6180) < 5 ) && AnimelemNo(0) <= 2
value = 7,18
volume = 50

[State Ground FX]
type = Explod
trigger1 = AnimElem = 1, = 0
id = 61
anim = F61
pos = 58,0
sprpriority = -3
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1

[State EnvShake]
type = EnvShake
Trigger1 	= Animelemtime(1)%6 = 1 && (NumprojID(6180) < 5 ) && AnimelemNo(0) <= 2
time = 12
ampl = -5
freq = 90

[State AFTER]
type = AfterImagetime
Trigger1 = Animtime = 0
time = 0

[State JuggleVar2]
type = Varset
trigger1 = animtime = 0
ignorehitpause = 1
var(22) = 0

[State JuggleVar2]
type = Varset
trigger1 =  ProjHit6180 = 1, <= 5
ignorehitpause = 1
var(22) = 1

[State Juggle checking]
type = AssertSpecial
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State  PROJ]
type = Projectile
Trigger1 	= Animelemtime(1)%6 = 1 && (NumprojID(6180) < 5 ) && AnimelemNo(0) <= 2
attr = S, HP
projID = 6180
projanim = 6154
projremove = 0
projremovetime = 30
projshadow = 68,68,68
projpriority = 9999
offset		= 16+(16*NumprojID(6180)),0
velocity = 0
ownpal = 1
Damage 			= Floor((26.5+((random%2)*9.7))*(Fvar(0))), Floor((29.1+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*0),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*0), Floor(Fvar(3)*10)
AnimType 			= Up
Air.AnimType 		= Up
hitflag = MFAP
guardflag = M
sparkxY 			= 21, -42
sparkno = S1040
guard.sparkno = S1042
hitsound			= S280, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
YAccel 			= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -3.818181818181818181818181818164
air.Velocity 			= -2, -12.818181818181818181818181818164
AirGuard.Velocity 		= -3.61205725, -12.818181818181818181818181818164
Fall 				= 1
fall.yVelocity 			= -3.6
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
down.hittime = 12
down.velocity = -6,0
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
air.juggle = 14
getpower = 0,0
givepower = Floor(15.625+(random*.001)),Floor(15.625+(random*.001))


;___________________________________________________
;geyser helper

;"highanglegeyser2002DM"

[StateDef 	6184]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 3

;changes to the proper anim
[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

;if the projectile hits something it goes to the dissapearng state
[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

; if the animation ends, it destroys itself
[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*58.2+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
attr 				= C, HP
hitflag 			= MAF
guardflag 			= M
affectteam 			= E
AnimType 			= Up
air.AnimType 			= Up
fall.AnimType 			= Up
priority 			= 3,Hit
Damage 				= Floor(58.2*(Parent,Fvar(0))), Floor((9.7+((random%10)*.1))*(Parent,Fvar(0)))
pauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
guard.pauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
sparkno 			= 0
guard.sparkno 			= 40
sparkxy 			= 21, -42
hitsound 			= 5, 0
guardsound 			= 6, 0
ground.Type 			= Low
air.Type 			= High
ground.slideTime 		= 16
guard.slideTime 		= 16
ground.hitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
air.hitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
airguard.ctrlTime 		= 99999999
guard.dist 			= 50
yaccel 				= 0.607438016528925619834710743801653
ground.velocity 		= -2,-13.3636363636363636363636363636364
guard.velocity 			= -12.61205725
air.velocity 			= -2, -13.3636363636363636363636363636364
airguard.velocity 		= -12.61205725, -13.3636363636363636363636363636364
ground.cornerpush.veloff	= 0
down.cornerpush.veloff 		= 0
air.cornerpush.veloff 		= 0
guard.cornerpush.veloff 	= 0
airguard.cornerpush.veloff 	= 0
air.juggle 			= 0
sprpriority 			= 2
;p1facing 			= -1
p1getp2facing 			= 0
;p2facing 			= -1
;p1StateNo			=
p2StateNo 			= 5610
p2getp1state 			= 1
;mindist 			=
;maxdist 			=
;snap 				= 
forcestand 			= 0
fall 				= 1
fall.xvelocity 			= 0
fall.yvelocity 			= 0
fall.recover 			= 0
Fall.RecoverTime 		= 65
fall.damage 			= 0
air.fall 			= 1
down.velocity 			= 0

down.bounce 			= 0
id 				= 0
chainID 			= -1
nochainID 			= -1,-1
hitonce 			= 1
kill 				= 1
guard.kill 			= 1
fall.kill 			= 1
numhits 			= 1
getpower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
attack.width 			= 5,5
palfx.Time 			= 9
palfx.mul 			= 256,256,256
palfx.add 			= 0,0,0
;envshake.Time 			= 7
;envshake.freq 			= 20
;envshake.ampl 			= -2
;envshake.phase 		= 0	
;fall.envshake.Time 		= 7
;fall.envshake.freq 		= 20
;fall.envshake.ampl 		= -2
;fall.envshake.phase 		= 0

;___________________________________________________
;dissapearing state

[StateDef 	6185]
Type    		= S
moveType		= A
physics 		= N
ctrl 			= 0
poweradd 		= 0
juggle  		= 10
facep2 			= 0
hitdefpersist 		= 0
movehitpersist 		= 0
hitcountpersist 	= 0
sprpriority 		= 3

;projectiles have no shadow
[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
flag 			= NoShadow

;staggered pause effect
[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 12
Time 			= 1
moveTime 		= 1

;projectile dissapears once it's animation is done playing
[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0


;___________________________________________________
;___________________________________________________
;___________________________________________________
;
;
;8000-9950 (projectile) super attacks
;800 to 995
;___________________________________________________
;___________________________________________________
;___________________________________________________

;___________________________________________________
;___________________________________________________
;
;power geiser 1999				8050
;___________________________________________________
;___________________________________________________


;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 8050]
Type    		= S
MoveType		= A
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State esp]
Type 		= SuperPause
Trigger1 	= !Time && Anim!=StateNo
Time 			= 29
Anim 			= 100
Sound 			= 20, 0
Pos 			= 0,-109
MoveTime 		= 29
Darken 			= 1
P2DefMul 		= 1
PowerAdd 		= -1000
UnHittable 		= 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Accel]
Type 		= Explod
Trigger1 	= !Time
Anim 			= F52
ID 			= 52
Pos 			= 56,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 65536
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 0

[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(9)
stateType 		= S 
moveType 		= I
physics 		= S

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State esp]
Type 		= Helper
Trigger1 	= AnimelemTime(7) = 1
helperType 		= normal
Name 			= "powergeyser1999DM"
ID 			= Stateno
Pos 			= 16,0
PosType 		= p1;p2,front,back,left,right
Facing 			= 1
StateNo 		= Stateno+1
keyCtrl 		= 0
ownpal 			= 1
SuperMoveTime 		= 1
pauseMoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front 	= 14
size.air.back 		= 16
size.air.front	 	= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

;___________________________________________________
;___________________________________________________
;
;"powergeyser1999DM"

[StateDef 8051]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*(58.8+(9.7*(random%4)))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
Attr 				=  C, HP
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Up
Air.AnimType 			= Up
Fall.AnimType 			= Up
Priority 			= 3,Hit
Damage 				= Floor((274.4+((random%4)*9.8))*(Parent,Fvar(0))), Floor((29.4+((random%10)*.1))*(Parent,Fvar(0)))
PauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
Guard.PauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 21, -42
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
Air.HitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -12.818181818181818181818181818164
air.Velocity 			= -2, -12.818181818181818181818181818164
AirGuard.Velocity 		= -12.61205725, -12.818181818181818181818181818164
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5610
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;after hit

[StateDef 8052]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 24
Time 			= 1
MoveTime 		= 1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 8060]
Type    		= S
MoveType		= A
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State esp]
Type 		= SuperPause
Trigger1 	= !Time && Anim!=StateNo
Time			 = 29
Anim 			= 100
Sound 			= 20, 0
Pos 			= 0,-109
MoveTime 		= 29
Darken 			= 1
P2DefMul 		= 1
PowerAdd 		= -1000
UnHittable 		= 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Accel]
Type 		= Explod
Trigger1 	= !Time
Anim 			= F52
ID 			= 52
Pos 			= 56,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 65536
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 0

[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(9)
stateType 		= S 
moveType 		= I
physics 		= S

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State esp]
Type 		= Helper
Trigger1 	= AnimelemTime(7) = 1
helperType 		= normal
Name 			= "powergeyser1999DM"
ID 			= 8050
Pos 			= 16,0
PosType 		= p1;p2,front,back,left,right
Facing 			= 1
StateNo			= 8051
keyCtrl 		= 0
ownpal 			= 1
SuperMoveTime 		= 1
pauseMoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front 	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

;___________________________________________________
;___________________________________________________
;
;"powergeyser1999DM"

[StateDef 8061]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*(58.8+(9.7*(random%4)))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
Attr 				=  C, HP
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Up
Air.AnimType 			= Up
Fall.AnimType 			= Up
Priority 			= 3,Hit
Damage 				= Floor((274.4+((random%4)*9.8))*(Parent,Fvar(0))), Floor((29.4+((random%10)*.1))*(Parent,Fvar(0)))
PauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
Guard.PauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 21, -42
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
Air.HitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -12.818181818181818181818181818164
air.Velocity 			= -2, -12.818181818181818181818181818164
AirGuard.Velocity 		= -12.61205725, -12.818181818181818181818181818164
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5610
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;after hit

[StateDef 8072]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 24
Time 			= 1
MoveTime 		= 1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;
;SDM
;
;___________________________________________________

[StateDef 8080]
Type    		= S
MoveType		= A
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State esp]
Type 		= SuperPause
Trigger1 	= AnimelemTime(1) = 1
Time 			= 29
Anim 			= 101
Sound 			= 20, 0
Pos 			= 0,-109
MoveTime 		= 29
Darken 			= 1
P2DefMul 		= 1
PowerAdd 		= -2000
UnHittable 		= 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Accel]
Type 		= Explod
Trigger1 	= !Time
Anim 			= F52
ID 			= 52
Pos 			= 56,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 65536
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 0

[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(26)
stateType 		= S 
moveType 		= I
physics 		= S

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State esp]
Type 		= Helper
Trigger1 	= AnimelemTime(6) = 0 
helperType 		= normal
Name 			= "powergeyser1999SDM"
ID 			= 8050
Pos 			= 33,0
PosType 		= p1;p2,front,back,left,right
Facing 			= 1
StateNo 		= 8081
keyCtrl 		= 0
ownpal 			= 1
SuperMoveTime 		= 1
pauseMoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front 	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 	        = -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

[State esp]
Type 		= Helper
Trigger1 	= AnimelemTime(15) = 1
helperType 		= normal
Name 			= "powergeyser1999SDM"
ID 			= 8050
Pos 			= 64,0
PosType 		= p1;p2,front,back,left,right
Facing 			= 1
StateNo 		= 8081
keyCtrl 		= 0
ownpal 			= 1
SuperMoveTime 		= 1
pauseMoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front 	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

[State esp]
Type 		= Helper
Trigger1 	= AnimelemTime(24) = 1
helperType 		= normal
Name 			= "powergeyser1999SDM"
ID 			= 8050
Pos 			= 144,0
PosType 		= p1;p2,front,back,left,right
Facing 			= 1
StateNo 		= 8083
keyCtrl 		= 0
ownpal 			= 1
SuperMoveTime 		= 1
pauseMoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front 	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

;___________________________________________________
;___________________________________________________
;
;"powergeyser1999SDM"

[StateDef 8081]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*(58.8+(9.8*(random%3)))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
Attr 				=  C, HP
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Up
Air.AnimType 			= Up
Fall.AnimType 			= Up
Priority 			= 3,Hit
Damage 				= Floor((147+((random%3)*9.8))*Parent,Fvar(0)), Floor((9.8+((random%10)*.1))*(Parent,Fvar(0)))
PauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
Guard.PauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 21, -42
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
Air.HitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.499314128943758573388203017832647
Ground.Velocity 		= -21.951219512195121951219512195122,-9.4814814814814814814814814814815
guard.Velocity 			= -12.818181818181818181818181818164
air.Velocity 			= -21.951219512195121951219512195122, -9.4814814814814814814814814814815
AirGuard.Velocity 		= -12.61205725, -13.4814814814814814814814814814815
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5610
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;

[StateDef 8082]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 24
Time 			= 1
MoveTime 		= 1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;"powergeyser1999SDM"

[StateDef 8083]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*(78.4+(9.8*(random%3)))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
Attr 				=  C, HP
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= DiagUp
Air.AnimType 			= Up
Fall.AnimType 			= Up
Priority 			= 3,Hit
Damage 				= Floor((137.2+((random%3)*9.8))*Parent,Fvar(0)), Floor((9.8+((random%10)*.1))*(Parent,Fvar(0)))
PauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
Guard.PauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 21, -42
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
Air.HitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.499314128943758573388203017832647
Ground.Velocity 		= -21.951219512195121951219512195122,-13.4814814814814814814814814814815
guard.Velocity 			= -12.818181818181818181818181818164
air.Velocity 			= -21.951219512195121951219512195122, -13.4814814814814814814814814814815
AirGuard.Velocity 		= -12.61205725, -13.4814814814814814814814814814815
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5610
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;

[StateDef 8084]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 24
Time 			= 1
MoveTime 		= 1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;___________________________________________________
;
;power geiser 1998				8100
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 8100]
Type    		= S
MoveType		= A
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State esp]
Type 		= SuperPause
Trigger1 	= !Time && Anim!=StateNo
Time 			= 29
Anim 			= 100
Sound 			= 20, 0
Pos 			= 0,-109
MoveTime 		= 0
Darken 			= 1
P2DefMul 		= 1
PowerAdd 		= -1000
UnHittable 		= 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Accel]
Type 		= Explod
Trigger1 	= !Time
Anim 			= F52
ID 			= 52
Pos 			= 56,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 65536
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 0

[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(9)
stateType 		= S 
moveType 		= I
physics 		= S

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State esp]
Type 		= Helper
Trigger1 	= AnimelemTime(7) = 1
helperType 		= normal
Name 			= "powergeyser1998DM"
ID 			= 8100
Pos 			= 16,0
PosType 		= p1;p2,front,back,left,right
Facing 			= 1
StateNo 		= 8101
KeyCtrl 		= 0
ownpal 			= 1
SuperMoveTime 		= 1
pausemoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front 	= 14
size.air.back 		= 16
size.air.front		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

;___________________________________________________
;___________________________________________________
;
;"powergeyser1998DM"

[StateDef 8101]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
facep2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*(58.8+(9.7*(random%4)))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
Attr 				=  C, HP
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Up
Air.AnimType 			= Up
Fall.AnimType 			= Up
Priority 			= 3,Hit
Damage 				= Floor((274.4+((random%4)*9.8))*(Parent,Fvar(0))), Floor((29.4+((random%10)*.1))*(Parent,Fvar(0)))
PauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
Guard.PauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 21, -42
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
Air.HitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -12.818181818181818181818181818164
air.Velocity 			= -2, -12.818181818181818181818181818164
AirGuard.Velocity 		= -12.61205725, -12.818181818181818181818181818164
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5610
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0


;___________________________________________________
;one line to separate consecutive states of the same move

[StateDef 8102]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 24
Time 			= 1
MoveTime 		= 1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 8110]
Type    		= S
MoveType		= A
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State esp]
Type 		= SuperPause
Trigger1 	= !Time && Anim!=StateNo
Time 			= 29
Anim 			= 100
Sound 			= 20, 0
Pos 			= 0,-109
MoveTime 		= 0
Darken 			= 1
P2DefMul 		= 1
PowerAdd 		= -1000
UnHittable 		= 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Accel]
Type 		= Explod
Trigger1 	= !Time
Anim 			= F52
ID 			= 52
Pos 			= 56,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 65536
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 0

[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(9)
stateType 		= S 
moveType 		= I
physics 		= S

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State esp]
Type 		= Helper
Trigger1 	= AnimelemTime(7) = 1
helperType 		= normal
Name 			= "powergeyser1998DM"
ID 			= 8100
Pos 			= 16,0
PosType 		= p1;p2,front,back,left,right
Facing 			= 1
StateNo 		= 8111
keyCtrl 		= 0
ownpal 			= 1
SuperMoveTime 		= 1
pausemoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front 	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

;___________________________________________________
;___________________________________________________
;
;"powergeyser1998DM"

[StateDef 8111]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0
[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*(58.8+(9.7*(random%4)))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
Attr 				=  C, HP
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Up
Air.AnimType 			= Up
Fall.AnimType 			= Up
Priority 			= 3,Hit
Damage 				= Floor((274.4+((random%4)*9.8))*(Parent,Fvar(0))), Floor((29.4+((random%10)*.1))*(Parent,Fvar(0)))
PauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
Guard.PauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 21, -42
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
Air.HitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -12.818181818181818181818181818164
air.Velocity 			= -2, -12.818181818181818181818181818164
AirGuard.Velocity 		= -12.61205725, -12.818181818181818181818181818164
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5610
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;

[StateDef 8112]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 24
Time 			= 1
MoveTime 		= 1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;
;SDM
;
;___________________________________________________

[StateDef 8130]
Type    		= S
MoveType		= A
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State Vel ]
Type 		= VelSet
Trigger1 	= !Time && Anim != StateNo
X 			= 0
Y 			= 0

[State esp]
Type 		= SuperPause
Trigger1 	= AnimelemTime(1) = 1
Time			= 29
Anim 			= 101
Sound 			= 20, 0
Pos 			= 0,-109
MoveTime 		= 29
Darken 			= 1
P2DefMul 		= 1
PowerAdd 		= -2000
UnHittable 		= 1

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Accel]
Type 		= Explod
Trigger1 	= !Time
Anim 			= F52
ID 			= 52
Pos 			= 56,0
PosType 		= p1
Facing 			= 1
VFacing 		= 1
BindTime 		= -1
Vel 			= 0,0
Accel 			= 0,0
Random 			= 0,0
RemoveTime 		= -2
SuperMoveTime 		= 65536
PauseTime 		= 65536
scale 			= 1,1
SprPriority 		= 3
ontop 			= 0
shadow 			= 0,0,0
ownpal 			= 1
removeongethit 		= 0

[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(26)
stateType 		= S 
moveType 		= I
physics 		= S

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State esp]
Type 		= Helper
Trigger1 	= AnimelemTime(6) = 0 
helperType 		= normal
Name 			= "powergeyser1998SDM"
ID 			= 8130
Pos 			= 33,0
PosType 		= p1;p2,front,back,left,right
Facing 			= 1
StateNo			= 8131
keyCtrl			= 0
ownpal 			= 1
SuperMoveTime 		= 1
pausemoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front 	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

[State esp]
Type 		= Helper
Trigger1 	= AnimelemTime(15) = 1
helperType 		= normal
name 			= "powergeyser1998SDM"
ID 			= 8130
Pos 			= 64,0
PosType 		= p1;p2,front,back,left,right
Facing 			= 1
StateNo 		= 8131
keyCtrl 		= 0
ownpal 			= 1
SuperMoveTime 		= 1
pausemoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front 	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

[State esp]
Type 		= Helper
Trigger1 	= AnimelemTime(24) = 1
helperType 		= normal
name 			= "powergeyser1998SDM"
ID 			= 8130
Pos 			= 144,0
PosType 		= p1;p2,front,back,left,right
Facing 			= 1
StateNo 		= 8133
keyCtrl 		= 0
ownpal 			= 1
SuperMoveTime 		= 1
pausemoveTime 		= 1
size.xscale 		= 1
size.yscale 		= 1
size.ground.back 	= 21
size.ground.front 	= 14
size.air.back 		= 16
size.air.front 		= 18
size.height 		= 1
size.proj.doscale 	= 1
size.head.Pos 		= -6,-5
size.mid.Pos 		= -5,-62
size.shadowoffset 	= 1

;___________________________________________________
;___________________________________________________
;
;"powergeyser1998SDM"

[StateDef 8131]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
facep2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0
[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*(58.8+(9.8*(random%3)))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
Attr 				=  C, HP
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Up
Air.AnimType 			= Up
Fall.AnimType 			= Up
Priority 			= 3,Hit
Damage 				= Floor((147+((random%3)*9.8))*Parent,Fvar(0)), Floor((9.8+((random%10)*.1))*(Parent,Fvar(0)))
PauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
Guard.PauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 21, -42
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
Air.HitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.499314128943758573388203017832647
Ground.Velocity 		= -21.951219512195121951219512195122,-9.4814814814814814814814814814815
guard.Velocity 			= -12.818181818181818181818181818164
air.Velocity 			= -21.951219512195121951219512195122, -9.4814814814814814814814814814815
AirGuard.Velocity 		= -12.61205725, -13.4814814814814814814814814814815
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5610
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;

[StateDef 8132]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 24
Time 			= 1
MoveTime 		= 1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;"powergeyser1998SDM"

[StateDef 8133]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*(78.4+(9.8*(random%3)))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
Attr 				=  C, HP
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= DiagUp
Air.AnimType 			= Up
Fall.AnimType 			= Up
Priority 			= 3,Hit
Damage 				= Floor((137.2+((random%3)*9.8))*Parent,Fvar(0)), Floor((9.8+((random%10)*.1))*(Parent,Fvar(0)))
PauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
Guard.PauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 21, floor(enemynear,pos y - 46)
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
Air.HitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.499314128943758573388203017832647
Ground.Velocity 		= -21.951219512195121951219512195122,-13.4814814814814814814814814814815
guard.Velocity 			= -12.818181818181818181818181818164
air.Velocity 			= -21.951219512195121951219512195122, -13.4814814814814814814814814814815
AirGuard.Velocity 		= -12.61205725, -13.4814814814814814814814814814815
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5610
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;

[StateDef 8134]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 24
Time 			= 1
MoveTime 		= 1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;___________________________________________________
;
;power geiser 2002				8150
;___________________________________________________
;___________________________________________________

;___________________________________________________
;
;debil
;
;___________________________________________________

[StateDef 8150]
Type    		= S
MoveType		= A
physics 		= S 
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2
velset = 0,0
anim =  8150

;========================================
[State Cancel penalty]
type = poweradd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
value = -1000

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Envcolor]
type = EnvColor
trigger1 = var(40) <= 0
trigger1 = time = 0
value = 0,0,0
time = 28
under = 1

[State Super Pause]
type = SuperPause
trigger1 = time = 0
movetime = 28
poweradd = ifelse(var(10) <= 0, -1000, 0)
time = 28
anim = -1
p2defmul = 1
darken = 0

[State Maxout]
type = Varset
trigger1 = time = 0
trigger1 = var(10) > 0
var(10) = 1

[State NOTHITBY]
type = Nothitby
trigger1 = animelem = 7, < 0
value = SCA

[State Super1]
type = Explod
trigger1 = time = 0
anim = 1351
id   = 1351
pos = -0,-109
postype = p1
supermove = 1
sprpriority = 1
bindtime = 30
ontop = 1
ownpal = 1

[State Super2]
type = Explod
trigger1 = time = 0
anim = 1352
id   = 1352
pos = -0,-109
postype = p1
sprpriority = -2
supermove = 1
bindtime = 30
ontop = 0
ownpal = 1

[State Chime]
type = PlaySnd
trigger1 = Time = 0
value = 14,0
volume = -10

[State SndVoice]
type = PlaySnd
trigger1 = Time = 0
value = 9,10
channel = 0
volume = 80

[State SndVoice]
type = PlaySnd
trigger1 = Animelem = 7, = 0
value = 7,29
channel = 0
volume = 80

[State SndGrnd]
type = PlaySnd
trigger1 = Animelem = 7, = 1
value = 6,1
volume = 50

[State SndFx]
type = PlaySnd
trigger1 = Animelem = 7, = 1
value = 7,18
volume = 100

[State Ground FX]
type = Explod
trigger1 = AnimElem = 7, = 1
id = 61
anim = F61
pos = 58,0
sprpriority = -3
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1

[State EnvShake]
type = EnvShake
trigger1 = AnimElem = 7, = 1
time = 12
ampl = -5
freq = 90

[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(9)
stateType 		= S 
moveType 		= I
physics 		= S

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State  PROJ]
type = Projectile
trigger1 = AnimElem = 7, = 1
attr = S, HP
projID = 8151
projanim = 8151
projremove = 0
projremovetime = 30
projshadow = 68,68,68
projpriority = 9999
offset = 16,0
velocity = 0
ownpal = 1
Damage 			= Floor((246+((random%2)*9.7))*(Fvar(0))), Floor((29.1+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*0),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*0), Floor(Fvar(3)*10)
AnimType 			= Up
Air.AnimType 		= Up
hitflag = MFAP
guardflag = M
sparkxY 			= 82, floor(enemynear,pos y - 46)
sparkno = S1040
guard.sparkno = S1042
hitsound			= S280, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
YAccel 			= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -3.818181818181818181818181818164
air.Velocity 			= -2, -12.818181818181818181818181818164
AirGuard.Velocity 		= -3.61205725, -12.818181818181818181818181818164
Fall 				= 1
fall.yVelocity 			= -3.6
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
down.hittime = 12
down.velocity = -6,0
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
air.juggle = 14
getpower = 0,0
givepower = Floor(15.625+(random*.001)),Floor(15.625+(random*.001))

;___________________________________________________
;___________________________________________________
;"powergeyser2002DM"

[StateDef 8151]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*58.2+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= Animelem = 3
Attr 				=  S, HP
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Up
Air.AnimType 		= Up
Priority 			= 3,Hit
Damage 			= Floor((246+((random%2)*9.7))*(Parent,Fvar(0))), Floor((29.1+((random%10)*.1))*(Parent,Fvar(0)))
PauseTime 			= Floor(Parent,Fvar(3)*0),Floor(Parent,Fvar(3)*12)
Guard.PauseTime 		= Floor(Parent,Fvar(3)*0), Floor(Parent,Fvar(3)*10)
SparkNo 			= S1040
Guard.SparkNo 		= S1042
sparkxY 			= 82, floor(enemynear,pos y - 46)
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Parent,Fvar(4)*16)
guard.hitTime 		= Floor(Parent,Fvar(4)*36)
Air.HitTime 		= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -3.818181818181818181818181818164
air.Velocity 			= -2, -12.818181818181818181818181818164
AirGuard.Velocity 		= -3.61205725, -12.818181818181818181818181818164
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.6
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
GetPower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5

;___________________________________________________
;afterhit

[StateDef 8152]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 24
Time 			= 1
MoveTime 		= 1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;
;fuerte
;
;___________________________________________________

[StateDef 8160]
Type    		= S
MoveType		= A
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
velset = 0,0
SprPriority 		= 2
anim = stateno

;========================================
[State Cancel penalty]
type = poweradd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
value = -1000

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State Envcolor]
type = EnvColor
trigger1 = var(40) <= 0
trigger1 = time = 0
value = 0,0,0
time = 28
under = 1

[State Super Pause]
type = SuperPause
trigger1 = time = 0
movetime = 28
poweradd = ifelse(var(10) <= 0, -1000, 0)
time = 28
anim = -1
p2defmul = 1
darken = 0

[State Maxout]
type = Varset
trigger1 = time = 0
trigger1 = var(10) > 0
var(10) = 1

[State NOTHITBY]
type = Nothitby
trigger1 = Animelem = 7, < 0
value = SCA

[State Super1]
type = Explod
trigger1 = time = 0
anim = 1351
id   = 1351
pos = -0,-109
postype = p1
supermove = 1
sprpriority = 1
bindtime = 30
ontop = 1
ownpal = 1

[State Super2]
type = Explod
trigger1 = time = 0
anim = 1352
id   = 1352
pos = -0,-109
postype = p1
sprpriority = -2
supermove = 1
bindtime = 30
ontop = 0
ownpal = 1

[State Chime]
type = PlaySnd
trigger1 = Time = 0
value = 14,0
volume = -10

[State SndVoice]
type = PlaySnd
trigger1 = Time = 0
value = 7,17
channel = 0
volume = 80

[State SndGrnd]
type = PlaySnd
trigger1 = Animelem = 7, = 1
value = 6,1
volume = 50

[State SndFx]
type = PlaySnd
trigger1 = Animelem = 7, = 1
value = 7,18
volume = 100

[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(9)
stateType 		= S 
moveType 		= I
physics 		= S

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State Ground FX]
type = Explod
trigger1 = AnimElem = 7, = 1
id = 61
anim = F61
pos = 58,0
sprpriority = -3
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1

[State EnvShake]
type = EnvShake
trigger1 = AnimElem = 7, = 1
time = 12
ampl = -5
freq = 90

[State  PROJ]
type = Projectile
trigger1 = AnimElem = 7, = 1
attr = S, HP
projID = 8151
projanim = 8301
projremove = 0
projremovetime = 30
projshadow = 68,68,68
projpriority = 9999
offset = 16,0
velocity = 0
ownpal = 1
Damage 			= Floor((246+((random%2)*9.7))*(Fvar(0))), Floor((29.1+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*0),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*0), Floor(Fvar(3)*10)
AnimType 			= Up
Air.AnimType 		= Up
hitflag = MFAP
guardflag = M
sparkxY 			= 82,floor(enemynear,pos y - 46)
sparkno = S1040
guard.sparkno = S1042
hitsound			= S280, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
YAccel 			= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -3.818181818181818181818181818164
air.Velocity 			= -2, -12.818181818181818181818181818164
AirGuard.Velocity 		= -3.61205725, -12.818181818181818181818181818164
Fall 				= 1
fall.yVelocity 			= -3.6
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
down.hittime = 12
down.velocity = -6,0
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
air.juggle = 14
getpower = 0,0
givepower = Floor(15.625+(random*.001)),Floor(15.625+(random*.001))

;___________________________________________________
;___________________________________________________
;
;"powergeyser2002DM"

[StateDef 8161]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*58.2+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= Animelem = 3
Attr 				=  S, HP
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Up
Air.AnimType 		= Up
Priority 			= 3,Hit
Damage 			= Floor((246+((random%2)*9.7))*(Parent,Fvar(0))), Floor((29.1+((random%10)*.1))*(Parent,Fvar(0)))
PauseTime 			= Floor(Parent,Fvar(3)*0),Floor(Parent,Fvar(3)*12)
Guard.PauseTime 		= Floor(Parent,Fvar(3)*0), Floor(Parent,Fvar(3)*10)
SparkNo 			= S1040
Guard.SparkNo 		= S1042
sparkxY 			= 82,floor(enemynear,pos y - 46)
HitSound 			= S280, 0
GuardSound 			= S8, 4
Ground.Type 		= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 		= Floor(Parent,Fvar(4)*16)
guard.hitTime 		= Floor(Parent,Fvar(4)*36)
Air.HitTime 		= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 		= 36
Airguard.CtrlTime 	= 99999999
Guard.Dist 			= 50
YAccel 			= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -3.818181818181818181818181818164
air.Velocity 			= -2, -12.818181818181818181818181818164
AirGuard.Velocity 		= -3.61205725, -12.818181818181818181818181818164
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
SprPriority 			= 2
Fall 				= 1
fall.yVelocity 			= -3.6
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
GetPower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5


;___________________________________________________
;

[StateDef 8162]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 24
Time			= 1
MoveTime 		= 1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;
;SDM
;
;___________________________________________________

[StateDef 8180]
Type    		= S
MoveType		= A
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 0
velset		= 0,0
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

;========================================
[State Cancel penalty]
type = poweradd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
value = -1000

[State Juggle Check]
type = varadd
triggerall = Time = 0
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
persistent = 0
var(23) = 1

[State Cancel PALFX]
type = PalFX
triggerall = timemod = 2,0 && time <= 13
trigger1 = prevstateno = 4900 || prevstateno = 4910 
trigger2 = prevstateno = 4150 || prevstateno = 4160 
trigger3 = prevstateno = 4300 || prevstateno = 4310 
trigger4 = prevstateno = 4953 || prevstateno = 4963 
trigger5 = prevstateno = 3500 || prevstateno = 3510 
trigger6 = prevstateno = 3501 || prevstateno = 2110 || prevstateno = 2210
ignorehitpause = 1
time = 1
add = 255,255,255
sinadd = -100,-100,-100, 2
ignorehitpause = 1
;=========================================

[State JuggleVar1]
type = Varset
trigger1 = time = 0
trigger2 = animtime = 0
ignorehitpause = 1
var(22) = 0

[State JuggleVar2]
type = Varset
trigger1 = projhit8151 = 1
var(22) = 1

[State Juggle checking]
type = AssertSpecial
triggerall = NumTarget
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Chime]
type = PlaySnd
trigger1 = Time = 0
value = 14,4
volume = -10

[State SndVoice]
type = PlaySnd
trigger1 = Time = 0
value = 9,17
channel = 0
volume = 150

[State SndVoice]
type = PlaySnd
trigger1 = Animelem = 25, = 1
value = 7,19
channel = 0
volume = 80

[State SndGrnd]
type = PlaySnd
trigger1 = AnimElem = 7, = 1 || Animelem = 16, = 1|| Animelem = 25, = 1
value = 6,1
volume = 50

[State SndFx]
type = PlaySnd
trigger1 = AnimElem = 7, = 1 || Animelem = 16, = 1|| Animelem = 25, = 1
value = 7,18
volume = 100

[State env]
type = EnvColor
trigger1 = time <= 28
value = 0,0,0
time = 1
under = 1

[State BGPalfx]
type = BGPalfx
trigger1 = 1
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

[State Super Pause]
type = SuperPause
trigger1 = Time = 0
movetime = 28
poweradd = -1000
time = 28
anim = -1
p2defmul = 1
darken = 0

[State Max Drain]
type = varset
trigger1 = Time = 0
trigger1 = var(10) > 0
var(10) = 1

[State SDM1]
type = Explod
trigger1 = Time = 4
anim = 1353
id   = 1353
pos = 6,-109
postype = p1
supermove = 1
sprpriority = 1
bindtime = 30
ontop = 1
ownpal = 1

[State SDM2]
type = Explod
trigger1 = Time = 4
anim = 1354
id   = 1354
pos = 6,-109
postype = p1
sprpriority = -2
supermove = 1
bindtime = 30
ontop = 0
ownpal = 1

[State Ground FX]
type = Explod
trigger1 = AnimElem = 7, = 1 || Animelem = 25, = 1
id = 61
anim = F61
pos = 58,0
sprpriority = -3
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1

[State Ground FX]
type = Explod
trigger1 = Animelem = 16, = 1
id = 61
anim = F61
pos = 26,0
sprpriority = -3
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1

[State EnvShake]
type = EnvShake
trigger1 = AnimElem = 7, = 1 || Animelem = 16, = 1|| Animelem = 25, = 1
time = 12
ampl = -5
freq = 90

[State NOTHITBY]
type = Nothitby
trigger1 = Animelem = 7, < 0
value = SCA

[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(9)
stateType 		= S 
moveType 		= I
physics 		= S

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State  PROJ]
type = Projectile
trigger1 = AnimElem = 7, = 1
attr = S, HP
projID = 8151
projanim = 8151
projremove = 0
projremovetime = 30
projshadow = 68,68,68
projpriority = 9999
offset = 16,0
velocity = 0
ownpal = 1
Damage 			= Floor((98.04+((random%2)*9.7))*(Fvar(0))), Floor((29.1+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*0),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*0), Floor(Fvar(3)*10)
AnimType 			= Up
Air.AnimType 		= Up
hitflag = MFAP
guardflag = M
sparkxY 			= 82,floor(enemynear,pos y - 46)
sparkno = S1040
guard.sparkno = S1042
hitsound			= S280, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
YAccel 			= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -3.818181818181818181818181818164
air.Velocity 			= -2.1, -8.818181818181818181818181818164
AirGuard.Velocity 		= -3.61205725, -12.818181818181818181818181818164
Fall 				= 1
Fall.yVelocity 			= -3.6
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
down.hittime = 12
down.velocity = -6,0
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
air.juggle = 14
getpower = 0,0
givepower = Floor(15.625+(random*.001)),Floor(15.625+(random*.001))

[State  PROJ]
type = Projectile
trigger1 = Animelem = 16, = 1
attr = S, HP
projID = 8151
projanim = 8151
projremove = 0
projremovetime = 30
projshadow = 68,68,68
projpriority = 9999
offset = 16,0
velocity = 0
ownpal = 1
Damage 			= Floor((88.24+((random%2)*9.7))*(Fvar(0))), Floor((29.1+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*0),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*0), Floor(Fvar(3)*10)
AnimType 			= Up
Air.AnimType 		= Up
hitflag = MFAP
guardflag = M
sparkxY 			= 82, floor(enemynear,pos y - 46)
sparkno = S1040
guard.sparkno = S1042
hitsound			= S280, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
YAccel 			= 0.58264462809917355371900826446281
Ground.Velocity 		= -2,-12.818181818181818181818181818164
guard.Velocity 			= -3.818181818181818181818181818164
air.Velocity 			= -2.05, -10.818181818181818181818181818164
AirGuard.Velocity 		= -3.61205725, -12.818181818181818181818181818164
Fall 				= 1
Fall.yVelocity 			= -3.6
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
down.hittime = 12
down.velocity = -6,0
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
air.juggle = 14
getpower = 0,0
givepower = Floor(15.625+(random*.001)),Floor(15.625+(random*.001))

[State  PROJ]
type = Projectile
trigger1 = Animelem = 25, = 1
attr = S, HP
projID = 8183
projanim = 8301
projremove = 0
projremovetime = 30
projshadow = 68,68,68
projpriority = 9999
offset = 80,0
velocity = 0
ownpal = 1
Damage 			= Floor((186.28+((random%2)*9.7))*(Fvar(0))), Floor((29.1+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*0),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*0), Floor(Fvar(3)*10)
AnimType 			= DiagUp
Air.AnimType 		= DiagUp
hitflag = MFAP
guardflag = M
sparkxY 			= 100, floor(enemynear,pos y - 46)
sparkno = S1040
guard.sparkno = S1042
hitsound			= S280, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
YAccel 			= 0.58264462809917355371900826446281
Ground.Velocity 		= -4,-12.818181818181818181818181818164
guard.Velocity 			= -3.818181818181818181818181818164
air.Velocity 			= -4, -12.818181818181818181818181818164
AirGuard.Velocity 		= -3.61205725, -12.818181818181818181818181818164
Fall 				= 1
fall.yVelocity 			= -3.6
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
down.hittime = 12
down.velocity = -6,0
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
air.juggle = 14
getpower = 0,0
givepower = Floor(15.625+(random*.001)),Floor(15.625+(random*.001))

;___________________________________________________
;___________________________________________________
;
;"powergeyser2002SDM"

[StateDef 8181]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*(67.9+9.7*(random%3))+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
Attr 				=  C, HP
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= Up
Air.AnimType 			= Up
Fall.AnimType 			= Up
Priority 			= 3,Hit
Damage 				= Floor((97+((random%2)*9.7))*(Parent,Fvar(0))), Floor((9.7+((random%10)*.1))*(Parent,Fvar(0)))
PauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
Guard.PauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 21, -42
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
Air.HitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.524691358024691358024691358024691
Ground.Velocity 		= -2,-9.44444444444444444444444444444444
guard.Velocity 			= -12.818181818181818181818181818164
air.Velocity 			= -2, -9.44444444444444444444444444444444
AirGuard.Velocity 		= -12.61205725, -9.44444444444444444444444444444444
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;one line to separate consecutive states of the same move

[StateDef 8182]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 24
Time 			= 1
MoveTime 		= 1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0

;___________________________________________________
;"powergeyser2002SDM"

[StateDef 8183]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time
Value 			= StateNo

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Anim ]
Type 		= ChangeState
Trigger1 	= movecontact 
Value 			= StateNo+1

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0


[State Counter Hit Damage]
Type 		= TargetLifeAdd
Trigger1 	= NumTarget
Trigger1 	= Parent,Var(15) = 1
Value 			= Floor(Parent,Fvar(0)*48.5+(random*.001))
Kill			= 1
Absolute		= 0
Persistent		= 0

[State hit ]
Type 		= Hitdef
Trigger1 	= AnimelemTime(3) = 0
Attr 				=  C, HP
HitFlag 			= MAF
GuardFlag 			= M
AffectTeam 			= E
AnimType 			= DiagUp
Air.AnimType 			= Up
Fall.AnimType 			= Up
Priority 			= 3,Hit
Damage 				= Floor((184.3+((random%3)*9.7))*(Parent,Fvar(0))), Floor((9.7+((random%10)*.1))*(Parent,Fvar(0)))
PauseTime 			= Floor(Parent,Fvar(3)*1),Floor(Parent,Fvar(3)*12)
Guard.PauseTime 		= Floor(Parent,Fvar(3)*1), Floor(Parent,Fvar(3)*10)
SparkNo 			= 0
Guard.SparkNo 			= 40
sparkxY 			= 21, -42
HitSound 			= 5, 0
GuardSound 			= 6, 0
Ground.Type 			= Low
Air.Type 			= High
Ground.SlideTime 		= 16
Guard.SlideTime 		= 16
Ground.HitTime 			= Floor(Parent,Fvar(4)*16)
guard.hitTime 			= Floor(Parent,Fvar(4)*36)
Air.HitTime 			= Floor(Parent,Fvar(4)*1300)
guard.ctrlTime 			= 36
Airguard.CtrlTime 		= 99999999
Guard.Dist 			= 50
YAccel 				= 0.524691358024691358024691358024691
Ground.Velocity 		= -2,-9.44444444444444444444444444444444
guard.Velocity 			= -12.818181818181818181818181818164
air.Velocity 			= -2, -9.44444444444444444444444444444444
AirGuard.Velocity 		= -12.61205725, -9.44444444444444444444444444444444
ground.cornerpush.veloff 	= 0
Down.CornerPush.VelOff 		= 0
Air.CornerPush.VelOff 		= 0
Guard.CornerPush.VelOff 	= 0
AirGuard.CornerPush.VelOff 	= 0
Air.Juggle 			= 0
SprPriority 			= 2
;P1Facing 			= -1
P1GetP2Facing 			= 0
;P2Facing 			= -1
;P1StateNo 			= 
P2StateNo 			= 5600
P2GetP1State 			= 1
;MinDist 			= 
;MaxDist 			= 
;Snap 				= 
ForceStand 			= 0
Fall 				= 1
fall.xVelocity 			= 0
fall.yVelocity 			= 0
Fall.Recover 			= 0
Fall.RecoverTime 		= 65
Fall.Damage 			= 0
Air.Fall 			= 1
down.Velocity 			= 0

Down.Bounce 			= 0
ID 				= 0
chainID 			= -1
nochainID 			= -1,-1
HitOnce 			= 1
Kill 				= 1
Guard.Kill 			= 1
Fall.Kill 			= 1
NumHits 			= 1
GetPower 			= Floor(Parent,Fvar(5)*64), Floor(Parent,Fvar(5)*64)
GivePower 			= Floor(15.625+(random*.001)),Floor(15.625+(random*.001))
Attack.Width 			= 5,5
PalFx.Time 			= 9
PalFx.Mul 			= 256,256,256
PalFx.Add 			= 0,0,0
;EnvShake.Time 			= 7
;EnvShake.Freq 			= 20
;EnvShake.Ampl 			= -2
;Envshake.Phase 		= 0
;Fall.EnvShake.Time 		= 7
;Fall.EnvShake.Freq 		= 20
;Fall.EnvShake.Ampl 		= -2
;Fall.EnvShake.Phase 		= 0

;___________________________________________________
;

[StateDef 8184]
Type    		= S
MoveType		= A
physics 		= N
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 10
FaceP2 			= 0
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 3

[State Bye ]
Type 		= Pause
Trigger1 	= Time%2 && Time <= 24
Time 			= 1
MoveTime 		= 1

[State Anim ]
Type 		= AssertSpecial
Trigger1 	= 1
Flag 			= NoShadow

[State Bye ]
Type 		= DestroySelf
Trigger1 	= AnimTime = 0
















;___________________________________________________
;
;POWER GEYSER ESDM
;
;___________________________________________________

[StateDef 8300]
Type    		= S
MoveType		= A
physics 		= S
Ctrl 			= 0
PowerAdd 		= 0
Juggle  		= 0
velset		= 0,0
FaceP2 			= 1
HitDefPersist 		= 0
MoveHitPersist 		= 0
HitCountPersist 	= 0
SprPriority 		= 2

[State JuggleVar1]
type = Varset
trigger1 = time = 0
trigger2 = animtime = 0
ignorehitpause = 1
var(22) = 0

[State JuggleVar2]
type = Varset
trigger1 = projhit8183 = 1
var(22) = 1

[State Juggle checking]
type = AssertSpecial
triggerall = NumTarget
trigger1 = var(22) = 1
flag = NoJuggleCheck

[State Anim ]
Type 		= ChangeAnim
Trigger1 	= !Time && Anim != StateNo
Value 			= StateNo

[State Chime]
type = PlaySnd
trigger1 = Time = 0
value = 14,5
volume = -10

[State SndVoice]
type = PlaySnd
trigger1 = Time = 0
value = 5,8
channel = 0
volume = 80

[State SndVoice]
type = PlaySnd
trigger1 = Animelem = 7, = 1
value = 7,30
channel = 0
volume = 80

[State SndGrnd]
type = PlaySnd
trigger1 = AnimElem = 7, = 1
value = 6,1
volume = 50

[State SndFx]
type = PlaySnd
trigger1 = Animelem = 7, >= 1%25 && animelem = 7, <= 152 && numprojid(8183) <= 0
trigger2 = Animelem = 7, >= 25%50 && animelem = 7, <= 152 && numprojid(8183) <= 1
trigger3 = Animelem = 7, >= 50%75 && animelem = 7, <= 152 && numprojid(8183) <= 2
trigger4 = Animelem = 7, >= 75%100 && animelem = 7, <= 152 && numprojid(8183) <= 3
trigger5 = Animelem = 7, >= 100%125 && animelem = 7, <= 152 && numprojid(8183) <= 4
trigger6 = Animelem = 7, >= 125%150 && animelem = 7, <= 152 && numprojid(8183) <= 5
trigger7 = Animelem = 7, >= 150%175 && animelem = 7, <= 152 && numprojid(8183) <= 6
value = 7,18
volume = 100

[State env]
type = null ;EnvColor
trigger1 = time <= 28
value = 0,0,0
time = 1
under = 1

[State BGPalfx]
type = BGPalfx
trigger1 = time = 4
;invertall = 1
time = 200
mul = 120,120,120
add = -50,-50,-50
sinadd = 170,170,170, 200
ignorehitpause = 1

[State 2K1 PowerDrain]
type = varset
trigger1 = Time = 0
var(10) = 1

[State 2K1 PowerDrain]
type = poweradd
trigger1 = Time = 0
trigger1 = var(21) = 5
value = -1000

[State 2K PowerDrain]
type = poweradd
trigger1 = Time = 0
trigger1 = var(21) = 4
value = -2000

[State noFG]
type = AssertSpecial
trigger1 = animelem = 7, >= 0
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
flag = NoFG

[State HsdmBG]
type = Explod
trigger1 = animelem = 7, = 0
ID = 8400
anim = 8400
postype = left
pos = 0, 0
bindtime = -1
removetime = -1
supermovetime = 9999
removeongethit = 1
sprpriority = -4
scale = 1.16,1.16
ownpal = 1

[State HsdmBG]
type = removeexplod
trigger1 = animtime = 0
ID = 8400

[State Super Pause]
type = SuperPause
trigger1 = Time = 0
movetime = 28
poweradd = -1000
time = 28
anim = -1
p2defmul = 1
darken = 0

[State SDM1]
type = Explod
trigger1 = Time = 4
anim = 1355
id   = 1355
pos = 6,-109
postype = p1
supermove = 1
sprpriority = 1
bindtime = 30
ontop = 1
ownpal = 1

[State SDM2]
type = Explod
trigger1 = Time = 4
anim = 1356
id   = 1356
pos = 6,-109
postype = p1
sprpriority = -2
supermove = 1
bindtime = 30
ontop = 0
ownpal = 1

[State Ground FX]
type = Explod
trigger1 = AnimElem = 7, = 1
id = 61
anim = F61
pos = 58,0
sprpriority = -3
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1

[State EnvShake]
type = EnvShake
trigger1 = Animelem = 7, >= 1%25 && animelem = 7, <= 152 && numprojid(8183) <= 0
trigger2 = Animelem = 7, >= 25%50 && animelem = 7, <= 152 && numprojid(8183) <= 1
trigger3 = Animelem = 7, >= 50%75 && animelem = 7, <= 152 && numprojid(8183) <= 2
trigger4 = Animelem = 7, >= 75%100 && animelem = 7, <= 152 && numprojid(8183) <= 3
trigger5 = Animelem = 7, >= 100%125 && animelem = 7, <= 152 && numprojid(8183) <= 4
trigger6 = Animelem = 7, >= 125%150 && animelem = 7, <= 152 && numprojid(8183) <= 5
trigger7 = Animelem = 7, >= 150%175 && animelem = 7, <= 152 && numprojid(8183) <= 6
time = 16
ampl = -5
freq = 90

[State EnvShake]
type = EnvShake
trigger1 = animelem = 3, = 1
time = 104
ampl = -5
freq = 90

[State NOTHITBY]
type = Nothitby
trigger1 = time <= 28
value = SCA

[State Throwable]
type = HitBy
trigger1 = Time > 28
value = SCA, NT, ST, HT

[State esp]
Type 		= StateTypeSet
Trigger1 	= !AnimelemTime(9)
stateType 		= S 
moveType 		= I
physics 		= S

[State esp]
Type 		= ChangeState
Trigger1 	= AnimTime = 0
Value 			= 0
ctrl 			= 1

[State var]
Type 		= varset
Trigger1 	= 1
ignorehitpause = 1
var(30) = 16


[State var]
Type 		= varrandom
Trigger1 	= animelem = 7, > 1
ignorehitpause = 1
v = 30
range = -220,220

[State  PROJ]
type = Projectile
trigger1 = Animelem = 7, >= 1%25 && animelem = 7, <= 152 && numprojid(8183) <= 0
trigger2 = Animelem = 7, >= 25%50 && animelem = 7, <= 152 && numprojid(8183) <= 1
trigger3 = Animelem = 7, >= 50%75 && animelem = 7, <= 152 && numprojid(8183) <= 2
trigger4 = Animelem = 7, >= 75%100 && animelem = 7, <= 152 && numprojid(8183) <= 3
trigger5 = Animelem = 7, >= 100%125 && animelem = 7, <= 152 && numprojid(8183) <= 4
trigger6 = Animelem = 7, >= 125%150 && animelem = 7, <= 152 && numprojid(8183) <= 5
trigger7 = Animelem = 7, >= 150%175 && animelem = 7, <= 152 && numprojid(8183) <= 6
attr = S, HP
projID = 8183
projanim = ifelse(random <= 500, 8301,8183)
projremove = 0
projremovetime = 30
projshadow = 68,68,68
projpriority = 9999
offset = var(30),0
random = 100,0
velocity = 0
projfacing = -1
ownpal = 1
Damage 			= Floor((56.28+((random%2)*9.7))*(Fvar(0))), Floor((10.1+((random%10)*.1))*(Fvar(0)))
PauseTime 			= Floor(Fvar(3)*0),Floor(Fvar(3)*12)
Guard.PauseTime 		= Floor(Fvar(3)*0), Floor(Fvar(3)*10)
AnimType 			= DiagUp
Air.AnimType 		= DiagUp
hitflag = MAFDP
guardflag = M
sparkxY 			= 100, floor(enemynear,pos y - 46)
sparkno = S1040
guard.sparkno = S1042
hitsound			= S280, 0
guardsound 			= S8, 4
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
YAccel 			= 0.58264462809917355371900826446281
Ground.Velocity 		= -4,-6.818181818181818181818181818164
guard.Velocity 			= -3.818181818181818181818181818164
air.Velocity 			= -4, -6.818181818181818181818181818164
AirGuard.Velocity 		= -3.61205725, -6.818181818181818181818181818164
Fall 				= 1
fall.yVelocity 			= -3.6
Fall.Recover 			= 1
Fall.RecoverTime 		= 65
down.hittime = 12
down.velocity = -6,0
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
air.juggle = 1
getpower = 0,0
givepower = Floor(15.625+(random*.001)),Floor(15.625+(random*.001))

;___________________________________________________
