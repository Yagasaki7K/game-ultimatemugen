; _______________________________
;| Vega by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<NORMAL STATES>========================================
;==============================================================================================

;===========<Stand Light Punch>==========
[Statedef 200]
type=S
movetype=A
physics=S
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=ifelse(p2bodydist x<25,201,200)
velset=0,0
poweradd=0
sprpriority=1
ctrl=0

[State 200, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,0,3)
channel=0
[State 200, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 200, snd]
type=playsnd
trigger1=!time
value=5,2
channel=1
[State 200, fx]
type=helper
trigger1=!numhelper(6000)
helpertype=normal
stateno=6000
ID=6000
name="Psycho Power"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
persistent=0

[State 200, hit]
type=hitdef
trigger1=animelem=2
attr=S,NA 
damage=23,0
animtype=Light
guardflag=M
hitflag=MAF 
priority=2,Hit 
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-80
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200&&!var(20)),-6,-4)
ground.cornerpush.veloff=ifelse((prevstateno=200&&!var(20)),-9,-6)
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=69*!var(20)
yaccel=.5

[State 200, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Medium Punch>==========
[Statedef 205]
type=S
movetype=A
physics=S
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)
anim=ifelse((prevstateno=710||p2bodydist x<25),206,205)
velset=0,0
poweradd=14*!var(20)
sprpriority=1
ctrl=0

[State 205, snd]
type=playsnd
trigger1=animelem=2&&random<350
value=3,ifelse(random<500,2,4)
channel=0
[State 205, snd]
type=playsnd
trigger1=animelem=3
value=1,2

[State 205, snd]
type=playsnd
trigger1=!time
value=5,2
channel=1
[State 205, fx]
type=helper
trigger1=!numhelper(6000)
helpertype=normal
stateno=6000
ID=6000
name="Psycho Power"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
persistent=0

[State 205, hit]
type=hitdef
trigger1=animelem=3&&anim=205
attr=S,NA 
damage=43,0
animtype=Medium 
guardflag=M
hitflag=MAF 
priority=3,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-81
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.slidetime=13
ground.hittime=13
ground.velocity=-7
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=129*!var(20)
yaccel=.5

[State 205, hit]
type=hitdef
trigger1=animelem=3&&anim=206
attr=S,NA 
damage=46,0
animtype=Medium 
guardflag=M
hitflag=MAF 
priority=3,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-64
hitsound=s2,2
guardsound=s2,0
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-7
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=138*!var(20)
yaccel=.5

