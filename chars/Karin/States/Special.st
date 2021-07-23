; ________________________________
;| Karin by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<GUREN KEN>=============================
[Statedef 1000]
type=S
physics=N
movetype=A
anim=1000
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[State 1000, strength]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="z"||command="rlsz"),2,ifelse((command="y"||command="rlsy"),1,0))
[State 1000, strengthAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,2,ifelse(random<500,1,0))
[State 1000, anim]
type=changeanim
trigger1=!time
value=ifelse(var(10)=2,1002,ifelse(var(10)=1,1001,1000))

[State 1000, vel]
type=veladd
trigger1=vel x>0
x=ifelse(var(10)=2,-.125,ifelse(var(10)=1,-.09375,-.0625))*1.33
[State 1000, vel]
type=velset
trigger1=vel x<0
x=0

[State 1000, vel]
type=velset
trigger1=!time
x=ifelse(var(10)=2,5.75,ifelse(var(10)=1,4.65,3.5))

[State 1000, snd]
type=playsnd
trigger1=animelem=2
value=4,7
channel=0

[State 1000, snd]
type=playsnd
trigger1=!time
value=0,100
[State 1000, snd]
type=playsnd
trigger1=animelem=3
value=1,2
channel=1

[State 1000, dust]
type=explod
trigger1=!(time%6)&&time&&vel x>=1
anim=8104
sprpriority=3
postype=p1
pos=ceil(-28*const(size.xscale)),0
vel=-1.5,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1000, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=3
attr=S,SA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*14<7,7,fvar(11)*14)),7*!var(20)
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(4/((var(20)>0)+1.0)),ceil(4/((var(20)>0)+1.0))
guard.pausetime=ceil(4/((var(20)>0)+1.0)),ceil(4/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=High
air.type=Low
ground.hittime=18
ground.slidetime=18
guard.hittime=18
air.hittime=60
airguard.ctrltime=16
ground.velocity=-12.65,0
guard.velocity=-12.65
air.velocity=-5.39,-7
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=-17.2
guard.cornerpush.veloff=-17.2
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=0
air.fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-64*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1000, Guren Chouchuu]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="holddown" && command="holdfwd"  && (command="x"||command="y"||command="z")
var(30)=1300
[State 1000, Guren Hou Shou]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="holdfwd" && (command="x"||command="y"||command="z")
var(30)=1010
[State 1000, Guren Yasha Joudan]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="holdback" && (command="x"||command="y"||command="z")
trigger2= var(59)>=1
trigger2= inguarddist && p2statetype!=C
var(30)=1020
[State 1000, Guren Ressen Ha]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="holdup" && (command="a"||command="b"||command="c")
trigger2= var(59)>=1
trigger2= (enemynear,stateno=131 || enemynear,stateno=152 || enemynear,stateno=153)
var(30)=1400
[State 1000, Guren Kusabi]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="holddown" && (command="a"||command="b"||command="c")
trigger2= var(59)>=1
trigger2= (enemynear,stateno=130 || enemynear,stateno=150 || enemynear,stateno=151)
var(30)=1015
[State 1000, Guren Yasha Gedan]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="holdback" && (command="a"||command="b"||command="c")
trigger2= var(59)>=1
trigger2= inguarddist && p2statetype=C
var(30)=1025
[State 1000, Guren Ken]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="x"||command="y"||command="z"
trigger2= var(59)>=1
trigger2= random<200
var(30)=1005
[State 1000, Guren Mujin Kyaku]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="a"||command="b"||command="c"
var(30)=1200

[State 1000, follow-up strength]
type=varset
trigger1= var(59)<=0
trigger1= !var(11) && animelemtime(9)<0
trigger1= var(30)=1005 || var(30)=1010 || var(30)=1020 || var(30)=1300
var(11)= ifelse(command="z",2,ifelse(command="y",1,0))
[State 1000, follow-up strength]
type=varset
trigger1= var(59)<=0
trigger1= !var(11) && animelemtime(9)<0
trigger1= var(30)=1015 || var(30)=1025 || var(30)=1200 || var(30)=1400
var(11)= ifelse(command="c",2,ifelse(command="b",1,0))
[State 1000, follow-up strength]
type=varset
trigger1= var(59)>=1
trigger1= animelemtime(9)<0
var(11)= (random%3)

[State 1000, follow-up type]
type=varset
trigger1=!time
var(30)=0
[State 1000, follow-up strength]
type=varset
trigger1=!time
var(11)=0

[State 1000, follow-up]
type=changestate
trigger1= var(30)=[1000,2999]
trigger1= animelemtime(6)>=0 && animelemtime(9)<0
value= var(30)

[State 1000, statetype]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I
[State 1000, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---Second---
[Statedef 1005]
type=S
physics=N
movetype=A
anim=1005
ctrl=0
velset=0,0
sprpriority=1

[State 1005, strength]
type=varset
trigger1=!time
var(10)=var(11)
[State 1005, anim]
type=changeanim
trigger1=!time
value=ifelse(var(10)=2,1007,ifelse(var(10)=1,1006,1005))

[State 1005, vel]
type=veladd
trigger1=vel x>0
x=ifelse(var(10)=2,-.125,ifelse(var(10)=1,-.09375,-.0625))*1.33
[State 1005, vel]
type=velset
trigger1=vel x<0
x=0

[State 1005, vel]
type=velset
trigger1=!time
x=ifelse(var(10)=2,5.75,ifelse(var(10)=1,4.65,3.5))

[State 1005, snd]
type=playsnd
trigger1=animelem=2
value=4,5
channel=0
[State 1005, snd]
type=playsnd
trigger1=animelem=3
value=1,2
channel=1

[State 1005, dust]
type=explod
trigger1=!(time%6)&&time&&vel x>=1
anim=8104
sprpriority=3
postype=p1
pos=ceil(-28*const(size.xscale)),0
vel=-1.5,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1005, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=3
attr=S,SA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*21<7,7,fvar(11)*21)),7*!var(20)
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(4/((var(20)>0)+1.0)),ceil(4/((var(20)>0)+1.0))
guard.pausetime=ceil(4/((var(20)>0)+1.0)),ceil(4/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Back
fall.animtype=Back
ground.type=Low
air.type=Low
ground.hittime=18
ground.slidetime=18
guard.hittime=18
air.hittime=60
airguard.ctrltime=16
ground.velocity=-12.65,0
guard.velocity=-12.65
air.velocity=-5.39,-7
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=-17.2
guard.cornerpush.veloff=-17.2
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=0
air.fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-64*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1005, Guren Chouchuu]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="holddown" && command="holdfwd"  && (command="x"||command="y"||command="z")
trigger2= var(59)>=1
trigger2= random<50
var(30)=1300
[State 1005, Guren Yasha Joudan]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="holdback" && (command="x"||command="y"||command="z")
trigger2= var(59)>=1
trigger2= inguarddist && p2statetype!=C
var(30)=1020
[State 1005, Guren Ressen Ha]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="holdup" && (command="a"||command="b"||command="c")
trigger2= var(59)>=1
trigger2= (enemynear,stateno=131 || enemynear,stateno=152 || enemynear,stateno=153)
var(30)=1400
[State 1005, Guren Kusabi]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="holddown" && (command="a"||command="b"||command="c")
trigger2= var(59)>=1
trigger2= (enemynear,stateno=130 || enemynear,stateno=150 || enemynear,stateno=151)
var(30)=1015
[State 1005, Guren Yasha Gedan]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="holdback" && (command="a"||command="b"||command="c")
trigger2= var(59)>=1
trigger2= inguarddist && p2statetype=C
var(30)=1025
[State 1005, Guren Hou Shou]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="x"||command="y"||command="z"
trigger2= var(59)>=1
trigger2= random<100
var(30)=1010
[State 1005, Guren Mujin Kyaku]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(9)<0
trigger1= var(59)<=0
trigger1= command="a"||command="b"||command="c"
trigger2= var(59)>=1
trigger2= random<200
var(30)=1200

