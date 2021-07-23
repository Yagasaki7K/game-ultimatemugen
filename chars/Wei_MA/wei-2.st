[Statedef 2000]
type=S
movetype=A
physics=N
velset=0,0
ctrl=0
anim=2000
sprpriority=2
[State ]
type=SuperPause
trigger1=!time
anim=-1
poweradd=-1000
movetime=30
time=30
darken=0
[State ]
type=Envshake
trigger1=!Time
time=20
ampl=-5
freq=95
phase=95
[State ]
type=PlaySnd
trigger1=!Time
value=30000,0
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=30000,1
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=30000,2
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=1300,4+random%2
channel=0
volume=255
[State ]
type=NotHitBy
trigger1=time<=30
value=SCA
[State ]
type=AssertSpecial
trigger1=Time<=30
flag=NoFG
flag2=NOBG
ignorehitpause=1
[State ]
type=Explod
trigger1=!Time
anim=30000
sprpriority=100
postype=p1
pos=-12,-80
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30001
sprpriority=-5000
postype=back
pos=0,0
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30002
sprpriority=50
postype=back
pos=0,0
bindtime=-1
supermove=1
ownpal=1
ontop=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Velset
trigger1=animelem=2
x=10
[State ]
type=HitDef
trigger1=!Time
attr=S,SA
damage=40,18
animtype=hard
ground.type=high
guardflag=MA
hitflag=MAF
priority=3,Hit
pausetime=0,0
guard.pausetime=5,12
sparkno=s20000
guard.sparkno=s21000
sparkxy=-5,-60
hitsound=s1,4
guardsound=s1,6
ground.slidetime=17
ground.hittime=17
guard.velocity=0
ground.velocity=0,0
air.velocity=0,0
airguard.velocity=0,0
ground.cornerpush.veloff=-8.5
air.cornerpush.veloff=-8.5
fall=1
fall.recovertime=40
p1stateno=2010
p2stateno=2050
kill=0
guard.kill=0
envshake.time=8
envshake.ampl=7
envshake.freq=100
[State ]
type=ChangeState
trigger1=time>=60
trigger2=moveguarded
value=2001
[Statedef 2001]
type=S
movetype=A
physics=S
ctrl=0
anim=2001
sprpriority=2
[State ]
type=ChangeState
trigger1=!Animtime
value=0
ctrl=1
[Statedef 2010]
type=S
movetype=A
physics=N
velset=0,0
ctrl=0
anim=2010
sprpriority=2
[State ]
type=AllPalFX
trigger1=!Time
time=2
add=255,255,255
mul=255,255,255
invertall=0
color=0
[State ]
type=Posset
trigger1=Time=1
x=ifelse(facing=1,(enemy,pos x+80),(enemy,pos x-80))
y=0
[State ]
type=PlaySnd
trigger1=animelem=13
value=10000,5
volume=-100
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=animelem=7
value=2000,0
channel=0
volume=255
[State ]
type=PlaySnd
trigger1=animelem=22
value=2000,1
channel=0
volume=255
[State ]
type=Targetstate
trigger1=Time=65
value=2051
[State ]
type=Targetstate
trigger1=Time=145
value=2054
[State ]
type=Helper
trigger1=Time=65
trigger2=Time=110
name="weis"
id=2020
pos=90,-80
postype=p2
stateno=2020
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Helper
trigger1=Time=72
trigger2=Time=112
name="weis"
id=2020
pos=60,-120
postype=p2
stateno=2022
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Helper
trigger1=Time=79
trigger2=Time=114
name="weis"
id=2020
pos=0,-160
postype=p2
stateno=2024
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Helper
trigger1=Time=86
trigger2=Time=116
name="weis"
id=2021
pos=-60,-120
postype=p2
stateno=2022
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Helper
trigger1=Time=93
trigger2=Time=118
name="weis"
id=2021
pos=-90,-80
postype=p2
stateno=2020
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=Turn
trigger1=!Animtime
[State ]
type=Changestate
trigger1=!Animtime
value=0
ctrl=1

[Statedef 2020]
type=A
movetype=A
physics=N
velset=0,0
anim=10030
ctrl=0
sprpriority=50
[State ]
type=Turn
trigger1=!Time&&Ishelper(2020)
[State ]
type=Velset
trigger1=!Time
x=-.7
y=-.3
[State ]
type=Veladd
trigger1=Time<=19
x=-.1
y=-.07
[State ]
type=Velset
trigger1=Time>=20
x=20
y=10
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
value=70
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
attr=A,HA
damage=10
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
p2stateno=2052
air.fall=1
fall.recover=1
fall.recovertime=30
[State ]
type=AllPalFX
trigger1=Movehit&&root,time<=120
time=2
add=255,255,255
mul=255,255,255
invertall=0
color=0
persistent=0
ignorehitpause=1
[State ]
type=AllPalFX
trigger1=Movehit&&root,time>=131
time=2
add=255,0,0
mul=255,0,0
invertall=0
color=0
persistent=0
ignorehitpause=1
[State ]
type=Changestate
trigger1=Vel Y>0
trigger1=Pos Y>=-10
value=2021
[Statedef 2021]
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
value=70
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
[Statedef 2022]
type=A
movetype=A
physics=N
velset=0,0
anim=10030
ctrl=0
sprpriority=50
[State ]
type=Turn
trigger1=!Time&&Ishelper(2020)
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
attr=A,HA
damage=10
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
p2stateno=2053
fall.recover=1
fall.recovertime=30
[State ]
type=AllPalFX
trigger1=Movehit&&root,time<=120
time=2
add=255,255,255
mul=255,255,255
invertall=0
color=0
persistent=0
ignorehitpause=1
[State ]
type=Changestate
trigger1=Vel Y>0
trigger1=Pos Y>=-17
value=2023
[Statedef 2023]
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
[Statedef 2024]
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
y=-1
[State ]
type=Veladd
trigger1=Time<=19
y=-.1
[State ]
type=Velset
trigger1=Time>=20
y=20
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
attr=A,HA
damage=10
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
p2stateno=2052
air.fall=1
fall.recover=1
fall.recovertime=30
[State ]
type=AllPalFX
trigger1=Movehit&&root,time<=120
time=2
add=255,255,255
mul=255,255,255
invertall=0
color=0
persistent=0
ignorehitpause=1
[State ]
type=Changestate
trigger1=Vel Y>0
trigger1=Pos Y>=-20
value=2025
[Statedef 2025]
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

[Statedef 2050]
type=A
movetype=H
physics=N
velset=0,0
[State ]
type=ChangeAnim2
trigger1=!Time
value=2050
[State ]
type=ScreenBound
trigger1=1
value=0
movecamera=0,0
ignorehitpause=1
[State ]
type=velset
trigger1=1
x=0
y=0
[State ]
type=Posset
trigger1=1
x=0
y=0
[State ]
type=SelfState
trigger1=time>=500
value=5100
[Statedef 2051]
type=A
movetype=H
physics=N
velset=0,0
[State ]
type=ChangeAnim2
trigger1=!Time
value=2051
[State ]
type=ScreenBound
trigger1=1
value=0
movecamera=0,0
ignorehitpause=1
[State ]
type=velset
trigger1=1
x=0
y=0
[State ]
type=Posset
trigger1=1
x=0
y=0
[State ]
type=Hitby
trigger1=1
value=A,HA
[State ]
type=SelfState
trigger1=time>=500
value=5100
[Statedef 2052]
type=A
movetype=H
physics=N
velset=0,0
[State ]
type=ChangeAnim2
trigger1=!Time
value=2052
[State ]
type=ScreenBound
trigger1=1
value=0
movecamera=0,0
ignorehitpause=1
[State ]
type=velset
trigger1=1
x=0
y=0
[State ]
type=Posset
trigger1=1
x=0
y=0
[State ]
type=Hitby
trigger1=1
value=A,HA
[State ]
type=SelfState
trigger1=time>=500
value=5100
[Statedef 2053]
type=A
movetype=H
physics=N
velset=0,0
[State ]
type=ChangeAnim2
trigger1=!Time
value=2053
[State ]
type=ScreenBound
trigger1=1
value=0
movecamera=0,0
ignorehitpause=1
[State ]
type=velset
trigger1=1
x=0
y=0
[State ]
type=Posset
trigger1=1
x=0
y=0
[State ]
type=Hitby
trigger1=1
value=A,HA
[State ]
type=SelfState
trigger1=time>=500
value=5100
[Statedef 2054]
type=L
movetype=H
physics=N
[State ]
type=VelSet
trigger1=!Time
trigger1=!GetHitVar(fall.yvel)
trigger1=vel x>1
x=1
[State ]
type=FallEnvShake
trigger1=!Time
[State ]
type=VarSet
trigger1=!Time
sysvar(1)=floor(vel y)
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
type=PosSet
trigger1=!Time
y=0
[State ]
type=VelSet
trigger1=!Time
y=0
[State ]
type=VelMul
trigger1=!Time
x=.75
[State ]
type=SelfState
trigger1=!Time
trigger1=!GetHitVar(fall.yvel)
value=5110
[State ]
type=PosFreeze
trigger1=1
[State ]
type=SelfState
trigger1=!Time
value=5101
[State ]
type=ForceFeedback
trigger1=!Time
waveform=sinesquare
ampl=128,-3,-.2,.005
time=20

