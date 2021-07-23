[Statedef 1000]
type=S
movetype=A
physics=N
poweradd=30
velset=0,0
anim=1000
ctrl=0
sprpriority=2
[State ]
type=VelSet
trigger1=!Time
x=6
[State ]
type=PlaySnd
trigger1=!Time
value=1000,0+random%2
channel=0
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=10000,8
volume=-50
[State ]
type=Helper
trigger1=animelemtime(1)=3
name="weis"
pos=0,0
postype=p1
stateno=1005
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Helper
trigger1=animelemtime(1)=3
name="weis"
pos=0,0
postype=p1
stateno=1008
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=ChangeState
trigger1=Time>=15
value=1001
[Statedef 1001]
type=S
movetype=A
physics=S
anim=1001
ctrl=0
juggle=2
sprpriority=2
[State ]
type=Explod
trigger1=animelem=2
anim=10028
sprpriority=100
postype=p1
pos=40,-50
bindtime=1
ownpal=1
trans=add
scale=.25,.25
removeongethit=1
[State ]
type=Explod
trigger1=animelem=2
anim=10029
sprpriority=100
postype=p1
pos=40,-50
bindtime=1
ownpal=1
trans=add
scale=.25,.25
removeongethit=1
[State ]
type=HitDef
trigger1=!Time
attr=S,SA
damage=80,7
animtype=medium
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime=10,0
sparkno=s20050
guard.sparkno=s21000
sparkxy=-20,-30
hitsound=s1,8
guardsound=s1,6
ground.type=High
ground.slidetime=30
ground.hittime=31
ground.velocity=-4,-7
air.type=High
air.velocity=-4,-7
air.hittime=32
getpower=20,6
givepower=35,10
fall=1
air.fall=1
fall.recover=1
fall.recovertime=30
envshake.time=15
envshake.ampl=-6
envshake.freq=92
envshake.phase=92
[State ]
type=BGPalFX
trigger1=movehit
time=2
add=255,255,255
mul=255,255,255
invertall=0
color=0
persistent=0
ignorehitpause=1
[State ]
type=Pause
trigger1=movehit
time=8
movetime=8
persistent=0
ignorehitpause=1
[State ]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
[Statedef 1005]
type=S
movetype=A
physics=S
velset=0,0
anim=10014
ctrl=0
sprpriority=7
[State ]
type=Bindtoroot
trigger1=1
pos=63,-63
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Explod
trigger1=!Time
anim=10019
sprpriority=10
postype=p1
pos=10,-37
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.25,.25
[State ]
type=changestate
trigger1=root,stateno=1001
value=1006
[State ]
type=Destroyself
trigger1=root,movetype=H
[Statedef 1006]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
sprpriority=7
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Afterimage
trigger1=!Time
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=20
paladd=25,10,10
palmul=.75,.65,.65
length=6
TimeGap=1
FrameGap=1
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=2
value=10015
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=3
value=10024
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=4
value=10020
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=5
value=10017
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=6
value=10021
[State ]
type=Bindtoroot
trigger1=root,time<=3
pos=60,-67
[State ]
type=Bindtoroot
trigger1=root,time>=3&&root,time<=5
pos=63,-45
[State ]
type=Bindtoroot
trigger1=root,time>=5&&root,time<=6
pos=73,-22
[State ]
type=Bindtoroot
trigger1=root,time>=6&&root,time<=7
pos=46,-9
[State ]
type=Bindtoroot
trigger1=root,time>=7&&root,time<=9
pos=12,-39
[State ]
type=Bindtoroot
trigger1=root,time>=9&&root,time<=11
pos=27,-60
[State ]
type=changestate
triggerall=root,anim=1001
trigger1=root,animelem=7
value=1007
[State ]
type=Destroyself
trigger1=root,stateno!=1001
trigger2=root,movetype=H
[Statedef 1007]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
anim=10018
sprpriority=7
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Bindtoroot
trigger1=1
pos=23,-61
[State ]
type=Destroyself
trigger1=!Animtime
trigger2=root,movetype=H
[Statedef 1008]
type=S
movetype=A
physics=S
velset=0,0
anim=10023
ctrl=0
sprpriority=7
[State ]
type=Bindtoroot
trigger1=1
pos=34,-62
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Explod
trigger1=!Time
anim=10022
sprpriority=10
postype=p1
pos=-39,-35
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.25,.25
[State ]
type=changestate
trigger1=root,stateno=1001
value=1009
[State ]
type=Destroyself
trigger1=root,movetype=H
[Statedef 1009]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
sprpriority=30
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Afterimage
trigger1=!Time
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=20
paladd=25,10,10
palmul=.75,.65,.65
length=6
TimeGap=1
FrameGap=1
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=2
value=10017
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=3
value=10016
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=4
value=10024
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=5
value=10025
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=6
value=10026
[State ]
type=Bindtoroot
trigger1=root,time<=3
pos=34,-62
[State ]
type=Bindtoroot
trigger1=root,time>=3&&root,time<=5
pos=23,-40
[State ]
type=Bindtoroot
trigger1=root,time>=5&&root,time<=6
pos=72,-17
[State ]
type=Bindtoroot
trigger1=root,time>=6&&root,time<=7
pos=77,-22
[State ]
type=Bindtoroot
trigger1=root,time>=7&&root,time<=9
pos=66,-48
[State ]
type=Bindtoroot
trigger1=root,time>=9&&root,time<=11
pos=56,-58
[State ]
type=changestate
triggerall=root,anim=1001
trigger1=root,animelem=7
value=1010
[State ]
type=Destroyself
trigger1=root,stateno!=1001
trigger2=root,movetype=H
[Statedef 1010]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
anim=10027
sprpriority=7
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Bindtoroot
trigger1=1
pos=54,-59
[State ]
type=Destroyself
trigger1=!Animtime
trigger2=root,movetype=H

