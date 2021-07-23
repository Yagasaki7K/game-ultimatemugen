; ________________________________
;| Karin by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<NORMAL MOVES>========================================
;==============================================================================================

;===========<Standing Light Punch>==========
[Statedef 200]
type=S
physics=S
movetype=A
anim=200
ctrl=0
velset=0,0
sprpriority=1
poweradd=0
facep2=1

[State 200, snd]
type=playsnd
trigger1= animelem=1 && random<200
value=4,ifelse(random<500,5,6)
channel=0
[State 200, snd]
type=playsnd
trigger1= animelem=2
value=1,0
channel=1

[State 200, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=2
ID=200*!var(20)
attr=S,NA
hitflag=MAF
guardflag=M
priority=2,Hit
damage=ceil(ifelse(fvar(11)*14<7,7,fvar(11)*14)),0
getpower=72*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(8/((var(20)>0)+1.0)),ceil(8/((var(20)>0)+1.0))
guard.pausetime=ceil(8/((var(20)>0)+1.0)),ceil(8/((var(20)>0)+1.0))
animtype=Light
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=10+2*var(9)
ground.slidetime=10+2*var(9)
guard.hittime=10
air.hittime=60;12
ground.velocity=-5.62/((var(20)>0)+1.0),0
guard.velocity=-5.62/((var(20)>0)+1.0)
air.velocity=-5.24/((var(20)>0)+1.0),-7
ground.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
guard.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-66*const(size.yscale))
hitsound=s2,0
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 200, sts]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I
[State 200, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Standing Medium Punch>==========
[Statedef 210]
type=S
physics=S
movetype=A
anim=210
ctrl=0
velset=0,0
sprpriority=1
poweradd=18*!var(20)
facep2=1

[State 210, snd]
type=playsnd
trigger1= animelem=1 && random<350
value=4,ifelse(random<500,3,7)
channel=0
[State 210, snd]
type=playsnd
trigger1= animelem=2
value=1,1
channel=1

[State 210, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=2
ID=200*!var(20)
attr=S,NA
hitflag=MAF
guardflag=M
priority=3,Hit
damage=ceil(ifelse(fvar(11)*56<7,7,fvar(11)*56)),0
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
guard.pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
animtype=Medium
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=13+3*var(9)
ground.slidetime=13+3*var(9)
guard.hittime=13
air.hittime=60;9
ground.velocity=-9.22/((var(20)>0)+1.0),0
guard.velocity=-9.22/((var(20)>0)+1.0)
air.velocity=-7.8/((var(20)>0)+1.0),-5.23
ground.cornerpush.veloff=-17.2/((var(20)>0)+1.0)
guard.cornerpush.veloff=-17.2/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-55*const(size.yscale))
hitsound=s2,1
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 210, sts]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I
[State 210, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Standing Hard Punch>==========
[Statedef 220]
type=S
physics=S
movetype=A
anim=220
ctrl=0
velset=0,0
sprpriority=1
poweradd=18*!var(20)
facep2=1

[State 220, pos]
type=posadd
trigger1= animelem=2 || animelem=3
x=ceil(16*const(size.yscale))
[State 220, pos]
type=posadd
trigger1= animelemtime(9)=0 || animelemtime(9)=1 || animelemtime(9)=2
trigger2= animelem=10
x=floor(-8*const(size.yscale))

[State 220, snd]
type=playsnd
trigger1= animelem=3
value=4,5
channel=0
[State 220, snd]
type=playsnd
trigger1= animelem=3
value=1,2
channel=1

[State 220, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=4
ID=200*!var(20)
attr=S,NA
hitflag=MAF
guardflag=M
priority=4,Hit
damage=ceil(ifelse(fvar(11)*90<7,7,fvar(11)*90)),0
getpower=ifelse(!var(13),216,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=17+4*var(9)
ground.slidetime=17+4*var(9)
guard.hittime=17
air.hittime=60;12
ground.velocity=-12.65/((var(20)>0)+1.0),0
guard.velocity=-12.65/((var(20)>0)+1.0)
air.velocity=-5.39/((var(20)>0)+1.0),-7
ground.cornerpush.veloff=-24.4/((var(20)>0)+1.0)
guard.cornerpush.veloff=-24.4/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=10
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-77*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 220, sts]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
[State 220, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Standing Light Kick>==========
[Statedef 230]
type=S
physics=S
movetype=A
anim=230
ctrl=0
velset=0,0
sprpriority=1
poweradd=0
facep2=1

[State 230, snd]
type=playsnd
trigger1= animelem=1 && random<200
value=4,ifelse(random<500,5,6)
channel=0
[State 230, snd]
type=playsnd
trigger1= animelem=2
value=1,3
channel=1

[State 230, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=3
ID=200*!var(20)
attr=S,NA
hitflag=MAF
guardflag=M
priority=2,Hit
damage=ceil(ifelse(fvar(11)*14<7,7,fvar(11)*14)),0
getpower=72*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(8/((var(20)>0)+1.0)),ceil(8/((var(20)>0)+1.0))
guard.pausetime=ceil(8/((var(20)>0)+1.0)),ceil(8/((var(20)>0)+1.0))
animtype=Light
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=10+2*var(9)
ground.slidetime=10+2*var(9)
guard.hittime=10
air.hittime=60;12
ground.velocity=-5.62/((var(20)>0)+1.0),0
guard.velocity=-5.62/((var(20)>0)+1.0)
air.velocity=-5.24/((var(20)>0)+1.0),-7
ground.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
guard.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-65*const(size.yscale))
hitsound=s2,3
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 230, sts]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I
[State 230, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Standing Medium Kick>==========
[Statedef 240]
type=S
physics=S
movetype=A
anim=240
ctrl=0
velset=0,0
sprpriority=1
poweradd=18*!var(20)
facep2=1

[State 240, snd]
type=playsnd
trigger1= animelem=1 && random<350
value=4,ifelse(random<500,3,7)
channel=0
[State 240, snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 240, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=2
ID=200*!var(20)
attr=S,NA
hitflag=MAF
guardflag=M
priority=3,Hit
damage=ceil(ifelse(fvar(11)*56<7,7,fvar(11)*56)),0
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
guard.pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
animtype=Medium
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=13+3*var(9)
ground.slidetime=13+3*var(9)
guard.hittime=13
air.hittime=60;9
ground.velocity=-9.22/((var(20)>0)+1.0),0
guard.velocity=-9.22/((var(20)>0)+1.0)
air.velocity=-7.8/((var(20)>0)+1.0),-5.35
ground.cornerpush.veloff=-17.2/((var(20)>0)+1.0)
guard.cornerpush.veloff=-17.2/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-62*const(size.yscale))
hitsound=s2,4
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 240, sts]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I
[State 240, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Tsumuji-gari>==========
[Statedef 245]
type=S
physics=S
movetype=A
anim=245
ctrl=0
velset=0,0
sprpriority=1
poweradd=18*!var(20)
facep2=1

[State 245, pos]
type=posadd
trigger1= animelemtime(1)=0 || animelemtime(2)=0 || animelemtime(7)=0
x=ceil(2*const(size.yscale))
[State 245, pos]
type=posadd
trigger1= animelemtime(3)=0 || animelemtime(4)=0 || animelemtime(5)=0 || animelemtime(6)=0
x=ceil(8*const(size.yscale))
[State 245, pos]
type=posadd
trigger1= animelemtime(11)=0 || animelemtime(11)=2 || animelemtime(12)=0 || animelemtime(12)=1
x=floor(-8*const(size.yscale))

[State 245, snd]
type=playsnd
trigger1= animelem=3
value=4,2
channel=0
[State 245, snd]
type=playsnd
trigger1= animelem=6
value=1,4
channel=1

[State 245, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=7
ID=200*!var(20)
attr=S,NA
hitflag=MAF
guardflag=H
priority=3,Hit
damage=ceil(ifelse(fvar(11)*56<7,7,fvar(11)*56)),0
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
guard.pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
animtype=Medium
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=13+3*var(9)
ground.slidetime=13+3*var(9)
guard.hittime=13
air.hittime=60;9
ground.velocity=-9.22/((var(20)>0)+1.0),0
guard.velocity=-9.22/((var(20)>0)+1.0)
air.velocity=-7.8/((var(20)>0)+1.0),-5.35
ground.cornerpush.veloff=-17.2/((var(20)>0)+1.0)
guard.cornerpush.veloff=-17.2/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-47*const(size.yscale))
hitsound=s2,4
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 245, sts]
type=statetypeset
trigger1= animelemtime(8)>=0
movetype=I
[State 245, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Standing Hard Kick>==========
[Statedef 250]
type=S
physics=S
movetype=A
anim=250
ctrl=0
velset=0,0
sprpriority=-1
poweradd=18*!var(20)
facep2=1

[State 250, pos]
type=posadd
trigger1= animelemtime(2)=0 || animelemtime(2)=1 || animelemtime(3)=0 || animelemtime(3)=1
x=ceil(8*const(size.yscale))
[State 250, pos]
type=posadd
trigger1= animelemtime(9)=0 || animelemtime(9)=2 || animelemtime(10)=0 || animelemtime(10)=1
x=floor(-8*const(size.yscale))

[State 250, snd]
type=playsnd
trigger1= animelem=3
value=4,3
channel=0
[State 250, snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 250, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=4
ID=200*!var(20)
attr=S,NA
hitflag=MAF
guardflag=M
priority=4,Hit
damage=ceil(ifelse(fvar(11)*90<7,7,fvar(11)*90)),0
getpower=ifelse(!var(13),216,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=17+4*var(9)
ground.slidetime=17+4*var(9)
guard.hittime=17
air.hittime=60;12
ground.velocity=-12.65/((var(20)>0)+1.0),0
guard.velocity=-12.65/((var(20)>0)+1.0)
air.velocity=-5.24/((var(20)>0)+1.0),-7
ground.cornerpush.veloff=-24.4/((var(20)>0)+1.0)
guard.cornerpush.veloff=-24.4/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=10
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-39*const(size.yscale))
hitsound=s2,5
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
p1sprpriority=-1

[State 250, spr]
type=sprpriority
trigger1=animelem=5
value=1

[State 250, sts]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I
[State 250, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Crouching Light Punch>==========
[Statedef 400]
type=C
physics=C
movetype=A
anim=400
ctrl=0
velset=0,0
sprpriority=1
poweradd=0
facep2=1

[State 400, snd]
type=playsnd
trigger1= animelem=1 && random<400
value=4,ifelse(random<500,5,6)
channel=0
[State 400, snd]
type=playsnd
trigger1= animelem=2
value=1,0
channel=1

[State 400, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=2
ID=200*!var(20)
attr=C,NA
hitflag=MAF
guardflag=M
priority=2,Hit
damage=ceil(ifelse(fvar(11)*14<7,7,fvar(11)*14)),0
getpower=72*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(8/((var(20)>0)+1.0)),ceil(8/((var(20)>0)+1.0))
guard.pausetime=ceil(8/((var(20)>0)+1.0)),ceil(8/((var(20)>0)+1.0))
animtype=Light
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=10+2*var(9)
ground.slidetime=10+2*var(9)
guard.hittime=10
air.hittime=60;12
ground.velocity=-5.62/((var(20)>0)+1.0),0
guard.velocity=-5.62/((var(20)>0)+1.0)
air.velocity=-5.24/((var(20)>0)+1.0),-7
ground.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
guard.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-43*const(size.yscale))
hitsound=s2,0
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 400, sts]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I
[State 400, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;===========<Crouching Medium Punch>==========
[Statedef 410]
type=C
physics=C
movetype=A
anim=410
ctrl=0
velset=0,0
sprpriority=1
poweradd=18*!var(20)
facep2=1

[State 410, snd]
type=playsnd
trigger1= animelem=1 && random<350
value=4,ifelse(random<500,3,7)
channel=0
[State 410, snd]
type=playsnd
trigger1= animelem=2
value=1,1
channel=1

[State 410, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=2
ID=200*!var(20)
attr=C,NA
hitflag=MAF
guardflag=L
priority=3,Hit
damage=ceil(ifelse(fvar(11)*56<7,7,fvar(11)*56)),0
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
guard.pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
animtype=Medium
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=13+3*var(9)
ground.slidetime=13+3*var(9)
guard.hittime=13
air.hittime=60;9
ground.velocity=-9.22/((var(20)>0)+1.0),0
guard.velocity=-9.22/((var(20)>0)+1.0)
air.velocity=-7.8/((var(20)>0)+1.0),-5.35
ground.cornerpush.veloff=-17.2/((var(20)>0)+1.0)
guard.cornerpush.veloff=-17.2/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-12*const(size.yscale))
hitsound=s2,1
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 410, sts]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I
[State 410, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;===========<Crouching Hard Punch>==========
[Statedef 420]
type=C
physics=C
movetype=A
anim=420
ctrl=0
velset=0,0
sprpriority=1
poweradd=18*!var(20)
facep2=1

[State 420, snd]
type=playsnd
trigger1= animelem=3
value=4,5
channel=0
[State 420, snd]
type=playsnd
trigger1= animelem=3
value=1,2
channel=1

[State 420, hit]
type=hitdef
triggerall= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=4
trigger2= animelem=5 && !movecontact && !movereversed
ID=200*!var(20)
attr=C,NA
hitflag=MAF
guardflag=M
priority=4,Hit
damage=ceil(ifelse(fvar(11)*90<7,7,fvar(11)*90)),0
getpower=ifelse(!var(13),216,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=17+4*var(9)
ground.slidetime=17+4*var(9)
guard.hittime=17
air.hittime=60;14
ground.velocity=-12.65/((var(20)>0)+1.0),0
guard.velocity=-12.65/((var(20)>0)+1.0)
air.velocity=-2.5/((var(20)>0)+1.0),-8.45
ground.cornerpush.veloff=-24.4/((var(20)>0)+1.0)
guard.cornerpush.veloff=-24.4/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=10
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(ifelse((animelem=5),-100,-68)*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 420, sts]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
[State 420, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;===========<Crouching Light Kick>==========
[Statedef 430]
type=C
physics=C
movetype=A
anim=430
ctrl=0
velset=0,0
sprpriority=1
poweradd=0
facep2=1

[State 430, snd]
type=playsnd
trigger1= animelem=1 && random<430
value=4,ifelse(random<500,5,6)
channel=0
[State 430, snd]
type=playsnd
trigger1= animelem=2
value=1,3
channel=1

[State 430, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=2
ID=200*!var(20)
attr=C,NA
hitflag=MAF
guardflag=L
priority=2,Hit
damage=ceil(ifelse(fvar(11)*14<7,7,fvar(11)*14)),0
getpower=72*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(8/((var(20)>0)+1.0)),ceil(8/((var(20)>0)+1.0))
guard.pausetime=ceil(8/((var(20)>0)+1.0)),ceil(8/((var(20)>0)+1.0))
animtype=Light
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=10+2*var(9)
ground.slidetime=10+2*var(9)
guard.hittime=10
air.hittime=60;12
ground.velocity=-5.62/((var(20)>0)+1.0),0
guard.velocity=-5.62/((var(20)>0)+1.0)
air.velocity=-5.24/((var(20)>0)+1.0),-7
ground.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
guard.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-8*const(size.yscale))
hitsound=s2,3
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 430, sts]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I
[State 430, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;===========<Crouching Medium Kick>==========
[Statedef 440]
type=C
physics=C
movetype=A
anim=440
ctrl=0
velset=0,0
sprpriority=1
poweradd=18*!var(20)
facep2=1

[State 440, snd]
type=playsnd
trigger1= animelem=1 && random<350
value=4,ifelse(random<500,3,7)
channel=0
[State 440, snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 440, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=4
ID=200*!var(20)
attr=C,NA
hitflag=MAF
guardflag=L
priority=3,Hit
damage=ceil(ifelse(fvar(11)*56<7,7,fvar(11)*56)),0
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
guard.pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
animtype=Medium
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=13+3*var(9)
ground.slidetime=13+3*var(9)
guard.hittime=13
air.hittime=60;9
ground.velocity=-9.22/((var(20)>0)+1.0),0
guard.velocity=-9.22/((var(20)>0)+1.0)
air.velocity=-7.8/((var(20)>0)+1.0),-5.35
ground.cornerpush.veloff=-17.2/((var(20)>0)+1.0)
guard.cornerpush.veloff=-17.2/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-11*const(size.yscale))
hitsound=s2,4
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 440, sts]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I
[State 440, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;===========<Crouching Hard Kick>==========
[Statedef 450]
type=C
physics=C
movetype=A
anim=450
ctrl=0
velset=0,0
sprpriority=1
poweradd=18*!var(20)
facep2=1

[State 450, snd]
type=playsnd
trigger1= animelem=3
value=4,5
channel=0
[State 450, snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 450, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=5
ID=200*!var(20)
attr=C,NA
hitflag=MAF
guardflag=L
priority=4,Hit
damage=ceil(ifelse(fvar(11)*90<7,7,fvar(11)*90)),0
getpower=ifelse(!var(13),216,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Trip
air.type=Trip
ground.hittime=17+4*var(9)
ground.slidetime=17+4*var(9)
guard.hittime=17
air.hittime=60;10
ground.velocity=-1.33,-8.07
guard.velocity=-12.65/((var(20)>0)+1.0)
air.velocity=-1.33,-8.07
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-24.4/((var(20)>0)+1.0)
air.cornerpush.veloff=0
yaccel=.65
fall=1
air.fall=1
fall.recover=0
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-8*const(size.yscale))
hitsound=s2,5
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 450, sts]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
[State 450, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;===========<Jumping Light Punch>==========
[Statedef 600]
type=A
physics=N
movetype=A
anim=600
ctrl=0
sprpriority=1
poweradd=0

[State 600, snd]
type=playsnd
trigger1= animelem=1 && random<600
value=4,ifelse(random<500,1,6)
channel=0
[State 600, snd]
type=playsnd
trigger1= animelem=2
value=1,0
channel=1

[State 600, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=2
ID=200*!var(20)
attr=A,NA
hitflag=MAF
guardflag=HA
priority=2,Hit
damage=ceil(ifelse(fvar(11)*35<7,7,fvar(11)*35)),0
getpower=72*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(8/((var(20)>0)+1.0)),ceil(8/((var(20)>0)+1.0))
guard.pausetime=ceil(8/((var(20)>0)+1.0)),ceil(8/((var(20)>0)+1.0))
animtype=Light
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=10+2*var(9)
ground.slidetime=10+2*var(9)
guard.hittime=10
air.hittime=60;13
airguard.ctrltime=16
ground.velocity=-5.62/((var(20)>0)+1.0),0
guard.velocity=-5.62/((var(20)>0)+1.0)
air.velocity=-5.25/((var(20)>0)+1.0),-7
airguard.velocity=-8/((var(20)>0)+1.0),-1.5
ground.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
guard.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=13
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-90*const(size.yscale))
hitsound=s2,0
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 600, sts]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
[State 600, grav]
type=gravity
trigger1= 1
[State 600, land]
type=changestate
trigger1= pos y>=-vel y
value=52


;===========<Jumping Medium Punch>==========
[Statedef 610]
type=A
physics=N
movetype=A
anim=610
ctrl=0
sprpriority=1
poweradd=18*!var(20)

[State 610, snd]
type=playsnd
trigger1= animelem=2 && random<350
value=4,ifelse(random<500,0,5)
channel=0
[State 610, snd]
type=playsnd
trigger1= animelem=3
value=1,1
channel=1

[State 610, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=3
ID=200*!var(20)
attr=A,NA
hitflag=MAF
guardflag=HA
priority=2,Hit
damage=ceil(ifelse(fvar(11)*35<7,7,fvar(11)*35)),0
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
guard.pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
animtype=Medium
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=10+3*var(9)
ground.slidetime=10+3*var(9)
guard.hittime=13
air.hittime=60;12
airguard.ctrltime=16
ground.velocity=-5.62/((var(20)>0)+1.0),0
guard.velocity=-10.1/((var(20)>0)+1.0)
air.velocity=-7.8/((var(20)>0)+1.0),-5.35
airguard.velocity=-8/((var(20)>0)+1.0),-1.5
ground.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
guard.cornerpush.veloff=-17.2/((var(20)>0)+1.0)
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-72*const(size.yscale))
hitsound=s2,1
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 610, sts]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I
[State 610, grav]
type=gravity
trigger1= 1
[State 610, land]
type=changestate
trigger1= pos y>=-vel y
value=52


;===========<Jumping Hard Punch>==========
[Statedef 620]
type=A
physics=N
movetype=A
anim=620
ctrl=0
sprpriority=1
poweradd=18*!var(20)

[State 620, snd]
type=playsnd
trigger1= animelem=1 && random<500
value=4,ifelse(random<500,2,4)
channel=0
[State 620, snd]
type=playsnd
trigger1= animelem=3
value=1,2
channel=1

[State 620, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=3
ID=200*!var(20)
attr=A,NA
hitflag=MAF
guardflag=HA
priority=2,Hit
damage=ceil(ifelse(fvar(11)*35<7,7,fvar(11)*35)),0
getpower=ifelse(!var(13),216,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=10+4*var(9)
ground.slidetime=10+4*var(9)
guard.hittime=16
air.hittime=60;12
airguard.ctrltime=16
ground.velocity=-5.62/((var(20)>0)+1.0),0
guard.velocity=-14.58/((var(20)>0)+1.0)
air.velocity=-6.5/((var(20)>0)+1.0),-6.32
airguard.velocity=-8/((var(20)>0)+1.0),-1.5
ground.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
guard.cornerpush.veloff=-24.4/((var(20)>0)+1.0)
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-60*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 620, sts]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I
[State 620, grav]
type=gravity
trigger1= 1
[State 620, land]
type=changestate
trigger1= pos y>=-vel y
value=52


;===========<Jumping Light Kick>==========
[Statedef 630]
type=A
physics=N
movetype=A
anim=630
ctrl=0
sprpriority=1
poweradd=0

[State 630, snd]
type=playsnd
trigger1= animelem=1 && random<630
value=4,ifelse(random<500,1,6)
channel=0
[State 630, snd]
type=playsnd
trigger1= animelem=2
value=1,3
channel=1

[State 630, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=2
ID=200*!var(20)
attr=A,NA
hitflag=MAF
guardflag=HA
priority=2,Hit
damage=ceil(ifelse(fvar(11)*35<7,7,fvar(11)*35)),0
getpower=72*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(8/((var(20)>0)+1.0)),ceil(8/((var(20)>0)+1.0))
guard.pausetime=ceil(8/((var(20)>0)+1.0)),ceil(8/((var(20)>0)+1.0))
animtype=Light
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=10+2*var(9)
ground.slidetime=10+2*var(9)
guard.hittime=10
air.hittime=60;13
airguard.ctrltime=16
ground.velocity=-5.62/((var(20)>0)+1.0),0
guard.velocity=-5.62/((var(20)>0)+1.0)
air.velocity=-5.25/((var(20)>0)+1.0),-7
airguard.velocity=-8/((var(20)>0)+1.0),-1.5
ground.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
guard.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=13
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-20*const(size.yscale))
hitsound=s2,3
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 630, sts]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
[State 630, grav]
type=gravity
trigger1= 1
[State 630, land]
type=changestate
trigger1= pos y>=-vel y
value=52


;===========<Jumping Medium Kick>==========
[Statedef 640]
type=A
physics=N
movetype=A
anim=640
ctrl=0
sprpriority=1
poweradd=18*!var(20)

[State 640, snd]
type=playsnd
trigger1= animelem=2 && random<350
value=4,ifelse(random<500,0,5)
channel=0
[State 640, snd]
type=playsnd
trigger1= animelem=3
value=1,4
channel=1

[State 640, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=3
ID=200*!var(20)
attr=A,NA
hitflag=MAF
guardflag=HA
priority=2,Hit
damage=ceil(ifelse(fvar(11)*35<7,7,fvar(11)*35)),0
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
guard.pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
animtype=Medium
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=10+3*var(9)
ground.slidetime=10+3*var(9)
guard.hittime=13
air.hittime=60;12
airguard.ctrltime=16
ground.velocity=-5.62/((var(20)>0)+1.0),0
guard.velocity=-10.1/((var(20)>0)+1.0)
air.velocity=-7.8/((var(20)>0)+1.0),-5.35
airguard.velocity=-8/((var(20)>0)+1.0),-1.5
ground.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
guard.cornerpush.veloff=-17.2/((var(20)>0)+1.0)
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-47*const(size.yscale))
hitsound=s2,4
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 640, sts]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I
[State 640, grav]
type=gravity
trigger1= 1
[State 640, land]
type=changestate
trigger1= pos y>=-vel y
value=52


;===========<Jumping Hard Kick>==========
[Statedef 650]
type=A
physics=N
movetype=A
anim=650
ctrl=0
sprpriority=1
poweradd=18*!var(20)

[State 650, snd]
type=playsnd
trigger1= animelem=1 && random<500
value=4,ifelse(random<500,2,4)
channel=0
[State 650, snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 650, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=4
ID=200*!var(20)
attr=A,NA
hitflag=MAF
guardflag=HA
priority=2,Hit
damage=ceil(ifelse(fvar(11)*35<7,7,fvar(11)*35)),0
getpower=ifelse(!var(13),216,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=10+4*var(9)
ground.slidetime=10+4*var(9)
guard.hittime=16
air.hittime=60;12
airguard.ctrltime=16
ground.velocity=-5.62/((var(20)>0)+1.0),0
guard.velocity=-14.58/((var(20)>0)+1.0)
air.velocity=-6.5/((var(20)>0)+1.0),-6.32
airguard.velocity=-8/((var(20)>0)+1.0),-1.5
ground.cornerpush.veloff=-9.83/((var(20)>0)+1.0)
guard.cornerpush.veloff=-24.4/((var(20)>0)+1.0)
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
fall=0
air.fall=0
fall.recover=1
fall.recovertime=12
sparkno=s8010+(random%8)
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-36*const(size.yscale))
hitsound=s2,5
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 650, sts]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
[State 650, grav]
type=gravity
trigger1= 1
[State 650, land]
type=changestate
trigger1= pos y>=-vel y
value=52


;===========<Throw Attempt>==========
[Statedef 800]
type=S
physics=S
movetype=A
anim=800
ctrl=0
velset=0,0
sprpriority=1
poweradd=7*!var(20)

[State 800, strengthvar]
type=varset
trigger1= !time && var(59)<=0
var(10)=(command="2k")
[State 800, strengthvar]
type=varset
trigger1= !time && var(59)>=1
var(10)=(random<666)

[State 800, escape]
type=varset
trigger1= 1
var(19)=0
[State 800, escape]
type=varset
trigger1= numenemy
trigger1= (enemynear,stateno=[0,699]) && (enemynear,stateno!=[100,104])
var(19)=7

[State 800, hit]
type=hitdef
trigger1= animelem=2
ID=800
attr=S,NT
hitflag=M-
priority=1,Miss
getpower=82*!var(20),0
givepower=0,0
sparkno=-1
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-50*const(size.yscale))
hitsound=s0,800
guardsound=s3,0
yaccel=.5
fall=1
fall.recover=0
numhits=0
p1stateno=810

[State 800, hit]
type=hitdef
trigger1= animelem=2 && var(10)
ID=800
attr=S,NT
hitflag=M-
priority=1,Miss
getpower=82*!var(20),0
givepower=0,0
sparkno=-1
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-50*const(size.yscale))
hitsound=s0,800
guardsound=s3,0
yaccel=.5
fall=1
fall.recover=0
numhits=0
p1stateno=ifelse(command="holdback",805,820)

[State 800, snd]
type=playsnd
trigger1= animelem=3
value=4,9
channel=0
[State 800, snd]
type=playsnd
trigger1= animelem=3
value=1,0
channel=1

[State 800, sts]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I
[State 800, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---PLAYER TURNS---
[Statedef 805]
type=S
movetype=A
physics=S
anim=805
ctrl=0
sprpriority=0
[State 805, throw]
type=targetstate
trigger1= !time && numtarget(800)
ID=800
value=806
[State 805, throw]
type=targetfacing
trigger1= !time && numtarget(800)
ID=800
value=-1
[State 805, width]
type=width
trigger1= 1
edge=24,24

[State 805, turn]
type=turn
trigger1= animelem=3
[State 805, facing]
type=targetfacing
trigger1= 1
value=-1

[State 805, escape]
type=changestate
trigger1= numtarget(800) && var(19)
trigger1= (target(800),command="holdfwd" || target(800),command="holdback")
trigger1= (target(800),command="b" || target(800),command="c" || target(800),command="y" || target(800),command="z")
value=890
[State 805, escape]
type=varadd
trigger1= var(19)>0
var(19)=-1

[State 805, bind 1]
type=targetbind
trigger1= animelemtime(2)<0 || animelemtime(4)>=0
pos=ceil(42*const(size.xscale)),0
[State 805, bind 2]
type=targetbind
trigger1= animelemtime(2)>=0 && animelemtime(4)<0
pos=ceil(21*const(size.xscale)),0

[State 805, spr]
type=sprpriority
trigger1= animelemtime(2)<0 || animelemtime(4)>=0
value=1
[State 805, spr]
type=sprpriority
trigger1= animelemtime(2)>=0 && animelemtime(4)<0
value=-1

[State 805, end]
type=changestate
trigger1= !numtarget(800)
value=0
ctrl=1
[State 805, end]
type=changestate
trigger1= animelemtime(4)>=0
value=ifelse(var(10),820,810)


;---TARGET---
[Statedef 806]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 806, nhb]
type=nothitby
trigger1= 1
value=SCA
time=1
[State 806, anim]
type=changeanim2
trigger1= !time
value=806
[State 806, camera]
type=screenbound
trigger1= 1
value=0
movecamera=1,1


;===========<Yashiro Kuzushi>==========
[Statedef 810]
type=S
physics=S
movetype=A
anim=810
ctrl=0
velset=0,0
sprpriority=1

[State 810, safety]
type=changestate
trigger1= !time && !numtarget(800)
value=0
ctrl=1

[State 810, escape]
type=changestate
trigger1= numtarget(800) && var(19)
trigger1= (target(800),command="holdfwd" || target(800),command="holdback")
trigger1= (target(800),command="b" || target(800),command="c" || target(800),command="y" || target(800),command="z")
value=890
[State 810, escape]
type=varadd
trigger1= var(19)>0
var(19)=-1

[State 810, throw]
type=targetstate
trigger1= !time && numtarget(800)
ID=800
value=811

[State 810, turn]
type=varset
trigger1= !time
var(0)=command="holdback"
[State 810, turn]
type=turn
trigger1= var(0) && animelem=3

[State 810, throw]
type=targetfacing
trigger1= numtarget(800)
ID=800
value=-1

[State 810, width]
type=width
trigger1= 1
edge=48,48

[State 810, bind 1]
type=targetbind
trigger1= numtarget(800)
trigger1= animelemtime(3)<0
ID=800
pos=ceil(42*const(size.xscale)),0
[State 810, bind 2]
type=bindtotarget
trigger1= numtarget(800)
trigger1= animelemtime(2)>=0 && animelemtime(3)<0
ID=800
pos=ceil(4*const(size.xscale)),0
[State 810, bind 3]
type=targetbind
trigger1= numtarget(800)
trigger1= animelemtime(3)>=0 && animelemtime(4)<0
ID=800
pos=ceil(19*const(size.xscale)),ceil(-72*const(size.yscale))
[State 810, bind 4]
type=targetbind
trigger1= numtarget(800)
trigger1= animelemtime(4)>=0 && animelemtime(5)<0
ID=800
pos=ceil(39*const(size.xscale)),ceil(-60*const(size.yscale))
[State 810, bind 5]
type=targetbind
trigger1= numtarget(800)
trigger1= animelemtime(5)>=0
ID=800
pos=ceil(30*const(size.xscale)),ceil(-42*const(size.yscale))

[State 810, snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 810, end]
type=changestate
trigger1= !animtime
value=815 


;-----Hit Floor-----
[Statedef 815]
type=S
physics=S
movetype=A
anim=815
ctrl=0
velset=0,0
sprpriority=1

[State 815, juggle]
type=varadd
trigger1= !time && numtarget(800)
var(14)=1
ignorehitpause=1
[State 815, juggle]
type=varset
trigger1= !time && numtarget(800)
var(37)=1
ignorehitpause=1

[State 815, pos]
type=posset
trigger1=!time
y=0

[State 815, throw]
type=targetstate
trigger1= !time && numtarget(800)
ID=800
value=816

[State 815, bind 1]
type=targetbind
trigger1= numtarget(800) && animelemtime(3)<0
ID=800
pos=ceil(19*const(size.xscale)),0

[State 815, damage]
type=targetlifeadd
trigger1= numtarget(800) && !time
value=ceil(ifelse(111*fvar(11)<7,-7,-111*fvar(11)))
ID=800

[State 815, hit]
type=hitadd
trigger1= numtarget(800) && !time
value=1
[State 815, hitcount]
type=varadd
trigger1= numtarget(800) && !time
var(13)=1

[State 815, givepower]
type=targetpoweradd
trigger1= numtarget(800) && !time
value=36
ID=800
[State 815, getpower]
type=poweradd
trigger1= !time
value=72

[State 815, snd]
type=playsnd
trigger1= !time
value=4,4
channel=0

[State 815, snd]
type=playsnd
trigger1= !time
value=0,5100
[State 815, shake]
type=envshake
trigger1= !time
time=18
ampl=-6
[State 815, dust]
type=explod
trigger1= !time
anim=8110
sprpriority=-3
postype=p1
pos=ceil(19*const(size.xscale)),0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 815, end]
type=changestate
trigger1= !animtime
value=0 
ctrl=1


;---TARGET---
[Statedef 811]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 811, anim]
type=changeanim2
trigger1= !time
value=811
[State 811, camera]
type=screenbound
trigger1= 1
value=0
movecamera=0,0

[Statedef 816]
type=L
physics=N
movetype=H
ctrl=0
velset=0,0
sprpriority=0
[State 816, anim]
type=changeanim2
trigger1= !time
value=816
[State 816, end]
type=changestate
trigger1= !animtime
value=817

[Statedef 817]
type=L
physics=N
movetype=H
anim=5110
ctrl=0
velset=0,0
sprpriority=0
[State 817, pos]
type=posset
trigger1= !time
y=0
[State 817, end]
type=selfstate
trigger1= time>=30
value=ifelse(!alive,5150,5120)


;===========<Homura-geri>==========
[Statedef 820]
type=S
physics=S
movetype=A
anim=820
ctrl=0
velset=0,0
sprpriority=1

[State 820, safety]
type=changestate
trigger1= !time && !numtarget(800)
value=0
ctrl=1

[State 820, escape]
type=varadd
trigger1= var(19)>0
var(19)=-1
[State 820, escape]
type=changestate
trigger1= numtarget(800) && var(19)
trigger1= (target(800),command="holdfwd" || target(800),command="holdback")
trigger1= (target(800),command="b" || target(800),command="c" || target(800),command="y" || target(800),command="z")
value=890

[State 820, width]
type=width
trigger1= 1
edge=48,0

[State 820, timer]
type=varset
trigger1= !time
var(44)=135
[State 820, timer]
type=varadd
trigger1=hitcount
var(44)=-1
[State 820, timer]
type=varadd
triggerall=numtarget(800) && hitcount
trigger1= target(800),command="x" || target(800),command="y" || target(800),command="z"
trigger2= target(800),command="a" || target(800),command="b" || target(800),command="c"
trigger3= target(800),command="up" || target(800),command="down" || target(800),command="back" || target(800),command="fwd"
var(44)=-1

[State 820, end]
type=changestate
triggerall= hitcount
triggerall= animelemtime(1)>=0 && animelemtime(2)<0
trigger1= var(44)<=0
trigger2= numtarget(800)
trigger2= !(target(800),alive)
value=821

[State 820, p1 mashing]
type=varset
trigger1=!time
var(43)=0
[State 820, p1 mashing]
type=varadd
triggerall= var(59)<=0
trigger1= command="a" || command="b" || command="c" || command="x" || command="y" || command="z"
trigger2= command="up" || command="down" || command="back" || command="fwd"
var(43)=1
[State 820, p1 mashing]
type=varadd
trigger1= var(59)>=1
trigger1= random<333
var(43)=1

[State 820, anim skip]
type=changeanim
triggerall=var(44)>0
trigger1= animelemtime(animelemno(0))>=0 && animelemtime(5)<0
trigger1= animelemtime(animelemno(0)+1)>=-var(43)
trigger1= 1 || var(43):=(var(43)+animelemtime(animelemno(0)+1))
value=820
elem=animelemno(0)+1
[State 820, anim skip]
type=changeanim
triggerall=var(44)>0
trigger1= animelemtime(5)>0
trigger1= animelemtime(5)>=(5-var(43))
trigger1= 1 || var(43):=(var(43)+5-animelemtime(5))
value=820
elem=1

[State 820, p1 mashing]
type=varset
trigger1=var(43)<0
var(43)=0

[State 820, flash]
type=palfx
trigger1= command="a" || command="b" || command="c" || command="x" || command="y" || command="z"
trigger2= command="up" || command="down" || command="back" || command="fwd"
time=1
add=32,32,32

[State 820, throw]
type=targetstate
trigger1= numtarget(800)
trigger1= animelemtime(3)<0
ID=800
value=825
[State 820, throw]
type=targetstate
triggerall= numtarget(800)
trigger1= animelemtime(2)>=0 && animelemtime(3)<0
trigger2= animelemtime(5)>=0
ID=800
value=826
[State 820, throw]
type=targetstate
trigger1= numtarget(800)
trigger1= animelemtime(3)>=0 && animelemtime(4)<0
ID=800
value=827

[State 820, throw]
type=targetfacing
trigger1= numtarget(800)
ID=800
value=-1

[State 820, bind]
type=targetbind
trigger1= numtarget(800)
trigger1= animelemtime(3)<0 || animelemtime(5)>=0
ID=800
pos=ceil(45*const(size.xscale)),0
[State 820, bind]
type=targetbind
trigger1= numtarget(800)
trigger1= animelemtime(3)>=0 && animelemtime(4)<0
ID=800
pos=ceil(50*const(size.xscale)),ceil(-66*const(size.yscale))

[State 820, damage]
type=targetlifeadd
trigger1= numtarget(800) && animelem=3 && !hitcount
value=ceil(ifelse(42*fvar(11)<7,-7,-42*fvar(11)))
[State 820, damage]
type=targetlifeadd
trigger1= numtarget(800) && animelem=3 && hitcount
value=ceil(ifelse(14*fvar(11)<7,-7,-14*fvar(11)))

[State 820, givepower]
type=targetpoweradd
trigger1= numtarget(800) && animelem=3
value=36
[State 820, getpower]
type=poweradd
trigger1= numtarget(800) && animelem=3
value=72

[State 820, snd]
type=playsnd
trigger1= animelem=3
value=4,6
channel=0
[State 820, snd]
type=playsnd
trigger1= animelem=3
value=1,4
channel=1

[State 820, hit]
type=hitadd
trigger1= numtarget(800) && animelem=3
value=1
[State 820, hitcount]
type=varadd
trigger1= numtarget(800) && animelem=3
var(13)=1

[State 820, snd]
type=playsnd
trigger1= numtarget(800) && animelem=3
value=2,4
[State 820, sparks]
type=explod
trigger1= numtarget(800) && animelem=3
anim=8010+(random%8)
sprpriority=5
postype=p1
pos=ceil(58*const(size.xscale)),ceil(-58*const(size.yscale))
facing=-1
ownpal=1
pausemovetime=-1
supermovetime=-1
ignorehitpause=1
[State 820, shake]
type=envshake
trigger1= numtarget(800) && animelem=3
time=14
ampl=4


;---FINISH---
[Statedef 821]
type=S
physics=S
movetype=A
anim=821
ctrl=0
velset=0,0
sprpriority=1

[State 821, juggle]
type=varadd
trigger1= !time && numtarget(800)
var(14)=1
ignorehitpause=1
[State 821, juggle]
type=varset
trigger1= !time && numtarget(800)
var(37)=1
ignorehitpause=1

[State 821, throw]
type=targetstate
trigger1= numtarget(800)
trigger1= animelemtime(2)<0
ID=800
value=825
[State 821, throw]
type=targetstate
triggerall= numtarget(800)
trigger1= animelemtime(2)>=0 && animelemtime(3)<0
ID=800
value=826

[State 821, throw]
type=targetstate
trigger1= animelem=3
value=829
[State 821, throw]
type=targetfacing
trigger1= !time
value=-1

[State 821, width]
type=width
trigger1= 1
edge=48,0

[State 821, bind 1]
type=targetbind
trigger1= numtarget(800) && animelemtime(3)<0
ID=800
pos=ceil(45*const(size.xscale)),0

[State 821, damage]
type=targetlifeadd
trigger1= numtarget(800) && animelem=3
value=ceil(ifelse(42*fvar(11)<7,-7,-42*fvar(11)))
[State 821, givepower]
type=targetpoweradd
trigger1= numtarget(800) && animelem=3
value=36
[State 821, getpower]
type=poweradd
trigger1= numtarget(800) && animelem=3
value=72

[State 821, hit]
type=hitadd
trigger1= numtarget(800) && animelem=3
value=1
[State 821, hitcount]
type=varadd
trigger1= numtarget(800) && animelem=3
var(13)=1

[State 820, snd]
type=playsnd
trigger1= animelem=2
value=4,6
channel=0
[State 820, snd]
type=playsnd
trigger1= animelem=2
value=1,5
channel=1

[State 821, snd]
type=playsnd
trigger1= numtarget(800) && animelem=3
value=2,5
[State 821, sparks]
type=explod
trigger1= numtarget(800) && animelem=3
anim=8010+(random%8)
sprpriority=5
postype=p1
pos=ceil(58*const(size.xscale)),ceil(-58*const(size.yscale))
facing=-1
ownpal=1
pausemovetime=-1
supermovetime=-1
ignorehitpause=1
[State 821, shake]
type=envshake
trigger1= numtarget(800) && animelem=3
time=14
ampl=4

[State 821, end]
type=changestate
trigger1= !animtime
value=0 
ctrl=1


;---TARGET---
[Statedef 825]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 825, anim]
type=changeanim2
trigger1= !time
value=825
[State 825, camera]
type=screenbound
trigger1= 1
value=0
movecamera=0,0
[State 825, flash]
type=palfx
trigger1= command="a" || command="b" || command="c" || command="x" || command="y" || command="z"
trigger2= command="up" || command="down" || command="back" || command="fwd"
time=1
add=32,32,32