[Statedef 2100]
type=S
movetype=A
physics=N
velset=0,0
ctrl=0
anim=2100
sprpriority=2
[State ]
type=SuperPause
trigger1=!time
anim=-1
poweradd=-1000
movetime=30
time=30
darken=0
[State ]
type=Envshake
trigger1=!Time
time=20
ampl=-5
freq=95
phase=95
[State ]
type=PlaySnd
trigger1=!Time
value=30000,0
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=30000,1
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=30000,2
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=2100,0+random%2
channel=0
volume=255
[State ]
type=NotHitBy
trigger1=time<=34
value=SCA
[State ]
type=AssertSpecial
trigger1=Time<=34
flag=NoFG
flag2=NOBG
ignorehitpause=1
[State ]
type=Explod
trigger1=!Time
anim=30000
sprpriority=100
postype=p1
pos=27,-40
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30001
sprpriority=-5000
postype=back
pos=0,0
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30002
sprpriority=50
postype=back
pos=0,0
bindtime=-1
supermove=1
ownpal=1
ontop=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Helper
trigger1=Time=30
name="weis"
pos=0,0
postype=p1
stateno=2105
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State ]
type=ChangeState
trigger1=!Animtime
value=2101
[Statedef 2101]
type=S
movetype=A
physics=N
velset=0,0
ctrl=0
anim=2110
sprpriority=2
[State ]
type=Playsnd
trigger1=animelemtime(1)=2
value=10000,8
volume=255
[State ]
type=Playsnd
trigger1=animelemtime(1)=2
value=10000,9
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=Playsnd
trigger1=animelemtime(1)=2
value=10000,16
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=Playsnd
trigger1=animelemtime(1)=2
value=10000,17
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=EnvShake
trigger1=animelemtime(1)=2
ampl=-7
freq=170
time=20
[State ]
type=Explod
trigger1=animelemtime(1)=2
anim=10057
sprpriority=-5
postype=p1
pos=-7,0
bindtime=1
ownpal=1
trans=add
scale=.5,.5
pausemovetime=2147483647
[State ]
type=Velset
trigger1=animelem=2
x=6
y=-15
[State ]
type=Veladd
trigger1=animelemtime(2)>=0&&animelemtime(9)<=0
y=-.4
[State ]
type=AfterImage
trigger1=!Ishelper&&animelem=2
time=-1
trans=add
timegap=1
framegap=1
length=6
palbright=1,1,1
palcontrast=120,120,120
palpostbright=0,0,0
paladd=0,0,0
palmul=.8,.8,.8
ignorehitpause=1
[State ]
type=Statetypeset
trigger1=animelem=2
statetype=A
movetype=A
physics=N
[State ]
type=Statetypeset
trigger1=animelem=9
statetype=A
movetype=A
physics=A
[State ]
type=Veladd
trigger1=animelemtime(9)>=0
x=-.08
y=.6
[State ]
type=Explod
trigger1=animelemtime(2)>=0&&animelemtime(7)<=0
anim=10007
sprpriority=10
postype=p1
pos=50-random%60,-35-random%80
ownpal=1
ontop=1
vel=-1-random%2,1+random%2
accel=0,.3
random=30,30
trans=add
scale=.3,.3
[State ]
type=Explod
trigger1=animelemtime(2)>=0&&animelemtime(7)<=0
anim=10007
sprpriority=10
postype=p1
pos=50-random%60,-35-random%80
ownpal=1
ontop=1
vel=-1-random%2,1+random%2
accel=0,.3
random=30,30
trans=add
scale=.3,.3
[State ]
type=HitDef
trigger1=!Time
attr=S,SA
damage=160,24
animtype=Hard
guardflag=MA
hitflag=MAF
priority=7,Hit
pausetime=0,0
sparkno=s20050
guard.sparkno=s21000
sparkxy=-25,-70
hitsound=s10000,18
guardsound=s1,6
ground.type=High
ground.slidetime=20
ground.hittime=21
ground.velocity=-4,-18
air.type=High
air.animtype=diagup
air.velocity=-4,-18
air.hittime=31
fall=1
p2stateno=2150
envshake.time=30
envshake.ampl=-14
envshake.freq=92
envshake.phase=92
[State ]
type=PlaySnd
trigger1=movehit
value=10000,11
volume=-200
persistent=0
[State ]
type=Pause
trigger1=Movehit
time=15
persistent=0
[State ]
type=BGPalFX
trigger1=movehit
time=20
add=150,0,0
mul=150,0,0
invertall=0
color=0
persistent=0
[State ]
type=AllPalFX
trigger1=movehit
time=3
add=255,0,0
mul=255,0,0
invertall=0
color=0
persistent=0
[Statedef 2105]
type=S
movetype=A
physics=S
velset=0,0
anim=10055
ctrl=0
sprpriority=-10
[State ]
type=Bindtoroot
trigger1=1
pos=-10,-35
[State ]
type=Afterimage
trigger1=animelem=9
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=-1
paladd=25,10,10
palmul=.75,.65,.65
length=3
TimeGap=1
FrameGap=1
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
anim=10056
sprpriority=-5
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
trigger2=root,anim=2110&&root,animelem=11

[Statedef 2150]
type=A
movetype=H
physics=N
velset=0,0
[State ]
type=ChangeAnim2
Trigger1=!Time
value=2150
[State ]
type=Velset
trigger1=!Time
x=-6
y=-15
[State ]
type=VelAdd
trigger1=animelemtime(3)<3
y=-.4
[State ]
type=VelAdd
trigger1=animelemtime(4)>0
y=.8
[State ]
type=SelfState
triggerall=time>20
trigger1=Vel Y>0
trigger1=Pos Y>=0
value=5100

[Statedef 2200]
type=S
movetype=A
physics=S
ctrl=0
anim=800
poweradd=-1000
sprpriority=2
[State ]
type=HitDef
trigger1=!Time
attr=S,ST
hitflag=MA
guardflag=MA
priority=7,Miss
hitsound=-1
sparkno=-1
p2facing=1
p1stateno=2210
p2stateno=820
guard.dist=0
id=2200
[State ]
type=ChangeState
Trigger1=!AnimTime
value=0
ctrl=1
[Statedef 2210]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
anim=2200
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
channel=0
volume=255
[State ]
type=TargetBind
trigger1=!time
pos=20,0
[State ]
type=SuperPause
trigger1=animelem=2
anim=-1
movetime=30
time=30
darken=0
[State ]
type=Envshake
trigger1=animelem=2
time=20
ampl=-5
freq=95
phase=95
[State ]
type=PlaySnd
trigger1=animelem=2
value=30000,0
volume=255
[State ]
type=PlaySnd
trigger1=animelem=2
value=30000,1
volume=255
[State ]
type=PlaySnd
trigger1=animelem=2
value=30000,2
volume=255
[State ]
type=AssertSpecial
trigger1=animelemtime(2)>=0&&animelemtime(3)<=0
flag=NoFG
flag2=NOBG
ignorehitpause=1
[State ]
type=Explod
trigger1=animelem=2
anim=30000
sprpriority=100
postype=p1
pos=27,-80
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=animelem=2
anim=30001
sprpriority=-5000
postype=back
pos=0,0
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=animelem=2
anim=30002
sprpriority=50
postype=back
pos=0,0
bindtime=-1
supermove=1
ownpal=1
ontop=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=PlaySnd
trigger1=animelem=3
value=200,0+random%2
volume=255
[State ]
type=PlaySnd
trigger1=animelem=8
trigger2=animelem=62
trigger3=animelem=84
value=220,0+random%2
volume=255
[State ]
type=PlaySnd
trigger1=animelem=17
trigger2=animelem=49
trigger3=animelem=93
value=210,0+random%2
volume=255
[State ]
type=PlaySnd
trigger1=animelem=30
trigger2=animelem=73
trigger3=animelem=106
value=240,0+random%2
volume=255
[State ]
type=PlaySnd
trigger1=animelem=39
value=2200,0
volume=255
[State ]
type=PlaySnd
trigger1=animelem=4
trigger2=animelem=11
trigger3=animelem=19
value=1,1
volume=255
[State ]
type=PlaySnd
trigger1=animelem=32
value=1,3
volume=255
[State ]
type=PlaySnd
trigger1=animelem=42
value=1,2
volume=255
[State ]
type=PlaySnd
trigger1=animelem=115
value=10000,6
volume=100
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=animelem=121
value=10000,5
volume=-100
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=animelem=121
value=240,1
volume=255
[State ]
type=PlaySnd
trigger1=animelem=51
trigger2=animelem=65
trigger3=animelem=75
trigger4=animelem=87
trigger5=animelem=95
trigger6=animelem=108
trigger7=animelem=121
value=1,4
volume=255
[State ]
type=PlaySnd
trigger1=animelem=121
value=1,8
volume=255
[State ]
type=Explod
trigger1=animelem=4
anim=20000
sprpriority=50
postype=p2
pos=-10,-80
bindtime=-1
supermove=1
ownpal=1
trans=add
ontop=1
[State ]
type=Explod
trigger1=animelem=11
trigger2=animelem=65
trigger3=animelem=87
anim=20000
sprpriority=50
postype=p2
pos=-16,-60
bindtime=-1
supermove=1
ownpal=1
trans=add
ontop=1
[State ]
type=Explod
trigger1=animelem=19
trigger2=animelem=51
trigger3=animelem=95
anim=20000
sprpriority=50
postype=p2
pos=-20,-50
bindtime=-1
supermove=1
ownpal=1
trans=add
ontop=1
[State ]
type=Explod
trigger1=animelem=33
trigger2=animelem=76
trigger3=animelem=109
anim=20000
sprpriority=50
postype=p2
pos=-20,-40
bindtime=-1
supermove=1
ownpal=1
trans=add
ontop=1
[State ]
type=Explod
trigger1=animelem=42
anim=20000
sprpriority=50
postype=p2
pos=-5,-30
bindtime=-1
supermove=1
ownpal=1
trans=add
ontop=1
[State ]
type=Explod
trigger1=animelem=121
anim=20050
sprpriority=50
postype=p2
pos=-5,-65
bindtime=1
supermove=1
ownpal=1
trans=add
ontop=1
pausemovetime=2147483647
[State ]
type=EnvShake
trigger1=animelem=4
trigger2=animelem=11
trigger3=animelem=19
trigger4=animelem=33
trigger5=animelem=42
trigger6=animelem=51
trigger7=animelem=65
trigger8=animelem=76
trigger9=animelem=87
trigger10=animelem=95
trigger11=animelem=109
trigger12=animelem=121
time=15
freq=90
ampl=10
[State ]
type=TargetLifeAdd
trigger1=animelem=4
trigger2=animelem=11
trigger3=animelem=19
trigger4=animelem=33
trigger5=animelem=42
trigger6=animelem=51
trigger7=animelem=65
trigger8=animelem=76
trigger9=animelem=87
trigger10=animelem=95
trigger11=animelem=109
value=-18
kill=0
[State ]
type=TargetLifeAdd
trigger1=animelem=121
value=-50
kill=1
[State ]
type=HitAdd
trigger1=animelem=4
trigger2=animelem=11
trigger3=animelem=19
trigger4=animelem=33
trigger5=animelem=42
trigger6=animelem=51
trigger7=animelem=65
trigger8=animelem=76
trigger9=animelem=87
trigger10=animelem=95
trigger11=animelem=109
trigger12=animelem=121
value=1
[State ]
type=AllPalFX
trigger1=animelem=51
trigger2=animelem=65
trigger3=animelem=76
trigger4=animelem=87
trigger5=animelem=95
trigger6=animelem=109
time=2
add=255,255,255
mul=255,255,255
invertall=0
color=0
[State ]
type=AllPalFX
trigger1=animelem=121
time=2
add=255,0,0
mul=255,0,0
invertall=0
color=0
[State ]
type=BGPalFX
trigger1=animelem=121
time=20
add=155,0,0
mul=155,0,0
invertall=0
color=0
[State ]
type=TargetState