[Statedef 1050]
type=S
movetype=A
physics=N
poweradd=20
velset=0,0
anim=1000
ctrl=0
sprpriority=2
[State ]
type=VelSet
trigger1=!Time
x=9
[State ]
type=PlaySnd
trigger1=!Time
value=1001,0+random%2
channel=0
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=10000,8
volume=-50
[State ]
type=Helper
trigger1=animelemtime(1)=3
name="weis"
pos=0,0
postype=p1
stateno=1055
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Helper
trigger1=animelemtime(1)=3
name="weis"
pos=0,0
postype=p1
stateno=1058
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=ChangeState
trigger1=Time>=15
value=1051
[Statedef 1051]
type=S
movetype=A
physics=S
anim=1001
ctrl=0
juggle=2
sprpriority=2
[State ]
type=Explod
trigger1=animelem=2
anim=10028
sprpriority=100
postype=p1
pos=40,-50
bindtime=1
ownpal=1
trans=add
scale=.25,.25
removeongethit=1
[State ]
type=Explod
trigger1=animelem=2
anim=10029
sprpriority=100
postype=p1
pos=40,-50
bindtime=1
ownpal=1
trans=add
scale=.25,.25
removeongethit=1
[State ]
type=HitDef
trigger1=!Time
attr=S,SA
damage=100,11
animtype=medium
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime=10,0
sparkno=s20050
guard.sparkno=s21000
sparkxy=-20,-20
hitsound=s1,8
guardsound=s1,6
ground.type=High
ground.slidetime=30
ground.hittime=31
ground.velocity=-4,-7
air.type=High
air.velocity=-4,-7
air.hittime=32
getpower=30,9
givepower=45,15
fall=1
air.fall=1
fall.recover=1
fall.recovertime=30
envshake.time=15
envshake.ampl=-6
envshake.freq=92
envshake.phase=92
[State ]
type=BGPalFX
trigger1=movehit
time=2
add=255,255,255
mul=255,255,255
invertall=0
color=0
persistent=0
ignorehitpause=1
[State ]
type=Pause
trigger1=movehit
time=8
movetime=8
persistent=0
ignorehitpause=1
[State ]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
[Statedef 1055]
type=S
movetype=A
physics=S
velset=0,0
anim=10014
ctrl=0
sprpriority=7
[State ]
type=Bindtoroot
trigger1=1
pos=63,-63
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Explod
trigger1=!Time
anim=10019
sprpriority=10
postype=p1
pos=10,-37
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.25,.25
[State ]
type=changestate
trigger1=root,stateno=1051
value=1056
[State ]
type=Destroyself
trigger1=root,movetype=H
[Statedef 1056]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
sprpriority=7
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Afterimage
trigger1=!Time
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=20
paladd=25,10,10
palmul=.75,.65,.65
length=6
TimeGap=1
FrameGap=1
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=2
value=10015
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=3
value=10024
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=4
value=10020
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=5
value=10017
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=6
value=10021
[State ]
type=Bindtoroot
trigger1=root,time<=3
pos=60,-67
[State ]
type=Bindtoroot
trigger1=root,time>=3&&root,time<=5
pos=63,-45
[State ]
type=Bindtoroot
trigger1=root,time>=5&&root,time<=6
pos=73,-22
[State ]
type=Bindtoroot
trigger1=root,time>=6&&root,time<=7
pos=46,-9
[State ]
type=Bindtoroot
trigger1=root,time>=7&&root,time<=9
pos=12,-39
[State ]
type=Bindtoroot
trigger1=root,time>=9&&root,time<=11
pos=27,-60
[State ]
type=changestate
triggerall=root,anim=1001
trigger1=root,animelem=7
value=1057
[State ]
type=Destroyself
trigger1=root,stateno!=1051
trigger2=root,movetype=H
[Statedef 1057]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
anim=10018
sprpriority=7
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Bindtoroot
trigger1=1
pos=23,-61
[State ]
type=Destroyself
trigger1=!Animtime
trigger2=root,movetype=H
[Statedef 1058]
type=S
movetype=A
physics=S
velset=0,0
anim=10023
ctrl=0
sprpriority=7
[State ]
type=Bindtoroot
trigger1=1
pos=34,-62
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Explod
trigger1=!Time
anim=10022
sprpriority=10
postype=p1
pos=-39,-35
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.25,.25
[State ]
type=changestate
trigger1=root,stateno=1051
value=1059
[State ]
type=Destroyself
trigger1=root,movetype=H
[Statedef 1059]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
sprpriority=30
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Afterimage
trigger1=!Time
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=20
paladd=25,10,10
palmul=.75,.65,.65
length=6
TimeGap=1
FrameGap=1
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=2
value=10017
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=3
value=10016
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=4
value=10024
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=5
value=10025
[State ]
type=Changeanim
triggerall=root,anim=1001
trigger1=root,animelem=6
value=10026
[State ]
type=Bindtoroot
trigger1=root,time<=3
pos=34,-62
[State ]
type=Bindtoroot
trigger1=root,time>=3&&root,time<=5
pos=23,-40
[State ]
type=Bindtoroot
trigger1=root,time>=5&&root,time<=6
pos=72,-17
[State ]
type=Bindtoroot
trigger1=root,time>=6&&root,time<=7
pos=77,-22
[State ]
type=Bindtoroot
trigger1=root,time>=7&&root,time<=9
pos=66,-48
[State ]
type=Bindtoroot
trigger1=root,time>=9&&root,time<=11
pos=56,-58
[State ]
type=changestate
triggerall=root,anim=1001
trigger1=root,animelem=7
value=1060
[State ]
type=Destroyself
trigger1=root,stateno!=1051
trigger2=root,movetype=H
[Statedef 1060]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
anim=10027
sprpriority=7
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Bindtoroot
trigger1=1
pos=54,-59
[State ]
type=Destroyself
trigger1=!Animtime
trigger2=root,movetype=H