[State 1005, follow-up strength]
type=varset
trigger1= var(59)<=0
trigger1= !var(11) && animelemtime(9)<0
trigger1= var(30)=1010 || var(30)=1020 || var(30)=1300
var(11)= ifelse(command="z",2,ifelse(command="y",1,0))
[State 1005, follow-up strength]
type=varset
trigger1= var(59)<=0
trigger1= !var(11) && animelemtime(9)<0
trigger1= var(30)=1015 || var(30)=1025 || var(30)=1200 || var(30)=1400
var(11)= ifelse(command="c",2,ifelse(command="b",1,0))
[State 1005, follow-up strength]
type=varset
trigger1= var(59)>=1
trigger1= animelemtime(9)<0
var(11)= (random%3)

[State 1005, follow-up type]
type=varset
trigger1=!time
var(30)=0
[State 1005, follow-up strength]
type=varset
trigger1=!time
var(11)=0

[State 1005, follow-up]
type=changestate
trigger1=var(30)=[1000,2999]
trigger1=animelemtime(6)>=0&&animelemtime(9)<0
value=var(30)

[State 1005, statetype]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I
[State 1005, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---Guren Hou Shou---
[Statedef 1010]
type=S
physics=N
movetype=A
anim=1100
ctrl=0
velset=0,0
sprpriority=1

[State 1010, strength]
type=varset
trigger1=!time
var(10)=var(11)
[State 1010, anim]
type=changeanim
trigger1=!time
value=ifelse(var(10)=2,1102,ifelse(var(10)=1,1101,1100))

[State 1010, vel]
type=veladd
trigger1=vel x>0
x=ifelse(var(10)=2,-.125,ifelse(var(10)=1,-.09375,-.0625))*1.33
[State 1010, vel]
type=velset
trigger1=vel x<0
x=0

[State 1010, vel]
type=velset
trigger1=!time
x=ifelse(var(10)=2,5.75,ifelse(var(10)=1,4.65,3.5))

[State 1010, snd]
type=playsnd
trigger1=animelem=3
value=4,8
channel=0
[State 1010, snd]
type=playsnd
trigger1=animelem=5
value=1,2
channel=1

[State 1010, dust]
type=explod
trigger1=!(time%6)&&time&&vel x>=1
anim=8104
sprpriority=3
postype=p1
pos=ceil(-28*const(size.xscale)),0
vel=-1.5,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1010, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=6
attr=S,SA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*69<7,7,fvar(11)*69)),9*!var(20)
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=15
ground.slidetime=15
guard.hittime=15
air.hittime=60
airguard.ctrltime=16
ground.velocity=-5.23,-6.5
guard.velocity=-12.65
air.velocity=-5.23,-6.5
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-24.4
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-58*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1010, statetype]
type=statetypeset
trigger1=animelemtime(8)>=0
movetype=I
[State 1010, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---Guren Kusabi---
[Statedef 1015]
type=C
physics=N
movetype=A
anim=1015
ctrl=0
velset=0,0
sprpriority=1

[State 1015, strength]
type=varset
trigger1=!time
var(10)=var(11)

[State 1015, vel]
type=veladd
trigger1=vel x>0
x=ifelse(var(10)=2,-.125,ifelse(var(10)=1,-.09375,-.0625))*1.33
[State 1015, vel]
type=velset
trigger1=vel x<0
x=0

[State 1015, vel]
type=velset
trigger1=!time
x=ifelse(var(10)=2,5.75,ifelse(var(10)=1,4.65,3.5))

[State 1015, snd]
type=playsnd
trigger1=animelem=3
value=4,6
channel=0
[State 1015, snd]
type=playsnd
trigger1=animelem=3
value=0,103

[State 1015, dust]
type=explod
trigger1=!(time%6)&&time&&vel x>=1
anim=8104
sprpriority=3
postype=p1
pos=ceil(32*const(size.xscale)),0
vel=-1.5,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1015, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=4
attr=C,SA
hitflag=MAF
guardflag=L
priority=5,Hit
damage=ceil(ifelse(fvar(11)*83<7,7,fvar(11)*83)),10*!var(20)
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Trip
air.type=Trip
ground.hittime=17
ground.slidetime=17
guard.hittime=17
air.hittime=60
airguard.ctrltime=16
ground.velocity=-1.33,-8.07
guard.velocity=-12.65
air.velocity=-1.33,-8.07
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-24.4
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.65
forcestand=1
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-5*const(size.yscale))
hitsound=s2,5
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1015, statetype]
type=statetypeset
trigger1=animelemtime(6)>=0
movetype=I
[State 1015, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;---Guren Yasha Joudan---
[Statedef 1020]
type=S
physics=N
movetype=A
anim=1500
ctrl=0
velset=0,0
sprpriority=1

[State 1020, vel]
type=veladd
trigger1=vel x>0
x=-.083125
[State 1020, vel]
type=velset
trigger1=vel x<0
x=0

[State 1020, vel]
type=velset
trigger1=!time
x=2

[State 1020, dust]
type=explod
trigger1=!(time%6)&&time&&vel x>=1
anim=8104
sprpriority=3
postype=p1
pos=ceil(-38*const(size.xscale)),0
vel=-1.5,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1020, reversal]
type=reversaldef
trigger1=animelem=2
reversal.attr=SA,NA,SA,HA
pausetime=0,20
sparkno=s8001
sparkxy=0,0
hitsound=s3,0
p1stateno=1510