trigger1=animelem=4
trigger2=animelem=19
trigger3=animelem=42
trigger4=animelem=65
trigger5=animelem=87
trigger6=animelem=109
value=2250
[State ]
type=TargetState

trigger1=animelem=11
trigger2=animelem=33
trigger3=animelem=51
trigger4=animelem=76
trigger5=animelem=95
value=2251
[State ]
type=TargetState

trigger1=animelem=121
value=2252
[State ]
type=TargetVeladd
trigger1=animelemtime(4)>=0&&animelemtime(7)<=0
trigger2=animelemtime(11)>=0&&animelemtime(13)<=0
x=-1.17
ID=2200
[State ]
type=velset
trigger1=animelem=121
x=8
[State ]
type=Explod
trigger1=animelem=115
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
trigger1=animelem=120
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
type=Pause
trigger1=animelem=121
time=20
[State ]
type=ChangeState
Trigger1=!AnimTime
value=0
ctrl=1
[Statedef 2250]
type=A
movetype=H
physics=S
velset=0,0
[State ]
type=Destroyself
trigger1=Ishelper
[State ]
type=PosSet
trigger1=!Time
y=0
[State ]
type=ChangeAnim2
trigger1=!Time
value=2052
[State ]
type=Nothitby
trigger1=1
value=SCA
[State ]
type=SelfState
trigger1=time>=500
value=0
ctrl=1
[Statedef 2251]
type=A
movetype=H
physics=S
velset=0,0
[State ]
type=Destroyself
trigger1=Ishelper
[State ]
type=PosSet
trigger1=!Time
y=0
[State ]
type=ChangeAnim2
trigger1=!Time
value=2053
[State ]
type=Nothitby
trigger1=1
value=SCA
[State ]
type=SelfState
trigger1=time>=500
value=0
ctrl=1
[Statedef 2252]
type=A
movetype=H
physics=N
velset=0,0
[State ]
type=Turn
Trigger1=frontedgedist<=0
[State ]
type=Velset
trigger1=time=1
x=-20
[State ]
type=Nothitby
trigger1=1
value=SCA
[State ]
type=ScreenBound
trigger1=1
movecamera=1,0
[State ]
type=ChangeAnim2
Trigger1=!Time
value=5030
[State ]
type=Changestate
trigger1=backedgedist<=0
trigger2=frontedgedist<=0
value=2253
[Statedef 2253]
type=A
movetype=H
physics=N
velset=2.2,-6.2
[State ]
type=EnvShake
trigger1=!Time
time=15
freq=110
ampl=10
[State ]
type=ChangeAnim
Trigger1=!Time
value=5050
[State ]
type=VelAdd
Trigger1=time>3
y=.5
x=.05
[State ]
type=Nothitby
trigger1=1
value=SCA
[State ]
type=SelfState
trigger1=Vel Y>0
trigger1=Pos Y>=0
value=5100

[Statedef 2300]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
anim=2300
sprpriority=2
[State ]
type=SuperPause
trigger1=!time
anim=-1
poweradd=-1000
movetime=30
time=30
darken=0
[State ]
type=Envshake
trigger1=!Time
time=20
ampl=-5
freq=95
phase=95
[State ]
type=PlaySnd
trigger1=!Time
value=30000,0
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=30000,1
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=30000,2
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=2300,0
channel=0
volume=255
[State ]
type=NotHitBy
trigger1=time<=36
value=SCA
[State ]
type=AssertSpecial
trigger1=Time<=30
flag=NoFG
flag2=NOBG
ignorehitpause=1
[State ]
type=Explod
trigger1=!Time
anim=30000
sprpriority=100
postype=p1
pos=35,-50
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30001
sprpriority=-5000
postype=back
pos=0,0
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30002
sprpriority=50
postype=back
pos=0,0
bindtime=-1
supermove=1
ownpal=1
ontop=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Velset
trigger1=animelem=5
x=4
[State ]
type=HitDef
trigger1=!Time
attr=S,SA
damage=20,4
animtype=hard
ground.type=high
guardflag=MA
hitflag=MAF
priority=3,Hit
pausetime=0,0
guard.pausetime=5,8
sparkno=s20000
guard.sparkno=s21000
sparkxy=-35,-60
hitsound=s1,4
guardsound=s1,6
ground.slidetime=17
ground.hittime=17
guard.velocity=0
ground.velocity=0,0
air.velocity=0,0
airguard.velocity=0,0
fall=1
fall.recovertime=40
p1stateno=2310
p2stateno=2350
kill=0
guard.kill=0
envshake.time=8
envshake.ampl=7
envshake.freq=100
[State ]
type=ChangeState
trigger1=!Animtime
value=0
ctrl=1

