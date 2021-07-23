; ________________________________
;| Karin by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<SHINPI KAIBYAKU>========================
[Statedef 3000]
type=S
physics=N
movetype=A
anim=3000
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1000

[State 3000, strength]
type=varset
trigger1=var(10)!=0
var(10)=0

[State 3000, Super Level]
type=varadd
trigger1=!time
var(15)=1
[State 3000, Super Cancels]
type=varadd
triggerall=!time
trigger1= numenemy
trigger1= (prevstateno=[3000,4999]) || var(16)
trigger1= (enemynear,movetype=H && enemynear,statetype!=L)
trigger2= var(20)
var(16)=1

[State 3000, Dampener]
type=varset
trigger1= !time
fvar(10)= ifelse(var(20), .8, 1.0/(1+var(16)))
ignorehitpause=1

[State 3000, ECjuggle]
type=varset
trigger1= var(20)>0
var(36)=1
ignorehitpause=1
[State 3000, ECreset]
type=palfx
trigger1=!time
trigger1=!(var(20):=0)
time=1

[State 3000, unguardable]
type=varset
trigger1=time=4&&numenemy
trigger1=(enemynear,stateno!=[120,155])
var(17)=43
[State 3000, nhb]
type=nothitby
trigger1=animelemtime(6)<0
time=1
value=SCA

[State 3000, snd]
type=playsnd
trigger1=time=4
value=5,0
channel=0

[State 3000, superpausefx]
type=helper
trigger1=time=4
helpertype=normal
stateno=8500
ID=8500
name="Super Charge"
postype=p1
pos=ceil(0*const(size.xscale)),ceil(-55*const(size.yscale))
supermovetime=255
size.xscale=1
size.yscale=1
ownpal=1
[State 3000, superpause]
type=superpause
trigger1=time=4
time=43
movetime=43
p2defmul=1
unhittable=1
anim=-1
sound=s0,8500
darken=0

[State 3000, vel]
type=veladd
trigger1=vel x>0
x=-.125
[State 3000, vel]
type=velset
trigger1=vel x<0
x=0
[State 3000, vel]
type=velset
trigger1=animelem=3||animelem=8||animelem=15||animelem=20||animelem=25
x=4

[State 3000, snd]
type=playsnd
trigger1=animelem=3
value=5,3
channel=0
[State 3000, snd]
type=playsnd
trigger1=animelem=18
value=5,4
channel=0
[State 3000, snd]
type=playsnd
trigger1=animelem=3||animelem=6||animelem=9||animelem=12||animelem=18||animelem=22||animelem=29
value=1,2
channel=1

[State 3000, hit low]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(36))
trigger1=animelem=4||animelem=10||animelem=19
attr=S,HA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*34<7,7,fvar(11)*34)),7
getpower=0,0
givepower=36,36
pausetime=4,4
guard.pausetime=4,4
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=17
ground.slidetime=17
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=-5.62,0
guard.velocity=-5.62
air.velocity=-5.25,-7
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=-9.83
guard.cornerpush.veloff=-9.83
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=0
air.fall=1
fall.recover=0
sparkno=s8030+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-55*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=18
envshake.ampl=6

[State 3000, hit high]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(36))
trigger1=animelem=7||animelem=13||animelem=23
attr=S,HA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*34<7,7,fvar(11)*34)),7
getpower=0,0
givepower=36,36
pausetime=4,4
guard.pausetime=4,4
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=17
ground.slidetime=17
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=-5.62,0
guard.velocity=-5.62
air.velocity=-5.25,-7
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=-9.83
guard.cornerpush.veloff=-9.83
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=0
air.fall=1
fall.recover=0
sparkno=s8030+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-55*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=18
envshake.ampl=6

[State 3000, hit final]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(36))
trigger1=animelem=30
attr=S,HA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*34<7,7,fvar(11)*34)),7
getpower=0,0
givepower=36,36
pausetime=12,12
guard.pausetime=12,12
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=17
ground.slidetime=17
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=-9.625,-7.15
guard.velocity=-12.65
air.velocity=-9.625,-7.15
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-24.4
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.6
forcestand=1
fall=1
fall.recover=0
sparkno=s8030+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-58*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=18
envshake.ampl=6