[Statedef 826]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 826, anim]
type=changeanim2
trigger1= !time
value=826
[State 826, camera]
type=screenbound
trigger1= 1
value=0
movecamera=0,0
[State 826, flash]
type=palfx
trigger1= command="a" || command="b" || command="c" || command="x" || command="y" || command="z"
trigger2= command="up" || command="down" || command="back" || command="fwd"
time=1
add=32,32,32

[Statedef 827]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 827, anim]
type=changeanim2
trigger1= !time
value=827
[State 827, camera]
type=screenbound
trigger1= 1
value=0
movecamera=0,0
[State 827, flash]
type=palfx
trigger1= command="a" || command="b" || command="c" || command="x" || command="y" || command="z"
trigger2= command="up" || command="down" || command="back" || command="fwd"
time=1
add=32,32,32

[Statedef 829]
type=A
physics=N
movetype=H
ctrl=0
velset=0,0
sprpriority=0

[State 829, anim]
type=changeanim
trigger1= !time
value=ifelse(selfanimexist(5035),5035,5030)
[State 829, anim]
type=changeanim
trigger1= (anim=[5030,5035]) && !animtime
value=5050

[State 829, grav]
type=veladd
trigger1=1
y=.57
[State 829, vel]
type=velset
trigger1=!time
x=-4
y=-8.26