[Statedef 1100]
type=S
movetype=A
physics=S
poweradd=30
velset=0,0
anim=1100
ctrl=0
sprpriority=2
[State ]
type=PlaySnd
trigger1=!Time
value=1100,0+random%2
channel=0
volume=255
[State ]
type=Helper
trigger1=animelem=6
name="weis"
id=1100
pos=20,-100
postype=p1
stateno=1101
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Helper
trigger1=animelemtime(6)=2
name="weis"
id=1100
pos=40,-120
postype=p1
stateno=1101
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Helper
trigger1=animelem=7
name="weis"
id=1100
pos=60,-140
postype=p1
stateno=1101
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=ChangeState
trigger1=!Animtime
value=0
ctrl=1

[Statedef 1101]
type=A
movetype=A
physics=N
velset=0,0
anim=10030
ctrl=0
sprpriority=50
[State ]
type=Velset
trigger1=!Time
x=-1
y=-1
[State ]
type=Veladd
trigger1=Time<=19
x=-.1
y=-.1
[State ]
type=Velset
trigger1=Time>=20
x=15
y=15
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=AngleDraw
trigger1=1
scale=1.0,1.0
[State ]
type=AngleSet
trigger1=1
value=50
[State ]
type=PlaySnd
trigger1=!Time
value=10000,10
volume=255
freqmul=1.2
[State ]
type=PlaySnd
trigger1=Time=17
value=10000,9
volume=-80
freqmul=1.3+((random%2)*.1)
[State ]
type=Afterimage
trigger1=animelem=9
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=23
paladd=25,10,10
palmul=.75,.65,.65
length=6
TimeGap=1
FrameGap=1
[State ]
type=Explod
trigger1=!Time
anim=10032
sprpriority=100
postype=p1
pos=13,28
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.25,.25
[State ]
type=Trans
trigger1=animelemtime(2)<=0
trans=addalpha
alpha=16,240
[State ]
type=Trans
trigger1=animelemtime(2)>=0
trigger1=animelemtime(3)<=0
trans=addalpha
alpha=32,224
[State ]
type=Trans
trigger1=animelemtime(3)>=0
trigger1=animelemtime(4)<=0
trans=addalpha
alpha=64,192
[State ]
type=Trans
trigger1=animelemtime(4)>=0
trigger1=animelemtime(5)<=0
trans=addalpha
alpha=96,160
[State ]
type=Trans
trigger1=animelemtime(5)>=0
trigger1=animelemtime(6)<=0
trans=addalpha
alpha=128,128
[State ]
type=Trans
trigger1=animelemtime(6)>=0
trigger1=animelemtime(7)<=0
trans=addalpha
alpha=160,96
[State ]
type=Trans
trigger1=animelemtime(7)>=0
trigger1=animelemtime(8)<=0
trans=addalpha
alpha=192,64
[State ]
type=Trans
trigger1=animelemtime(8)>=0
trigger1=animelemtime(9)<=0
trans=addalpha
alpha=224,32
[State ]
type=Trans
trigger1=animelemtime(9)>=0
trans=add1
[State ]
type=HitDef
trigger1=Time=21
attr=S,SA
damage=30,4
animtype=light
guardflag=MA
hitflag=MAF
priority=6,Hit
pausetime=0,10
sparkno=s20050
guard.sparkno=s21000
sparkxy=0,0
hitsound=s1,8
guardsound=s1,6
ground.type=High
ground.slidetime=20
ground.hittime=21
ground.velocity=-3
air.type=High
air.velocity=-3,-2
air.hittime=22
getpower=10,2
givepower=20,5
air.fall=1
fall.recover=1
fall.recovertime=30
[State ]
type=Changestate
trigger1=Vel Y>0
trigger1=Pos Y>=-17
value=1102
[Statedef 1102]
type=A
movetype=A
physics=S
velset=0,0
anim=10031
ctrl=0
sprpriority=50
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=EnvShake
trigger1=!Time
time=3
ampl=-8
phase=160
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=AngleDraw
trigger1=1
scale=1.0,1.0
[State ]
type=AngleSet
trigger1=1
value=50
[State ]
type=PlaySnd
trigger1=!Time
value=10000,5
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=Trans
trigger1=animelemtime(2)<=0
trans=addalpha
alpha=224,32
[State ]
type=Trans
trigger1=animelemtime(2)>=0
trigger1=animelemtime(3)<=0
trans=addalpha
alpha=192,64
[State ]
type=Trans
trigger1=animelemtime(3)>=0
trigger1=animelemtime(4)<=0
trans=addalpha
alpha=160,96
[State ]
type=Trans
trigger1=animelemtime(4)>=0
trigger1=animelemtime(5)<=0
trans=addalpha
alpha=128,128
[State ]
type=Trans
trigger1=animelemtime(5)>=0
trigger1=animelemtime(6)<=0
trans=addalpha
alpha=96,160
[State ]
type=Trans
trigger1=animelemtime(6)>=0
trigger1=animelemtime(7)<=0
trans=addalpha
alpha=64,192
[State ]
type=Trans
trigger1=animelemtime(7)>=0
trigger1=animelemtime(8)<=0
trans=addalpha
alpha=32,224
[State ]
type=Trans
trigger1=animelemtime(8)>=0
trans=addalpha
alpha=16,240
[State ]
type=Destroyself
trigger1=!Animtime