[State 3000, sts]
type=statetypeset
trigger1=animelemtime(32)>=0
movetype=I
[State 3000, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<KOU'OU KEN>========================
[Statedef 3100]
type=S
physics=N
movetype=A
anim=3100
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1000

[State 3100, strength]
type=varset
trigger1=var(10)!=0
var(10)=0

[State 3100, Super Level]
type=varadd
trigger1=!time
var(15)=1
[State 3100, Super Cancels]
type=varadd
triggerall=!time
trigger1= numenemy
trigger1= (prevstateno=[3000,4999]) || var(16)
trigger1= (enemynear,movetype=H && enemynear,statetype!=L)
trigger2= var(20)
var(16)=1

[State 3100, Dampener]
type=varset
trigger1= !time
fvar(10)= ifelse(var(20), .8, 1.0/(1+var(16)))
ignorehitpause=1

[State 3100, ECjuggle]
type=varset
trigger1= var(20)>0
var(36)=1
ignorehitpause=1
[State 3100, ECreset]
type=palfx
trigger1=!time
trigger1=!(var(20):=0)
time=1

[State 3100, unguardable]
type=varset
trigger1=time=4&&numenemy
trigger1=(enemynear,stateno!=[120,155])
var(17)=43
[State 3100, nhb]
type=nothitby
trigger1=animelemtime(6)<0
time=1
value=SCA

[State 3100, snd]
type=playsnd
trigger1=time=4
value=5,0
channel=0

[State 3100, superpausefx]
type=helper
trigger1=time=4
helpertype=normal
stateno=8500
ID=8500
name="Super Charge"
postype=p1
pos=ceil(37*const(size.xscale)),ceil(-55*const(size.yscale))
supermovetime=255
size.xscale=1
size.yscale=1
ownpal=1
[State 3100, superpause]
type=superpause
trigger1=time=4
time=43
movetime=43
p2defmul=1
unhittable=1
anim=-1
sound=s0,8500
darken=0

[State 3100, statetype]
type=statetypeset
trigger1=animelemtime(3)>=0
statetype=A
physics=N

[State 3100, vel]
type=veladd
trigger1=animelemtime(3)>=2&&vel x>0
x=-.1
[State 3100, grav]
type=veladd
trigger1=animelemtime(3)>=2
y=.5

[State 3100, vel]
type=velset
trigger1=animelemtime(3)=2
x=6.25
y=-9.25
[State 3100, vel]
type=velset
trigger1=animelem=13
trigger2=vel x<0
x=0

[State 3100, snd]
type=playsnd
trigger1=animelem=4
value=5,1
channel=0
[State 3100, snd]
type=playsnd
trigger1=animelem=5||animelem=9||animelem=13
value=1,2
channel=1

[State 3100, hit]
type=hitdef
trigger1= !var(37) && (var(14)<(4+hitcount) || var(36))
trigger1=animelem=4||animelem=6||animelem=8||animelem=9||animelem=10||animelem=12||animelem=13||animelem=14
attr=A,HA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*22<7,7,fvar(11)*22)),7
getpower=0,0
givepower=36,36
pausetime=2,2
guard.pausetime=2,2
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=17
ground.slidetime=17
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=-2.75,-9.33
guard.velocity=0
air.velocity=-2.75,-9.33
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=0
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.6
forcestand=1
fall=1
fall.recover=0
sparkno=s8030+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-30,var(22):=ceil(-80*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=18
envshake.ampl=6

[State 3100, sts]
type=statetypeset
trigger1=animelemtime(17)>=0
movetype=I
[State 3100, end]
type=changestate
trigger1=vel y>0
trigger1=pos y>-vel y
value=3101


;---Land---
[Statedef 3101]
type=S
physics=N
movetype=I
anim=47
ctrl=0
velset=0,0
sprpriority=1
movehitpersist=1

[State 3101, pos]
type=posset
trigger1=1
y=0

[State 3101, snd]
type=playsnd
trigger1=!time
value=0,52
[State 3101, dust]
type=explod
trigger1=!time
anim=8102
sprpriority=-3
postype=p1
pos=0,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 3101, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<KILLER SATELLITE-BOUND PUNCH>========================
[Statedef 3200]
type=S
physics=N
movetype=A
anim=3200
ctrl=0
velset=0,0
sprpriority=1
poweradd=-3000

[State 3200, strength]
type=varset
trigger1=var(10)!=0
var(10)=0

[State 3200, Super Level]
type=varadd
trigger1=!time
var(15)=3
[State 3200, Super Cancels]
type=varadd
triggerall=!time
trigger1= numenemy
trigger1= (prevstateno=[3000,4999]) || var(16)
trigger1= (enemynear,movetype=H && enemynear,statetype!=L)
trigger2= var(20)
var(16)=1

[State 3200, Dampener]
type=varset
trigger1= !time
fvar(10)= ifelse(var(20), .8, 1.0/(1+var(16)))
ignorehitpause=1

[State 3200, ECjuggle]
type=varset
trigger1= var(20)>0
var(36)=1
ignorehitpause=1
[State 3200, ECreset]
type=palfx
trigger1=!time
trigger1=!(var(20):=0)
time=1

[State 3200, unguardable]
type=varset
trigger1=time=4&&numenemy
trigger1=(enemynear,stateno!=[120,155])
var(17)=67
[State 3200, nhb]
type=nothitby
trigger1=animelemtime(8)<0
time=1
value=SCA

[State 3200, snd]
type=playsnd
trigger1=time=4
value=4,0
channel=0

[State 3200, superpausefx]
type=helper
trigger1=time=4
helpertype=normal
stateno=8500
ID=8500
name="Super Charge"
postype=p1
pos=ceil(-37*const(size.xscale)),ceil(-49*const(size.yscale))
supermovetime=255
size.xscale=1
size.yscale=1
ownpal=1
[State 3200, superpause]
type=superpause
trigger1=time=4
time=55
movetime=55
p2defmul=1
unhittable=1
anim=-1
sound=s0,8500
darken=0

[State 3200, snd]
type=playsnd
trigger1=animelem=5
value=4,12
channel=0
[State 3200, snd]
type=playsnd
trigger1=animelem=6
value=1,2
channel=1

[State 3200, pos]
type=posadd
trigger1=animelem=5
x=ceil(30*const(size.xscale))
[State 3200, pos]
type=posadd
trigger1=animelem=6
x=ceil(12*const(size.xscale))

[State 3200, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(36))
trigger1=animelem=7
attr=S,HA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*72<7,7,fvar(11)*72)),9
getpower=0,0
givepower=36,36
pausetime=24,24
guard.pausetime=12,12
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=32
ground.slidetime=32
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=-12.65,0
guard.velocity=-12.65
air.velocity=-5.25,-7
ground.cornerpush.veloff=-24.4
guard.cornerpush.veloff=-24.4
air.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=0
air.fall=1
fall.recover=0
sparkno=s8030+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-55*const(size.yscale))
hitsound=s2,6
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=18
envshake.ampl=6

