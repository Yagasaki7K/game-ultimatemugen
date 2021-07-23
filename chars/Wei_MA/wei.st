[Statedef 200]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
juggle=1
anim=200
poweradd=5
sprpriority=2
[State ]
type=PlaySnd
trigger1=!Time&&random>=499
value=200,0+random%2
channel=1
[State ]
type=PlaySnd
trigger1=!Time
value=0,0
[State ]
type=HitDef
trigger1=!Time
attr=S,NA
damage=19,4
getpower=32,32
animtype=Light
guardflag=MA
hitflag=MAF
priority=3,Hit
pausetime=9,6
sparkno=s20000
sparkxy=-8,-78
hitsound=s1,0
guard.sparkno=s21000
guardsound=s1,6
ground.type=High
ground.slidetime=6
ground.hittime=6
ground.velocity=-4.5
airguard.velocity=-3.1,-.8
air.type=High
air.velocity=-3.4,-3
air.hittime=14
air.fall=1
fall.recover=1
fall.recovertime=22
[State ]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1
[Statedef 210]
type=S
movetype=A
physics=S
juggle=1
ctrl=0
velset=0,0
anim=210
poweradd=10
sprpriority=2
[State ]
type=PlaySnd
trigger1=AnimElem=2&&random>=499
value=210,0+random%2
[State ]
type=PlaySnd
trigger1=AnimElem=2
value=0,1
[State ]
type=HitDef
trigger1=!Time
attr=S,NA
damage=38,5
getpower=31,31
animtype=middle
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime=11,11
sparkno=s20000
sparkxy=-10,-50
hitsound=s1,1
guard.sparkno=s21000
guardsound=s1,6
ground.type=High
ground.slidetime=15
ground.hittime=15
ground.velocity=-5
airguard.velocity=-1.9,-.8
air.type=High
air.velocity=-1.4,-3
air.hittime=25
air.fall=1
fall.recover=1
fall.recovertime=25
[State ]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1
[Statedef 220]
type=S
movetype= A
physics=S
juggle=3
ctrl=0
velset=0,0
anim=220
poweradd=5
sprpriority=2
[State ]
type=velset
trigger1=!time
x=7.3
[State ]
type=PlaySnd
trigger1=AnimElem=4&&random>=499
value=220,0+random%2
[State ]
type=PlaySnd
trigger1=AnimElem=4
value=0,2
[State ]
type=HitDef
trigger1=!Time
attr=S,NA
damage=46,6
getpower=31,31
animtype=mid
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime=7,11
sparkno=s20000
sparkxy=-18,-55
hitsound=s1,3
guard.sparkno=s21000
guardsound=s1,6
ground.type=High
ground.slidetime=15
ground.hittime=15
ground.velocity=-4
airguard.velocity=-1,-3
air.type=High
air.velocity=-1,-5
air.hittime=20
air.fall=1
fall.recover=1
fall.recovertime=20
[State ]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1
[Statedef 230]
type=S
movetype=A
physics=S
juggle=2
ctrl=0
velset=0,0
anim=230
poweradd=10
sprpriority=2
[State ]
type=velset
trigger1=animelem=7
x=8
[State ]
type=PlaySnd
trigger1=!Time
value=10000,6
volume=100
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=animelem=7
value=10000,5
volume=-100
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=animelem=7
value=230,0+random%2
volume=255
[State ]
type=Explod
trigger1=!Time
anim=10008
sprpriority=10
postype=p1
pos=40,-69
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.25,.25
[State ]
type=Helper
trigger1=Time=13
name="weis"
pos=0,0
postype=p1
stateno=231
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=HitDef
trigger1=!Time
attr=S,NA
damage=60,8
getpower=47,47
animtype=hard
guardflag=MA
hitflag=MAF
priority=6,Hit
pausetime=13,9
sparkno=s20050
sparkxy=0,-70
hitsound=s1,7
guard.sparkno=s21000
guardsound=s1,6
ground.type=High
ground.slidetime=30
ground.hittime=30
ground.velocity=-8
airguard.velocity=-5,-5
air.type=High
air.velocity=-5,-5
air.hittime=31
fall=1
air.fall=1
fall.recover=1
fall.recovertime=31
envshake.time=10
envshake.ampl=-10
[State ]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1
[Statedef 231]
type=S
movetype=A
physics=S
velset=0,0
anim=10009
ctrl=0
sprpriority=7
[State ]
type=Bindtoroot
trigger1=Time<9
pos=24,-68
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=Afterimage
trigger1=!Time
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=10
paladd=25,10,10
palmul=.75,.65,.65
length=10
TimeGap=1
FrameGap=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=changestate
trigger1=time>=20
value=232
[State ]
type=Destroyself
trigger1=root,movetype=H
[Statedef 232]
type=S
movetype=A
physics=S
velset=0,0
anim=10010
ctrl=0
sprpriority=7
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Destroyself
trigger1=!Animtime
trigger2=root,movetype=H