[Statedef 2310]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
anim=2301
sprpriority=3
[State ]
type=TargetBind
trigger1=!time
pos=40,0
[State ]
type=Targetstate
trigger1=animelem=2
value=2351
[State ]
type=TargetBind
trigger1=animelem=2
pos=-50,-145
[State ]
type=TargetBind
trigger1=animelem=3
pos=-50,-140
[State ]
type=BGpalfx
trigger1=Time=35
add=0,0,0
sinadd=-150,-150,-150,80
time=40
invertall=0
[State ]
type=BGpalfx
trigger1=Time>=60
add=-150,-150,-150
time=1
invertall=0
[State ]
type=PlaySnd
trigger1=Time=50
value=10000,19
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=Time=60
value=10000,20
volume=255
freqmul=1.3
[State ]
type=PlaySnd
trigger1=Time>=60&&Time<=290&&!(Time%7)
value=10000,21
volume=255
freqmul=1.1+((random%2)*.4)
[State ]
type=PlaySnd
trigger1=Time=300
value=10000,22
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=Time=300
value=10000,23
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=Time=300
value=10000,24
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=Explod
trigger1=Time=61
anim=10066
sprpriority=10
postype=p1
pos=0,0
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.5,.5
removetime=245
[State ]
type=Explod
trigger1=Time=60
anim=10058
sprpriority=500
postype=p1
pos=-4,-30
bindtime=1
ownpal=1
trans=add
scale=.4,.4
removetime=245
[State ]
type=Explod
trigger1=Time=60
anim=10058
sprpriority=500
postype=p1
pos=3,-30
facing=-1
bindtime=1
ownpal=1
trans=add
scale=.4,.4
removetime=245
[State ]
type=Explod
trigger1=Time=60
anim=10059
sprpriority=300
postype=p1
pos=-4,-30
bindtime=1
ownpal=1
trans=sub
scale=.45,.45
removetime=245
[State ]
type=Explod
trigger1=Time=60
anim=10059
sprpriority=300
postype=p1
pos=3,-30
facing=-1
bindtime=1
ownpal=1
trans=sub
scale=.45,.45
removetime=245
[State ]
type=Explod
trigger1=Time>=60&&Time<=290
anim=10060+random%2
sprpriority=300+random%500
postype=p1
pos=90-random%180,20-random%40
ownpal=1
facing=-1+(random%2)*2
scale=.1,.1
[State ]
type=Explod
trigger1=Time>=60&&Time<=290
anim=10007
sprpriority=2147483647
postype=p1
pos=-60+random%120,25-random%30
vel=-3+random%6,-3+(random%3)
facing=-1
scale=.25,.25
ownpal=1
trans=add
[State ]
type=Explod
trigger1=Time>=60&&Time<=290
anim=10007
sprpriority=2147483647
postype=p1
pos=-60+random%120,25-random%30
vel=-3+random%6,-3+(random%3)
facing=-1
scale=.25,.25
ownpal=1
trans=add
[State ]
type=Explod
trigger1=Time>=60&&Time<=290&&!(Time%7)
trigger2=Time=300
anim=10063
sprpriority=-2147483647
postype=back
pos=0,0
ownpal=1
[State ]
type=Helper
trigger1=Time>=60&&Time<=290&&!(Time%9)
name="weis"
pos=12+random%4,-120
postype=p1
stateno=2320
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.25
size.yscale=.25
[State ]
type=Helper
trigger1=Time>=100&&Time<=290&&!(Time%6)
name="weis"
pos=12+random%4,-120
postype=p1
stateno=2320
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.25
size.yscale=.25
[State ]
type=Helper
trigger1=Time>=130&&Time<=290&&!(Time%2)
name="weis"
pos=12+random%4,-120
postype=p1
stateno=2320
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.25
size.yscale=.25
[State ]
type=Explod
trigger1=Time>=60&&Time<=290
anim=10003
sprpriority=2147483647
postype=p1
pos=15,-120
random=30,30
vel=-12+(random%24),-6+(random%24)
ownpal=1
scale=.3,.3
[State ]
type=Explod
trigger1=Time>=60&&Time<=290
anim=10003
sprpriority=2147483647
postype=p1
pos=15,-120
random=30,30
vel=-8+(random%16),-8+(random%16)
ownpal=1
scale=.3,.3
[State ]
type=Explod
trigger1=Time>=60&&Time<=290
anim=10003
sprpriority=2147483647
postype=p1
pos=15,-120
random=30,30
vel=-4+(random%8),-4+(random%8)
ownpal=1
scale=.3,.3
[State ]
type=Explod
trigger1=Time=60
anim=10065
sprpriority=2147483647
postype=p1
pos=15,-120
bindtime=1
ownpal=1
ontop=1
trans=add
removetime=240
[State ]
type=Explod
trigger1=Time=70
anim=10065
sprpriority=2147483647
postype=p1
pos=15,-120
bindtime=1
ownpal=1
ontop=1
trans=add
removetime=230
[State ]
type=Explod
trigger1=Time=80
anim=10065
sprpriority=2147483647
postype=p1
pos=15,-120
bindtime=1
ownpal=1
ontop=1
trans=add
removetime=220
[State ]
type=Explod
trigger1=Time=300
anim=10064
sprpriority=2147483647
postype=p1
pos=15,20
bindtime=1
ownpal=1
ontop=1
trans=add
scale=.5,.5
[State ]
type=EnvShake
trigger1=Time>=60&&Time<=290&&!(Time%4)
time=4
freq=180
ampl=-5
[State ]
type=EnvShake
trigger1=Time=300
time=30
freq=180
ampl=-20
[State ]
type=Targetlifeadd
trigger1=Time>=60&&!(Time%2)
value=-1
kill=0
[State ]
type=Targetlifeadd
trigger1=Time=300
value=-80
kill=1
[State ]
type=Targetstate
trigger1=Time=300
value=2352
[State ]
type=Changestate
trigger1=Time>=301
value=2311
[Statedef 2311]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
anim=2302
sprpriority=3
[State ]
type=BGpalfx
trigger1=!Time
add=-100,-100,-100
sinadd=100,100,100,150
time=300
invertall=0
[State ]
type=BGpalfx
trigger1=Time=45
add=0,0,0
time=1
invertall=0
[State ]
type=Changestate
trigger1=!Animtime
value=0
ctrl=1

[Statedef 2320]
type=S
movetype=A
physics=S
velset=0,0
anim=10062
ctrl=0
sprpriority=2147483647
[State ]
type=Turn
trigger1=!Time&&!(random%2)
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=AngleDraw
trigger1=1
value=-360+random%720
[State ]
type=Trans
trigger1=1
trans=add
[State ]
type=Destroyself
trigger1=!Animtime

[Statedef 2350]
type=A
movetype=H
physics=S
velset=0,0
[State ]
type=Destroyself
trigger1=Ishelper
[State ]
type=ChangeAnim2
trigger1=!Time
value=2350
[State ]
type=Nothitby
trigger1=1
value=SCA
[State ]
type=SelfState
trigger1=time>=500
value=0
ctrl=1
[Statedef 2351]
type=A
movetype=H
physics=S
velset=0,0
sprpriority=10
[State ]
type=Destroyself
trigger1=Ishelper
[State ]
type=ChangeAnim2
trigger1=!Time
value=2351
[State ]
type=Nothitby
trigger1=1
value=SCA
[State ]
type=AngleDraw
trigger1=1
value=90
[State ]
type=ScreenBound
trigger1=!Ishelper
value=0
movecamera=0,0
[State ]
type=PalFX
trigger1=Time=40
time=240
add=13,61,98
mul=256,256,256
sinadd=-112,-122,-112,10
[State ]
type=SelfState
trigger1=time>=500
value=0
ctrl=1
[Statedef 2352]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=1
[State ]
type=Nothitby
trigger1=1
value=SCA
[State ]
type=Assertspecial
trigger1=time<=25
flag=invisible
[State ]
type=Assertspecial
trigger1=1
flag=noshadow
[State ]
type=Screenbound
trigger1=1
value=1
movecamera=1
[State ]
type=Changeanim
trigger1=!time
value=5050
[State ]
type=velset
trigger1=!time
x=-2
y=-60
[State ]
type=veladd
trigger1=1
y=1.4
[State ]
type=Envshake
trigger1=vel y>0&&pos y>=0
time=10
ampl=-5
freq=95
phase=95
[State ]
type=Selfstate
trigger1=vel y>0&&pos y>=0
value=5100

[Statedef 3000]
type=S
movetype=A
physics=N
velset=0,0
ctrl=0
anim=3000
sprpriority=2
[State ]
type=SuperPause
trigger1=!Time
anim=-1
poweradd=-2000
movetime=30
time=30
darken=0
[State ]
type=Envshake
trigger1=!Time
time=20
ampl=-5
freq=95
phase=95
[State ]
type=PlaySnd
trigger1=!Time
value=30001,0
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=30001,1
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=30001,2
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=3000,0
channel=0
volume=255
[State ]
type=NotHitBy
trigger1=time<=30
value=SCA
[State ]
type=Helper
trigger1=!Time
stateno=30000
name="cutin"
id=30000
pos=160,0
helpertype=normal
postype=back
ownpal=1
keyctrl=0
supermovetime=2147483647
pausemovetime=2147483647
[State ]
type=AssertSpecial
trigger1=Time<=30
flag=NoFG
flag2=NOBG
ignorehitpause=1
[State ]
type=Explod
trigger1=!Time
anim=30010
sprpriority=100
postype=p1
pos=-15,-100
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30011
sprpriority=-5000
postype=back
pos=0,0
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30012
sprpriority=50
postype=back
pos=0,0
bindtime=-1
supermove=1
ownpal=1
ontop=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Velset
trigger1=animelem=3
x=16
[State ]
type=HitDef
trigger1=!Time
attr=S,SA
damage=40,18
animtype=hard
ground.type=high
guardflag=MA
hitflag=MAF
priority=3,Hit
pausetime=0,0
guard.pausetime=5,12
sparkno=s20000
guard.sparkno=s21000
sparkxy=-5,-60
hitsound=s1,4
guardsound=s1,6
ground.slidetime=17
ground.hittime=17
guard.velocity=0
ground.velocity=0,0
air.velocity=0,0
airguard.velocity=0,0
ground.cornerpush.veloff=-8.5
air.cornerpush.veloff=-8.5
fall=1
fall.recovertime=40
p1stateno=3010
p2stateno=3053
kill=0
guard.kill=0
envshake.time=8
envshake.ampl=7
envshake.freq=100
[State ]
type=ChangeState
trigger1=time>=60
trigger2=moveguarded
value=2001
[Statedef 3010]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
anim=3010
sprpriority=2
[State ]
type=Velset
trigger1=animelem=2
x=17
[State ]
type=AllPalFX
trigger1=!Time
time=2
add=255,255,255
mul=255,255,255
invertall=0
color=0
[State ]
type=AfterImage
trigger1=!Ishelper&&animelem=2
time=20
trans=add
timegap=1
framegap=1
length=20
palbright=1,1,1
palcontrast=120,120,120
palpostbright=0,0,0
paladd=0,0,0
palmul=.8,.8,.8
[State ]
type=AssertSpecial
trigger1=animelemtime(2)<=0
flag=NoFG
flag2=NOBG
[State ]
type=Posset
trigger1=Time=1
x=ifelse(facing=1,(enemy,pos x+30),(enemy,pos x-30))
y=0
[State ]
type=PlaySnd
trigger1=!(Time%7)&&animelemtime(1)>=15&&animelemtime(2)<=0
value=1,7+random%2
volume=255
[State ]
type=PlaySnd
trigger1=!(Time%13)&&animelemtime(1)>=15&&animelemtime(2)<=0
value=10000,17+random%2
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=animelem=2
value=10000,25
volume=255
[State ]
type=Explod
trigger1=!(Time%5)&&animelemtime(1)>=15&&animelemtime(2)<=0
anim=20050
pos=0,-50
sprpriority=2
random=90,90
postype=p2
ownpal=1
bindtime=1
ontop=1
facing=-1+(random%2)*2
trans=add
[State ]
type=Explod
trigger1=!Ishelper&&animelemtime(1)>=15&&animelemtime(2)<=0
anim=10003
sprpriority=2147483647
postype=p2
pos=0,-50
random=60,60
vel=-3+(random%7),-3+(random%7)
ownpal=1
scale=.3,.3
[State ]
type=Explod
trigger1=!Ishelper&&animelemtime(1)>=15&&animelemtime(2)<=0
anim=10003
sprpriority=2147483647
postype=p2
pos=0,-50
random=60,60
vel=-2+(random%4),-2+(random%4)
ownpal=1
scale=.3,.3
[State ]
type=Explod
trigger1=!Ishelper&&animelemtime(1)>=15&&animelemtime(2)<=0
anim=10003
sprpriority=2147483647
postype=p2
pos=0,-50
random=60,60
vel=-1+(random%2),-2+(random%2)
ownpal=1
scale=.3,.3
[State ]
type=Targetstate
trigger1=!(Time%5)&&animelemtime(1)>=15&&animelemtime(2)<=0
value=3050+random%2
[State ]
type=Targetstate
trigger1=animelem=2
value=3052
[State ]
type=EnvShake
trigger1=!(Time%5)&&animelemtime(1)>=15&&animelemtime(2)<=0
ampl=-10
freq=140
time=5
[State ]
type=targetlifeadd
trigger1=!(Time%5)&&animelemtime(1)>=15&&animelemtime(2)<=0
value=-5
kill=0
[State ]
type=targetlifeadd
trigger1=animelem=2
value=-60
kill=1
[State ]
type=Hitadd
trigger1=!(Time%5)&&animelemtime(1)>=15&&animelemtime(2)<=0
value=1
[State ]
type=Allpalfx
trigger1=!(Time%9)&&animelemtime(1)>=15&&animelemtime(2)<=0
add=255,255,255
mul=255,255,255
time=1
invertall=0
color=0
[State ]
type=Changestate
trigger1=!Animtime
value=0
ctrl=1
[Statedef 3050]
type=A
movetype=H
physics=S
velset=0,0
[State ]
type=Destroyself
trigger1=Ishelper
[State ]
type=VelSet
trigger1=!Time
x=-3+random%6
y=-.8
[State ]
type=ChangeAnim2
trigger1=!Time
value=2052
[State ]
type=Nothitby
trigger1=1
value=SCA
[State ]
type=SelfState
trigger1=time>=500
value=0
ctrl=1
[Statedef 3051]
type=A
movetype=H
physics=S
velset=0,0
[State ]
type=VelSet
trigger1=!Time
x=-3+random%6
y=-.8
[State ]
type=Destroyself
trigger1=Ishelper
[State ]
type=ChangeAnim2
trigger1=!Time
value=2053
[State ]
type=Nothitby
trigger1=1
value=SCA
[State ]
type=SelfState
trigger1=time>=500
value=0
ctrl=1
[Statedef 3052]
type=A
movetype=H
physics=N
velset=0,0
[State ]
type=ChangeAnim2
Trigger1=!Time
value=2150
[State ]
type=Velset
trigger1=!Time
x=4
y=-4
[State ]
type=VelAdd
trigger1=animelemtime(3)<3
y=-.2
[State ]
type=VelAdd
trigger1=animelemtime(4)>0
y=.8
[State ]
type=SelfState
triggerall=time>20
trigger1=Vel Y>0
trigger1=Pos Y>=0
value=5100
[Statedef 3053]
type=A
movetype=H
physics=S
velset=0,0
[State ]
type=Destroyself
trigger1=Ishelper
[State ]
type=VelSet
trigger1=!Time
x=0
[State ]
type=ChangeAnim2
trigger1=!Time
value=2052
[State ]
type=Nothitby
trigger1=1
value=SCA
[State ]
type=SelfState
trigger1=time>=500
value=0
ctrl=1