[State 3200, dust]
type=helper
trigger1=movehit=1
stateno=3205
ID=3205
name="Dust"
postype=p1
pos=60,0
ownpal=1

[State 3200, next]
type=changestate
triggerall= movehit
triggerall= animelemtime(7)>=0 && animelemtime(9)<0
trigger1= var(59)<=0 && command="qcfp"
trigger2= var(59)>=1
value=3201

[State 3200, sts]
type=statetypeset
trigger1=animelemtime(9)>=0
movetype=I
[State 3200, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---Connected---
[Statedef 3201]
type=S
physics=N
movetype=A
anim=3201
ctrl=0
velset=0,0
sprpriority=1

[State 3201, pos]
type=posadd
trigger1=animelem=1
x=ceil(22*const(size.xscale))
[State 3201, pos]
type=posadd
trigger1=animelem=2
x=ceil(19*const(size.xscale))
[State 3201, pos]
type=posadd
trigger1=animelem=3
x=ceil(24*const(size.xscale))
[State 3201, pos]
type=posadd
trigger1=animelem=4
x=ceil(22*const(size.xscale))

[State 3201, snd]
type=playsnd
trigger1=animelem=3
value=4,7
channel=0
[State 3201, snd]
type=playsnd
trigger1=animelem=3
value=1,2
channel=1

[State 3201, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(36))
trigger1= animelem=4
ID=3200
attr=S,HA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*72<7,7,fvar(11)*72)),9
getpower=0,0
givepower=36,36
pausetime=24,24
guard.pausetime=12,12
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=32
ground.slidetime=32
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=-12.65,0
guard.velocity=-12.65
air.velocity=-5.25,-7
ground.cornerpush.veloff=-24.4
guard.cornerpush.veloff=-24.4
air.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=0
air.fall=1
fall.recover=0
sparkno=s8030+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-55*const(size.yscale))
hitsound=s2,6
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=18
envshake.ampl=6