[State 1020, statetype]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I
[State 1020, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---Guren Yasha Gedan---
[Statedef 1025]
type=S
physics=N
movetype=A
anim=1505
ctrl=0
velset=0,0
sprpriority=1

[State 1025, vel]
type=veladd
trigger1=vel x>0
x=-.083125
[State 1025, vel]
type=velset
trigger1=vel x<0
x=0

[State 1025, vel]
type=velset
trigger1=!time
x=2

[State 1025, dust]
type=explod
trigger1=!(time%6)&&time&&vel x>=1
anim=8104
sprpriority=3
postype=p1
pos=ceil(-38*const(size.xscale)),0
vel=-1.5,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1025, reversal]
type=reversaldef
trigger1=animelem=2
reversal.attr=C,NA,SA,HA
pausetime=0,20
sparkno=s8001
sparkxy=0,0
hitsound=s3,0
p1stateno=1510

[State 1025, statetype]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I
[State 1025, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<HOU SHOU>=============================
[Statedef 1100]
type=S
physics=N
movetype=A
anim=1100
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[State 1100, strength]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="z"||command="rlsz"),2,ifelse((command="y"||command="rlsy"),1,0))
[State 1100, strengthAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,2,ifelse(random<500,1,0))
[State 1100, anim]
type=changeanim
trigger1=!time
value=ifelse(var(10)=2,1102,ifelse(var(10)=1,1101,1100))

[State 1100, snd]
type=playsnd
trigger1=animelem=3
value=4,8
channel=0
[State 1100, snd]
type=playsnd
trigger1=animelem=5
value=1,2
channel=1

[State 1100, autoguard]
type=reversaldef
trigger1=animelem=3
reversal.attr=SCA,NA,SA
pausetime=12,12
sparkno=s8001
hitsound=s3,0
numhits=0
[State 1100, mhr]
type=movehitreset
trigger1=animelemtime(6)<0

[State 1100, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=6
attr=S,SA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*(110+var(10)*4)<7,7,fvar(11)*(110+var(10)*4))),14*!var(20)
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=15
ground.slidetime=15
guard.hittime=15
air.hittime=60
airguard.ctrltime=16
ground.velocity=-5.23,-6.5
guard.velocity=-12.65
air.velocity=-5.23,-6.5
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-24.4
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-58*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1100, statetype]
type=statetypeset
trigger1=animelemtime(8)>=0
movetype=I
[State 1100, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<EX HOU SHOU>=============================
[Statedef 1120]
type=S
physics=N
movetype=A
anim=1120
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1120, strength]
type=varset
trigger1=var(10)!=3
var(10)=3

[State 1120, ECreset]
type=palfx
trigger1=!time
trigger1=var(20):=-1
time=1

[State 1120, ExFX]
type=varset
trigger1=!time
var(25)=30
[State 1120, ExFX]
type=playsnd
trigger1=!time
value=0,1000
[State 1120, ExFX]
type=explod
trigger1=!time
anim=8210
sprpriority=3
postype=p1
pos=ceil(-15*const(size.xscale)),ceil(-59*const(size.yscale))
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1120, vel]
type=velset
trigger1=animelem=5
x=8
[State 1120, vel]
type=velset
trigger1=animelem=7
x=0

[State 1120, snd]
type=playsnd
trigger1=animelem=3
value=4,8
channel=0
[State 1120, snd]
type=playsnd
trigger1=animelem=5
value=1,2
channel=1

[State 1120, autoguard]
type=reversaldef
trigger1=animelem=3
reversal.attr=SCA,NA,SA
pausetime=12,12
sparkno=s8001
hitsound=s3,0
numhits=0
[State 1120, mhr]
type=movehitreset
trigger1=animelemtime(6)<0

[State 1120, hit]
type=hitdef
trigger1= !var(37) && (var(14)<2 || var(20))
trigger1=animelem=6
ID=1120
attr=S,SA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*110<7,7,fvar(11)*110)),14
getpower=0,0
givepower=36,36
pausetime=12,12
guard.pausetime=12,12
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=15
ground.slidetime=15
guard.hittime=15
air.hittime=60
airguard.ctrltime=16
ground.velocity=-12,-3
guard.velocity=-12.65
air.velocity=-12,-3
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-24.4
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.3
forcestand=1
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-58*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1120, p2state]
type=targetstate
trigger1= movehit && numtarget(1120)
trigger1= (target(1120),stateno=5000) || (target(1120),stateno=5010) || (target(1120),stateno=5020)
value=1125
ID=1120
ignorehitpause=1

[State 1120, juggle]
type=varset
trigger1= movehit=1
var(14)=0

[State 1120, statetype]
type=statetypeset
trigger1=animelemtime(8)>=0
movetype=I
[State 1120, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<MUJIN KYAKU>=============================
[Statedef 1200]
type=A
physics=N
movetype=A
anim=1200
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)*(prevstateno!=[1000,1005])
facep2=(prevstateno!=[1000,1005])

[State 1200, strength]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="c"||command="rlsc"),2,ifelse((command="b"||command="rlsb"),1,0))
[State 1200, strengthAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,2,ifelse(random<500,1,0))

[State 1200, strength if follow-up]
type=varset
trigger1=!time&&(prevstateno=[1000,1005])
var(10)=var(11)

[State 1200, vel]
type=veladd
trigger1=vel x>0
x=ifelse(var(10)=2,-.125,ifelse(var(10)=1,-.09375,-.0625))*1.33
[State 1200, vel]
type=velset
trigger1=vel x<0
x=0

[State 1200, vel]
type=velset
trigger1=!time
x=ifelse(var(10)=2,5.75,ifelse(var(10)=1,4.65,3.5))