[Statedef 1150]
type=S
movetype=A
physics=S
poweradd=30
velset=0,0
anim=1100
ctrl=0
sprpriority=2
[State ]
type=PlaySnd
trigger1=!Time
value=1101,0+random%2
channel=0
volume=255
[State ]
type=Helper
trigger1=animelem=6
name="weis"
id=1100
pos=160,-100
postype=p1
stateno=1151
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Helper
trigger1=animelemtime(6)=2
name="weis"
id=1100
pos=140,-120
postype=p1
stateno=1151
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Helper
trigger1=animelem=7
name="weis"
id=1100
pos=120,-140
postype=p1
stateno=1151
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=ChangeState
trigger1=!Animtime
value=0
ctrl=1

[Statedef 1151]
type=A
movetype=A
physics=N
velset=0,0
anim=10030
ctrl=0
sprpriority=50
[State ]
type=Turn
trigger1=!Time
[State ]
type=Velset
trigger1=!Time
x=-1
y=-1
[State ]
type=Veladd
trigger1=Time<=19
x=-.1
y=-.1
[State ]
type=Velset
trigger1=Time>=20
x=15
y=15
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=AngleDraw
trigger1=1
scale=1.0,1.0
[State ]
type=AngleSet
trigger1=1
value=50
[State ]
type=PlaySnd
trigger1=!Time
value=10000,10
volume=255
freqmul=1.2
[State ]
type=PlaySnd
trigger1=Time=17
value=10000,9
volume=-80
freqmul=1.3+((random%2)*.1)
[State ]
type=Afterimage
trigger1=animelem=9
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=23
paladd=25,10,10
palmul=.75,.65,.65
length=6
TimeGap=1
FrameGap=1
[State ]
type=Explod
trigger1=!Time
anim=10032
sprpriority=100
postype=p1
pos=13,28
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.25,.25
[State ]
type=Trans
trigger1=animelemtime(2)<=0
trans=addalpha
alpha=16,240
[State ]
type=Trans
trigger1=animelemtime(2)>=0
trigger1=animelemtime(3)<=0
trans=addalpha
alpha=32,224
[State ]
type=Trans
trigger1=animelemtime(3)>=0
trigger1=animelemtime(4)<=0
trans=addalpha
alpha=64,192
[State ]
type=Trans
trigger1=animelemtime(4)>=0
trigger1=animelemtime(5)<=0
trans=addalpha
alpha=96,160
[State ]
type=Trans
trigger1=animelemtime(5)>=0
trigger1=animelemtime(6)<=0
trans=addalpha
alpha=128,128
[State ]
type=Trans
trigger1=animelemtime(6)>=0
trigger1=animelemtime(7)<=0
trans=addalpha
alpha=160,96
[State ]
type=Trans
trigger1=animelemtime(7)>=0
trigger1=animelemtime(8)<=0
trans=addalpha
alpha=192,64
[State ]
type=Trans
trigger1=animelemtime(8)>=0
trigger1=animelemtime(9)<=0
trans=addalpha
alpha=224,32
[State ]
type=Trans
trigger1=animelemtime(9)>=0
trans=add1
[State ]
type=HitDef
trigger1=Time=21
attr=S,SA
damage=30,4
animtype=light
guardflag=MA
hitflag=MAF
priority=6,Hit
pausetime=0,10
sparkno=s20050
guard.sparkno=s21000
sparkxy=0,0
hitsound=s1,8
guardsound=s1,6
ground.type=High
ground.slidetime=20
ground.hittime=21
ground.velocity=-5
air.type=High
air.velocity=-4,-2
air.hittime=22
getpower=10,2
givepower=20,5
air.fall=1
fall.recover=1
fall.recovertime=30
[State ]
type=Changestate
trigger1=Vel Y>0
trigger1=Pos Y>=-17
value=1152
[Statedef 1152]
type=A
movetype=A
physics=S
velset=0,0
anim=10031
ctrl=0
sprpriority=50
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=EnvShake
trigger1=!Time
time=3
ampl=-8
phase=160
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=AngleDraw
trigger1=1
scale=1.0,1.0
[State ]
type=AngleSet
trigger1=1
value=50
[State ]
type=PlaySnd
trigger1=!Time
value=10000,5
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=Trans
trigger1=animelemtime(2)<=0
trans=addalpha
alpha=224,32
[State ]
type=Trans
trigger1=animelemtime(2)>=0
trigger1=animelemtime(3)<=0
trans=addalpha
alpha=192,64
[State ]
type=Trans
trigger1=animelemtime(3)>=0
trigger1=animelemtime(4)<=0
trans=addalpha
alpha=160,96
[State ]
type=Trans
trigger1=animelemtime(4)>=0
trigger1=animelemtime(5)<=0
trans=addalpha
alpha=128,128
[State ]
type=Trans
trigger1=animelemtime(5)>=0
trigger1=animelemtime(6)<=0
trans=addalpha
alpha=96,160
[State ]
type=Trans
trigger1=animelemtime(6)>=0
trigger1=animelemtime(7)<=0
trans=addalpha
alpha=64,192
[State ]
type=Trans
trigger1=animelemtime(7)>=0
trigger1=animelemtime(8)<=0
trans=addalpha
alpha=32,224
[State ]
type=Trans
trigger1=animelemtime(8)>=0
trans=addalpha
alpha=16,240
[State ]
type=Destroyself
trigger1=!Animtime