[State 829, end]
type=selfstate
trigger1= vel y>0 && pos y>=0
value=5100


;===========<Air Throw Attempt>==========
[Statedef 850]
type=A
physics=N
movetype=A
anim=850
ctrl=0
sprpriority=1
poweradd=7*!var(20)

[State 850, strengthvar]
type=varset
trigger1= !time && var(59)<=0
var(10)=(command="2k")
[State 850, strengthvar]
type=varset
trigger1= !time && var(59)>=1
var(10)=(random<500)

[State 850, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=1
ID=800
attr=A,NT
hitflag=AF
priority=1,Miss
getpower=82*!var(20),0
givepower=0,0
sparkno=-1
guard.sparkno=s8000
sparkxy=var(21):=-10,var(22):=ceil(-88*const(size.yscale))
hitsound=s0,800
guardsound=s3,0
yaccel=.5
fall=1
fall.recover=0
numhits=0
p1stateno=860 

[State 850, snd]
type=playsnd
trigger1= animelem=3
value=4,9
channel=0
[State 850, snd]
type=playsnd
trigger1= animelem=3
value=1,0
channel=1

[State 850, sts]
type=statetypeset
trigger1= animelemtime(2)>=0
movetype=I
[State 850, grav]
type=gravity
trigger1= 1
[State 850, land]
type=changestate
trigger1= pos y>=-vel y
value=52


;===========<Abise Yashiro Kuzushi>==========
[Statedef 860]
type=A
physics=N
movetype=A
anim=860
ctrl=0
sprpriority=1

[State 860, throw]
type=targetstate
trigger1= !time && numtarget(800)
ID=800
value=861

[State 860, turn]
type=turn
trigger1= var(10) && animelem=3
[State 860, throw]
type=targetfacing
trigger1= numtarget(800)
ID=800
value=-1

[State 860, width]
type=width
trigger1= 1
edge=48,48

[State 860, pos]
type=posset
trigger1= pos y>0 && animelemtime(3)<0
y=0
[State 860, pos]
type=posfreeze
trigger1= animelemtime(3)<0
value=1

[State 860, vel]
type=veladd
trigger1= animelemtime(3)>=0
y=.5
[State 860, vel]
type=velset
trigger1= animelem=3
y=-4

[State 860, bind 1]
type=targetbind
trigger1= numtarget(800)
trigger1= animelemtime(3)<0
ID=800
pos=ceil(29*const(size.xscale)),ceil(-64*const(size.yscale))
[State 860, bind 2]
type=bindtotarget
trigger1= numtarget(800)
trigger1= animelemtime(2)>=0 && animelemtime(3)<0
ID=800
pos=0,floor(64*const(size.yscale))
[State 860, bind 3]
type=targetbind
trigger1= numtarget(800)
trigger1= animelemtime(3)>=0 && animelemtime(4)<0
ID=800
pos=ceil(19*const(size.xscale)),ceil(-72*const(size.yscale))
[State 860, bind 4]
type=targetbind
trigger1= numtarget(800)
trigger1= animelemtime(4)>=0 && animelemtime(5)<0
ID=800
pos=ceil(39*const(size.xscale)),ceil(-60*const(size.yscale))
[State 860, bind 5]
type=targetbind
trigger1= numtarget(800)
trigger1= animelemtime(5)>=0
ID=800
pos=ceil(30*const(size.xscale)),ceil(-42*const(size.yscale))

[State 860, snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 860, end]
type=changestate
trigger1= pos y>=-vel y
value=815 


;---TARGET---
[Statedef 861]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 861, anim]
type=changeanim2
trigger1= !time
value=861
[State 861, camera]
type=screenbound
trigger1= 1
value=0
movecamera=0,0