[State 1200, snd]
type=playsnd
trigger1=animelem=3
value=5,5
channel=0
[State 1200, snd]
type=playsnd
trigger1=animelem=4||animelem=7
value=1,5
channel=1

[State 1200, dust]
type=explod
trigger1=!(time%6)&&vel x>=1
trigger1=animelemtime(8)>=0
anim=8104
sprpriority=3
postype=p1
pos=ceil(0*const(size.xscale)),0
vel=-1.5,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1200, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=4
attr=A,SA
hitflag=MAF
guardflag=MA
priority=5,Hit
damage=ceil(ifelse(fvar(11)*(56-var(10)*7)<7,7,fvar(11)*(56-var(10)*7))),7*!var(20)
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(4/((var(20)>0)+1.0)),ceil(4/((var(20)>0)+1.0))
guard.pausetime=ceil(4/((var(20)>0)+1.0)),ceil(5/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=13
ground.slidetime=13
guard.hittime=13
air.hittime=60
airguard.ctrltime=16
ground.velocity=-5.62,0
guard.velocity=-5.62
air.velocity=-5.23,-6.5
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
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-34*const(size.yscale))
hitsound=s2,5
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1200, hit]
type=hitdef
trigger1= !var(37) && (var(14)<(1+hitcount) || var(20))
trigger1=animelem=8
attr=A,SA
hitflag=MAF
guardflag=MA
priority=5,Hit
damage=ceil(ifelse(fvar(11)*56<7,7,fvar(11)*56)),8*!var(20)
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(4/((var(20)>0)+1.0)),ceil(4/((var(20)>0)+1.0))
guard.pausetime=ceil(4/((var(20)>0)+1.0)),ceil(5/((var(20)>0)+1.0))
animtype=Up
air.animtype=Up
fall.animtype=Up
ground.type=High
air.type=Low
ground.hittime=13
ground.slidetime=13
guard.hittime=13
air.hittime=60
airguard.ctrltime=16
ground.velocity=-1.35,-10.1
guard.velocity=-9.22
air.velocity=-1.35,-10.1
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=0
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.6
forcestand=1
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-80*const(size.yscale))
hitsound=s2,5
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1200, statetype]
type=statetypeset
trigger1=animelemtime(10)>=0
movetype=I
[State 1200, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<EX MUJIN KYAKU>=============================
[Statedef 1220]
type=A
physics=N
movetype=A
anim=1220
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1220, strength]
type=varset
trigger1=var(10)!=3
var(10)=3

[State 1220, ECreset]
type=palfx
trigger1=!time
trigger1=var(20):=-1
time=1

[State 1220, ExFX]
type=varset
trigger1=!time
var(25)=30
[State 1220, ExFX]
type=playsnd
trigger1=!time
value=0,1000
[State 1220, ExFX]
type=explod
trigger1=!time
anim=8210
sprpriority=3
postype=p1
pos=ceil(-1*const(size.xscale)),ceil(-33*const(size.yscale))
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1220, vel]
type=veladd
trigger1=vel x>0
x=-.2
[State 1220, vel]
type=velset
trigger1=vel x<0
x=0

[State 1220, vel]
type=velset
trigger1=!time
x=7

[State 1220, snd]
type=playsnd
trigger1=animelem=3
value=5,5
channel=0
[State 1220, snd]
type=playsnd
trigger1=animelem=4||animelem=7
value=1,5
channel=1

[State 1220, dust]
type=explod
trigger1=!(time%6)&&vel x>=1
trigger1=animelemtime(8)>=0
anim=8104
sprpriority=3
postype=p1
pos=ceil(0*const(size.xscale)),0
vel=-1.5,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1220, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=4
attr=A,SA
hitflag=MAF
guardflag=MA
priority=5,Hit
damage=ceil(ifelse(fvar(11)*65<7,7,fvar(11)*65)),8
getpower=0,0
givepower=36,36
pausetime=4,4
guard.pausetime=4,5
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=13
ground.slidetime=13
guard.hittime=13
air.hittime=60
airguard.ctrltime=16
ground.velocity=-9.22,0
guard.velocity=-9.22
air.velocity=-5.23,-6.5
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
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-34*const(size.yscale))
hitsound=s2,5
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1220, hit]
type=hitdef
trigger1= !var(37) && (var(14)<(1+hitcount) || var(20))
trigger1=animelem=8
attr=A,SA
hitflag=MAF
guardflag=MA
priority=5,Hit
damage=ceil(ifelse(fvar(11)*65<7,7,fvar(11)*65)),8
getpower=0,0
givepower=36,36
pausetime=4,4
guard.pausetime=4,5
animtype=Up
air.animtype=Up
fall.animtype=Up
ground.type=High
air.type=Low
ground.hittime=13
ground.slidetime=13
guard.hittime=13
air.hittime=60
airguard.ctrltime=16
ground.velocity=-1.35,-12
guard.velocity=-9.22
air.velocity=-1.35,-12
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=0
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.6
forcestand=1
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-80*const(size.yscale))
hitsound=s2,5
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1220, statetype]
type=statetypeset
trigger1=animelemtime(10)>=0
movetype=I
[State 1220, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<RESSEN CHOU>=============================
[Statedef 1300]
type=S
physics=N
movetype=A
anim=1300
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)*(prevstateno!=[1000,1005])
facep2=(prevstateno!=[1000,1005])

[State 1300, strength]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="z"||command="rlsz"),2,ifelse((command="y"||command="rlsy"),1,0))
[State 1300, strengthAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,2,ifelse(random<500,1,0))

[State 1300, strength if follow-up]
type=varset
trigger1=!time&&(prevstateno=[1000,1005])
var(10)=var(11)

[State 1300, anim]
type=changeanim
trigger1=!time
value=ifelse(var(10)=2,1302,ifelse(var(10)=1,1301,1300))

[State 1300, vel]
type=veladd
trigger1=vel x>0
x=ifelse(var(10)=2,-.125,ifelse(var(10)=1,-.09375,-.0625))*1.33
[State 1300, vel]
type=velset
trigger1=vel x<0
x=0

[State 1300, vel]
type=velset
trigger1=!time
x=ifelse(var(10)=2,5.75,ifelse(var(10)=1,4.65,3.5))

[State 1300, snd]
type=playsnd
trigger1=animelem=4
value=4,6
channel=0