[Statedef 3100]
type=S
movetype=A
physics=S
velset=0,0
anim=3100
ctrl=0
sprpriority=2
[State ]
type=SuperPause
trigger1=!Time
anim=-1
poweradd=-2000
movetime=30
time=30
darken=0
[State ]
type=Envshake
trigger1=!Time
time=20
ampl=-5
freq=95
phase=95
[State ]
type=PlaySnd
trigger1=!Time
value=30001,0
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=30001,1
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=30001,2
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=3100,0
channel=0
volume=255
[State ]
type=NotHitBy
trigger1=time<=30
value=SCA
[State ]
type=Helper
trigger1=!Time
stateno=30000
name="cutin"
id=30000
pos=160,0
helpertype=normal
postype=back
ownpal=1
keyctrl=0
supermovetime=2147483647
pausemovetime=2147483647
[State ]
type=AssertSpecial
trigger1=Time<=30
flag=NoFG
flag2=NOBG
ignorehitpause=1
[State ]
type=Explod
trigger1=!Time
anim=30010
sprpriority=100
postype=p1
pos=3,-75
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30011
sprpriority=-5000
postype=back
pos=0,0
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30012
sprpriority=50
postype=back
pos=0,0
bindtime=-1
supermove=1
ownpal=1
ontop=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Playsnd
trigger1=Time=30
value=10000,4
volume=-700
loop=1
channel=2
[State ]
type=PalFx
trigger1=Time>=30&&!(Time%30)
add=-120,-120,-120
sinadd=120,120,120,60
time=30
[State ]
type=BGpalfx
trigger1=Time>=30
add=-150,-150,-150
time=1
invertall=0
[State ]
type=Explod
trigger1=animelem=2
anim=10004
sprpriority=3
postype=p1
pos=0,0
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.5,.5
removetime=120
removeongethit=1
[State ]
type=Explod
trigger1=animelem=2
anim=10005
sprpriority=-10
postype=p1
pos=-4,0
bindtime=1
ownpal=1
trans=add
scale=.5,.5
removetime=120
removeongethit=1
[State ]
type=Explod
trigger1=Time>=30
anim=10068+random%2
sprpriority=300+random%500
postype=p1
pos=50-random%100,5-random%20
ownpal=1
facing=-1+(random%2)*2
scale=.1,.1
[State ]
type=Explod
trigger1=Time>=30
anim=10068+random%2
sprpriority=300+random%500
postype=p1
pos=30-random%60,5-random%20
ownpal=1
facing=-1+(random%2)*2
scale=.1,.1
[State ]
type=Explod
trigger1=Time>=30
anim=10061
sprpriority=300+random%500
postype=p1
pos=30-random%60,5-random%20
vel=-2+random%4,-2+(random%2)
accel=0,-.1
ownpal=1
facing=-1+(random%2)*2
scale=.1,.1
[State ]
type=EnvShake
trigger1=!(Time%3)&&Time>=30
time=5
ampl=-5
freq=40
phase=95
[State ]
type=ReversalDef
trigger1=!Ishelper
reversal.attr=SCA,AA,AT,AP
priority=2147483647
pausetime=2,0
sparkno=-1
hitsound=s10000,27
p1stateno=3110
p2stateno=2050
[State ]
type=ChangeState
trigger1=Time>=150
value=3101
[Statedef 3101]
type=S
movetype=A
physics=S
velset=0,0
anim=3101
ctrl=0
sprpriority=2
[State ]
type=palfx
trigger1=!Time
add=0,0,0
time=1
invertall=0
[State ]
type=BGpalfx
trigger1=animelemtime(5)<0
add=-150,-150,-150
time=1
invertall=0
[State ]
type=Allpalfx
trigger1=animelem=5
add=255,255,255
mul=255,255,255
time=1
invertall=0
color=0
[State ]
type=Stopsnd
trigger1=animelem=5
channel=2
[State ]
type=PlaySnd
trigger1=animelem=5
value=0,4
volume=255
[State ]
type=PlaySnd
trigger1=animelem=5
value=10000,5
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=Changestate
trigger1=!Animtime
value=0
ctrl=1