[State 3201, dust]
type=helper
trigger1=movehit=1
stateno=3205
ID=3205
name="Dust"
postype=p1
pos=60,0
ownpal=1

[State 3201, next]
type=changestate
triggerall= movehit
triggerall= animelemtime(4)>=0 && animelemtime(6)<0
trigger1= var(59)<=0 && command="hcfp"
trigger2= var(59)>=1
value=3202

[State 3201, sts]
type=statetypeset
trigger1=animelemtime(6)>=0
movetype=I
[State 3201, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---Third---
[Statedef 3202]
type=S
physics=N
movetype=A
anim=3202
ctrl=0
velset=0,0
sprpriority=1

[State 3202, pos]
type=posadd
trigger1=animelem=2
x=ceil(19*const(size.xscale))
[State 3202, pos]
type=posadd
trigger1=animelem=3
x=ceil(24*const(size.xscale))
[State 3202, pos]
type=posadd
trigger1=animelem=4
x=ceil(22*const(size.xscale))

[State 3202, vel]
type=velset
trigger1=animelem=6
x=8
[State 3202, vel]
type=velset
trigger1=animelem=8
x=0

[State 3202, snd]
type=playsnd
trigger1=animelem=6
value=4,12
channel=0
[State 3202, snd]
type=playsnd
trigger1=animelem=6
value=1,2
channel=1

[State 3202, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(36))
trigger1= animelem=7
ID=3200
attr=S,HA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*72<7,7,fvar(11)*72)),9
getpower=0,0
givepower=36,36
pausetime=24,24
guard.pausetime=12,12
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=32
ground.slidetime=32
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=-12.65,0
guard.velocity=-12.65
air.velocity=-5.25,-7
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-24.4
air.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=0
air.fall=1
fall.recover=0
sparkno=s8030+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-55*const(size.yscale))
hitsound=s2,6
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=18
envshake.ampl=6

[State 3202, dust]
type=helper
trigger1=movehit=1
stateno=3205
ID=3205
name="Dust"
postype=p1
pos=60,0
ownpal=1

[State 3202, next]
type=changestate
trigger1= movehit
trigger1= animelemtime(7)>=0 && animelemtime(9)<0
value=3203

