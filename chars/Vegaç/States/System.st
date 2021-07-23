; _______________________________
;| Vega by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMON STATES>========================================
;==============================================================================================

;==========<PARRY>==========
;---STANDING---
[Statedef 700]
type=S
physics=S
movetype=I
anim=700
velset=0,0
ctrl=0
sprpriority=2
poweradd=75

[State 700, pause]
type=pause
trigger1=!time
time=10
movetime=10
[State 700, nhb]
type=hitby
trigger1=time<=10
time=1
value=SCA,AT
[State 700, stop]
type=posfreeze
trigger1=time<=10
value=1

[State 700, blueflash]
type=palfx
trigger1=!time&&var(21)>=0
add=0,50,255
sinadd=0,-50,-255,60
time=15
[State 700, redflash]
type=palfx
trigger1=!time&&var(21)<0
add=255,0,0
sinadd=-255,0,0,60
time=15

[State 700, snd]
type=playsnd
trigger1=!time
value=3,1
channel=0
[State 700, snd]
type=playsnd
trigger1=!time
value=7,3

[State 700, spark]
type=explod
trigger1=animelem=2
anim=7200
ID=7200
sprpriority=5
postype=p1
pos=47,-49
pausemovetime=60
ownpal=1
scale=.5,.5

[State 700, asserts]
type=assertspecial
trigger1=1
flag=nowalk
flag2=nostandguard
flag3=nocrouchguard
[State 700, ctrl]
type=ctrlset
trigger1=time>10
value=1
[State 700, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---CROUCHING---
[Statedef 701]
type=C
physics=C
movetype=I
anim=701
velset=0,0
ctrl=0
sprpriority=2
poweradd=75

[State 701, pause]
type=pause
trigger1=!time
time=10
movetime=10
[State 701, nhb]
type=hitby
trigger1=time<=10
time=1
value=SCA,AT
[State 701, stop]
type=posfreeze
trigger1=time<=10
value=1

[State 701, blueflash]
type=palfx
trigger1=!time&&var(21)>=0
add=0,50,255
sinadd=0,-50,-255,60
time=15
[State 701, redflash]
type=palfx
trigger1=!time&&var(21)<0
add=255,0,0
sinadd=-255,0,0,60
time=15

[State 701, snd]
type=playsnd
trigger1=!time
value=3,1
channel=0
[State 701, snd]
type=playsnd
trigger1=!time
value=7,3

[State 701, spark]
type=explod
trigger1=animelem=2
anim=7200
ID=7200
sprpriority=5
postype=p1
pos=34,-28
pausemovetime=60
ownpal=1
scale=.5,.5

[State 701, asserts]
type=assertspecial
trigger1=1
flag=nowalk
flag2=nostandguard
flag3=nocrouchguard
[State 701, ctrl]
type=ctrlset
trigger1=time>10
value=1
[State 701, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;---AERIAL---
[Statedef 702]
type=A
physics=A
movetype=I
anim=702
ctrl=0
sprpriority=2
poweradd=75

[State 702, pause]
type=pause
trigger1=!time
time=10
movetime=10
[State 702, nhb]
type=hitby
trigger1=time<=10
time=1
value=SCA,AT
[State 702, sts]
type=statetypeset
trigger1=time<=10
physics=N
[State 702, stop]
type=posfreeze
trigger1=time<=10
value=1
[State 702, sts]
type=statetypeset
trigger1=time>10
physics=A

[State 702, blueflash]
type=palfx
trigger1=!time&&var(21)>=0
add=0,50,255
sinadd=0,-50,-255,60
time=15
[State 702, redflash]
type=palfx
trigger1=!time&&var(21)<0
add=255,0,0
sinadd=-255,0,0,60
time=15

[State 702, snd]
type=playsnd
trigger1=!time
value=3,1
channel=0
[State 702, snd]
type=playsnd
trigger1=!time
value=7,3

[State 702, spark]
type=explod
trigger1=animelem=2
anim=7200
ID=7200
sprpriority=5
postype=p1
pos=15,-101
pausemovetime=60
ownpal=1
scale=.5,.5

[State 702, asserts]
type=assertspecial
trigger1=1
flag=noairguard
[State 702, ctrl]
type=ctrlset
trigger1=time>10
value=1


;==========<DODGE>==========
[Statedef 710]
type=S
physics=S
movetype=I
anim=710
velset=0,0
ctrl=0
sprpriority=-1
[State 710, snd]
type=playsnd
trigger1=!time
value=4,2
channel=0
[State 710, push]
type=playerpush
trigger1=1
value=0
[State 710, hb]
type=hitby
trigger1=1
value=SCA,AT
time=1
[State 710, attack]
type=changestate
trigger1=var(59)<=0&&animelemtime(3)>=0
trigger1=command="x"||command="y"||command="z"||command="a"||command="b"||command="c"
value=ifelse((command="x"||command="y"||command="z"),205,225)
[State 710, attack]
type=changestate
trigger1=var(59)>=1&&animelemtime(3)>=0&&(p2dist x=[0,60])&&p2movetype!=A
value=ifelse(random<500,210,220)
[State 710, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<ROLL>==========
[Statedef 720]
type=S
physics=N
movetype=I
anim=720
velset=ifelse(prevstateno=100,vel x,0),0
ctrl=0
sprpriority=-1
[State 720, snd]
type=playsnd
trigger1=animelem=1
value=3,ifelse(random<250,0,ifelse(random<333,1,ifelse(random<250,3,4)))
channel=0
[State 720, vel]
type=velset
trigger1=animelemtime(2)>=0&&animelemtime(7)<0
x=4
[State 720, push]
type=playerpush
trigger1=1
value=0
[State 720, hb]
type=hitby
trigger1=animelemtime(8)<0
value=SCA,AT
time=1
[State 720, statetype]
type=statetypeset
trigger1=animelemtime(8)>=0
physics=S
[State 720, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<ROLL BACKWARD>==========
[Statedef 725]
type=S
physics=N
movetype=I
anim=725
velset=0,0
ctrl=0
sprpriority=-1
[State 725, snd]
type=playsnd
trigger1=animelem=1
value=3,ifelse(random<250,0,ifelse(random<333,1,ifelse(random<250,3,4)))
channel=0
[State 725, vel]
type=velset
trigger1=animelemtime(2)>=0&&animelemtime(7)<0
x=-4
[State 725, push]
type=playerpush
trigger1=1
value=0
[State 725, hb]
type=hitby
trigger1=animelemtime(8)<0
value=SCA,AT
time=1
[State 725, statetype]
type=statetypeset
trigger1=animelemtime(8)>=0
physics=S
[State 725, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<POWER CHARGE>==========
[Statedef 740]
type=S
physics=S
movetype=I
anim=740
ctrl=0
velset=0,0

[State 740, power]
type=poweradd
triggerall=anim=740&&power<powermax
trigger1=var(59)<=0&&(command="holdb"&&command="holdy")
trigger2=var(59)>=1
value=10

[State 740, snd]
type=playsnd
trigger1=!time
value=3,7
channel=0

[State 740, shake]
type=envshake
trigger1=anim=740&&!(time%4)
time=4
fre=80
ampl=2
[State 740, flash]
type=palfx
trigger1=anim=740&&!(time%12)
add=80,20,0
sinadd=80,20,0,12
time=12
[State 740, flash]
type=palfx
trigger1=anim=741
add=0,0,0
time=1
persistent=0

[State 740, fx]
type=helper
trigger1=anim=740&&!numhelper(7240)
helpertype=normal
stateno=7240
ID=7240
name="Power Charge"
postype=p1
ownpal=1
persistent=0

[State 740, anim]
type=changeanim
triggerall=anim=740&&animelemtime(2)>=0
trigger1=var(59)<=0&&(command!="holdb"||command!="holdy")
trigger2=power>=powermax||roundstate!=2
trigger3=var(59)>=1&&(inguarddist||p2movetype=A||p2dist x<160)
value=741

[State 740, stopsnd]
type=stopsnd
trigger1=anim=741
channel=0
persistent=0
[State 740, snd]
type=playsnd
trigger1=anim=741&&power>=powermax
value=4,6
channel=0
persistent=0
[State 740, end]
type=changestate
trigger1=anim=741&&!animtime
value=0
ctrl=1


;==========<ZERO COUNTER>==========
[Statedef 750]
type=S
physics=S
movetype=I
anim=750
ctrl=0
velset=0,0
poweradd=-1000
sprpriority=2

[State 750, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="bdx"||command="bdy"||command="bdz"),1,2)
ignorehitpause=1
[State 750, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,1,2)
ignorehitpause=1

[State 750, snd]
type=playsnd
trigger1=!time
value=3,0
channel=0
[State 750, ECreset]
type=palfx
trigger1=!time
trigger1=var(20):=-1
time=1
[State 750, superchargehelper]
type=helper
trigger1=!time
helpertype=normal
stateno=7250
ID=7250
postype=p1
pos=37,-64
ownpal=1
persistent=0
supermovetime=999
[State 750, superpause]
type=superpause
trigger1=!time
time=20
movetime=20
anim=-1
sound=s7,1
p2defmul=1
darken=0
[State 750, end]
type=changestate
trigger1=time>=20
value=ifelse(var(10)=1,1300,1710)


;===================<EXCEL COMBO>===================
[Statedef 760]
type=U
physics=U
movetype=I
anim=760+(statetype=A)
ctrl=(statetype=A)
poweradd=-1000
velset=ifelse((statetype!=A),0,vel x),ifelse((statetype!=A),0,vel y)

[State 760, snd]
type=playsnd
trigger1=!time
value=3,1
channel=0
volume=200
[State 760, superchargehelper]
type=helper
trigger1=!time
helpertype=normal
stateno=7260
ID=7260
postype=p1
pos=5-7*(anim=761),-60-24*(anim=761)
ownpal=1
persistent=0
supermovetime=9999
[State 760, superchargepause]
type=superpause
trigger1=!time
time=30
movetime=30*(anim=760)
anim=-1
sound=s7,2
p2defmul=1
darken=0

[State 760, nhb]
type=nothitby
trigger1=anim=760&&animelemtime(6)<0
trigger2=anim=761&&animelemtime(2)<0
time=1
value=SCA

[State 760, var]
type=varset
trigger1=anim=760&&time=30
trigger2=anim=761&&time=1
var(20)=300

[State 760, image]
type=afterimage
trigger1=anim=760&&time=30
trigger2=anim=761&&time=1
time=2
timegap=1
framegap=4
length=13
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=64,128,192
palpostbright=0,0,0
trans=add1

[State 760, sts]
type=statetypeset
trigger1=statetype=A
physics=A

[State 760, end]
type=changestate
trigger1=anim=760&&!animtime
value=0
ctrl=1


;====================<STANDING>====================
[Statedef 0]
type=S
physics=S
movetype=I
velset=0,0
sprpriority=0

[State 0, gone]
type=removeexplod
trigger1=ishelper
[State 0, gone]
type=destroyself
trigger1=ishelper

[State 0, anim]
type=changeanim
trigger1=anim!=0&&anim!=5
trigger2=anim=5&&!animtime
value=0
[State 0, pos]
type=posset
trigger1=!time
y=0
[State 0, dead]
type=changestate
trigger1=!alive
value=5050


;===================<JUMPING>================
[Statedef 40]
type=S
physics=S
anim=40
ctrl=0
sprpriority=1
facep2=1

[State 40, var]
type=varset
trigger1=!time&&var(59)>=1>=1
var(9)=ifelse((p2dist x>240||p2dist y>180||random<100),3,1)
[State 40, var]
type=varset
trigger1=var(59)>=1>=1
sysvar(1)=ifelse((enemynear,movetype!=A||backedgebodydist<=10),1,ifelse((enemynear,movetype=A),-1,0))
[State 40, var]
type=varset
trigger1=!time&&var(59)>=1<=0
var(9)=ifelse(command="superjump",3,1)
[State 40, var]
type=varset
trigger1=var(59)>=1<=0
sysvar(1)=ifelse(!time,0,ifelse(command="holdfwd",1,ifelse(command="holdback",-1,sysvar(1))))
[State 40, var]
type=varset
trigger1=var(59)>=1<=0&&var(9)!=3&&command!="holdup"
trigger2=var(59)>=1>=1&&var(9)!=3&&random<100
var(9)=2

[State 40, dust]
type=helper
trigger1=!animtime
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 40, vel]
type=velset
trigger1=!animtime&&var(9)!=3
x=ifelse(!sysvar(1),const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y=ifelse(var(9)=2,.75,1)*const(velocity.jump.y)
[State 40, vel]
type=velset
trigger1=!animtime&&var(9)=3
x=ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,1.5*const(velocity.jump.fwd.x),1.5*const(velocity.jump.back.x)))
y=ifelse(!sysvar(1),1.15,1)*const(velocity.jump.y)
[State 40, vel]
type=velset
trigger1=!animtime&&prevstateno=100&&sysvar(1)=1
trigger1=var(9):=3
x=const(velocity.runjump.fwd.x)
[State 40, end]
type=changestate
trigger1=!animtime
value=50
ctrl=1

[Statedef 50]
type=A
physics=A
[State 50, snd]
type=playsnd
trigger1=!time
value=0,ifelse(var(9)=3,41,40)
[State 50, anim]
type=changeanim
trigger1=var(9)!=2
value=ifelse(!(vel x), 41, ifelse((vel x)>0, 42, 43))
persistent=0
[State 50, anim]
type=changeanim
trigger1=var(9)=2
value=ifelse(!(vel x), 51, ifelse((vel x)>0, 52, 53))
elem=animelemno(0)
persistent=0

[Statedef 51]
type=A
physics=A
[State 51, null]
type=null
trigger1=1

[Statedef 52]
type=S
physics=S
ctrl=0
anim=ifelse(vel y>11,48,47)
[State 52, vel]
type=velset
trigger1=1
x=0
y=0
[State 52, pos]
type=posset
trigger1=1
y=0
[State 52, anim 1203]
type=changeanim
trigger1=!time&&(prevstateno=[1200,1299])
value=1203
[State 52, snd]
type=playsnd
trigger1=!time
value=0,52
[State 52, dust]
type=explod
trigger1=!time
anim=7102
ID=7102
sprpriority=-2
postype=p1
scale=.5,.5
ownpal=1
[State 52, ctrl]
type=ctrlset
trigger1=!time
trigger1=prevstateno!=[200,4999]
value=1
[State 52, ctrl]
type=ctrlset
trigger1=time>=1
trigger1=prevstateno<1000
value=1
[State 52, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;======================<RUN>===========================
[Statedef 100]
type=S
physics=S
anim=100
ctrl=1
sprpriority=1
[State 100,as]
type=assertspecial
trigger1=1
flag=nowalk
flag2=noautoturn
[State 100, vel]
type=velSet
trigger1=anim=100
x=const(velocity.run.fwd.x)
[State 100, steps]
type=playsnd
trigger1=anim=100&&(animelem=3||animelem=6)
value=0,100
[State 100, change]
type=changeanim
triggerall=time>7&&anim=100
trigger1=var(59)<=0&&command!="holdfwd"
trigger2=var(59)>=1&&p2dist x<60
value=101
persistent=0
[State 100, snd]
type=playsnd
trigger1=anim=101
value=0,101
persistent=0
[State 100, end]
type=changestate
trigger1=anim=101&&!animtime
value=0
ctrl=1


;========================<BACK DASH>==========================
[Statedef 105]
type=S
movetype=I
physics=S
velset=0,0
anim=105
ctrl=0
sprpriority=1
[State 105, vel]
type=velset
trigger1=animelem=2
x=const(velocity.run.back.x)
y=const(velocity.run.back.y)
[State 105, snd]
type=playsnd
trigger1=animelem=2
value=0,105
[State 105, dust]
type=explod
trigger1=animelem=2
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=-17,0
vel=-1,0
ownpal=1
[State 105, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<GUARD>==========
;---START---
[Statedef 120]
type=U
physics=U
[State 120, anim]
type=changeanim
trigger1=!time
value=120+(statetype=C)+(statetype=A)*2
[State 120, sts]
type=statetypeset
trigger1=!time&&statetype=S
physics=S
[State 120, sts]
type=statetypeset
trigger1=!time&&statetype=C
physics=C
[State 120, sts]
type=statetypeset
trigger1=!time&&statetype=A
physics=A
[State 120, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 120, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 120, end]
type=changestate
trigger1=!animtime
value=130+(statetype=C)+(statetype=A)*2

[State 120, stop]
type=changestate
trigger1=var(59)<=0&&command!="holdback"
trigger2=var(59)>=1
trigger2=enemynear,movetype!=A&&p2bodydist x>=80&&(p2bodydist y!=[-75,75])&&!(enemy,numproj)
trigger3=!inguarddist
value=140


;---STAND GUARD (guarding)---
[Statedef 130]
type=S
physics=S
[State 130, anim]
type=changeanim
trigger1=anim!=130
value=130
[State 130, Hi to Lo]
type=changestate
trigger1=var(59)<=0&&command="holddown"
trigger2=var(59)>=1&&(enemynear,movetype=A)&&(enemynear,statetype=C)
value=131

[State 130, Stop Guarding]
type=changeState
trigger1=var(59)<=0&&command!="holdback"
trigger2=var(59)>=1
trigger2=enemynear,movetype!=A&&p2bodydist x>=80&&(p2bodydist y!=[-75,75])&&!(enemy,numproj)
trigger3=!inguarddist
value=140


;---CROUCH GUARD (guarding)---
[Statedef 131]
type=C
physics=C
[State 131, anim]
type=changeanim
trigger1=anim!=131
value=131
[State 131, Lo to Hi]
type=changestate
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
value=130

[State 131, Stop Guarding]
type=changestate
trigger1=var(59)<=0&&command!="holdback"
trigger2=var(59)>=1
trigger2=enemynear,movetype!=A&&p2bodydist x>=80&&(p2bodydist y!=[-75,75])&&!(enemy,numproj)
trigger3=!inguarddist
value=140


;---AIR GUARD (guarding)---
[Statedef 132]
type=A
physics=N
[State 132, anim]
type=changeanim
trigger1=anim!=132
value=132
[State 132, grav]
type=veladd
trigger1=1
y=const(movement.yaccel)
[State 132, var]
type=varset
trigger1=1
sysvar(0)=(pos y>=0)&&(vel y>0)
[State 132, vel]
type=velset
trigger1=sysvar(0)
y=0
[State 132, pos]
type=posset
trigger1=sysvar(0)
y=0

[State 132, end]
type=changestate
triggerall=sysvar(0)
triggerall=inguarddist
trigger1=var(59)<=0&&command!="holdback"
trigger2=var(59)>=1
trigger2=enemynear,movetype!=A&&p2bodydist x>=80&&(p2bodydist y!=[-75,75])&&!(enemy,numproj)
value=130

[State 132, end]
type=changeState
trigger1=sysvar(0)
value=52

[State 132, stop guarding]
type=changestate
trigger1=var(59)<=0&&command!="holdback"
trigger2=var(59)>=1
trigger2=enemynear,movetype!=A&&p2bodydist x>=80&&(p2bodydist y!=[-75,75])&&!(enemy,numproj)
trigger3=!inguarddist
value=140

;---GUARD (end)---
[Statedef 140]
type=U
physics=U
ctrl=1
[State 140, anim]
type=changeanim
trigger1=!time
value=140+(statetype=C)+(statetype=A)*2
[State 140, sts]
type=statetypeset
trigger1=!time&&statetype=S
physics=S
[State 140, sts]
type=statetypeset
trigger1=!time&&statetype=C
physics=C
[State 140, sts]
type=statetypeset
trigger1=!time&&statetype=A
physics=A

[State 140, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 140, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S

[State 140, 5]
type=changestate
trigger1=!animtime
value=(statetype=C)*11+(statetype=A)*51

;---SGUARDHIT (shaking)---
[Statedef 150]
type=S
movetype=H
physics=N
velset=0,0
[State 150, anim]
type=changeanim
trigger1=1
value=150
[State 150, end]
type=changestate
trigger1=hitshakeover
value=151+2*(command="holddown")
[State 150, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 150, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 150, shake]
type=forcefeedback
trigger1=!time
waveform=square
time=3

;---SGUARDHIT2 (knocked back)---
[Statedef 151]
type=S
movetype=H
physics=S
anim=150
[State 151, vel]
type=hitvelset
trigger1=!time
x=1
[State 151, vel]
type=velset
trigger1=time=gethitvar(slidetime)
trigger2=hitover
x=0
[State 151, ctrl]
type=ctrlset
trigger1=time=gethitvar(ctrltime)
value=1
[State 151, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 151, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 151, end]
type=changestate
trigger1=hitover
value=130
ctrl=1

;---CGUARDHIT (shaking)---
[Statedef 152]
type=C
movetype=H
physics=N
velset=0,0
[State 152, anim]
type=changeanim
trigger1=1
value=151
[State 152, end]
type=changestate
trigger1=hitshakeover
value=151+2*(command="holddown")
[State 152, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 152, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 152, shake]
type=forcefeedback
trigger1=!time
waveform=square
time=4

;---CGUARDHIT2 (knocked back)---
[Statedef 153]
type=C
movetype=H
physics=C
anim=151
[State 153, vel]
type=hitvelset
trigger1=!time
x=1
[State 153, vel]
type=velset
trigger1=time=gethitvar(slidetime)
trigger2=hitover
x=0
[State 153, ctrl]
type=ctrlset
trigger1=time=gethitvar(ctrltime)
value=1
[State 153, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 153, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 153, end]
type=changestate
trigger1=hitover
value=131
ctrl=1

;---AGUARDHIT (shaking)---
[Statedef 154]
type=A
movetype=H
physics=N
velset=0,0
[State 154, anim]
type=changeanim
trigger1=1
value=152
[State 154, end]
type=changestate
trigger1=hitshakeover
value=155
[State 154, shake]
type=forcefeedback
trigger1=!time
waveform=square
time=4

;---AGUARDHIT2 (knocked away)---
[Statedef 155]
type=A
movetype=H
physics=N
anim=152
[State 155, vel]
type=hitvelset
trigger1=!time
x=1
y=1
[State 155, vel]
type=veladd
trigger1=1
y=const(movement.yaccel)
[State 155, ctrl]
type=ctrlset
trigger1=time=gethitvar(ctrltime)
value=1
[State 155, var]
type=varset
trigger1=1
sysvar(0)=(pos y>=0)&&(vel y>0)
[State 155, vel]
type=velset
trigger1=sysvar(0)
y=0
[State 155, pos]
type=posset
trigger1=sysvar(0)
y=0

[State 155, end]
type=changestate
triggerall=sysvar(0)
triggerall=inguarddist
trigger1=var(59)<=0&&command!="holdback"
trigger2=var(59)>=1
trigger2=enemynear,movetype!=A&&p2bodydist x>=80&&(p2bodydist y!=[-75,75])&&!(enemy,numproj)
value=130

[State 155, end]
type=changestate
trigger1=sysvar(0)
value=52


;==========<CHEAP K.O.>==========
[Statedef 5130]
type=S
movetype=H
physics=S
anim=5130
[State 5130, nhb]
type=nothitby
trigger1=!alive
value=SCA
[State 5130, pos]
type=posset
trigger1=1
y=0
[State 5130, end]
type=changestate
trigger1=!animtime
value=5131

[Statedef 5131]
type=L
movetype=H
physics=C
anim=5131
[State 5131, nhb]
type=nothitby
trigger1=!alive
value=SCA
[State 5131, pos]
type=posset
trigger1=1
y=0
[State 5131, posfix]
type=posadd
trigger1=!animtime
x=-5
[State 5131, snd]
type=playsnd
trigger1=!time
trigger2=!animtime
value=0,52
[State 5131, dust]
type=explod
trigger1=!time
anim=7104
ID=7104
sprpriority=-4
postype=p1
pos=-6,0
scale=.5,.5
ownpal=1
[State 5131, dust]
type=explod
trigger1=!animtime
anim=7102
ID=7102
sprpriority=-5
postype=p1
pos=0,0
scale=.66,.66
ownpal=1
[State 5131, end]
type=changestate
trigger1=!animtime
value=ifelse(alive,5110,5150)


;==========<TAUNT>==========
[Statedef 195]
type=S
movetype=I
physics=S
anim=195
velset=0,0
sprpriority=1
ctrl=0
[State 195, snd]
type=playsnd
trigger1=animelem=4
value=4,4
channel=0
[State 195, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<LOSE (Time over)>==========
[Statedef 170]
type=S
ctrl=0
anim=170
velset=0,0
[State 170, nhb]
type=nothitby
trigger1=1
value=SCA
time=1


;==========<DRAWGAME (Time over)>==========
[Statedef 175]
type=S
ctrl=0
velset=0,0
[State 175, nhb]
type=nothitby
trigger1=1
value=SCA
time=1
[State 175, end]
type=changestate
trigger1=1
value=170


;==========<INITIALIZE>==========
[Statedef 5900]
type=S
[State 5900, varreset]
type=varrangeset
trigger1=!roundsexisted
value=0
[State 5900, varreset]
type=varrangeset
trigger1=!roundsexisted
fvalue=0

[State 5900, replayintro]
type=changestate
triggerall=numenemy
triggerall=!(teammode=simul)&&!(enemy,teammode=simul)&&!(enemynear,roundsexisted)
trigger1=enemy,authorname="Phantom.of.the.Server"&&enemy,name="Shin Gouki"
value=190
[State 5900, end]
type=changestate
trigger1=!time
value=ifelse(roundno=1,190,0)


;==========<PREINTRO>==========
[Statedef 190]
type=S
ctrl=0
velset=0,0
[State 190, intro vs Shin Gouki]
type=changestate
trigger1=numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,authorname="Phantom.of.the.Server"&&enemy,name="Shin Gouki"
value=350
[State 190, intro]
type=changestate
trigger1=1
value=ifelse(random<500,191,193)


;==========<INTRO 1>==========
[Statedef 191]
type=S
anim=191
[State 191, intro]
type=assertspecial
trigger1=1
flag=intro
[State 191, snd]
type=playsnd
trigger1=anim=191&&time=15
value=4,ifelse(random<500,3,7)
channel=0
[State 191, anim]
type=changeanim
trigger1=anim=191&&time>=150
value=192
[State 191, snd]
type=playsnd
trigger1=anim=192&&animelem=3
value=5,9
[State 191, cape]
type=helper
trigger1=anim=192&&animelem=7
helpertype=normal
stateno=6100
ID=6100
postype=p1
persistent=0
[State 191, end]
type=changestate
trigger1=anim=192&&!animtime
value=0


;========================<FLYING INTRO>=============================
[Statedef 193]
type=A
physics=N
movetype=I
anim=193
ctrl=0
sprpriority=-1
[State 193, intro]
type=assertspecial
trigger1=1
flag=intro
[State 193, bound]
type=screenbound
trigger1=anim=193&&animelemtime(2)<0
value=1
movecamera=1,0
[State 193, pos]
type=posset
trigger1=!time
y=-120

[State 193, fadein]
type=trans
trigger1=anim=193&&animelemtime(2)=[0,10]
trans=addalpha
alpha=25*(animelemtime(2)),ceil(256-25*(animelemtime(2)))
[State 193, snd]
type=playsnd
trigger1=anim=193&&animelem=2
value=5,6
[State 193, fx]
type=helper
trigger1=anim=193&&animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 193, snd]
type=playsnd
trigger1=anim=193&&time=90
value=4,6
channel=0
[State 193, vel]
type=veladd
trigger1=anim=193&&animelemtime(3)>=0&&time>=100&&vel y<5
y=.025
[State 193, anim]
type=changeanim
trigger1=anim=193&&animelemtime(3)>=0&&pos y>=0
value=192
elem=3
persistent=0
[State 193, stop]
type=posset
trigger1=anim=192
y=0
[State 193, stop]
type=velset
trigger1=anim=192
y=0

[State 52, snd]
type=playsnd
trigger1=anim=192&&animelem=3
value=0,52
[State 52, dust]
type=explod
trigger1=anim=192&&animelem=3
anim=7102
ID=7102
sprpriority=-2
postype=p1
scale=.5,.5
ownpal=1

[State 193, snd]
type=playsnd
trigger1=anim=192&&animelem=3
value=5,9
[State 193, cape]
type=helper
trigger1=anim=192&&animelem=7
helpertype=normal
stateno=6100
ID=6100
postype=p1
persistent=0
[State 193, end]
type=changestate
trigger1=anim=192&&!animtime
value=0


;========================<INTRO vs SHIN GOUKI>=============================
[Statedef 350]
type=S
physics=N
movetype=I
anim=350
velset=0,0
ctrl=0
sprpriority=-1
[State 350, intro]
type=assertspecial
trigger1=1
flag=intro

[State 350, camera]
type=helper
trigger1=!numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
pos=0,0
facing=1
[State 192, bound]
type=screenbound
trigger1=1
value=0
[State 350, pos]
type=posset
trigger1=!time
x=ceil(enemynear,pos x)
[State 350, turn]
type=turn
trigger1=!time||animelem=4

[State 350, anim]
type=changeanim
trigger1=animelemtime(2)<0
value=350
elem=1
[State 350, anim]
type=changeanim
trigger1=animelemtime(2)<0&&(enemynear,vel y>0)&&p2dist y>=-150
value=350
elem=2

[State 350, fadeout]
type=trans
trigger1=animelemtime(2)=[0,10]
trans=addalpha
alpha=ceil(256-25*(animelemtime(2))),25*(animelemtime(2))
[State 350, fadein]
type=trans
trigger1=animelemtime(4)=[0,10]
trans=addalpha
alpha=25*(animelemtime(4)),ceil(256-25*(animelemtime(4)))
[State 350, snd]
type=playsnd
trigger1=animelem=2||animelem=4
value=5,6
[State 350, fx]
type=helper
trigger1=animelem=2
helpertype=normal
stateno=1705
ID=1705
name="Warp FX"
postype=p1
[State 350, fx]
type=helper
trigger1=animelem=4
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 350, snd]
type=playsnd
trigger1=animelem=4
value=4,2
channel=0
[State 350, pos]
type=posset
trigger1=animelemtime(3)>=0&&animelemtime(4)<0&&numhelper(7650)
x=ceil(helper(7650),pos x)
[State 350, end]
type=changestate
trigger1=!animtime
value=0


;==========<WIN POSE DECIDER>==========
[Statedef 180]
type=S
[State 180, win]
type=changestate
trigger1=!time
trigger1=0;command="holdx"||command="holdy"||command="holdz"||command="holda"||command="holdb"||command="holdc"
value=0
[State 180, win]
type=changestate
trigger1=1
value=ifelse(random<333,181,ifelse(random<500,182,183))


;==========<WIN 1>==========
[Statedef 181]
type=S
anim=181
ctrl=0
[State 181, assert]
type=assertspecial
trigger1=time<180
flag=roundnotover
[State 181, snd]
type=playsnd
trigger1=animelem=6
value=4,1
channel=0
[State 181, posfix]
type=posadd
trigger1=animelem=2||animelem=3
x=ifelse((animelem=2),-8,-12)


;==========<WIN 2>==========
[Statedef 182]
type=S
anim=182
ctrl=0
[State 182, assert]
type=assertspecial
trigger1=time<180
flag=roundnotover
[State 182, snd]
type=playsnd
trigger1=animelem=2
value=4,6
channel=0


;==========<WIN 3>==========
[Statedef 183]
type=S
anim=183
ctrl=0
[State 183, assert]
type=assertspecial
trigger1=time<180
flag=roundnotover
[State 183, snd]
type=playsnd
trigger1=animelem=5
value=4,ifelse(random<500,0,8)
channel=0
[State 183, posfix]
type=posadd
trigger1=animelem=2||animelem=3
x=ifelse((animelem=2),-8,-12)


;==========<CONTINUE?>==========
[Statedef 5500]
type=S
anim=5500
ctrl=0
velset=0,0
[State 5500, anim]
type=changeanim
trigger1=!time
value=5500


;==========<CONTINUE?>==========
[Statedef 5500]
type=S
ctrl=0
velset=0,0
[State 5500, anim]
type=changeanim
trigger1=!time
value=5500


;==========<FALL RECOVERY>==========
[Statedef 5200]
type=A
movetype=H
physics=N
[State 5200, anim]
type=changeanim
trigger1=anim=5035&&!animtime
value=7100
[State 5200, vel]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 5200, end]
type=selfstate
trigger1=vel y>0&&pos y>=-10
value=5201

[Statedef 5201]
type=A
movetype=I
physics=N
anim=5200
velset=vel x-3,0
[State 5201, turn]
type=turn
trigger1=!time&&vel x>0
[State 5201, pos]
type=posset
trigger1=1
y=0
[State 5201, vel]
type=velset
trigger1=1
y=0
[State 5201, vel]
type=veladd
trigger1=1
x=-vel x/20
[State 5201, snd]
type=playsnd
trigger1=animelem=1
value=3,0
channel=0
[State 5201, flash]
type=palfx
trigger1=!time
add=255,255,255
sinadd=-255,-255,-255,60
time=15
[State 5201, nhb]
type=nothitby
trigger1=animelemtime(6)<0
value=SCA
time=1
[State 5201, dust]
type=explod
trigger1=!time
anim=7102
ID=7102
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
removetime=-2
ownpal=1
scale=.5,.5
[State 5201, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1

[Statedef 5210]
type=A
movetype=I
physics=N
anim=5210
ctrl=0
[State 5210, snd]
type=playsnd
trigger1=!time
value=3,0
channel=0
[State 5210, flash]
type=palfx
trigger1=!time
add=255,255,255
sinadd=-255,-255,-255,60
time=15
[State 5210, turn]
type=turn
trigger1=!time&&vel x>0
[State 5210, vel]
type=velset
trigger1=!time
x=ifelse(command="holdback",-4,ifelse(command="holdfwd",-1.33,-2.67))
y=-7.4
[State 5210, grav]
type=veladd
trigger1=1
y=.5
[State 5210, nhb]
type=nothitby
trigger1=time<14
value=SCA
time=1
[State 5210, ctrl]
type=ctrlset
trigger1=time>=14
value=1
[State 5210, land]
type=changestate
trigger1=vel y>0&&pos y>=0
value=52


;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[Statedef -2]

[State -2, counterFX]
type=helper
trigger1=movehit&&numtarget&&hitdefattr=SCA,AA
trigger1=!numhelper(7400)&&var(29)
trigger1=(target,movetype=H)&&!(target,time)
helpertype=normal
stateno=7400
ID=7400
name="Counter"
postype=left
ignorehitpause=1
[State -2, countervar]
type=varset
trigger1=1
var(29)=ifelse((p2movetype=A),1,0)

[State -2, attackvarbyhits]
type=varadd
trigger1=time=1&&movetype=A
trigger1=(stateno!=[800,899])&&stateno!=3002
trigger1=(prevstateno=[200,699])^^(stateno!=[200,699])
fvar(10)=ifelse((stateno=[3000,4999]),.33,.1)
ignorehitpause=1
[State -2, attackvarbyhits]
type=varset
trigger1=fvar(10)>.9
fvar(10)=.9
ignorehitpause=1
[State -2, attackvarbyhitsreset]
type=varset
trigger1=numenemy&&fvar(10)
trigger1=(enemynear,movetype!=H)
fvar(10)=0
ignorehitpause=1
[State -2, attackvarbypower]
type=varset
trigger1=1
fvar(11)=ifelse(power>=3000,.05,ifelse(power>=2000,.02,ifelse(power>=1000,.01,0)))
ignorehitpause=1
[State -2, dampenervar]
type=varset
trigger1=1
fvar(12)=(ifelse(fvar(10)>=.9,.1,1-fvar(10))+(fvar(11)*!var(20))+(.2*var(29)))/(3.0/(3-(var(20)>0)))
ignorehitpause=1
[State -2, dampener]
type=attackmulset
trigger1=1
value=fvar(12)
ignorehitpause=1

[State -2, ECturnoff]
type=varset
trigger1=var(20)<=0||roundstate!=2
var(20)=0
ignorehitpause=1
[State -2, ECvar]
type=varadd
trigger1=var(20)>0
var(20)=-1
ignorehitpause=1
[State -2, ECnhb]
type=nothitby
trigger1=var(20)>=285
time=1
value=SCA
ignorehitpause=1
[State -2, ECnojuggle]
type=assertspecial
trigger1=var(20)>0
flag=nojugglecheck
ignorehitpause=1
[State -2, ECglow]
type=palfx
trigger1=var(20)>60
time=2
add=32+ceil(sin(var(20)/5.0)*32),32+ceil(sin(var(20)/5.0)*32),32+ceil(sin(var(20)/5.0)*32)
ignorehitpause=1
[State -2, ECglow]
type=palfx
trigger1=(var(20)=[1,60])
time=2
add=64+ceil(sin(var(20)/2.0)*64),64+ceil(sin(var(20)/2.0)*64),64+ceil(sin(var(20)/2.0)*64)
ignorehitpause=1

[State -2, varKOsnd]
type=varset
trigger1=alive&&var(8)>0
trigger2=!alive&&var(8)<2
var(8)=ifelse(alive,0,var(8)+1)
ignorehitpause=1
[State -2, KOsnd]
type=playsnd
trigger1=!alive&&var(8)=1
trigger1=var(8):=2
value=11,ifelse(stateno=5130,2,1)
ignorehitpause=1

[State -2, Debug]
type=displaytoclipboard
trigger1=1
text="AI=%d Damage=%f Excel=%d by P.o.t.S."
params=var(59), fvar(12), var(20)
ignorehitpause=1


;===========================================================================
;===============================<-3 STATES>=================================
;===========================================================================
[Statedef -3]

[State -3, resetAI]
type=varset
trigger1=var(59)&&(!alive||roundstate!=2)
var(59)=0
ignorehitpause=1
[State -3, AIactivation]
type=helper
trigger1=!numhelper(9741)&&roundstate=2&&alive&&!var(59)
helpertype=normal
name="Vega's AI"
stateno=9741
ID=9741
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647

[State -3, moveshadow]
type=afterimage
triggerall=time=1&&!var(20)
trigger1=stateno=50&&var(9)=3
trigger2=stateno=[710,725]
time=2
timegap=1
framegap=4
length=9
palbright=0,0,0
paladd=0,0,0
palmul=.9,.9,.9
palcontrast=120,120,120
palpostbright=0,0,0
trans=add1

[State -3, lv1supershadow]
type=afterimage
trigger1=stateno=3000&&anim=3000&&!animelemtime(3)
trigger2=stateno=3100&&animelemtime(1)=2
time=2
timegap=1
framegap=10
length=21
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=128,128,128
palpostbright=0,0,0
trans=add1

[State -3, lv2supershadow]
type=afterimage
trigger1=stateno=3050&&anim=3050&&!animelemtime(2)
time=2
timegap=1
framegap=10
length=21
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=32,32,160
palpostbright=0,0,0
trans=add1

[State -3, lv3supershadow]
type=afterimage
trigger1=0;
time=2
timegap=1
framegap=10
length=21
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=160,32,32
palpostbright=0,0,0
trans=add1

[State -3, AfterImagePersist]
type=afterimagetime
trigger1=stateno=50&&var(9)=3&&vel y<-1
trigger2=var(20)
trigger3=(stateno=[3000,4999])&&anim!=1103&&stateno!=4002
trigger4=(stateno=[710,725])
time=2

[State -3, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
triggerall=stateno=5000||stateno=5010
trigger1=gethitvar(animtype)>=2&&random<500
trigger2=gethitvar(animtype)=1&&random<375
trigger3=gethitvar(animtype)=0&&random<250
value=5000,1+(random%5)
channel=0
ignorehitpause=1

[State -3, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
trigger1=(stateno=5000||stateno=5010)&&numenemy
trigger1=gethitvar(fall)||(enemynear,hitdefattr=SCA,SA,HA)
trigger2=(stateno=5020||stateno=5070||stateno=5080)
trigger3=(stateno=5050||stateno=5100)&&(prevstateno!=[5000,5199])
value=5000,1+(random%5)
channel=0
ignorehitpause=1

[State -3, collapse]
type=changestate
trigger1=!alive&&(stateno=[5000,5030])
trigger1=(prevstateno=[130,131])||(prevstateno=[140,141])||(prevstateno=[150,153])
value=5130

[State -3, KOfx]
type=helper
triggerall=winKO&&!numhelper(7600)
trigger1=movehit&&numtarget&&(stateno=[3000,4999])
helpertype=normal
stateno=7600
ID=7600
name="KO FX"
postype=left
pos=160,-120
ownpal=1
ignorehitpause=1
pausemovetime=999
supermovetime=999