[Statedef 3110]
type=S
movetype=A
physics=S
velset=0,0
anim=3110
ctrl=0
sprpriority=2
[State ]
type=Removeexplod
trigger1=!Time
[State ]
type=Allpalfx
trigger1=!Time
add=255,255,255
mul=255,255,255
time=1
invertall=0
color=0
[State ]
type=Posset
trigger1=Time=1
x=ifelse(facing=1,(enemy,pos x-90),(enemy,pos x+90))
y=0
[State ]
type=palfx
trigger1=!Time
add=0,0,0
time=1
invertall=0
[State ]
type=BGpalfx
triggerall=anim=3110
trigger1=animelemtime(5)<0
add=-150,-150,-150
time=1
invertall=0
[State ]
type=Allpalfx
triggerall=anim=3110
trigger1=animelem=5
add=255,255,255
mul=255,255,255
time=1
invertall=0
color=0
[State ]
type=Stopsnd
triggerall=anim=3110
trigger1=animelem=5
channel=2
[State ]
type=PlaySnd
triggerall=anim=3110
trigger1=animelem=5
value=0,4
volume=255
[State ]
type=PlaySnd
triggerall=anim=3110
trigger1=animelem=5
value=10000,5
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=BGpalfx
triggerall=anim=3110
trigger1=animelem=9
add=0,0,0
sinadd=-150,-150,-150,80
time=40
invertall=0
[State ]
type=BGpalfx
triggerall=anim=3110
trigger1=Time>=60
add=-150,-150,-150
time=1
invertall=0
[State ]
type=EnvShake
trigger1=!(Time%3)&&Time>=131&&Time<=250
time=5
ampl=-5
freq=150
[State ]
type=PlaySnd
trigger1=!(Time%7)&&Time>=55&&Time<=130
value=10000,21
volume=255
freqmul=1.1+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=Time=55
value=10000,28
volume=255
freqmul=1.1+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=!(Time%5)&&Time>=131&&Time<=235
value=10000,21
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=Time=131||Time=136
value=10000,28
volume=255
freqmul=1.3+((random%2)*.1)
[State ]
type=Explod
triggerall=anim=3110
trigger1=animelem=10
anim=10070
id=10070
sprpriority=3
postype=p1
pos=0,0
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.5,.5
removetime=-1
[State ]
type=Explod
triggerall=anim=3110
trigger1=animelem=10
anim=10070
id=10070
sprpriority=3
postype=p1
pos=0,0
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.5,.5
removetime=-1
[State ]
type=VarRandom
trigger1=!Ishelper
v=0
range=0,360
[State ]
type=PalFx
trigger1=Time>=130&&Time<=350&&!(Time%30)
add=120,120,120
sinadd=-120,-120,-120,60
time=30
[State ]
type=Explod
trigger1=Time>=131&&Time<=230
anim=10007
sprpriority=2147483647
postype=p1
pos=-60+random%120,5-random%10
vel=0,-3-(random%2)
facing=-1
scale=.1,.1
ownpal=1
trans=add
accel=0,.15
[State ]
type=Explod
trigger1=Time>=131&&Time<=230
anim=10007
sprpriority=2147483647
postype=p1
pos=-60+random%120,5-random%10
vel=0,-3-(random%2)
facing=-1
scale=.1,.1
ownpal=1
trans=add
accel=0,.15
[State ]
type=Explod
trigger1=Time>=131&&Time<=230
anim=10007
pos=Ceil(100*cos(pi*var(0)/180)),Ceil(100*sin(pi*var(0)/180))-50
vel=-7*cos(pi*var(0)/180)+vel X,-7*sin(pi*var(0)/180)+vel Y
ownpal=1
scale=.3,.3
sprpriority=50
[State ]
type=Explod
trigger1=Time>=131&&Time<=230
anim=10007
pos=Ceil(100*cos(pi*var(0)/180)),Ceil(100*sin(pi*var(0)/180))-50
vel=-7*cos(pi*var(0)/180)+vel X,-7*sin(pi*var(0)/180)+vel Y
ownpal=1
scale=.2,.2
sprpriority=50
[State ]
type=Explod
trigger1=Time>=55&&Time<=250&&!(Time%3)
anim=10006
pos=-4,3
bindtime=1
sprpriority=-50
ownpal=1
scale=.4,.1
trans=add
[State ]
type=Explod
trigger1=Time>=55&&Time<=250
anim=10071+random%3
sprpriority=2147483647
postype=p1
pos=-50+random%100,5-random%80
facing=-1+(random%2)*2
scale=.1,.1
ownpal=1
trans=add
[State ]
type=Explod
trigger1=Time>=131&&Time<=250
anim=10071+random%3
sprpriority=2147483647
postype=p1
pos=-60+random%120,5-random%100
facing=-1+(random%2)*2
scale=.1,.1
ownpal=1
trans=add
[State ]
type=Explod
trigger1=Time>=131&&Time<=250
anim=10071+random%3
sprpriority=2147483647
postype=p1
pos=-60+random%120,5-random%100
facing=-1+(random%2)*2
scale=.1,.1
ownpal=1
trans=add
[State ]
type=PlaySnd
trigger1=Time=230
value=3100,1
channel=0
volume=255
[State ]
type=Changeanim
trigger1=Time=240
value=3111
[State ]
type=velset
trigger1=Time=244
x=-4
[State ]
type=PlaySnd
trigger1=Time>=255&&animelemtime(7)<=100&&!(Time%8)
value=10000,18+(random%2)*11
volume=255
[State ]
type=PlaySnd
trigger1=Time>=255&&animelemtime(7)<=100&&!(Time%20)
value=10000,22+random%3
volume=255
freqmul=1.1+((random%2)*.1)
[State ]
type=Removeexplod
trigger1=anim=3111&&animelem=1
id=10070
[State ]
type=Targetstate
trigger1=Time=255
value=3150
[State ]
type=Targetlifeadd
trigger1=Time>=255&&animelemtime(7)<=100&&!(Time%2)
value=-2
kill=0
[State ]
type=Targetlifeadd
trigger1=anim=3111&&animelemtime(7)=100
value=-130
kill=1
[State ]
type=Helper
triggerall=anim=3111
trigger1=Time>=255&&animelemtime(7)<=100&&!(Time%5)
name="weis"
pos=10-random%20,0
postype=p2
stateno=3120
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.25
size.yscale=.25
[State ]
type=Explod
trigger1=Time>=255&&animelemtime(7)<=100&&random<=100
anim=10075+(random%2)*3
pos=0,0
postype=left
bindtime=-1
sprpriority=10

ontop=1
ownpal=1
facing=-1+(random%2)*2
scale=.5,.5
[State ]
type=Explod
trigger1=Time>=255&&animelemtime(7)<=100&&random=[500,600]
anim=10076+(random%2)*3
pos=0,0
postype=left
bindtime=-1
sprpriority=10

ontop=1
ownpal=1
facing=-1+(random%2)*2
scale=.5,.5
[State ]
type=Explod
trigger1=Time>=255&&animelemtime(7)<=100&&random=[800,900]
anim=10077+(random%2)*3
pos=0,0
postype=left
bindtime=-1
sprpriority=10

ontop=1
ownpal=1
facing=-1+(random%2)*2
scale=.5,.5
[State ]
type=Explod
trigger1=Time>=255&&animelemtime(7)<=100&&anim=3111&&!(Time%5)
anim=20000
pos=0,-50
sprpriority=2
random=90,90
postype=p2
ownpal=1
bindtime=1
ontop=1
scale=.5,.5
facing=-1+(random%2)*2
trans=add
[State ]
type=Explod
trigger1=Time>=255&&animelemtime(7)<=100&&anim=3111&&!(Time%5)
anim=10071+random%3
sprpriority=2147483647
postype=p2
pos=-60+random%120,5-random%100
facing=-1+(random%2)*2
scale=.3,.3
ownpal=1
[State ]
type=Explod
trigger1=Time>=255&&animelemtime(7)<=100&&anim=3111&&!(Time%5)
anim=10071+random%3
sprpriority=2147483647
postype=p2
pos=-60+random%120,5-random%100
facing=-1+(random%2)*2
scale=.3,.3
ownpal=1
[State ]
type=Explod
trigger1=Time=255
anim=10063
sprpriority=-2147483647
postype=back
pos=0,0
ownpal=1
trans=sub
removetime=15
[State ]
type=PlaySnd
triggerall=anim=3111
trigger1=animelemtime(7)=98
value=10000,26
volume=255
freqmul=1.1+((random%2)*.1)
[State ]
type=EnvShake
trigger1=!(Time%6)&&Time>=255&&animelemtime(7)<100&&anim=3111
time=3
ampl=-12
freq=140
[State ]
type=EnvShake
trigger1=anim=3111&&animelemtime(7)=100
time=50
ampl=-50
freq=160
[State ]
type=EnvShake
trigger1=anim=3111&&animelemtime(7)=150
time=20
ampl=-20
freq=160
[State ]
type=EnvShake
trigger1=anim=3111&&animelemtime(7)=170
time=20
ampl=-15
freq=160
[State ]
type=EnvShake
trigger1=anim=3111&&animelemtime(7)=190
time=20
ampl=-10
freq=160
[State ]
type=EnvShake
trigger1=anim=3111&&animelemtime(7)=210
time=20
ampl=-5
freq=160
[State ]
type=BGpalfx
triggerall=anim=3111
trigger1=animelemtime(7)<100
add=-150,-150,-150
time=1
invertall=0
[State ]
type=Allpalfx
trigger1=anim=3111&&animelemtime(7)=95
add=0,0,0
sinadd=255,255,255,120
time=60
invertall=0
[State ]
type=Explod
trigger1=anim=3111&&animelemtime(7)=100
anim=10067
sprpriority=2147483647
postype=p2
pos=0,0
bindtime=-1
supermove=0
ownpal=1
trans=add
ontop=1
[State ]
type=Targetstate
trigger1=anim=3111&&animelemtime(7)=110
value=3151
[State ]
type=Changestate
triggerall=anim=3111
trigger1=!Animtime
value=0
ctrl=1

[Statedef 3120]
type=S
movetype=A
physics=S
velset=0,0
anim=10074
ctrl=0
sprpriority=2147483647
[State ]
type=Turn
trigger1=!Time&&!(random%2)
[State ]
type=AssertSpecial
trigger1=1
flag=noshadow
[State ]
type=AngleDraw
trigger1=1
value=-45+random%90
[State ]
type=Trans
trigger1=1
trans=add
[State ]
type=Posset
trigger1=1
y=30
[State ]
type=Destroyself
trigger1=!Animtime

[Statedef 3150]
type=A
movetype=H
physics=N
velset=0,0
[State ]
type=ChangeAnim2
trigger1=!Time
value=3150
[State ]
type=ScreenBound
trigger1=1
value=0
movecamera=0,0
ignorehitpause=1
[State ]
type=velset
trigger1=1
x=0
y=0
[State ]
type=Posset
trigger1=1
x=0
y=0
[State ]
type=PalFX
trigger1=!Time
time=100
add=220,150,150
mul=256,256,256
sinadd=-60,-100,-100,10
[State ]
type=SelfState
trigger1=time>=500
value=5100
[Statedef 3151]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=1
[State ]
type=Nothitby
trigger1=1
value=SCA
[State ]
type=Assertspecial
trigger1=time<=100
flag=invisible
[State ]
type=Assertspecial
trigger1=1
flag=noshadow
[State ]
type=Screenbound
trigger1=1
value=1
movecamera=1
[State ]
type=Changeanim2
trigger1=!time
value=2050
[State ]
type=Changeanim
trigger1=Time=75
value=5050
[State ]
type=velset
trigger1=Time=75
y=-60
[State ]
type=veladd
trigger1=Time>=75
y=1.4
[State ]
type=Envshake
triggerall=Time>=76
trigger1=vel y>0&&pos y>=0
time=10
ampl=-5
freq=95
phase=95
[State ]
type=Selfstate
triggerall=Time>=76
trigger1=vel y>0&&pos y>=0
value=5100