[Statedef 1200]
type=S
movetype=A
physics=N
poweradd=50
velset=0,0
anim=1200
ctrl=0
sprpriority=2
[State ]
type=VelSet
trigger1=animelem=5
x=2
[State ]
type=VelSet
trigger1=animelem=6
x=4
y=-5
[State ]
type=Statetypeset
trigger1=animelem=6
statetype=A
movetype=A
physics=N
[State ]
type=Statetypeset
trigger1=animelem=8
statetype=A
movetype=A
physics=A
[State ]
type=PlaySnd
trigger1=!Time
value=1200,0+random%2
channel=0
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=10000,8
volume=-50
[State ]
type=PlaySnd
trigger1=!Time
value=10000,11
volume=-210
freqmul=1.3+((random%2)*.1)
[State ]
type=Helper
trigger1=animelem=6
name="weis"
pos=0,0
postype=p1
stateno=1201
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Helper
trigger1=animelem=6
name="weis"
pos=0,0
postype=p1
stateno=1202
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Explod
trigger1=animelemtime(6)>=0&&animelemtime(9)<=0
anim=10007
sprpriority=10
postype=p1
pos=80-random%60,-65-random%80
ownpal=1
ontop=1
vel=-1-random%2,1+random%2
random=30,30
trans=add
scale=.3,.3
[State ]
type=Explod
trigger1=animelemtime(6)>=0&&animelemtime(9)<=0
anim=10007
sprpriority=10
postype=p1
pos=80-random%60,-65-random%80
ownpal=1
ontop=1
vel=-1-random%2,1+random%2
random=30,30
trans=add
scale=.3,.3
[State ]
type=HitDef
trigger1=!Time
attr=S,SA
damage=95,10
animtype=hard
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime=14,14
sparkno=s20050
guard.sparkno=s21000
sparkxy=-35,-75
hitsound=s1,8
guardsound=s1,6
ground.type=High
ground.slidetime=30
ground.hittime=31
ground.velocity=-4,-7
air.type=High
air.velocity=-4,-7
air.hittime=32
getpower=20,6
givepower=35,10
fall=1
air.fall=1
fall.recover=1
fall.recovertime=30
envshake.time=15
envshake.ampl=-6
envshake.freq=92
envshake.phase=92

[Statedef 1201]
type=S
movetype=A
physics=S
velset=0,0
anim=10033
ctrl=0
sprpriority=7
[State ]
type=Bindtoroot
triggerall=root,anim=1200
trigger1=root,animelemtime(8)<=0
pos=50,-70
[State ]
type=velset
triggerall=root,anim=1200
trigger1=root,animelemtime(8)>=0
x=4-Time*.1
y=-4+Time*.1
[State ]
type=velset
trigger1=root,anim!=1200
x=4-Time*.1
y=-4+Time*.1
[State ]
type=Changeanim
triggerall=root,anim=1200
trigger1=root,animelem=8
value=10035
[State ]
type=Changeanim
triggerall=anim!=10035
trigger1=root,anim!=1200
value=10035
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Explod
trigger1=!Time
anim=10034
sprpriority=10
postype=p1
pos=8,-17
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.3,.3
[State ]
type=Destroyself
trigger1=root,movetype=H
trigger2=anim=10035&&!Animtime
[Statedef 1202]
type=S
movetype=A
physics=S
velset=0,0
anim=10033
ctrl=0
sprpriority=7
[State ]
type=Bindtoroot
triggerall=root,anim=1200
trigger1=root,animelemtime(8)<=0
pos=-15,-100
[State ]
type=velset
triggerall=root,anim=1200
trigger1=root,animelemtime(8)>=0
x=4-Time*.1
y=-4+Time*.1
[State ]
type=velset
trigger1=root,anim!=1200
x=4-Time*.1
y=-4+Time*.1
[State ]
type=Changeanim
triggerall=root,anim=1200
trigger1=root,animelem=8
value=10035
[State ]
type=Changeanim
triggerall=anim!=10035
trigger1=root,anim!=1200
value=10035
[State ]
type=PalFx
trigger1=1
add=20,0,0
time=1
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Explod
trigger1=!Time
anim=10034
sprpriority=10
postype=p1
pos=8,-17
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.3,.3
[State ]
type=Destroyself
trigger1=root,movetype=H
trigger2=anim=10035&&!Animtime