[State 1300, snd]
type=playsnd
trigger1=!time
value=0,130
[State 1300, snd]
type=playsnd
trigger1=animelem=5
value=1,2
channel=1

[State 1300, dust]
type=explod
trigger1=!(time%6)&&time&&vel x>=1
anim=8104
sprpriority=3
postype=p1
pos=ceil(-28*const(size.xscale)),0
vel=-1.5,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1300, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=6
attr=S,SA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*(70-var(10)*7)<7,7,fvar(11)*(70-var(10)*7))),8*!var(20)
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(4/((var(20)>0)+1.0)),ceil(4/((var(20)>0)+1.0))
guard.pausetime=ceil(4/((var(20)>0)+1.0)),ceil(4/((var(20)>0)+1.0))
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
ground.velocity=-12.65,0
guard.velocity=-12.65
air.velocity=-5.39,-7
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=-17.2
guard.cornerpush.veloff=-17.2
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=0
air.fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-64*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1300, follow-up type]
type=varset
triggerall= (!var(30) || var(59)>=1) && animelemtime(11)<0
trigger1= var(59)<=0
trigger1= command="x" || command="y" || command="z"
trigger2= var(59)>=1
var(30)=1305

[State 1300, follow-up strength]
type=varset
trigger1= var(59)<=0
trigger1= !var(11) && animelemtime(11)<0
var(11)= ifelse(command="c",2,ifelse(command="b",1,0))
[State 1300, follow-up strength]
type=varset
trigger1= var(59)>=1
trigger1= animelemtime(11)<0
var(11)= (random%3)

[State 1300, follow-up type]
type=varset
trigger1=!time
var(30)=0
[State 1300, follow-up strength]
type=varset
trigger1=!time
var(11)=0

[State 1300, follow-up]
type=changestate
trigger1=var(30)=1305
trigger1=animelemtime(8)>=0&&animelemtime(11)<0
value=1305

[State 1300, statetype]
type=statetypeset
trigger1=animelemtime(8)>=0
movetype=I
[State 1300, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---Ressen Chuu---
[Statedef 1305]
type=S
physics=N
movetype=A
anim=1305
ctrl=0
velset=0,0
sprpriority=1
poweradd=0

[State 1305, strength]
type=varset
trigger1=!time
var(10)=var(11)
[State 1305, anim]
type=changeanim
trigger1=!time
value=ifelse(var(10)=2,1307,ifelse(var(10)=1,1306,1305))

[State 1305, vel]
type=veladd
trigger1=vel x>0
x=ifelse(var(10)=2,-.125,ifelse(var(10)=1,-.09375,-.0625))*1.33
[State 1305, vel]
type=velset
trigger1=vel x<0
x=0

[State 1305, vel]
type=velset
trigger1=!time
x=ifelse(var(10)=2,5.75,ifelse(var(10)=1,4.65,3.5))

[State 1305, snd]
type=playsnd
trigger1=animelem=2
value=4,4
channel=0
[State 1305, snd]
type=playsnd
trigger1=animelem=3
value=1,2
channel=1

[State 1305, dust]
type=explod
trigger1=!(time%6)&&time&&vel x>=1
anim=8104
sprpriority=3
postype=p1
pos=ceil(-28*const(size.xscale)),0
vel=-1.5,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1305, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=3
attr=S,SA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*(76-var(10)*7)<7,7,fvar(11)*(76-var(10)*7))),8*!var(20)
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(4/((var(20)>0)+1.0)),ceil(4/((var(20)>0)+1.0))
guard.pausetime=ceil(4/((var(20)>0)+1.0)),ceil(4/((var(20)>0)+1.0))
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
ground.velocity=-5.32,-7.62
guard.velocity=-12.65
air.velocity=-5.32,-7.62
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=-17.2
guard.cornerpush.veloff=-17.2
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.6
forcestand=1
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-64*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1305, statetype]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I
[State 1305, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<RESSEN HA>=============================
[Statedef 1400]
type=S
physics=N
movetype=A
anim=1400
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)*(prevstateno!=[1000,1005])
facep2=(prevstateno!=[1000,1005])

[State 1400, strength]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="c"||command="rlsc"),2,ifelse((command="b"||command="rlsb"),1,0))
[State 1400, strengthAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,2,ifelse(random<500,1,0))

[State 1400, strength if follow-up]
type=varset
trigger1=!time&&(prevstateno=[1000,1005])
var(10)=var(11)

[State 1400, anim]
type=changeanim
trigger1=!time
value=ifelse(var(10)=2,1402,ifelse(var(10)=1,1401,1400))

[State 1400, statetype]
type=statetypeset
trigger1=animelemtime(2)>=0
statetype=A
physics=N

[State 1400, grav]
type=veladd
trigger1=animelemtime(2)>=0
y=ifelse(anim=1402,.76,ifelse(anim=1401,.71,.635))
[State 1400, vel]
type=velset
trigger1=animelem=2
x=ifelse(anim=1402,7.92,ifelse(anim=1401,6.22,5.6))
y=ifelse(anim=1402,-8.77,ifelse(anim=1401,-7.82,-6.67))

[State 1400, snd]
type=playsnd
trigger1=animelem=2
value=4,4
channel=0
[State 1400, snd]
type=playsnd
trigger1=animelem=5
value=1,2
channel=1

[State 1400, snd]
type=playsnd
trigger1=animelem=2
value=0,40
[State 1400, dust]
type=helper
trigger1=animelem=2
helpertype=normal
stateno=8100
ID=8100
name="Jump Dust"
postype=p1
ownpal=1