[Statedef 400]
type=C
movetype=A
physics=C
juggle=1
ctrl=0
anim=400
poweradd=5
sprpriority=2
[State ]
type=PlaySnd
trigger1=!Time&&random>=499
value=200,0+random%2
[State ]
type=PlaySnd
trigger1=!Time
value=0,0
[State ]
type=HitDef
trigger1=!Time
attr=C,NA
damage=16,8
getpower=12,12
animtype=Light
guardflag=MA
hitflag=MAF
priority=3,Hit
pausetime=9,9
sparkno=s20000
sparkxy=-9,-33
hitsound=s1,0
guard.sparkno=s21000
guardsound=s1,6
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity=-6
airguard.velocity=-2.3,-.8
air.type=High
air.velocity=-1.8,-3
air.hittime=22
air.fall=1
fall.recover=1
fall.recovertime=22
[State ]
type=ChangeState
trigger1=!AnimTime
value=11
ctrl=1
[Statedef 410]
type=C
movetype= A
physics=C
juggle=1
ctrl=0
anim=410
poweradd=10
sprpriority=2
[State ]
type=veladd
trigger1=!Time
x=5
[State ]
type=PlaySnd
trigger1=AnimElem=2&&random>=499
value=210,0+random%2
[State ]
type=PlaySnd
trigger1=AnimElem=3
value=0,1
[State ]
type=HitDef
trigger1=!Time
attr=C,NA
damage=34,8
getpower=31,31
animtype=middle
guardflag=L
hitflag=MAF
priority=4,Hit
pausetime=11,11
sparkno=s20000
sparkxy=-17,-10
hitsound=s1,1
guard.sparkno=s21000
guardsound=s1,6
ground.type=low
ground.slidetime=15
ground.hittime=15
ground.velocity=-5
airguard.velocity=-1.9,-.8
air.type=High
air.velocity=-1.4,-3
air.hittime=25
air.fall=1
fall.recover=1
fall.recovertime=25
[State ]
type=ChangeState
trigger1=!AnimTime
value=11
ctrl=1
[Statedef 420]
type=C
movetype=A
physics=C
juggle=3
ctrl=0
anim=420
poweradd=7
sprpriority=2
[State ]
type=veladd
trigger1=AnimElem=2
x=10
[State ]
type=PlaySnd
trigger1=AnimElem=3&&random>=499
value=220,0+random%2
[State ]
type=PlaySnd
trigger1=AnimElem=4
value=0,2
[State ]
type=HitDef
trigger1=!Time
attr=C,NA
damage=61,9
getpower=47,47
animtype=hard
guardflag=L
hitflag=MAF
priority=5,Hit
pausetime=13,13
sparkno=s20000
sparkxy=-15,-7
hitsound=s1,3
guard.sparkno=s21000
guardsound=s1,6
ground.type=High
ground.slidetime=20
ground.hittime=20
ground.velocity=-2,-3
airguard.velocity=-1.9,-.3
air.type=trip
air.velocity=-1.4,-4
air.hittime=56
fall=1
fall.recover=1
fall.recovertime=56
[State ]
type=ChangeState
trigger1=!AnimTime
value=11
ctrl=1
[Statedef 430]
type=C
movetype=A
physics=C
juggle=3
ctrl=0
anim=430
poweradd=15
sprpriority=2
[State ]
type=veladd
trigger1=!time
x=8
[State ]
type=PlaySnd
trigger1=animelem=6
value=230,0+random%2
volume=255
[State ]
type=PlaySnd
trigger1=animelem=7
value=10000,5
volume=-100
freqmul=1.3+((random%2)*.1)
[State ]
type=Helper
trigger1=animelem=6
name="weis"
pos=0,0
postype=p1
stateno=431
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=HitDef
trigger1=!Time
attr=S,NA
damage=66,9
getpower=47,47
animtype=hard
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime=13,13
sparkno=s20050
sparkxy=10,-60
hitsound=s1,7
guard.sparkno=s21000
guardsound=s1,6
ground.type=low
ground.slidetime=20
ground.hittime=20
ground.velocity=-2,-6
airguard.velocity=-2,-6
air.type=High
air.velocity=-2,-6
air.hittime=56
fall=1
fall.recover=1
fall.recovertime=56
[State ]
type=ChangeState
trigger1=!AnimTime
value=11
ctrl=1
[Statedef 431]
type=S
movetype=A
physics=S
velset=0,0
anim=10011
ctrl=0
sprpriority=7
[State ]
type=Bindtoroot
triggerall=root,anim=430
trigger1=root,animelemtime(6)=[0,2]
pos=10,-20
[State ]
type=Bindtoroot
triggerall=root,anim=430
trigger1=root,animelemtime(7)=[0,2]
pos=5,-50
[State ]
type=Bindtoroot
triggerall=root,anim=430
trigger1=root,animelemtime(8)>=0
pos=5,-70
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=Afterimage
trigger1=!Time
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=10
paladd=25,10,10
palmul=.75,.65,.65
length=10
TimeGap=1
FrameGap=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=changestate
trigger1=time>=20
value=432
[State ]
type=Destroyself
trigger1=root,movetype=H
[Statedef 432]
type=S
movetype=A
physics=S
velset=0,0
anim=10012
ctrl=0
sprpriority=7
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Destroyself
trigger1=!Animtime
trigger2=root,movetype=H