[State 3202, sts]
type=statetypeset
trigger1=animelemtime(9)>=0
movetype=I
[State 3202, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;---Beam---
[Statedef 3203]
type=S
physics=N
movetype=A
anim=3203
ctrl=0
velset=0,0
sprpriority=1

[State 3203, dust]
type=helper
trigger1=movehit=1
stateno=3205
ID=3205
name="Dust"
postype=p1
pos=60,0
ownpal=1

[State 3203, Beam]
type=helper
trigger1=!time
trigger1=numtarget(3200)
helpertype=normal
stateno=3250
ID=3250
name="Satellite Beam"
postype=p1
pos=ceil(target(3200),pos x-pos x)*facing,0
size.xscale=.5
size.yscale=16
ownpal=1

[State 3203, end]
type=changestate
trigger1=!numhelper(3250)
trigger2=time>=60
value=3204

[State 3203, vel]
type=velmul
trigger1=1
x=.7
[State 3203, vel]
type=velset
trigger1=!time
x=-30

[State 3203, glow]
type=helper
trigger1=!numhelper(3206)
helpertype=normal
stateno=3206
ID=3206
name="Lighting FX"
postype=p1
ownpal=1
[State 3203, glow]
type=palfx
trigger1=numhelper(3206)
time=1
mul=128,128,128


;---Beam Over---
[Statedef 3204]
type=S
physics=N
movetype=I
anim=3204
ctrl=0
velset=0,0
sprpriority=1
[State 3204, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<dive kick>========================
[Statedef 3300]
type=A
physics=N
movetype=A
anim=3300
ctrl=0
velset=0,0
sprpriority=1
poweradd=-2000

[State 3300, strength]
type=varset
trigger1=var(10)!=0
var(10)=0

[State 3300, Super Level]
type=varadd
trigger1=!time
var(15)=2
[State 3300, Super Cancels]
type=varadd
triggerall=!time
trigger1= numenemy
trigger1= (prevstateno=[3000,4999]) || var(16)
trigger1= (enemynear,movetype=H && enemynear,statetype!=L)
trigger2= var(20)
var(16)=1

[State 3300, Dampener]
type=varset
trigger1= !time
fvar(10)= ifelse(var(20), .8, 1.0/(1+var(16)))
ignorehitpause=1

[State 3300, ECjuggle]
type=varset
trigger1= var(20)>0
var(36)=1
ignorehitpause=1
[State 3300, ECreset]
type=palfx
trigger1=!time
trigger1=!(var(20):=0)
time=1

[State 3300, unguardable]
type=varset
trigger1=time=4&&numenemy
trigger1=(enemynear,stateno!=[120,155])
var(17)=55
[State 3300, nhb]
type=nothitby
trigger1=animelemtime(6)<0
time=1
value=SCA

[State 3300, snd]
type=playsnd
trigger1=time=4
value=6,1
channel=0

[State 3300, superpausefx]
type=helper
trigger1=time=4
helpertype=normal
stateno=8500
ID=8500
name="Super Charge"
postype=p1
pos=ceil(11*const(size.xscale)),ceil(-38*const(size.yscale))
supermovetime=255
size.xscale=1
size.yscale=1
ownpal=1
[State 3300, superpause]
type=superpause
trigger1=time=4
time=55
movetime=55
p2defmul=1
unhittable=1
anim=-1
sound=s0,8500
darken=0

[State 3300, vel]
type=velset
trigger1=animelem=3
x=9
y=9

[State 3300, snd]
type=playsnd
trigger1=animelem=3
value=4,1
channel=0
[State 3300, snd]
type=playsnd
trigger1=animelem=3
value=1,5
channel=1

[State 3300, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(36))
trigger1= !movecontact && !movereversed
ID=3300
attr=A,HA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*54<7,7,fvar(11)*54)),0
getpower=0,0
givepower=36,36
pausetime=12,12
guard.pausetime=12,12
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=30
ground.slidetime=17
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=-9.22,0
guard.velocity=-9.22
air.velocity=-5,1.5
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-17.2
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=0
air.fall=1
fall.recover=0
sparkno=s8030+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-20*const(size.yscale))
hitsound=s2,5
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=18
envshake.ampl=6
kill=0

[State 3300, p2state]
type=targetstate
trigger1=movehit&&numtarget(3300)
trigger1=target(3300),statetype!=A
ID=3300
value=3302
ignorehitpause=1
[State 3300, p1state]
type=changestate
trigger1=movehit&&numtarget(3300)
trigger1=target(3300),statetype!=A
value=3310
ignorehitpause=1

[State 3300, end]
type=changestate
trigger1=vel y>0
trigger1=pos y>-vel y
value=3301


;---Land---
[Statedef 3301]
type=S
physics=S
movetype=I
anim=3301
ctrl=0
velset=0,0
sprpriority=1
movehitpersist=1

[State 3301, pos]
type=posset
trigger1=1
y=0

[State 3301, snd]
type=playsnd
trigger1=!time
value=0,52
[State 3301, dust]
type=explod
trigger1=!time
anim=8102
sprpriority=-3
postype=p1
pos=0,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 3301, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;-----Target-----
[Statedef 3302]
type=S
physics=S
movetype=H
ctrl=0
velset=0,0
[State 3302, anim]
type=changeanim
trigger1=1
value=5012
[State 3302, pos]
type=posset
trigger1=1
y=0
[State 3302, fall]
type=hitfallset
trigger1=1
value=0
[State 3302, end]
type=changestate
trigger1=time>=30
value=3303

[Statedef 3303]
type=S
physics=S
movetype=H
ctrl=0
velset=0,0
[State 3303, anim]
type=changeanim
trigger1=!time
value=5017
[State 3303, vel]
type=hitvelset
trigger1=!time
x=1
[State 3303, end]
type=selfstate
trigger1=time>=30
value=5000


;---Ressen Ha---
[Statedef 3310]
type=A
physics=N
movetype=A
anim=3310
ctrl=0
velset=0,0
sprpriority=1

[State 3310, push]
type=playerpush
trigger1=1
value=0
[State 3310, pos]
type=bindtotarget
trigger1=!time
trigger1=numtarget(3300)
ID=3300
pos=0,-(target(3300),const(size.height))