[State 205, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Hard Punch>==========
[Statedef 210]
type=S
movetype=A
physics=S
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=ifelse(p2bodydist x<25,211,210)
velset=0,0
poweradd=21*!var(20)
sprpriority=1
ctrl=0

[State 210, snd]
type=playsnd
trigger1=animelem=2&&random<500
value=3,ifelse(random<500,4,8)
channel=0
[State 210, snd]
type=playsnd
trigger1=animelem=3
value=1,3

[State 210, snd]
type=playsnd
trigger1=!time
value=5,2
channel=1
[State 210, fx]
type=helper
trigger1=!numhelper(6000)
helpertype=normal
stateno=6000
ID=6000
name="Psycho Power"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
persistent=0

[State 210, hit]
type=hitdef
trigger1=animelem=3&&anim=210
attr=S,NA
damage=63,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=4,Hit 
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-105
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=189*!var(20)
yaccel=.5

[State 210, hit]
type=hitdef
trigger1=animelem=3&&anim=211
attr=S,NA
damage=66,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=4,Hit 
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-15,-70
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=16
ground.hittime=16
ground.velocity=-10
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=198*!var(20)
yaccel=.5

[State 210, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Light Kick>==========
[Statedef 215]
type=S
movetype=A
physics=S
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=ifelse(p2bodydist x<25,216,215)
velset=0,0 
poweradd=0
sprpriority=1
ctrl=0

[State 215, snd]
type=playsnd
trigger1=animelem=3&&random<200
value=3,ifelse(random<500,0,3)
channel=0
[State 215, snd]
type=playsnd
trigger1=animelem=3
value=1,4

[State 215, hit]
type=hitdef
trigger1=animelem=4&&anim=215
attr=S,NA 
damage=20,0
animtype=Light
guardflag=M
hitflag=MAF 
priority=2,Hit 
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-75
hitsound=s2,4
guardsound=s2,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=-4
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=60*!var(20)
yaccel=.5

[State 215, hit]
type=hitdef
trigger1=animelem=3&&anim=216
attr=S,NA 
damage=23,0
animtype=Light
guardflag=M
hitflag=MAF 
priority=2,Hit 
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-15,-72
hitsound=s2,4
guardsound=s2,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=-4
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=69*!var(20)
yaccel=.5

[State 215, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Medium Kick>==========
[Statedef 220]
type=S
movetype=A
physics=S
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=ifelse(p2bodydist x<25,221,220)
velset=0,0 
poweradd=14*!var(20)
sprpriority=1
ctrl=0

[State 220, snd]
type=playsnd
trigger1=animelem=3&&random<350
value=3,ifelse(random<500,2,4)
channel=0
[State 220, snd]
type=playsnd
trigger1=animelem=3
value=1,5

[State 220, hit]
type=hitdef
trigger1=animelem=4&&anim=220
attr=S,NA 
damage=40,0
animtype=Medium
guardflag=M
hitflag=MAF 
priority=3,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-78
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=13
ground.hittime=13
ground.velocity=-7
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=120*!var(20)
yaccel=.5

[State 220, hit]
type=hitdef
trigger1=animelem=4&&anim=221
attr=S,NA 
damage=43,0
animtype=Medium
guardflag=M
hitflag=MAF 
priority=3,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-15,-72
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-7
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=129*!var(20)
yaccel=.5

[State 220, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Hard Kick>==========
[Statedef 225]
type=S
movetype=A
physics=S
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=ifelse((prevstateno=710||p2bodydist x>=25),225,226)
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 225, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,ifelse(random<500,4,8)
channel=0
[State 225, snd]
type=playsnd
trigger1=animelem=3
value=1,6

[State 225, hit]
type=hitdef
trigger1=animelem=4&&anim=225
attr=S,NA
damage=60,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=4,Hit 
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-78
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=180*!var(20)
yaccel=.5

[State 225, hit]
type=hitdef
trigger1=animelem=4&&anim=225&&prevstateno=710
attr=S,NA
damage=60,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=4,Hit 
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-78
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-6,-3
air.type=Low
air.hittime=12
air.velocity=-6,-3
air.cornerpush.veloff=0
getpower=180*!var(20)
yaccel=.5
fall=1

[State 225, hit]
type=hitdef
trigger1=animelem=4&&anim=226
attr=S,NA
damage=63,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=4,Hit 
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-15,-72
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-7
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=180*!var(20)
yaccel=.5

[State 225, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Crouch Light Punch>==========
[Statedef 230]
type=C
movetype=A
physics=C
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=230
velset=0,0
poweradd=0
sprpriority=1
ctrl=0

[State 230, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,0,3)
channel=0
[State 230, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 230, snd]
type=playsnd
trigger1=!time
value=5,2
channel=1
[State 230, fx]
type=helper
trigger1=!numhelper(6000)
helpertype=normal
stateno=6000
ID=6000
name="Psycho Power"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
persistent=0

[State 230, hit]
type=hitdef
trigger1=animelem=2
attr=C,NA 
damage=23,0
animtype=Light
guardflag=M
hitflag=MAF 
priority=2,Hit 
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-52
hitsound=s2,1
guardsound=s2,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=230&&!var(20)),-6,-4)
ground.cornerpush.veloff=ifelse((prevstateno=230&&!var(20)),-9,-6)
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=69*!var(20)
yaccel=.5

[State 230, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Medium Punch>==========
[Statedef 235]
type=C
movetype=A
physics=C
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=235
velset=0,0
poweradd=14*!var(20)
sprpriority=1
ctrl=0

[State 235, snd]
type=playsnd
trigger1=animelem=4&&random<350
value=3,ifelse(random<500,2,4)
channel=0
[State 235, snd]
type=playsnd
trigger1=animelem=5
value=1,2

[State 235, snd]
type=playsnd
trigger1=!time
value=5,2
channel=1
[State 235, fx]
type=helper
trigger1=!numhelper(6000)
helpertype=normal
stateno=6000
ID=6000
name="Psycho Power"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
persistent=0

[State 235, hit]
type=hitdef
trigger1=animelem=5
attr=C,NA 
damage=43,0
animtype=Medium 
guardflag=M
hitflag=MAF 
priority=3,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-58
hitsound=s2,2
guardsound=s2,0
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-7
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=129*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 235, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Hard Punch>==========
[Statedef 240]
type=C
movetype=A
physics=C
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=240
velset=0,0
poweradd=21*!var(20)
sprpriority=1
ctrl=0

[State 240, snd]
type=playsnd
trigger1=animelem=4&&random<500
value=3,ifelse(random<500,4,8)
channel=0
[State 240, snd]
type=playsnd
trigger1=animelem=5
value=1,3

[State 240, snd]
type=playsnd
trigger1=!time
value=5,2
channel=1
[State 240, fx]
type=helper
trigger1=!numhelper(6000)
helpertype=normal
stateno=6000
ID=6000
name="Psycho Power"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
persistent=0

[State 240, hit]
type=hitdef
trigger1=animelem=5
attr=C,NA
damage=63,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=4,Hit 
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-58
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=16
ground.hittime=16
ground.velocity=-10
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=189*!var(20)
yaccel=.5

[State 240, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Light Kick>==========
[Statedef 245]
type=C
movetype=A
physics=C
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=245
velset=0,0
poweradd=0
sprpriority=1
ctrl=0

[State 245, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,0,3)
channel=0
[State 245, snd]
type=playsnd
trigger1=animelem=3
value=1,4

[State 245, hit]
type=hitdef
trigger1=animelem=3
attr=C,NA 
damage=20,0
animtype=Light
guardflag=L
hitflag=MAF
priority=2,Hit 
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-8
hitsound=s2,4
guardsound=s2,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=-4
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
down.velocity=-2,-2
getpower=60*!var(20)
yaccel=.5

[State 245, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Medium Kick>==========
[Statedef 250]
type=C
movetype=A
physics=C
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=250
velset=0,0 
poweradd=14*!var(20)
sprpriority=1
ctrl=0

[State 250, snd]
type=playsnd
trigger1=animelem=2&&random<350
value=3,ifelse(random<500,2,4)
channel=0
[State 250, snd]
type=playsnd
trigger1=animelem=3
value=1,5

[State 250, hit]
type=hitdef
trigger1=animelem=3
attr=C,NA 
damage=40,0
animtype=Medium
guardflag=L 
hitflag=MAF
priority=3,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-14
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-7
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
down.velocity=-3,-3
getpower=120*!var(20)
yaccel=.5

[State 250, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Hard Kick>==========
[Statedef 255]
type=C
movetype=A
physics=C
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5)
anim=255
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 255, snd]
type=playsnd
trigger1=animelem=4&&random<500
value=3,ifelse(random<500,4,8)
channel=0
[State 255, snd]
type=playsnd
trigger1=animelem=5
value=5,8

[State 255, vel]
type=velset
trigger1=animelem=5
x=25

[State 255, sts]
type=statetypeset
trigger1=animelemtime(2)>=0
statetype=S
physics=S
[State 255, push]
type=playerpush
trigger1=animelemtime(5)>=0&&animelemtime(6)<0&&movehit
value=0
ignorehitpause=1

[State 255, hit]
type=hitdef
trigger1=animelem=5
attr=C,NA
damage=60,0
animtype=Hard
guardflag=L 
hitflag=MAF
priority=4,Hit 
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-20
hitsound=s2,6
guardsound=s2,0
ground.type=Trip
ground.slidetime=16
ground.hittime=16
ground.velocity=-1.33,-6.85
air.type=Low
air.velocity=-1.33,-6.85
air.cornerpush.veloff=0
down.velocity=-2,-4
getpower=180*!var(20)
yaccel=.5
fall=1

[State 255, end]
type=changestate
trigger1=!animtime
value=ifelse(command="holddown",10,12)
ctrl=1


;===========<Air Light Punch>==========
[Statedef 260]
type=A
movetype=A
physics=A
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=ifelse(vel x,261,260)
poweradd=0
sprpriority=1
ctrl=0

[State 260, snd]
type=playsnd
trigger1=anim=260&&animelem=2&&random<200
trigger2=anim=261&&animelem=3&&random<200
value=3,ifelse(random<500,0,3)
channel=0
[State 260, snd]
type=playsnd
trigger1=anim=260&&animelem=2
trigger2=anim=261&&animelem=3
value=1,1

[State 260, snd]
type=playsnd
trigger1=!time
value=5,2
channel=1
[State 260, fx]
type=helper
trigger1=!numhelper(6000)
helpertype=normal
stateno=6000
ID=6000
name="Psycho Power"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
persistent=0

[State 260, hit]
type=hitdef
trigger1=anim=260&&animelem=2
attr=A,NA 
damage=23,0
animtype=Light
guardflag=HA 
hitflag=MAF 
priority=2,Hit 
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-70
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-4.5
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=69*!var(20)
yaccel=.5

[State 260, hit]
type=hitdef
trigger1=anim=261&&animelem=4
attr=A,NA 
damage=25,0
animtype=Light
guardflag=HA 
hitflag=MAF 
priority=2,Hit 
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-96
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-4.5
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=75*!var(20)
yaccel=.5

[State 260, sts]
type=statetypeset
trigger1=anim=260&&animelemtime(4)>=0
trigger2=anim=261&&animelemtime(6)>=0
movetype=I


;===========<Air Medium Punch>==========
[Statedef 265]
type=A
movetype=A
physics=A
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=265
poweradd=14*!var(20)
sprpriority=1
ctrl=0

[State 265, snd]
type=playsnd
trigger1=animelem=2&&random<350
value=3,ifelse(random<500,2,4)
channel=0
[State 265, snd]
type=playsnd
trigger1=animelem=2
value=1,2

[State 265, snd]
type=playsnd
trigger1=!time
value=5,2
channel=1
[State 265, fx]
type=helper
trigger1=!numhelper(6000)
helpertype=normal
stateno=6000
ID=6000
name="Psycho Power"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
persistent=0

[State 265, hit]
type=hitdef
trigger1=animelem=2
attr=A,NA 
damage=43,0
animtype=Medium 
guardflag=HA 
hitflag=MAF 
priority=3,Hit 
pausetime=10,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-68
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-4.5
air.type=High
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=129*!var(20)
yaccel=.5

[State 265, sts]
type=statetypeset
trigger1=animelemtime(4)>=0
movetype=I


;===========<Hell Attack>==========
[Statedef 266]
type=A
movetype=A
physics=A
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=266
poweradd=14*!var(20)
sprpriority=1
ctrl=0

[State 266, snd]
type=playsnd
trigger1=animelem=3&&random<350
value=3,ifelse(random<500,2,4)
channel=0
[State 266, snd]
type=playsnd
trigger1=animelem=3
value=1,3

[State 266, snd]
type=playsnd
trigger1=!time
value=5,2
channel=1
[State 266, fx]
type=helper
trigger1=!numhelper(6000)
helpertype=normal
stateno=6000
ID=6000
name="Psycho Power"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
persistent=0

[State 266, hit]
type=hitdef
trigger1=animelem=4
attr=A,NA 
damage=43,0
animtype=Medium 
guardflag=HA 
hitflag=MAF 
priority=3,Hit 
pausetime=10,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-66
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-4.5
air.type=High
air.hittime=12
air.velocity=-4,4
air.cornerpush.veloff=0
getpower=129*!var(20)
yaccel=.5
air.fall=1

[State 266, sts]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I


;===========<Air Hard Punch>==========
[Statedef 270]
type=A
movetype=A
physics=A
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=ifelse(vel x,271,270)
poweradd=21*!var(20)
sprpriority=1
ctrl=0

[State 270, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,ifelse(random<500,4,8)
channel=0
[State 270, snd]
type=playsnd
trigger1=animelem=3
value=1,3

[State 270, snd]
type=playsnd
trigger1=!time
value=5,2
channel=1
[State 270, fx]
type=helper
trigger1=!numhelper(6000)
helpertype=normal
stateno=6000
ID=6000
name="Psycho Power"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
persistent=0

[State 270, hit]
type=hitdef
trigger1=anim=270&&animelem=4
attr=A,NA
damage=63,0
animtype=Hard
guardflag=HA 
hitflag=MAF 
priority=4,Hit 
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-66
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-4.5
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=189*!var(20)
yaccel=.5

[State 270, hit]
type=hitdef
trigger1=anim=271&&animelem=4
attr=A,NA
damage=65,0
animtype=Hard
guardflag=HA 
hitflag=MAF 
priority=4,Hit 
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-98
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-4.5
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=195*!var(20)
yaccel=.5

[State 270, sts]
type=statetypeset
trigger1=anim=270&&animelemtime(5)>=0
trigger2=anim=271&&animelemtime(6)>=0
movetype=I


;===========<Air Light Kick>==========
[Statedef 275]
type=A
movetype=A
physics=A
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=ifelse(vel x,276,275)
poweradd=0
sprpriority=1
ctrl=0

[State 275, snd]
type=playsnd
trigger1=anim=275&&animelem=2&&random<200
trigger2=anim=276&&animelem=3&&random<200
value=3,ifelse(random<500,0,3)
channel=0
[State 275, snd]
type=playsnd
trigger1=anim=275&&animelem=2
trigger2=anim=276&&animelem=3
value=1,4

[State 275, hit]
type=hitdef
trigger1=animelem=2&&anim=275
attr=A,NA 
damage=20,0
animtype=Light
guardflag=HA 
hitflag=MAF 
priority=2,Hit 
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-68
hitsound=s2,4
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-4.5
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=60*!var(20)
yaccel=.5

[State 275, hit]
type=hitdef
trigger1=animelem=3&&anim=276
attr=A,NA 
damage=20,0
animtype=Light
guardflag=HA 
hitflag=MAF 
priority=2,Hit 
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-75
hitsound=s2,4
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-4.5
air.type=High
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=60*!var(20)
yaccel=.5

[State 275, sts]
type=statetypeset
trigger1=anim=275&&animelemtime(4)>=0
trigger2=anim=276&&animelemtime(5)>=0
movetype=I


;===========<Air Medium Kick>==========
[Statedef 280]
type=A
movetype=A
physics=A
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=ifelse(vel x,281,280)
poweradd=14*!var(20)
sprpriority=1
ctrl=0

[State 280, snd]
type=playsnd
trigger1=anim=280&&animelem=3&&random<350
trigger2=anim=281&&animelem=2&&random<350
value=3,ifelse(random<500,2,4)
channel=0
[State 280, snd]
type=playsnd
trigger1=anim=280&&animelem=3
trigger2=anim=281&&animelem=2
value=1,5

[State 280, hit]
type=hitdef
trigger1=anim=280&&animelem=4
attr=A,NA 
damage=40,0
animtype=Medium 
guardflag=HA 
hitflag=MAF 
priority=3,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-66
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-4.5
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=120*!var(20)
yaccel=.5

[State 280, hit]
type=hitdef
trigger1=anim=281&&animelem=2
attr=A,NA 
damage=40,0
animtype=Medium 
guardflag=HA 
hitflag=MAF 
priority=3,Hit 
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-77
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-4.5
air.type=High
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=120*!var(20)
yaccel=.5

[State 280, sts]
type=statetypeset
trigger1=anim=280&&animelemtime(6)>=0
trigger2=anim=281&&animelemtime(4)>=0
movetype=I


;===========<Air Hard Kick>==========
[Statedef 285]
type=A
movetype=A
physics=A
juggle=ifelse((p2movetype=H&&p2statetype=A),15,5) 
anim=ifelse(vel x,286,285)
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 285, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,ifelse(random<500,4,8)
channel=0
[State 285, snd]
type=playsnd
trigger1=anim=285&&animelem=4
trigger2=anim=286&&animelem=3
value=1,6

[State 285, hit]
type=hitdef
trigger1=anim=285&&animelem=4
attr=A,NA
damage=60,0
animtype=Hard
guardflag=HA 
hitflag=MAF 
priority=4,Hit 
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-66
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-4.5
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=180*!var(20)
yaccel=.5

[State 285, hit]
type=hitdef
trigger1=anim=286&&animelem=3
attr=A,NA
damage=60,0
animtype=Hard
guardflag=HA 
hitflag=MAF 
priority=4,Hit 
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-54
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-4.5
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=180*!var(20)
yaccel=.5

[State 285, sts]
type=statetypeset
trigger1=anim=285&&animelemtime(6)>=0
trigger2=anim=286&&animelemtime(5)>=0
movetype=I


;===========================================================================
;=================================<THROWS>==================================
;===========================================================================
;==========<THROW CONTROLLER>==========
[Statedef 800]
type=S
movetype=A
physics=S
juggle=0
velset=0,0
ctrl=0
anim=800
sprpriority=1

[State 800, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="2k",2,1)
[State 800, strengthvar]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<333,2,1)

[State 800, hit]
type=hitdef
trigger1=!time&&var(10)=1
attr=S,NT
hitflag=M-
priority=1,Miss
sparkno=-1
p1facing=ifelse(command="holdfwd",-1,1)
p2facing=1
p1stateno=ifelse(command="holdfwd",803,801) 
p2stateno=ifelse(command="holdfwd",804,802)
guard.dist=0
ground.velocity=8,-4
yaccel=.5
fall=1
ID=810

[State 800, hit]
type=hitdef
trigger1=!time&&var(10)=2
attr=S,NT 
hitflag=M-
priority=1,Miss
sparkno=-1
p1facing=ifelse(command="holdfwd",-1,1)
p2facing=1
p1stateno=ifelse(command="holdfwd",803,801) 
p2stateno=ifelse(command="holdfwd",804,802)
guard.dist=0
yaccel=.5
fall=1
ID=820
numhits=0

[State 800, misssnd]
type=playsnd
trigger1=animelem=3
value=5000,2
channel=0

[State 800, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---PLAYER---
[Statedef 801]
type=S
movetype=A
physics=S
anim=801
ctrl=0
sprpriority=1
[State 801, grabsnd]
type=playsnd
trigger1=!time
value=0,800
[State 801, end]
type=changestate
trigger1=1
value=ifelse(var(10)=2,820,810)
ctrl=0


;---PLAYER TURNS---
[Statedef 803]
type=S
movetype=A
physics=S
anim=803
ctrl=0
sprpriority=1
[State 803, grabsnd]
type=playsnd
trigger1=!time
value=0,800
[State 803, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=-45,0
[State 803, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=-23,0
[State 803, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=-1,0
[State 803, bind 4]
type=targetbind
trigger1=animelemtime(4)>=0
pos=22,0

[State 803, spr]
type=sprpriority
trigger1=1
value=-1
[State 803, end]
type=changestate
trigger1=!animtime
value=ifelse(var(10)=2,820,810)
ctrl=0

;---TARGET---
[Statedef 802]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 802, anim]
type=changeanim2
trigger1=!time
value=802
[Statedef 804]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 804, anim]
type=changeanim2
trigger1=!time
value=804


;==========<DEADLY THROW>==========
;---PLAYER---
[Statedef 810]
type=S
movetype=A
physics=S
anim=810
poweradd=0
juggle=0
ctrl=0
sprpriority=1
[State 810, throw]
type=targetstate
trigger1=!time
value=811

[State 810,width]
type=width
trigger1=animelemtime(10)<0
edge=25,0

[State 810, throwsnd]
type=playsnd
trigger1=animelem=4
value=3,8
channel=0

[State 810, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(4)<0
pos=50,0
[State 810, bind 4]
type=targetbind
trigger1=animelemtime(4)>=0&&animelemtime(5)<0
pos=49,-75
[State 810, bind 5]
type=targetbind
trigger1=animelemtime(5)>=0&&animelemtime(6)<0
pos=36,-81
[State 810, bind 6]
type=targetbind
trigger1=animelemtime(6)>=0&&animelemtime(7)<0
pos=5,-80
[State 810, bind 7]
type=targetbind
trigger1=animelem=7
pos=-20,-80-target,const(size.mid.pos.y)

[State 810, hurt]
type=targetlifeadd
trigger1=animelem=7
value=-90
[State 810, hurt]
type=targetpoweradd
trigger1=animelem=7
value=54
[State 810, hurt]
type=poweradd
trigger1=animelem=7
value=180
[State 810, throw]
type=targetstate
trigger1=animelem=7
value=812

[State 810, turn]
type=turn
trigger1=animelem=11
[State 810, end]
type=changestate
trigger1=!animtime
value=0 
ctrl=1


;---TARGET---
[Statedef 811]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=-1
[State 811, anim]
type=changeanim2
trigger1=!time
value=811
[State 811, camera]
type=screenbound
trigger1=1
value=0
movecamera=0,0

[Statedef 812]
type=A
movetype=H
physics=N
velset=8,-4
sprpriority=-1
[State 812, hitground]
type=turn
trigger1=1
persistent=0
[State 812, hitground]
type=selfstate
trigger1=1
value=5050;5030


;==========<DEATH TOWER>==========
;---PLAYER---
[Statedef 820]
type=S
movetype=A
physics=S
anim=820
poweradd=0
juggle=0
ctrl=0
sprpriority=2
[State 820, throw]
type=targetstate
trigger1=!time
value=821

[State 820,width]
type=width
trigger1=animelemtime(18)<0
edge=0,50

[State 820, throwsnd]
type=playsnd
trigger1=animelem=4||animelem=12
value=3,ifelse((animelem=4),4,2)
channel=0

[State 820, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(4)<0
pos=50,0
[State 820, bind 7]
type=targetbind
trigger1=animelemtime(7)>=0&&animelemtime(8)<0
pos=54,-134
[State 820, bind 8]
type=targetbind
trigger1=animelemtime(8)>=0&&animelemtime(11)<0
pos=51,-130
[State 820, bind 11]
type=targetbind
trigger1=animelemtime(11)>=0&&animelemtime(12)<0
pos=42,-134
[State 820, bind 12]
type=targetbind
trigger1=animelemtime(12)>=0&&animelemtime(13)<0
pos=10,-138
[State 820, bind 13]
type=targetbind
trigger1=animelemtime(13)>=0&&animelemtime(14)<0
pos=-23,-130
[State 820, bind 14]
type=targetbind
trigger1=animelem=14
pos=-75,-80

[State 820, hurt]
type=targetlifeadd
trigger1=animelem=3||animelem=7
value=ifelse((animelem=3),-40,-60)
kill=(animelem=7)
[State 820, hurt]
type=targetpoweradd
trigger1=animelem=3||animelem=7
value=ifelse((animelem=3),24,36)
[State 820, hurt]
type=poweradd
trigger1=animelem=3||animelem=7
value=ifelse((animelem=3),80,120)
[State 820, hit]
type=hitadd
trigger1=animelem=3||animelem=7
value=1
[State 820, hitsnd]
type=playsnd
trigger1=animelem=3||animelem=7
value=2,ifelse((animelem=3),5,6)

[State 820, sparks]
type=explod
trigger1=animelem=3
anim=7010+(random%8)
ID=7000
sprpriority=5
postype=p1
pos=59,-35
ownpal=1
persistent=0
pausemovetime=100
supermovetime=100
[State 820, sparks]
type=explod
trigger1=animelem=7
anim=7010+(random%8)
ID=7000
sprpriority=5
postype=p1
pos=54,-134
ownpal=1
persistent=0
pausemovetime=100
supermovetime=100

[State 820, throw]
type=targetstate
trigger1=animelem=14
value=822

[State 820, turn]
type=turn
trigger1=animelem=18
[State 820, end]
type=changestate
trigger1=!animtime
value=0 
ctrl=1


;---TARGET---
[Statedef 821]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=-1
[State 821, anim]
type=changeanim2
trigger1=!time
value=821
[State 821, camera]
type=screenbound
trigger1=1
value=0
movecamera=0,0

[Statedef 822]
type=A
movetype=H
physics=N
velset=6,3
sprpriority=-1
[State 822, grav]
type=veladd
trigger1=1
y=.5
[State 822, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0
[State 822, hitground]
type=selfstate
trigger1=vel y>0&&pos y>=(const(size.head.pos.y)-const(size.mid.pos.y))
value=5100