[State 1400, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=5
attr=A,SA
hitflag=MAF
guardflag=HA
priority=5,Hit
damage=ceil(ifelse(fvar(11)*49<7,7,fvar(11)*49)),7*!var(20)
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(10/((var(20)>0)+1.0)),ceil(10/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=13
ground.slidetime=13
guard.hittime=13
air.hittime=60
airguard.ctrltime=16
ground.velocity=-9.22,0
guard.velocity=-9.22
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
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-10,var(22):=ceil(-80*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1400, end]
type=changestate
trigger1=vel y>0
trigger1=pos y>-vel y
value=1405


;---Land---
[Statedef 1405]
type=S
physics=N
movetype=A
anim=1405
ctrl=0
velset=0,0
sprpriority=1
movehitpersist=1

[State 1405, pos]
type=posset
trigger1=1
y=0

[State 1405, snd]
type=playsnd
trigger1=animelem=1
value=4,3
channel=0
[State 1405, snd]
type=playsnd
trigger1=animelem=1
value=1,2
channel=1

[State 1405, snd]
type=playsnd
trigger1=!time
value=0,52
[State 1405, dust]
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

[State 1405, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=1
attr=S,SA
hitflag=MAF
guardflag=H
priority=5,Hit
damage=ceil(ifelse(fvar(11)*69<7,7,fvar(11)*69)),9*!var(20)
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=13
ground.slidetime=13
guard.hittime=13
air.hittime=60
airguard.ctrltime=16
ground.velocity=-5.33,-6.45
guard.velocity=-9.22
air.velocity=-5.33,-6.45
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-17.2
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-10,var(22):=ceil(-30*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1405, statetype]
type=statetypeset
trigger1=animelemtime(2)>=0
movetype=I
[State 1405, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<EX RESSEN HA>=============================
[Statedef 1420]
type=S
physics=N
movetype=A
anim=1420
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1420, strength]
type=varset
trigger1=var(10)!=3
var(10)=3

[State 1420, ECreset]
type=palfx
trigger1=!time
trigger1=var(20):=-1
time=1

[State 1420, ExFX]
type=varset
trigger1=!time
var(25)=30
[State 1420, ExFX]
type=playsnd
trigger1=!time
value=0,1000
[State 1420, ExFX]
type=explod
trigger1=!time
anim=8210
sprpriority=3
postype=p1
pos=ceil(9*const(size.xscale)),ceil(-52*const(size.yscale))
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1420, statetype]
type=statetypeset
trigger1=animelemtime(2)>=0
statetype=A
physics=N

[State 1420, grav]
type=veladd
trigger1=animelemtime(2)>=0
y=.76
[State 1420, vel]
type=velset
trigger1=animelem=2
x=7.92
y=-8.77

[State 1420, snd]
type=playsnd
trigger1=animelem=2
value=4,4
channel=0
[State 1420, snd]
type=playsnd
trigger1=animelem=5||animelem=9||animelem=13
value=1,2
channel=1

[State 1420, snd]
type=playsnd
trigger1=animelem=2
value=0,40
[State 1420, dust]
type=helper
trigger1=animelem=2
helpertype=normal
stateno=8100
ID=8100
name="Jump Dust"
postype=p1
ownpal=1

[State 1420, hit]
type=hitdef
trigger1= !var(37) && var(14)<(1+hitcount)
trigger1=animelem=5||animelem=9||animelem=13
attr=A,SA
hitflag=MAF
guardflag=HA
priority=5,Hit
damage=ceil(ifelse(fvar(11)*29<7,7,fvar(11)*29)),8
getpower=0,0
givepower=36,36
pausetime=6,6
guard.pausetime=8,8
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=13
ground.slidetime=13
guard.hittime=13
air.hittime=60
airguard.ctrltime=16
ground.velocity=-9.22,0
guard.velocity=-9.22
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
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-10,var(22):=ceil(-80*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1420, end]
type=changestate
trigger1=vel y>0
trigger1=pos y>-vel y
value=1425


;---Land---
[Statedef 1425]
type=S
physics=N
movetype=A
anim=1425
ctrl=0
velset=0,0
sprpriority=1
movehitpersist=1

[State 1425, pos]
type=posset
trigger1=1
y=0

[State 1425, snd]
type=playsnd
trigger1=animelem=1
value=4,3
channel=0
[State 1425, snd]
type=playsnd
trigger1=animelem=1
value=1,2
channel=1

[State 1425, snd]
type=playsnd
trigger1=!time
value=0,52
[State 1425, dust]
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

[State 1425, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=1
attr=S,SA
hitflag=MAF
guardflag=H
priority=5,Hit
damage=ceil(ifelse(fvar(11)*69<7,7,fvar(11)*69)),9
getpower=0,0
givepower=36,36
pausetime=12,12
guard.pausetime=12,12
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=13
ground.slidetime=13
guard.hittime=13
air.hittime=60
airguard.ctrltime=16
ground.velocity=-5.33,-6.45
guard.velocity=-9.22
air.velocity=-5.33,-6.45
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-17.2
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-10,var(22):=ceil(-30*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4

[State 1425, statetype]
type=statetypeset
trigger1=animelemtime(2)>=0
movetype=I
[State 1425, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<YASHA GAESHI>=============================
;---Joudan---
[Statedef 1500]
type=S
physics=S
movetype=A
anim=1500
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[State 1500, reversal]
type=reversaldef
trigger1=animelem=2
reversal.attr=SA,NA,SA,HA
pausetime=0,20
sparkno=s8001
sparkxy=0,0
hitsound=s3,0
p1stateno=1510

[State 1500, statetype]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I
[State 1500, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---Gedan---
[Statedef 1505]
type=S
physics=S
movetype=A
anim=1505
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[State 1505, reversal]
type=reversaldef
trigger1=animelem=2
reversal.attr=C,NA,SA,HA
pausetime=0,20
sparkno=s8001
sparkxy=0,0
hitsound=s3,0
p1stateno=1510

[State 1505, statetype]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I
[State 1505, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---Counter---
[Statedef 1510]
type=S
physics=N
movetype=A
anim=1510
ctrl=0
velset=0,0
sprpriority=2

[State 1510, snd]
type=playsnd
trigger1=animelem=2
value=5,6+(random%3)
channel=0
[State 1510, snd]
type=playsnd
trigger1=animelem=2
value=1,2
channel=1

[State 1510, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=3
attr=S,SA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*111<7,7,fvar(11)*111)),14*!var(20)
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=Low
air.type=Low
ground.hittime=15
ground.slidetime=15
guard.hittime=15
air.hittime=60
airguard.ctrltime=16
ground.velocity=-5.23,-6.5
guard.velocity=-12.65
air.velocity=-5.23,-6.5
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-24.4
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-55*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
p1sprpriority=2

[State 1510, statetype]
type=statetypeset
trigger1=animelemtime(4)>=0
movetype=I
[State 1510, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<EX YASHA GAESHI>=============================
[Statedef 1520]
type=S
physics=S
movetype=A
anim=1520
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1520, strength]
type=varset
trigger1=var(10)!=3
var(10)=3

[State 1520, ECreset]
type=palfx
trigger1=!time
trigger1=var(20):=-1
time=1

[State 1520, ExFX]
type=varset
trigger1=!time
var(25)=30
[State 1520, ExFX]
type=playsnd
trigger1=!time
value=0,1000
[State 1520, ExFX]
type=explod
trigger1=!time
anim=8210
sprpriority=3
postype=p1
pos=ceil(-15*const(size.xscale)),ceil(-59*const(size.yscale))
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 1520, reversal]
type=reversaldef
trigger1=animelem=2
reversal.attr=SCA,NA,SA,HA
pausetime=0,20
sparkno=s8001
sparkxy=0,0
hitsound=s3,0
p1stateno=1530

[State 1520, statetype]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I
[State 1520, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---Counter---
[Statedef 1530]
type=S
physics=N
movetype=A
anim=1530
ctrl=0
velset=0,0
sprpriority=2

[State 1530, snd]
type=playsnd
trigger1=animelem=2
value=5,6+(random%3)
channel=0
[State 1530, snd]
type=playsnd
trigger1=animelem=3
value=1,2
channel=1

[State 1530, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1=animelem=4
attr=S,SA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*80<7,7,fvar(11)*80)),10
getpower=0,0
givepower=36,36
pausetime=12,12
guard.pausetime=12,12
animtype=Up
air.animtype=Up
fall.animtype=Up
ground.type=Low
air.type=Low
ground.hittime=15
ground.slidetime=15
guard.hittime=15
air.hittime=60
airguard.ctrltime=16
ground.velocity=-1.5,-11
guard.velocity=-12.65
air.velocity=-1.5,-11
airguard.velocity=-8,-1.5
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-24.4
air.cornerpush.veloff=0
airguard.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-20,var(22):=ceil(-60*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48
envshake.time=14
envshake.ampl=4
p1sprpriority=2

[State 1530, juggle]
type=varset
trigger1= movehit=1
var(14)=0

[State 1530, Hi-Jump Cancel]
type=changestate
value=60
triggerall=var(59)<=0&&roundstate=2
triggerall=command="highjump"
trigger1=movecontact

[State 1530, statetype]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I
[State 1530, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<ARAKUMA INASHI>=============================
[Statedef 1600]
type=S
physics=S
movetype=A
anim=1600
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[State 1600, hit]
type=hitdef
trigger1= animelem=3
ID=1600
attr=S,ST
hitflag=M-
priority=1,Miss
getpower=ifelse(!var(13),144,72)*!var(20),36*!var(20)
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
p1stateno=1610

[State 1600, snd]
type=playsnd
trigger1= animelem=4
value=4,9
channel=0
[State 1600, snd]
type=playsnd
trigger1= animelem=4
value=1,0
channel=1

[State 1600, sts]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I
[State 1600, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---Player---
[Statedef 1610]
type=S
physics=S
movetype=A
anim=1610
ctrl=0
velset=0,0
sprpriority=1

[State 1610, safety]
type=changestate
trigger1= !time && !numtarget(1600)
value=0
ctrl=1
[State 1610, throw]
type=targetstate
trigger1= !time && numtarget(1600)
ID=1600
value=1615
[State 1610, throw]
type=targetfacing
trigger1= numtarget(1600)
ID=1600
value=-1

[State 1610, bind 1]
type=targetbind
triggerall= numtarget(1600)
trigger1= animelemtime(3)<0
trigger2= animelemtime(5)>=0 && animelemtime(8)<0
trigger3= animelemtime(10)>=0
ID=1600
pos=ceil(35*const(size.xscale)),0
[State 1610, bind 2]
type=targetbind
triggerall= numtarget(1600)
trigger1= animelemtime(3)>=0 && animelemtime(5)<0
trigger2= animelemtime(8)>=0 && animelemtime(10)<0
ID=1600
pos=ceil(50*const(size.xscale)),ceil(-68*const(size.xscale))

[State 1610, damage]
type=targetlifeadd
trigger1= numtarget(1600) && (animelem=3 || animelem=8)
value=ceil(ifelse(35*fvar(11)<7,-7,-35*fvar(11)))
ID=1600
[State 1610, givepower]
type=targetpoweradd
trigger1= numtarget(1600) && (animelem=3 || animelem=8)
value=36
ID=1600

[State 1610, hit]
type=hitadd
trigger1= numtarget(1600) && (animelem=3 || animelem=8)
value=1
[State 1610, hitcount]
type=varadd
trigger1= numtarget(1600) && (animelem=3 || animelem=8)
var(13)=1

[State 1610, snd]
type=playsnd
trigger1= animelem=2 || animelem=7
value=4,6
channel=0
[State 1610, snd]
type=playsnd
trigger1= animelem=2 || animelem=7
value=1,5
channel=1

[State 1610, snd]
type=playsnd
trigger1= numtarget(1600) && (animelem=3 || animelem=8)
value=2,5
[State 1610, sparks]
type=explod
trigger1= numtarget(1600) && (animelem=3 || animelem=8)
anim=8010+(random%8)
sprpriority=5
postype=p1
pos=ceil(50*const(size.xscale)),ceil(-68*const(size.yscale))
facing=-1
ownpal=1
pausemovetime=-1
supermovetime=-1
ignorehitpause=1
[State 1610, shake]
type=envshake
trigger1= numtarget(1600) && (animelem=3 || animelem=8)
time=14
ampl=4

[State 1610, end]
type=changestate
trigger1= !animtime
value=1611


;-----Flip-----
[Statedef 1611]
type=S
physics=S
movetype=A
anim=1611
ctrl=0
velset=0,0
sprpriority=1

[State 1611, throw]
type=targetstate
trigger1= !time && numtarget(1600)
ID=1600
value=1616

[State 1611, juggle]
type=varset
trigger1= !time && numtarget(1600)
var(14)=1
ignorehitpause=1

[State 1611, pos]
type=posadd
trigger1=animelem=3||animelem=4||animelem=6
x=ceil(16*const(size.xscale))
[State 1611, pos]
type=posadd
trigger1=animelem=5
x=ceil(6*const(size.xscale))

[State 1611, bind 1]
type=targetbind
trigger1= numtarget(1600)
trigger1= animelemtime(3)<0
ID=1600
pos=ceil(35*const(size.xscale)),0
[State 1611, bind 3]
type=targetbind
trigger1= numtarget(1600)
trigger1= animelemtime(3)>=0 && animelemtime(4)<0
ID=1600
pos=ceil(19*const(size.xscale)),0
[State 1611, bind 4]
type=targetbind
trigger1= numtarget(1600)
trigger1= animelemtime(4)>=0 && animelemtime(5)<0
ID=1600
pos=ceil(13*const(size.xscale)),0
[State 1611, bind 5]
type=targetbind
trigger1= numtarget(1600)
trigger1= animelemtime(5)>=0 && animelemtime(6)<0
ID=1600
pos=ceil(12*const(size.xscale)),ceil(-60*const(size.yscale))
[State 1611, bind 6]
type=targetbind
trigger1= numtarget(1600)
trigger1= animelemtime(6)>=0 && animelemtime(7)<0
ID=1600
pos=ceil(12*const(size.xscale)),ceil(-60*const(size.yscale))
[State 1611, bind 7]
type=targetbind
trigger1= numtarget(1600)
trigger1= animelemtime(7)>=0 && animelemtime(8)<0
ID=1600
pos=0,ceil(-70*const(size.yscale))
[State 1611, bind 8]
type=targetbind
trigger1= numtarget(1600)
trigger1= animelem=8
ID=1600
pos=ceil(-12*const(size.xscale)),ceil(-60*const(size.yscale))

[State 1611, damage]
type=targetlifeadd
trigger1= numtarget(1600) && animelem=8
value=ceil(ifelse(111*fvar(11)<7,-7,-111*fvar(11)))
ID=1600

[State 1611, throw]
type=targetstate
trigger1= numtarget(1600) && animelem=8
ID=1600
value=1617

[State 1611, snd]
type=playsnd
trigger1=animelem=2
value=5,9
channel=0
[State 1611, snd]
type=playsnd
trigger1=animelem=6
value=1,5
channel=1

[State 1611, turn]
type=turn
trigger1= !animtime
[State 1611, end]
type=changestate
trigger1= !animtime
value=0 
ctrl=1


;---TARGET---
[Statedef 1615]
type=A
physics=N
movetype=H
velset=0,0
sprpriority=0
[State 1615, anim]
type=changeanim2
trigger1= !time
value=1615
[State 1615, camera]
type=screenbound
trigger1= 1
value=0
movecamera=0,0

[Statedef 1616]
type=A
physics=N
movetype=H
ctrl=0
velset=0,0
sprpriority=0
[State 1616, anim]
type=changeanim2
trigger1= !time
value=1616
[State 1616, camera]
type=screenbound
trigger1= 1
value=0
movecamera=0,0

[Statedef 1617]
type=A
physics=N
movetype=H
ctrl=0
velset=0,0
sprpriority=0
[State 1617, anim]
type=changeanim2
trigger1= !time
value=1617

[State 1617, grav]
type=veladd
trigger1=1
y=.75
[State 1617, vel]
type=velset
trigger1=!time
x=3.33
y=-5

[State 1617, end]
type=selfstate
trigger1= vel y>0
trigger1= pos y>=-const(size.ground.back)
value=5100


;========================<PUNCH ZERO COUNTER>=============================
[Statedef 2900]
type=S
physics=S
movetype=A
anim=2900
ctrl=0
velset=0,0
sprpriority=1
poweradd=0

[State 2900, nothitby]
type=nothitby
trigger1=animelemtime(4)<0
value=SCA
time=1
ignorehitpause=1

[State 2900, pos]
type=posadd
trigger1= animelem=2 || animelem=3
x=ceil(16*const(size.yscale))
[State 2900, pos]
type=posadd
trigger1= animelemtime(9)=0 || animelemtime(9)=1 || animelemtime(9)=2
trigger2= animelem=10
x=floor(-8*const(size.yscale))

[State 2900, snd]
type=playsnd
trigger1= animelem=3
value=4,5
channel=0
[State 2900, snd]
type=playsnd
trigger1= animelem=3
value=1,2
channel=1

[State 2900, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=4
ID=200*!var(20)
attr=S,SA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*42<7,7,fvar(11)*42)),7*!var(20)
getpower=0,0
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Diagup
air.animtype=Diagup
fall.animtype=Diagup
ground.type=High
air.type=Low
ground.hittime=17+4*var(9)
ground.slidetime=17+4*var(9)
guard.hittime=17
air.hittime=60
ground.velocity=-6.5,-5.85
guard.velocity=-12.65
air.velocity=-6.5,-5.85
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-24.4
air.cornerpush.veloff=0
yaccel=.5
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-10,var(22):=ceil(-77*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 2900, sts]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
[State 2900, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;========================<KICK ZERO COUNTER>=============================
[Statedef 2950]
type=C
physics=C
movetype=A
anim=2950
ctrl=0
velset=0,0
sprpriority=1
poweradd=0

[State 2950, nothitby]
type=nothitby
trigger1=animelemtime(5)<0
value=SCA
time=1
ignorehitpause=1

[State 2950, snd]
type=playsnd
trigger1= animelem=3
value=4,5
channel=0
[State 2950, snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 2950, hit]
type=hitdef
trigger1= !var(37) && (var(14)<1 || var(20))
trigger1= animelem=5
ID=200*!var(20)
attr=S,SA
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*42<7,7,fvar(11)*42)),7*!var(20)
getpower=0,0
givepower=36,36
pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
guard.pausetime=ceil(12/((var(20)>0)+1.0)),ceil(12/((var(20)>0)+1.0))
animtype=Diagup
air.animtype=Diagup
fall.animtype=Diagup
ground.type=High
air.type=Low
ground.hittime=17+4*var(9)
ground.slidetime=17+4*var(9)
guard.hittime=17
air.hittime=60
ground.velocity=-6.5,-5.85
guard.velocity=-12.65
air.velocity=-6.5,-5.85
ground.cornerpush.veloff=0
guard.cornerpush.veloff=-24.4
air.cornerpush.veloff=0
yaccel=.5
fall=1
fall.recover=0
sparkno=s8020+(random%8)
guard.sparkno=s8001
sparkxy=var(21):=-10,var(22):=ceil(-8*const(size.yscale))
hitsound=s2,2
guardsound=s3,0
palfx.time=12*var(9)
palfx.add=255,255,255
palfx.sinadd=-255,-255,-255,48

[State 2950, sts]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
[State 2950, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1