[Statedef 1300]
type=S
movetype=A
physics=S
poweradd=25
velset=0,0
anim=1300
ctrl=0
sprpriority=2
[State ]
type=Explod
trigger1=!Time
anim=10005
id=1300
sprpriority=-10
postype=p1
pos=-4,0
bindtime=1
ownpal=1
trans=add
scale=.5,.5
removetime=-1
removeongethit=1
[State ]
type=Explod
trigger1=Time>=20&&!(Time%3)
anim=10006
pos=0,0
postype=p1
bindtime=1
sprpriority=-50
ownpal=1
scale=.4,.1
trans=add
removeongethit=1
[State ]
type=Explod
trigger1=Time>=20
anim=10007
sprpriority=2147483647
postype=p1
pos=-40+random%80,5-random%10
vel=-2+random%4,-3+(random%2)
facing=-1
scale=.25,.25
ownpal=1
trans=add
accel=0,-.1
removeongethit=1
[State ]
type=Explod
trigger1=Time>=20
anim=10007
sprpriority=2147483647
postype=p1
pos=-40+random%80,5-random%10
vel=-2+random%4,-3+(random%2)
facing=-1
scale=.25,.25
ownpal=1
trans=add
removeongethit=1
[State ]
type=PlaySnd
trigger1=Time=20
value=10000,6
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=Time=20
value=10000,15
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=AllPalFX
trigger1=Time=20
time=2
add=255,0,0
mul=255,0,0
invertall=0
color=0
[State ]
type=ChangeState
triggerall=Time<=20
trigger1=command!="‚¨‚µ‚Á‚Ï‚È‚µ"&&!var(30)
value=1301
[State ]
type=ChangeState
triggerall=Time>=21&&Time<=70
trigger1=command!="‚¨‚µ‚Á‚Ï‚È‚µ"&&!var(30)
value=1302
[State ]
type=ChangeState
trigger1=Time>=70
value=1303
[Statedef 1301]
type=S
movetype=A
physics=S
juggle=2
ctrl=0
velset=0,0
anim=1301
sprpriority=2
[State ]
type=Removeexplod
trigger1=!Time
id=1300
[State ]
type=velset
trigger1=animelem=4
x=8
[State ]
type=PlaySnd
trigger1=animelem=4
value=240,0+random%2
volume=255
[State ]
type=PlaySnd
trigger1=animelem=4
value=0,4
volume=255
[State ]
type=HitDef
trigger1=!Time
attr=S,NA
damage=80,12
getpower=61,61
animtype=hard
guardflag=MA
hitflag=MAF
priority=7,Hit
pausetime=13,13
sparkno=s20000
sparkxy=-15,-45
hitsound=s1,4
guard.sparkno=s21000
guardsound=s1,6
ground.type=High
ground.slidetime=40
ground.hittime=40
ground.velocity=-8
airguard.velocity=-5,-2
air.type=High
air.velocity=-5,-2
air.hittime=41
fall=1
air.fall=1
fall.recover=1
fall.recovertime=41
envshake.time=10
envshake.ampl=-10
[State ]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1
[Statedef 1302]
type=S
movetype=A
physics=S
juggle=2
ctrl=0
velset=0,0
anim=1302
sprpriority=2
[State ]
type=Removeexplod
trigger1=!Time
id=1300
[State ]
type=velset
trigger1=animelem=4
trigger2=animelem=12
x=8
[State ]
type=Helper
trigger1=!Time
name="weis"
pos=0,0
postype=p1
stateno=1305
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=PlaySnd
trigger1=animelem=4
value=1300,0+random%2
volume=255
[State ]
type=PlaySnd
trigger1=animelem=4
value=0,3
volume=255
[State ]
type=PlaySnd
trigger1=animelem=11
value=0,4
volume=255
[State ]
type=Explod
trigger1=animelem=5
anim=10040
sprpriority=100
postype=p1
pos=50,-50
bindtime=1
ownpal=1
trans=add
scale=.25,.25
removeongethit=1
[State ]
type=Explod
trigger1=animelem=13
anim=10047
sprpriority=100
postype=p1
pos=60,-60
bindtime=1
ownpal=1
trans=add
scale=.25,.25
removeongethit=1
[State ]
type=HitDef
trigger1=animelem=6
attr=S,NA
damage=40,6
getpower=61,61
animtype=hard
guardflag=MA
hitflag=MAF
priority=7,Hit
pausetime=5,5
sparkno=s20050
sparkxy=-15,-45
hitsound=s1,8
guard.sparkno=s21000
guardsound=s1,6
ground.type=High
ground.slidetime=40
ground.hittime=40
ground.velocity=-3
airguard.velocity=-3
air.type=High
air.velocity=-3,-2
air.hittime=41
air.fall=1
fall.recover=1
fall.recovertime=41
envshake.time=10
envshake.ampl=-10
[State ]
type=HitDef
trigger1=animelem=14
attr=S,NA
damage=70,15
getpower=61,61
animtype=back
guardflag=MA
hitflag=MAF
priority=7,Hit
pausetime=5,5
sparkno=s20050
sparkxy=-15,-45
hitsound=s1,8
guard.sparkno=s21000
guardsound=s1,6
ground.type=High
ground.slidetime=20
ground.hittime=20
ground.velocity=-3,-7
airguard.velocity=-3
air.type=High
air.velocity=-3,-4
air.hittime=21
fall=1
air.fall=1
fall.recover=1
fall.recovertime=21
envshake.time=10
envshake.ampl=-10
[State ]
type=BGPalFX
trigger1=movehit&&animelemtime(7)<=0
time=2
add=255,255,255
mul=255,255,255
invertall=0
color=0
persistent=0
ignorehitpause=1
[State ]
type=BGPalFX
trigger1=movehit&&animelemtime(13)>=0
time=2
add=255,255,255
mul=255,255,255
invertall=0
color=0
persistent=0
ignorehitpause=1
[State ]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1
[Statedef 1303]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
anim=1302
sprpriority=2
[State ]
type=Removeexplod
trigger1=!Time
id=1300
[State ]
type=BGpalfx
trigger1=!Time
add=0,0,0
sinadd=-100,-100,-100,100
time=50
invertall=0
[State ]
type=Helper
trigger1=!Time
name="weis"
pos=0,0
postype=p1
stateno=1306
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Helper
trigger1=animelem=5
name="weis"
pos=60,-50
postype=p1
stateno=1307
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.3
size.yscale=.3
[State ]
type=PlaySnd
trigger1=!Time
value=1300,4+random%2
volume=255
[State ]
type=PlaySnd
trigger1=animelem=4
value=10000,5
volume=-150
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=animelem=11
value=0,4
volume=255
[State ]
type=Explod
trigger1=animelem=5
anim=10040
sprpriority=100
postype=p1
pos=50,-50
bindtime=1
ownpal=1
trans=add
scale=.25,.25
removeongethit=1
[State ]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