[Statedef 6000]
type=S
movetype=A
physics=N
velset=0,0
anim=4000
ctrl=0
sprpriority=2
[State ]
type=SuperPause
trigger1=!Time
anim=-1
poweradd=-3000
movetime=30
time=30
darken=0
[State ]
type=Helper
trigger1=!Time
stateno=31000
name="cutin"
id=31000
pos=160,0
helpertype=normal
postype=back
ownpal=1
keyctrl=0
supermovetime=2147483647
pausemovetime=2147483647
[State ]
type=Envshake
trigger1=!Time
time=20
ampl=-5
freq=95
phase=95
[State ]
type=PlaySnd
trigger1=!Time
value=30002,0
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=30002,1
volume=255
[State ]
type=PlaySnd
trigger1=!Time
value=30002,2
volume=255
[State ]
type=PlaySnd
trigger1=Time=30
value=4000,0
channel=0
volume=255
[State ]
type=AssertSpecial
trigger1=Time<=40
flag=NoFG
flag2=NOBG
ignorehitpause=1
[State ]
type=NotHitBy
trigger1=!Time
value=SCA
Time=30
[State ]
type=Explod
trigger1=!Time
anim=30020
sprpriority=100
postype=p1
pos=0,-115
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30021
sprpriority=200
postype=p1
pos=0,-115
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30022
sprpriority=-5000
postype=back
pos=0,0
bindtime=1
ownpal=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=Explod
trigger1=!Time
anim=30023
sprpriority=50
postype=back
pos=0,0
bindtime=-1
supermove=1
ownpal=1
ontop=1
scale=.5,.5
trans=add
pausemovetime=2147483647
supermovetime=2147483647
[State ]
type=BGpalfx
trigger1=Time>=40
add=-150,-150,-150
time=1
invertall=0
[State ]
type=Helper
trigger1=Time=40
name="Attack"
id=6000
pos=0,-115
postype=p1
stateno=6020
helpertype=normal
keyctrl=0
ownpal=1
[State ]
type=PlaySnd
trigger1=Time>=40&&Time<=400&&!(Time%8)
value=10000,21
volume=255
freqmul=1.2+((random%2)*.1)
[State ]
type=PlaySnd
trigger1=Time=40
value=10000,20
volume=255
freqmul=.9
[State ]
type=PlaySnd
trigger1=Time=40
value=10000,28
volume=255
freqmul=.9
[State ]
type=PlaySnd
trigger1=Time=40
value=10000,30
volume=255
freqmul=.9
[State ]
type=EnvShake
trigger1=!(Time%5)&&Time>=280
time=5
ampl=-12
freq=150
[State ]
type=Explod
trigger1=animelem=2
anim=10082
id=10082
sprpriority=3
postype=p1
pos=0,0
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.5,.5
removetime=349
[State ]
type=Explod
trigger1=animelem=2
anim=10082
id=10082
sprpriority=3
postype=p1
pos=0,0
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.5,.5
removetime=349
[State ]
type=Explod
trigger1=Time=40||Time=43||Time=46
anim=10081
sprpriority=2147483647
postype=p1
pos=0,-115
bindtime=1
ownpal=1
ontop=1
trans=add
scale=.15,.15
removetime=60
[State ]
type=Explod
trigger1=Time=100||Time=103||Time=106
anim=10081
sprpriority=2147483647
postype=p1
pos=0,-115
bindtime=1
ownpal=1
ontop=1
trans=add
scale=.3,.3
removetime=80
[State ]
type=Explod
trigger1=Time=180||Time=183||Time=186
anim=10081
sprpriority=2147483647
postype=p1
pos=0,-115
bindtime=1
ownpal=1
ontop=1
trans=add
scale=.4,.4
removetime=130
[State ]
type=Explod
trigger1=Time=280||Time=283||Time=286
anim=10081
id=10081
sprpriority=2147483647
postype=p1
pos=0,-115
bindtime=1
ownpal=1
ontop=1
trans=add
scale=.5,.5
removetime=130
[State ]
type=VarRandom
trigger1=!Ishelper
v=0
range=0,360
[State ]
type=PalFx
trigger1=Time>=40&&Time<=400&&!(Time%30)
add=120,120,120
sinadd=-120,-120,-120,60
time=30
[State ]
type=Explod
trigger1=Time>=40
anim=10003
sprpriority=2147483647
postype=p1
pos=-60+random%120,5-random%30
vel=0,-6-(random%2)
facing=-1
scale=.1,.1
ownpal=1
trans=add
accel=0,.4
[State ]
type=Explod
trigger1=Time>=40
anim=10003
sprpriority=2147483647
postype=p1
pos=-60+random%120,5-random%30
vel=0,-6-(random%2)
facing=-1
scale=.1,.1
ownpal=1
trans=add
accel=0,.4
[State ]
type=Explod
trigger1=Time>=40&&Time<=350
anim=10003
sprpriority=2147483647
postype=p1
pos=-60+random%120,5-random%30
vel=0,-6-(random%2)
facing=-1
scale=.1,.1
ownpal=1
trans=add
accel=0,.4
[State ]
type=Explod
trigger1=Time>=40&&Time<=320
anim=10087
pos=Ceil(160*cos(pi*var(0)/180)),Ceil(160*sin(pi*var(0)/180))-115
vel=-12*cos(pi*var(0)/180)+vel X,-12*sin(pi*var(0)/180)+vel Y
ownpal=1
scale=.4,.4
sprpriority=50
[State ]
type=Explod
trigger1=Time>=40&&Time<=320
anim=10087
pos=Ceil(160*cos(pi*var(0)/180)),Ceil(160*sin(pi*var(0)/180))-115
vel=-12*cos(pi*var(0)/180)+vel X,-12*sin(pi*var(0)/180)+vel Y
ownpal=1
scale=.3,.3
sprpriority=50
[State ]
type=Explod
trigger1=Time>=40
anim=10084+random%3
sprpriority=2147483647
postype=p1
pos=-100+random%200,-30-random%120
facing=-1+(random%2)*2
scale=.2,.2
ownpal=1
[State ]
type=Explod
trigger1=Time=40
anim=10083
sprpriority=2147483647
postype=p1
pos=0,-115
bindtime=1
ownpal=1
ontop=1
trans=add
removetime=360
[State ]
type=Explod
trigger1=Time=50
anim=10083
sprpriority=2147483647
postype=p1
pos=0,-115
bindtime=1
ownpal=1
ontop=1
trans=add
removetime=350
[State ]
type=Explod
trigger1=Time=60
anim=10083
sprpriority=2147483647
postype=p1
pos=0,-115
bindtime=1
ownpal=1
ontop=1
trans=add
removetime=340
[State ]
type=Explod
trigger1=Time=40
anim=10083
sprpriority=2147483647
postype=p1
pos=0,-115
bindtime=1
ownpal=1
ontop=1
trans=add
removetime=360
[State ]
type=Explod
trigger1=Time=50
anim=10083
sprpriority=2147483647
postype=p1
pos=0,-115
bindtime=1
ownpal=1
ontop=1
trans=add
removetime=350
[State ]
type=Explod
trigger1=Time=60
anim=10083
sprpriority=2147483647
postype=p1
pos=0,-115
bindtime=1
ownpal=1
ontop=1
trans=add
removetime=340
[State ]
type=Explod
trigger1=Time<389&&!(Time%3)
anim=10002
pos=-4,3
bindtime=1
sprpriority=-50
ownpal=1
scale=.4,.1
trans=add
[State ]
type=Changestate
trigger1=Time>=389
value=6001
[Statedef 6001]
type=S
movetype=A
physics=N
velset=0,0
anim=4001
ctrl=0
sprpriority=2
[State ]
type=BGpalfx
trigger1=Time<70
add=-150,-150,-150
time=1
invertall=0
[State ]
type=BGpalfx
trigger1=Time=70
add=-100,-100,-100
sinadd=100,100,100,150
time=300
invertall=0
[State ]
type=BGpalfx
trigger1=Time=115
add=0,0,0
time=1
invertall=0
[State ]
type=PalFx
trigger1=Time<=70&&!(Time%30)
add=120,120,120
sinadd=-120,-120,-120,60
time=30
[State ]
type=EnvShake
trigger1=Time=20
time=20
ampl=-20
freq=120
[State ]
type=EnvShake
trigger1=Time=30||Time=35||Time=40||Time=45
time=10
ampl=-15
freq=160
[State ]
type=Modifyexplod
trigger1=Time>=8&&Time<=22
scale=.5-(32-time)*.05,.5-(32-time)*.05
id=10081
[State ]
type=PlaySnd
trigger1=Time=20
value=10000,22
volume=255
[State ]
type=PlaySnd
trigger1=Time=30||Time=35||Time=40||Time=45
value=10000,23
volume=255
[State ]
type=PlaySnd
trigger1=Time=30||Time=35||Time=40||Time=45
value=10000,29
volume=255
[State ]
type=Explod
trigger1=Time<70&&!(Time%3)
anim=10002
pos=-4,3
bindtime=1
sprpriority=-50
ownpal=1
scale=.4,.1
trans=add
[State ]
type=Explod
trigger1=!Time||Time=5||Time=10||Time=15||Time=20
anim=10065
sprpriority=2147483647
postype=p1
pos=0,-115
bindtime=1
ownpal=1
ontop=1
trans=add
[State ]
type=Explod
trigger1=!Time||Time=5||Time=10||Time=15||Time=20
anim=10065
sprpriority=2147483647
postype=p1
pos=0,-115
bindtime=1
ownpal=1
ontop=1
trans=add
[State ]
type=Explod
trigger1=Time=20
anim=10063
sprpriority=2147483647
postype=back
pos=0,0
ontop=1
ownpal=1
trans=add
removetime=3
[State ]
type=Explod
trigger1=Time=30||Time=35||Time=40||Time=45
anim=10063
sprpriority=-2147483647
postype=back
pos=0,0
ownpal=1
trans=add
removetime=2
[State ]
type=Helper
trigger1=Time=20
name="Attack"
id=6010
pos=0,-115
postype=p1
stateno=6021
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.3
size.yscale=.3
[State ]
type=Helper
trigger1=Time=20
name="Attack"
id=6011
pos=0,-115
postype=p1
stateno=6021
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.3
size.yscale=.3
[State ]
type=Helper
trigger1=Time=20
name="Attack"
id=6012
pos=0,-115
postype=p1
stateno=6021
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.3
size.yscale=.3
[State ]
type=Helper
trigger1=Time=20
name="Attack"
id=6013
pos=0,-115
postype=p1
stateno=6021
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.3
size.yscale=.3
[State ]
type=Helper
trigger1=Time=20
name="Attack"
id=6014
pos=0,-115
postype=p1
stateno=6021
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.3
size.yscale=.3
[State ]
type=Helper
trigger1=Time=20
name="Attack"
id=6015
pos=0,-115
postype=p1
stateno=6021
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.3
size.yscale=.3
[State ]
type=Helper
trigger1=Time=20
name="Attack"
id=6016
pos=0,-115
postype=p1
stateno=6021
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.3
size.yscale=.3
[State ]
type=Helper
trigger1=Time=20
name="Attack"
id=6017
pos=0,-115
postype=p1
stateno=6021
helpertype=normal
keyctrl=0
ownpal=1
size.xscale=.3
size.yscale=.3
[State ]
type=Helper
trigger1=Time=30
name="Attack"
pos=70,0
postype=p1
stateno=6040
helpertype=normal
keyctrl=0
ownpal=1
[State ]
type=Helper
trigger1=Time=30
name="Attack"
pos=-70,0
postype=p1
stateno=6040
helpertype=normal
keyctrl=0
ownpal=1
[State ]
type=Helper
trigger1=Time=35
name="Attack"
pos=140,0
postype=p1
stateno=6040
helpertype=normal
keyctrl=0
ownpal=1
[State ]
type=Helper
trigger1=Time=35
name="Attack"
pos=-140,0
postype=p1
stateno=6040
helpertype=normal
keyctrl=0
ownpal=1
[State ]
type=Helper
trigger1=Time=40
name="Attack"
pos=210,0
postype=p1
stateno=6040
helpertype=normal
keyctrl=0
ownpal=1
[State ]
type=Helper
trigger1=Time=40
name="Attack"
pos=-210,0
postype=p1
stateno=6040
helpertype=normal
keyctrl=0
ownpal=1
[State ]
type=Helper
trigger1=Time=45
name="Attack"
pos=280,0
postype=p1
stateno=6040
helpertype=normal
keyctrl=0
ownpal=1
[State ]
type=Helper
trigger1=Time=45
name="Attack"
pos=-280,0
postype=p1
stateno=6040
helpertype=normal
keyctrl=0
ownpal=1
[State ]
type=Explod
trigger1=animelem=3&&anim=4001
anim=10088
id=10088
sprpriority=3
postype=p1
pos=0,0
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.5,.5
removetime=60
[State ]
type=Explod
trigger1=animelem=3&&anim=4001
anim=10088
id=10088
sprpriority=3
postype=p1
pos=0,0
bindtime=-1
supermove=0
ownpal=1
trans=add
scale=.5,.5
removetime=60
[State ]
type=Changeanim
trigger1=Time=90
value=4002
[State ]
type=Changestate
trigger1=anim=4002&&!Animtime
value=0
ctrl=1