[State 3310, grav]
type=veladd
trigger1=animelemtime(3)>=0
y=.4
[State 3310, vel]
type=velset
trigger1=animelem=3
x=0
y=-5

[State 3310, snd]
type=playsnd
trigger1=animelem=5
value=4,4
channel=0
[State 3310, snd]
type=playsnd
trigger1=animelem=5||animelem=9||animelem=13
value=1,2
channel=1
[State 3310, snd]
type=playsnd
trigger1=animelem=3
value=0,40

[State 3310, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(36))
trigger1= animelem=6 || animelem=10 || animelem=14
attr=A,HA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*18<7,7,fvar(11)*18)),7
getpower=0,0
givepower=36,36
pausetime=4,4
guard.pausetime=4,4
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=17
ground.slidetime=17
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=0,0
guard.velocity=0
air.velocity=-5.33,-6.46
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=0
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=0
air.fall=1
fall.recover=0
sparkno=s8030+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-10,var(22):=ceil(-32*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 3310, end]
type=changestate
trigger1=vel y>0
trigger1=pos y>-vel y
value=3311


;---Combo---
[Statedef 3311]
type=S
physics=N
movetype=A
anim=3311
ctrl=0
velset=0,0
sprpriority=1
movehitpersist=1

[State 3311, pos]
type=posset
trigger1=!time
y=0
[State 3311, pos]
type=posadd
trigger1=animelem=5
x=ceil(40*const(size.yscale))
[State 3311, pos]
type=posadd
trigger1=animelem=11
x=ceil(36*const(size.yscale))

[State 3311, vel]
type=veladd
trigger1=vel x>0
x=-.2
[State 3311, vel]
type=velset
trigger1=vel x<0
x=0
[State 3311, vel]
type=velset
trigger1=animelem=12
x=6

[State 3311, snd]
type=playsnd
trigger1=animelem=1
value=4,3
channel=0
[State 3310, snd]
type=playsnd
trigger1=animelem=6
value=4,5
channel=0
[State 3310, snd]
type=playsnd
trigger1=animelem=14
value=4,8
channel=0
[State 3311, snd]
type=playsnd
trigger1=animelem=1||animelem=6
value=1,2
channel=1
[State 3311, snd]
type=playsnd
trigger1=animelem=13||animelem=16
value=1,5
channel=1

[State 3311, snd]
type=playsnd
trigger1=!time
value=0,52
[State 3311, dust]
type=explod
trigger1=!time
anim=8102
sprpriority=-3
postype=p1
pos=14,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 3311, hit low]
type=hitdef
trigger1=!var(37) && (var(14)<1 || var(20))
trigger1=animelem=1 || animelem=13
attr=S,HA
hitflag=MAF
guardflag=H
priority=5,Hit
damage=ceil(ifelse(fvar(11)*54<7,7,fvar(11)*54)),7
getpower=0,0
givepower=36,36
pausetime=12,12
guard.pausetime=12,12
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=17
ground.slidetime=17
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=-5.62,0
guard.velocity=-5.62
air.velocity=-5.33,-6.45
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=-9.83
guard.cornerpush.veloff=-9.83
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=0
air.fall=1
fall.recover=0
sparkno=s8030+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-10,var(22):=ceil(ifelse((animelem=13),-36,-22)*const(size.yscale))
hitsound=s2,ifelse((animelem=13),5,2)
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=18
envshake.ampl=6