[Statedef 1305]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
anim=10036
sprpriority=-10
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Afterimage
triggerall=anim=10036
trigger1=animelem=2
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=10
paladd=25,10,10
palmul=.75,.65,.65
length=6
TimeGap=1
FrameGap=1
[State ]
type=Afterimage
trigger1=anim=10041&&animelem=1
trigger2=Time=15
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=10
paladd=25,10,10
palmul=.75,.65,.65
length=6
TimeGap=1
FrameGap=1
[State ]
type=PalFx
trigger1=1
add=40,0,0
time=1
[State ]
type=Afterimagetime
triggerall=anim=10039
trigger1=animelem=9
Time=1
[State ]
type=Sprpriority
triggerall=root,anim=1302
trigger1=root,animelem=5
trigger2=root,animelem=10
trigger3=root,animelem=15
value=10
[State ]
type=Sprpriority
triggerall=root,anim=1302
trigger1=root,animelem=7
trigger2=root,animelem=12
value=-10
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=5
value=10037
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=6
value=10038
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=7
value=10039
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=10
value=10041
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=11
value=10042
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=12
value=10043
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=13
value=10044
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=14
value=10045
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=15
value=10046
[State ]
type=Bindtoroot
trigger1=root,time<=2
pos=-45,-85
[State ]
type=Bindtoroot
trigger1=root,time>=3&&root,time<=4
pos=-40,-90
[State ]
type=Bindtoroot
trigger1=root,time>=4&&root,time<=6
pos=-20,-93
[State ]
type=Bindtoroot
trigger1=root,time>=6&&root,time<=7
pos=64,-82
[State ]
type=Bindtoroot
trigger1=root,time>=8&&root,time<=10
pos=55,-13
[State ]
type=Bindtoroot
trigger1=root,time>=11&&root,time<=12
pos=27,-10
[State ]
type=Bindtoroot
trigger1=root,time>=17&&root,time<=18
pos=-9,-96
[State ]
type=Bindtoroot
trigger1=root,time>=18&&root,time<=19
pos=-12,-92
[State ]
type=Bindtoroot
trigger1=root,time>=19&&root,time<=21
pos=30,-65
[State ]
type=Bindtoroot
trigger1=root,time>=21&&root,time<=23
pos=48,-15
[State ]
type=Bindtoroot
trigger1=root,time>=23&&root,time<=25
pos=72,-58
[State ]
type=Bindtoroot
trigger1=root,time>=25&&root,time<=27
pos=17,-107
[State ]
type=Destroyself
triggerall=anim=10046
trigger1=!Animtime
[State ]
type=Destroyself
trigger1=root,stateno!=1302
trigger2=root,movetype=H
[Statedef 1306]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
anim=10036
sprpriority=-10
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Afterimage
triggerall=anim=10036
trigger1=animelem=2
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=10
paladd=25,10,10
palmul=.75,.65,.65
length=6
TimeGap=1
FrameGap=1
[State ]
type=Afterimage
trigger1=anim=10041&&animelem=1
trigger2=Time=15
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=10
paladd=25,10,10
palmul=.75,.65,.65
length=6
TimeGap=1
FrameGap=1
[State ]
type=PalFx
trigger1=1
add=40,0,0
time=1
[State ]
type=Afterimagetime
triggerall=anim=10039
trigger1=animelem=9
Time=1
[State ]
type=Sprpriority
triggerall=root,anim=1302
trigger1=root,animelem=5
trigger2=root,animelem=10
trigger3=root,animelem=15
value=10
[State ]
type=Sprpriority
triggerall=root,anim=1302
trigger1=root,animelem=7
trigger2=root,animelem=12
value=-10
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=5
value=10037
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=6
value=10038
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=7
value=10039
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=10
value=10041
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=11
value=10042
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=12
value=10043
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=13
value=10044
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=14
value=10045
[State ]
type=Changeanim
triggerall=root,anim=1302
trigger1=root,animelem=15
value=10046
[State ]
type=Bindtoroot
trigger1=root,time<=2
pos=-45,-85
[State ]
type=Bindtoroot
trigger1=root,time>=3&&root,time<=4
pos=-40,-90
[State ]
type=Bindtoroot
trigger1=root,time>=4&&root,time<=6
pos=-20,-93
[State ]
type=Bindtoroot
trigger1=root,time>=6&&root,time<=7
pos=64,-82
[State ]
type=Bindtoroot
trigger1=root,time>=8&&root,time<=10
pos=55,-13
[State ]
type=Bindtoroot
trigger1=root,time>=11&&root,time<=12
pos=27,-10
[State ]
type=Bindtoroot
trigger1=root,time>=17&&root,time<=18
pos=-9,-96
[State ]
type=Bindtoroot
trigger1=root,time>=18&&root,time<=19
pos=-12,-92
[State ]
type=Bindtoroot
trigger1=root,time>=19&&root,time<=21
pos=30,-65
[State ]
type=Bindtoroot
trigger1=root,time>=21&&root,time<=23
pos=48,-15
[State ]
type=Bindtoroot
trigger1=root,time>=23&&root,time<=25
pos=72,-58
[State ]
type=Bindtoroot
trigger1=root,time>=25&&root,time<=27
pos=17,-107
[State ]
type=Destroyself
triggerall=anim=10046
trigger1=!Animtime
[State ]
type=Destroyself
trigger1=root,stateno!=1303
trigger2=root,movetype=H
[Statedef 1307]
type=S
movetype=A
physics=N
velset=0,0
ctrl=0
anim=10048
sprpriority=100
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=Afterimage
trigger1=Time=15
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=-1
paladd=25,10,10
palmul=.75,.65,.65
length=4
TimeGap=1
FrameGap=1
[State ]
type=Veladd
trigger1=Time>=17
x=.6
[State ]
type=PlaySnd
trigger1=Time=15
value=10000,12
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=Time=15
value=10000,14
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=Time>=18&&!(Time%7)
value=10000,13
volume=-200
freqmul=1.3+((random%2)*.1)
[State ]
type=Explod
trigger1=animelem=2
anim=10049
sprpriority=10000
postype=p1
pos=56+random%7,60
bindtime=1
supermove=0
ownpal=1
trans=add
scale=.25,.25
[State ]
type=Explod
trigger1=animelem=2
anim=10050
sprpriority=100
postype=p1
pos=56+random%7,60
bindtime=1
supermove=0
ownpal=1
trans=sub
scale=.3,.3
[State ]
type=Explod
trigger1=Time=18
anim=10051
sprpriority=1000
postype=p1
pos=45,61
bindtime=1
supermove=0
ownpal=1
trans=add
scale=.5,.5
[State ]
type=Explod
trigger1=Time=18
anim=10052
sprpriority=100
postype=p1
pos=45,61
bindtime=1
supermove=0
ownpal=1
trans=sub
scale=.55,.55
[State ]
type=Explod
trigger1=Time>=15&&!(Time%9)
anim=10053
sprpriority=10000
postype=p1
pos=70+random%7,60
bindtime=1
supermove=0
ownpal=1
accel=.06,0
trans=add
scale=.25,.25
[State ]
type=Explod
trigger1=Time>=15&&!(Time%9)
anim=10054
sprpriority=100
postype=p1
pos=70+random%7,60
bindtime=1
supermove=0
ownpal=1
accel=.06,0
trans=sub
scale=.3,.3
[State ]
type=Explod
trigger1=Time>=15
anim=10007
sprpriority=2147483647
postype=p1
pos=0+random%10,63-random%6
bindtime=1
ownpal=1
trans=add
ontop=1
vel=-1.7-(random%60)*.1,0-(random%70)*.1
scale=.25,.25
[State ]
type=Explod
trigger1=Time>=15
anim=10007
sprpriority=2147483647
postype=p1
pos=0+random%10,63-random%6
bindtime=1
ownpal=1
trans=add
ontop=1
vel=-1.7-(random%60)*.1,0-(random%70)*.1
scale=.25,.25
[State ]
type=EnvShake
trigger1=Time>=15&&!(Time%3)
ampl=-4
freq=170
time=3
[State ]
type=Hitdef
triggerall=Ishelper
trigger1=Time>=17&&!(Time%3)
attr=S,SP
damage=20,9
animtype=hard
guardflag=MA
hitflag=MAFDP
pausetime=0,1
sparkxy=-10,floor(-10+(enemynear, pos y))
sparkno=s20050
guard.sparkno=s21000
hitsound=s1,8
guardsound=s1,6
ground.type=Low
ground.slidetime=40
ground.hittime=25
ground.velocity=-6
air.animtype=Back
air.velocity=-5,-4
air.fall=1
fall=1
[State ]
type=AllPalFX
trigger1=movehit
time=2
add=255,0,0
mul=255,0,0
invertall=0
color=0
persistent=0
ignorehitpause=1
[State ]
type=Destroyself
trigger1=Time>=56
trigger2=root,movetype=H