;===========<Target Escaped>==========
[Statedef 890]
type=S
physics=N
movetype=I
anim=5945
ctrl=0
velset=0,0
sprpriority=1

[State 890, bind]
type=targetbind
trigger1= !time && numtarget(800)
ID=800
pos=0,0
[State 890, p2state]
type=targetstate
trigger1= !time && numtarget(800)
ID=800
value=895
[State 890, throw]
type=targetfacing
trigger1= !time && numtarget(800)
ID=800
value=-1

[State 895, pos]
type=posadd
trigger1= !time
x=20

[State 890, nhb]
type=nothitby
trigger1= 1
value=SCA
time=1
[State 890, push]
type=playerpush
trigger1= 1
value=0

[State 890, pos]
type=posset
trigger1= !time
y=0
[State 890, vel]
type=velmul
trigger1= 1
x=.95
[State 890, vel]
type=velset
trigger1= time=2
x=-4
y=0

[State 890, snd]
type=playsnd
trigger1= animelem=2
value=5000,3
channel=0

[State 890, end]
type=changestate
trigger1= time>=25
value=0
ctrl=1


;---TARGET---
[Statedef 895]
type=S
physics=N
movetype=I
ctrl=0
velset=0,0
sprpriority=1

[State 895, anim]
type=changeanim
trigger1= !time
value=ifelse(selfanimexist(5945),5945,130)
[State 895, anim]
type=changeanim
trigger1= !time && !selfanimexist(5945) && selfanimexist(5910)
value=5910
[State 895, anim]
type=changeanim
trigger1= time>=20 && anim=130
value=140

[State 895, nhb]
type=nothitby
trigger1= 1
value=SCA
time=1
[State 895, push]
type=playerpush
trigger1= 1
value=0

[State 895, pos]
type=posset
trigger1= !time
y=0
[State 895, vel]
type=velmul
trigger1= 1
x=.95
[State 895, vel]
type=velset
trigger1= time=2
x=-4
y=0

[State 895, end]
type=selfstate
trigger1= time>=25
value=0
ctrl=1