[State 3311, hit high]
type=hitdef
trigger1=!var(37) && (var(14)<1 || var(20))
trigger1=animelem=7
attr=S,HA
hitflag=MAF
guardflag=H
priority=5,Hit
damage=ceil(ifelse(fvar(11)*54<7,7,fvar(11)*54)),7
getpower=0,0
givepower=36,36
pausetime=12,12
guard.pausetime=12,12
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=High
air.type=Low
ground.hittime=17
ground.slidetime=17
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=-5.62,0
guard.velocity=-5.62
air.velocity=-5.33,-6.45
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=-9.83
guard.cornerpush.veloff=-9.83
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=0
air.fall=1
fall.recover=0
sparkno=s8030+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-10,var(22):=ceil(-74*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=18
envshake.ampl=6

[State 3311, hit final]
type=hitdef
trigger1=!var(37) && (var(14)<1 || var(20))
trigger1=animelem=17
attr=S,HA
hitflag=MAF
guardflag=H
priority=5,Hit
damage=ceil(ifelse(fvar(11)*54<7,7,fvar(11)*54)),7
getpower=0,0
givepower=36,36
pausetime=12,12
guard.pausetime=12,12
animtype=Up
air.animtype=Up
fall.animtype=Up
ground.type=High
air.type=Low
ground.hittime=17
ground.slidetime=17
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=-7.5,-10
guard.velocity=-9.22
air.velocity=-7.5,-10
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-9.22
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.6
forcestand=1
fall=1
fall.recover=0
sparkno=s8030+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-10,var(22):=ceil(-80*const(size.yscale))
hitsound=s2,5
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=18
envshake.ampl=6

[State 3311, statetype]
type=statetypeset
trigger1=animelemtime(19)>=0
movetype=I
[State 3311, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<KILLER SATELLITE-BOUND PUNCH!!!>========================
[Statedef 3400]
type=S
physics=N
movetype=A
anim=3400
ctrl=0
velset=0,0
sprpriority=1
poweradd=-3000

[State 3400, strength]
type=varset
trigger1=var(10)!=0
var(10)=0

[State 3400, Super Level]
type=varadd
trigger1=!time
var(15)=3
[State 3400, Super Cancels]
type=varadd
triggerall=!time
trigger1= numenemy
trigger1= (prevstateno=[3000,4999]) || var(16)
trigger1= (enemynear,movetype=H && enemynear,statetype!=L)
trigger2= var(20)
var(16)=1

[State 3400, ECjuggle]
type=varset
trigger1= var(20)>0
var(36)=1
ignorehitpause=1
[State 3400, ECreset]
type=palfx
trigger1=!time
trigger1=!(var(20):=0)
time=1

[State 3400, unguardable]
type=varset
trigger1=time=4&&numenemy
trigger1=(enemynear,stateno!=[120,155])
var(17)=67
[State 3400, nhb]
type=nothitby
trigger1=animelemtime(3)<0
time=1
value=SCA

[State 3400, snd]
type=playsnd
trigger1=time=4
value=4,5
channel=0

[State 3400, superpausefx]
type=helper
trigger1=time=4
helpertype=normal
stateno=8500
ID=8500
name="Super Charge"
postype=p1
pos=ceil(-37*const(size.xscale)),ceil(-49*const(size.yscale))
supermovetime=255
size.xscale=1
size.yscale=1
ownpal=1
[State 3400, superpause]
type=superpause
trigger1=time=4
time=67
movetime=67
p2defmul=1
unhittable=1
anim=-1
sound=s0,8500
darken=0

[State 3400, hit]
type=hitdef
trigger1= animelem=2
ID=3400
attr=S,HT
hitflag=M-
priority=2,Miss
getpower=0,0
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
p1stateno=3410

[State 3400, snd]
type=playsnd
trigger1= animelem=3
value=6,0
channel=0
[State 3400, snd]
type=playsnd
trigger1= animelem=3
value=1,0
channel=1

[State 3400, sts]
type=statetypeset
trigger1=animelemtime(4)>=0
movetype=I
[State 3400, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---Player---
[Statedef 3410]
type=S
physics=N
movetype=A
anim=3410
ctrl=0
velset=0,0
sprpriority=1

[State 3410, superpause off]
type=superpause
trigger1=!time
time=0
p2defmul=1
anim=-1
darken=0
[State 3410, safety]
type=changestate
trigger1= !time && !numtarget(3400)
value=0
ctrl=1

[State 3410, juggle]
type=varset
trigger1= !time && numtarget(3400)
var(37)=1
ignorehitpause=1

[State 3410, turn]
type=turn
trigger1= !time

[State 3410, throw]
type=targetstate
trigger1= !time && numtarget(3400)
ID=3400
value=3420
[State 3410, throw]
type=targetfacing
trigger1= !time && numtarget(3400)
ID=3400
value=1

[State 3410, throw]
type=targetstate
trigger1= numtarget(3400) && animelem=7
ID=3400
value=3421
[State 3410, throw]
type=targetfacing
trigger1= numtarget(3400) && animelem=7
ID=3400
value=1

[State 3410, bind 1]
type=bindtotarget
trigger1= numtarget(3400)
trigger1= animelemtime(2)<0
ID=3400
pos=ceil(60*const(size.xscale)),0
[State 3410, bind 2]
type=bindtotarget
trigger1= numtarget(3400)
trigger1= animelemtime(2)>=0 && animelemtime(3)<0
ID=3400
pos=ceil(20*const(size.xscale)),0
[State 3410, bind 3]
type=bindtotarget
trigger1= numtarget(3400)
trigger1= animelemtime(3)>=0 && animelemtime(4)<0
ID=3400
pos=ceil(-20*const(size.xscale)),0
[State 3410, bind 4]
type=bindtotarget
trigger1= numtarget(3400)
trigger1= animelemtime(4)>=0 && animelemtime(5)<0
ID=3400
pos=ceil(-60*const(size.xscale)),0

[State 3410, damage]
type=targetlifeadd
trigger1= numtarget(3400) && animelem=7
value=ceil(ifelse(60*fvar(11)<7,-7,-60*fvar(11)))
ID=3400
kill=0
[State 3410, givepower]
type=targetpoweradd
trigger1= numtarget(3400) && animelem=7
value=36
ID=3400

[State 3410, hit]
type=hitadd
trigger1= numtarget(3400) && animelem=7
value=1
[State 3410, hitcount]
type=varadd
trigger1= numtarget(3400) && animelem=7
var(13)=1

[State 3410, snd]
type=playsnd
trigger1= animelem=7
value=4,6
channel=0
[State 3410, snd]
type=playsnd
trigger1= animelem=7
value=1,2
channel=1

[State 3410, snd]
type=playsnd
trigger1= numtarget(3400) && animelem=7
value=2,2
[State 3410, sparks]
type=explod
trigger1= numtarget(3400) && animelem=7
anim=8030+(random%8)
sprpriority=5
postype=p2
pos=0,ceil(-53*const(size.yscale))
facing=-1
ownpal=1
pausemovetime=-1
supermovetime=-1
ignorehitpause=1
[State 3410, shake]
type=envshake
trigger1= numtarget(3400) && animelem=7
time=14
ampl=4

[State 3410, end]
type=changestate
trigger1= !animtime
value=3411


;-----Pose-----
[Statedef 3411]
type=S
physics=S
movetype=A
anim=3411
ctrl=0
velset=0,0
sprpriority=1

[State 3411, Cutscene]
type=helper
trigger1=!time
helpertype=normal
stateno=3440
ID=3440
name="Satellie Cutscene"
postype=left
ownpal=1

[State 3411, throw]
type=targetstate
trigger1= !time && numtarget(3400)
ID=3400
value=3422
[State 3411, throw]
type=targetfacing
trigger1= !time && numtarget(3400)
ID=3400
value=1

[State 3411, pos]
type=posset
trigger1=!time
x=-60*facing
[State 3411, bind]
type=targetbind
trigger1=!time
trigger1=numtarget(3400)
ID=3400
pos=120,0

[State 3411, bgpalfx]
type=bgpalfx
trigger1=time<=60
time=1
mul=256-ceil(time*2.67),256-ceil(time*2.67),256-ceil(time*2.67)
ignorehitpause=1

[State 3411, Beam]
type=helper
trigger1=time=60
helpertype=normal
stateno=3450
ID=3450
name="Satellie Beam"
postype=p1
pos=120,0
size.xscale=.5
size.yscale=16
ownpal=1

[State 3411, end]
type=changestate
trigger1= !animtime
value=0 
ctrl=1


;---TARGET---
[Statedef 3420]
type=A
physics=N
movetype=H
velset=0,0
sprpriority=0
[State 3420, anim]
type=changeanim2
trigger1= !time
value=3420
[State 3420, camera]
type=screenbound
trigger1= 1
value=0
movecamera=0,0

[Statedef 3421]
type=S
physics=N
movetype=H
ctrl=0
velset=0,0
sprpriority=0
[State 3421, anim]
type=changeanim2
trigger1=!time
value=3421

[Statedef 3422]
type=S
physics=N
movetype=H
ctrl=0
velset=0,0
sprpriority=0

[State 3422, anim]
type=changeanim2
trigger1=!time
trigger1=!selfanimexist(5300)
value=3422
[State 3422, anim]
type=changeanim
trigger1=!time
trigger1=selfanimexist(5300)
value=5300

[State 3422, end]
type=selfstate
trigger1=time>=300
value=0
ctrl=1