[Statedef 6020]
type=A
movetype=A
physics=N
velset=0,0
anim=10092
ctrl=0
[State ]
type=HitDef
trigger1=Ishelper&&!(Time%2)
attr=S,SP
animtype=hard
damage=15,4
priority=7,hit
getpower=5,5
guardflag=MA
pausetime=13,0
sparkno=s20000
sparkxy=-15,-60
guard.sparkno=s21000
hitsound=s10000,31
guardsound=s1,6
ground.type=hard
ground.slidetime=15
ground.hittime=30
ground.velocity=-10,-5
air.velocity=-10,-7
yaccel=.5
fall=1
fall.recover=0
ground.cornerpush.veloff=0
air.cornerpush.veloff=0
down.cornerpush.veloff=0
guard.cornerpush.veloff=0
airguard.cornerpush.veloff=0
palfx.time=20
palfx.color=64
palfx.invertall=1
palfx.add=10,10,10
palfx.mul=256,256,256
palfx.sinadd=96,96,96,4
[State ]
type=Destroyself
trigger1=root,stateno!=6000
ignorehitpause=1
[Statedef 6021]
type=A
movetype=A
physics=N
anim=10089
ctrl=0
sprpriority=100
[State ]
type=Velset
trigger1=Ishelper(6010)&&!Time
x=10
[State ]
type=Velset
trigger1=Ishelper(6011)&&!Time
x=6.5
y=-5
[State ]
type=Velset
trigger1=Ishelper(6012)&&!Time
y=-10
[State ]
type=Velset
trigger1=Ishelper(6013)&&!Time
x=-6.5
y=-5
[State ]
type=Velset
trigger1=Ishelper(6014)&&!Time
x=-10
[State ]
type=Velset
trigger1=Ishelper(6015)&&!Time
x=-6.5
y=5
[State ]
type=Velset
trigger1=Ishelper(6016)&&!Time
y=10
[State ]
type=Velset
trigger1=Ishelper(6017)&&!Time
x=6.5
y=5
[State ]
type=Explod
trigger1=1
anim=10003
sprpriority=10
postype=p1
pos=0,0
bindtime=1
ownpal=1
ontop=1
random=30,30
trans=add
scale=.3,.3
[State ]
type=PalFx
trigger1=!(Time%15)
add=20,20,20
sinadd=-20,-20,-20,30
time=15
ignorehitpause=1
[State ]
type=HitDef
trigger1=Ishelper
attr=S,SP
animtype=hard
damage=40,5
priority=7,hit
guardflag=MA
pausetime=0,10
sparkno=s20000
sparkxy=0,0
guard.sparkno=s21000
hitsound=s10000,31
guardsound=s1,6
ground.type=hard
ground.slidetime=15
ground.hittime=30
ground.velocity=-6,-4
air.velocity=-6,-4
yaccel=.5
fall=1
fall.recover=0
ground.cornerpush.veloff=0
air.cornerpush.veloff=0
down.cornerpush.veloff=0
guard.cornerpush.veloff=0
airguard.cornerpush.veloff=0
palfx.time=20
palfx.color=64
palfx.invertall=1
palfx.add=10,10,10
palfx.mul=256,256,256
palfx.sinadd=96,96,96,4
[State ]
type=Changestate
trigger1=movehit
trigger2=Time>=30
value=6030
ignorehitpause=1

[Statedef 6030]
type=A
movetype=A
physics=N
velset=0,0
anim=10090
ctrl=0
sprpriority=100
[State ]
type=Destroyself
trigger1=!Animtime

[Statedef 6040]
type=A
movetype=A
physics=N
velset=0,0
anim=10091
ctrl=0
sprpriority=100
[State ]
type=Explod
trigger1=!Time
anim=10064
sprpriority=10
postype=p1
pos=0,0
bindtime=1
ownpal=1
trans=add
scale=.3,1.0
[State ]
type=Explod
trigger1=!Time
anim=10002
pos=0,20
bindtime=1
sprpriority=-50
ownpal=1
scale=.3,.08
trans=add
[State ]
type=Explod
trigger1=1
anim=10003
sprpriority=10
postype=p1
pos=40-random%80,10-random%10
vel=0,-5-(random%4)
facing=-1
ownpal=1
ontop=1
accel=0,-.2
trans=add
scale=.25,.25
[State ]
type=Explod
trigger1=1
anim=10003
sprpriority=10
postype=p1
pos=40-random%80,10-random%10
vel=0,-5-(random%4)
facing=-1
ownpal=1
ontop=1
accel=0,-.2
trans=add
scale=.25,.25
[State ]
type=HitDef
trigger1=!Time
attr=S,SP
animtype=hard
damage=125,20
priority=7,hit
getpower=5,5
guardflag=MA
pausetime=0,10
sparkno=-1
sparkxy=0,-60
guard.sparkno=-1
hitsound=-1
guardsound=s1,6
ground.type=hard
ground.slidetime=15
ground.hittime=30
ground.velocity=-6,-12
air.velocity=-6,-12
yaccel=.5
fall=1
fall.recover=0
ground.cornerpush.veloff=0
air.cornerpush.veloff=0
down.cornerpush.veloff=0
guard.cornerpush.veloff=0
airguard.cornerpush.veloff=0
palfx.time=20
palfx.color=64
palfx.invertall=1
palfx.add=10,10,10
palfx.mul=256,256,256
palfx.sinadd=96,96,96,4
[State ]
type=Destroyself
trigger1=Time>=15