[Statedef 600]
type=A
movetype=A
physics=A
juggle=1
poweradd=5
ctrl=0
anim=600
sprpriority=1
[State ]
type=ctrlset
trigger1=animelem=5
value=1
[State ]
type=PlaySnd
trigger1=!Time&&random>=499
value=200,0+random%2
[State ]
type=PlaySnd
trigger1=!Time
value=0,0
[State ]
type=HitDef
trigger1=!Time
attr=A,NA
damage=23,4
getpower=12,12
priority=3,Hit
guardflag=HA
pausetime=8,8
sparkno=s20000
sparkxy=2,-80
hitsound=s1,0
guard.sparkno=s21000
guardsound=s1,6
animtype=light
ground.type=high
ground.slidetime=16
ground.hittime=16
ground.velocity=-4
air.velocity=-2,-3
air.fall=1
fall.recover=1
fall.recovertime=22
[Statedef 610]
type=A
movetype=A
physics=A
juggle=1
poweradd=10
ctrl=0
anim=610
sprpriority=1
[state ]
type=ctrlset
trigger1=animelem=7
value=1
[State ]
type=PlaySnd
trigger1=!Time&&random>=499
value=210,0+random%2
[State ]
type=PlaySnd
trigger1=!Time
value=0,1
[State ]
type=HitDef
trigger1=!Time
attr=A,NA
damage=34,6
getpower=31,31
priority=4,Hit
guardflag=HA
pausetime=11,11
sparkno=s20000
sparkxy=-15,-55
hitsound=s1,1
guard.sparkno=s21000
guardsound=s1,6
animtype=middle
ground.type=high
ground.slidetime=15
ground.hittime=15
ground.velocity=-5
air.velocity=-1.4,-4.5
air.fall=1
fall.recover=1
fall.recovertime=25
[Statedef 620]
type=A
movetype=A
physics=A
juggle=2
poweradd=7
ctrl=0
anim=620
sprpriority=1
[State ]
type=ctrlset
trigger1=animelem=10
value=1
[State ]
type=veladd
triggerall=!movecontact
trigger1=animelem=5
y=-5.5
ignorehitpause=1
[State ]
type=veladd
triggerall=movecontact
trigger1=animelem=5
y=-10
ignorehitpause=1
[State ]
type=PlaySnd
trigger1=AnimElem=2&&random>=499
value=220,0+random%2
[State ]
type=PlaySnd
trigger1=animelem=2||animelem=4
value=0,2
[State ]
type=HitDef
trigger1=animelem=2
attr=A,NA
damage=30,9
getpower=20,20
priority=5,Hit
guardflag=HA
pausetime=13,13
sparkno=s20000
sparkxy=-12,-60
hitsound=s1,3
guard.sparkno=s21000
guardsound=s1,6
animtype=hard
ground.type=high
ground.slidetime=20
ground.hittime=20
ground.velocity=-4
air.velocity=-2.4,-2.4
air.fall=1
fall.recover=1
fall.recovertime=20
[State ]
type=HitDef
trigger1=animelem=4
attr=A,NA
damage=30,9
getpower=20,20
priority=5,Hit
guardflag=HA
pausetime=13,13
sparkno=s20000
sparkxy=-12,-60
hitsound=s1,3
guard.sparkno=s21000
guardsound=s1,6
animtype=hard
ground.type=high
ground.slidetime=20
ground.hittime=20
ground.velocity=-4,-4
air.velocity=-2.4,-4
air.fall=1
fall.recover=1
fall.recovertime=20
[Statedef 630]
type=A
movetype=A
physics=A
juggle=3
poweradd=10
ctrl=0
anim=630
sprpriority=1
[State ]
type=PlaySnd
trigger1=AnimElem=2&&random>=499
value=240,0+random%2
[State ]
type=PlaySnd
trigger1=animelem=2
value=0,3
[State ]
type=HitDef
trigger1=!Time
attr=A,NA
damage=76,12
priority=5,Hit
guardflag=HA
getpower=47,47
pausetime=15,15
sparkno=s20000
sparkxy=-20,-80
hitsound=s1,4
guard.sparkno=s21000
guardsound=s1,6
animtype=hard
ground.type=high
ground.slidetime=20
ground.hittime=20
ground.velocity=-8
air.velocity=-8,-3
fall.xvelocity=-5
fall.yvelocity=-0.4
air.fall=1
fall.recover=1
fall.recovertime=56
envshake.time=10
envshake.ampl=-10

[Statedef 800]
type=S
movetype=A
physics=S
ctrl=0
anim=800
sprpriority=2
[State ]
type=HitDef
trigger1=!Time
attr=S,NT
hitflag=M-
priority=1,Miss
hitsound=-1
sparkno=-1
p2facing=1
p1stateno=810
p2stateno=820
guard.dist=0
id=800
[State ]
type=ChangeState
Trigger1=!AnimTime
value=0
ctrl=1
[Statedef 810]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
anim=810
[State ]
type=Explod
trigger1=!Time
anim=22000
postype=p1
pos=25,-80
bindtime=1
ownpal=1
ontop=1
trans=add
sprpriority=3
[State ]
type=PlaySnd
trigger1=!Time
value=1,5
[State ]
type=PlaySnd
trigger1=animelem=2
value=800,0+random%2
[State ]
type=PlaySnd
trigger1=animelem=5
value=1,4
[State ]
type=PlaySnd
trigger1=animelem=5
value=10000,7
[State ]
type=Allpalfx
trigger1=animelem=5
add=255,255,255
time=3
invertall=0
[State ]
type=EnvShake
trigger1=animelem=5
time=10
freq=120
ampl=-20
phase=130
[State ]
type=Explod
trigger1=animelem=5
anim=10013
postype=p1
pos=-120,0
bindtime=1
ownpal=1
sprpriority=3
[State ]
type=TargetBind
trigger1=!time
pos=20,15
[State ]
type=TargetBind
trigger1=animelem=2
pos=25,-10
[State ]
type=TargetBind
trigger1=animelem=3
pos=-8,-42
[State ]
type=TargetBind
trigger1=animelem=4
pos=-110,-13
[State ]
type=TargetState
trigger1=animelem=2
value=821
[State ]
type=TargetState
trigger1=animelem=3
value=822
[State ]
type=TargetState
trigger1=animelem=4
value=823
[State ]
type=TargetState
trigger1=animelem=5
value=824
[State ]
type=Targetvelset
trigger1=animelemtime(4)>=0
x=4
id=800
[State ]
type=Targetveladd
trigger1=animelemtime(4)>=0&&animelemtime(6)<=0
y=3
id=800
[State ]
type=TargetLifeAdd
trigger1=animelem=5
value=-100
[State ]
type=Turn
Trigger1=!AnimTime
[State ]
type=ChangeState
Trigger1=!AnimTime
value=0
ctrl=1

[Statedef 820]
type=S
movetype=H
physics=N
ctrl=0
velset=0,0
sprpriority=-1
[State ]
type=ChangeAnim2
trigger1=!time
value=820
[State ]
type=Selfstate
trigger1=Time>=500
value=5100
[Statedef 821]
type=S
movetype=H
physics=N
ctrl=0
velset=0,0
sprpriority=-1
[State ]
type=ScreenBound
trigger1=1
value=1
[State ]
type=ChangeAnim2
trigger1=!time
value=821
[State ]
type=Selfstate
trigger1=Time>=500
value=5100
[Statedef 822]
type=S
movetype=H
physics=N
ctrl=0
velset=0,0
sprpriority=-1
[State ]
type=ScreenBound
trigger1=1
value=1
[State ]
type=ChangeAnim2
trigger1=!time
value=822
[State ]
type=Selfstate
trigger1=Time>=500
value=5100
[Statedef 823]
type=S
movetype=H
physics=S
ctrl=0
velset=0,0
sprpriority=-1
[State ]
type=ScreenBound
trigger1=1
value=1
[State ]
type=ChangeAnim2
trigger1=!time
value=823
[State ]
type=Selfstate
trigger1=Time>=500
value=5100
[Statedef 824]
type=S
movetype=H
physics=S
ctrl=0
velset=0,0
sprpriority=-1
[State ]
type=ScreenBound
trigger1=1
value=1
[State ]
type=Posset
trigger1=1
y=0
[State ]
type=ChangeAnim
triggerall=!time
trigger1=(anim!=[5051,5059])&&(anim!=[5061,5069])
trigger2=!SelfAnimExist(5100+(anim%10))
value=5100
[State ]
type=ChangeAnim
trigger1=!time
trigger1=(anim=[5051,5059])||(anim=[5061,5069])
trigger1=SelfAnimExist(5100+(anim%10))
value=5100+(anim%10)
[State ]
type=ChangeState
trigger1=!Time
trigger1=!GetHitVar(fall.yvel)
value=5110
[State ]
type=SelfState
trigger1=!AnimTime
value=5101

