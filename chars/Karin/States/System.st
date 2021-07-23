; ________________________________
;| Karin by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<SYSTEM STATES>========================================
;==============================================================================================

;====================<STANDING>====================
[Statedef 0]
type=S
physics=S
movetype=I
velset=0,0
sprpriority=0
[State 0, anim]
type=changeanim
trigger1=anim!=0 && anim!=5
trigger2=anim=5 && !animtime
value=0

[State 0, dead]
type=changestate
trigger1=!alive
value=5050


;====================<CROUCHING>====================
[Statedef 10]
type=C
physics=C
movetype=I
velset=0,0
sprpriority=0
[State 10, anim]
type=changeanim
trigger1=!time && anim=12
value=10
elem=3-animelemno(0)
[State 10, anim]
type=changeanim
trigger1=anim!=10
value=10
[State 10, end]
type=changestate
trigger1=!animtime
value=11

[Statedef 11]
type=C
physics=C
movetype=I
anim=11
velset=0,0
sprpriority=0
[State 11, anim]
type=changeanim
trigger1=anim=6 && !animtime
value=11

[Statedef 12]
type=S
physics=S
movetype=I
velset=0,0
sprpriority=0
[State 12, anim]
type=changeanim
trigger1=!time && anim=10
value=12
elem=3-animelemno(0)
[State 12, anim]
type=changeanim
trigger1=anim!=12
value=12
[State 12, end]
type=changestate
trigger1=command="holddown" && command!="holdup"
value=10
[State 12, end]
type=changestate
trigger1=!animtime
value=0


;====================<WALKING>====================
[Statedef 20]
type=S
physics=S
movetype=I
sprpriority=0

[State 20, vel]
type=velset
trigger1=command="holdfwd"
x=const(velocity.walk.fwd.x)

[State 20, vel]
type=velset
trigger1=command="holdback"
x=const(velocity.walk.back.x)

[State 20, anim]
type=changeanim
triggerall=vel x>0
trigger1=anim!=20 && anim!=5
trigger2=anim=5 && !animtime
value=20

[State 20, anim]
type=changeanim
triggerall=vel x<0
trigger1=anim!=21 && anim!=5
trigger2=anim=5 && !animtime
value=21


;====================<JUMPING>====================
[Statedef 40]
type=S
physics=S
movetype=I
anim=40
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 40, nhb]
type=nothitby
trigger1=1
value=,AT
time=1

[State 40, direction]
type=varset
trigger1=var(59)<=0
sysvar(1)=ifelse(!time,0,ifelse(command="holdfwd",1,ifelse(command="holdback",-1,sysvar(1))))
[State 40, direction]
type=varset
trigger1=var(59)>=1
sysvar(1)=ifelse((enemynear,movetype!=A || backedgebodydist<=10),1,ifelse((enemynear,movetype=A),-1,0))

[State 40, highjump]
type=varset
trigger1=!time && var(59)<=0
var(3)=ifelse(command="highjump",3,0)
[State 40, highjump]
type=varset
trigger1=!time && var(59)>=1
var(3)=ifelse((p2bodydist x>=160 || random<100),3,1)
[State 40, highjump]
type=varset
trigger1=!time && prevstateno=100
var(3)=3

[State 40, lowjump]
type=varset
trigger1=var(59)<=0 && command!="holdup" && (var(3)!=[1,2])
var(3)=ifelse((var(3)=3 && sysvar(1)),2,1)
[State 40, lowjump]
type=varset
trigger1=var(59)>=1 && (var(3)!=[1,2])
trigger1=(enemynear,statetype=C) && random<250
var(3)=ifelse((var(3)=3 && sysvar(1)),2,1)

[State 40, dust]
type=helper
trigger1=!animtime
helpertype=normal
stateno=8100
ID=8100
name="Jump Dust"
postype=p1
ownpal=1

[State 40, vel normal]
type=velset
trigger1=!animtime
x=ifelse(!sysvar(1),const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y=const(velocity.jump.y)

[State 40, vel short]
type=velset
trigger1=!animtime && var(3)=1
x=ifelse(!sysvar(1),const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y=.75*const(velocity.jump.y)

[State 40, vel medium]
type=velset
trigger1=!animtime && var(3)=2
x=ifelse(!sysvar(1),const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.runjump.fwd.x),const(velocity.runjump.back.x)))
y=.75*const(velocity.jump.y)

[State 40, vel long]
type=velset
trigger1=!animtime && var(3)=3
x=ifelse(!sysvar(1),const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.runjump.fwd.x),const(velocity.runjump.back.x)))
y=ifelse(!sysvar(1),const(velocity.runjump.y),const(velocity.jump.y))

[State 40, end]
type=changestate
trigger1=!animtime
value=50
ctrl=1


[Statedef 50]
type=A
physics=N
movetype=I
sprpriority=1

[State 50, anim]
type=changeanim
trigger1=!time
value=ifelse(!vel x,41,ifelse(vel x>0,42,43))+10*(var(3)=[1,2])
persistent=0
[State 50, snd]
type=playsnd
trigger1=!time
value=0,ifelse((var(3)=[2,3]),41,40)

[State 50, noguard]
type=assertspecial
trigger1=var(3)=[1,2]
flag=noairguard

[State 50, grav]
type=gravity
trigger1=1
[State 50, land]
type=changestate
trigger1=pos y>-vel y
value=52


[Statedef 51]
type=A
physics=N
movetype=I
sprpriority=1
[State 51, grav]
type=gravity
trigger1=1
[State 51, land]
type=changestate
trigger1=pos y>-vel y
value=52


[Statedef 52]
type=S
physics=S
movetype=I
anim=47
ctrl=0
velset=0,0
sprpriority=1

[State 52, anim 57]
type=changeanim
trigger1=!time && (var(3)=1 || var(3)=2)
trigger1=(prevstateno=[600,699])
value=57

[State 52, pos]
type=posset
trigger1=1
y=0

[State 52, ctrl]
type=ctrlset
trigger1=!time && (prevstateno!=[600,699])
trigger2=time=1
value=1
[State 52, guard]
type=changestate
trigger1=command="holdback"
trigger1=inguarddist && (prevstateno!=[600,699])
value=120

[State 52, snd]
type=playsnd
trigger1=!time
value=0,52
[State 52, dust]
type=explod
trigger1=!time
anim=8102
sprpriority=-3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 52, turn]
type=changeanim
trigger1=ctrl && p2dist x<0
trigger1=anim!=5
value=5
[State 52, turn]
type=turn
trigger1=anim=5 && animelem=1

[State 52, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;====================<HIGH JUMP CANCEL>====================
[Statedef 60]
type=S
physics=S
movetype=I
anim=40
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 60, nhb]
type=nothitby
trigger1=1
value=,AT
time=1

[State 60, direction]
type=varset
trigger1=var(59)<=0
sysvar(1)=ifelse(!time,0,ifelse(command="holdfwd",1,ifelse(command="holdback",-1,sysvar(1))))
[State 60, direction]
type=varset
trigger1=var(59)>=1
sysvar(1)=ifelse((enemynear,movetype!=A || backedgebodydist<=10),1,ifelse((enemynear,movetype=A),-1,0))

[State 60, juggle]
type=varset
trigger1=1
var(14)=0
[State 60, highjump]
type=varset
trigger1=1
var(3)=3

[State 60, dust]
type=helper
trigger1=!animtime
helpertype=normal
stateno=8100
ID=8100
name="Jump Dust"
postype=p1
ownpal=1

[State 60, vel long]
type=velset
trigger1=!animtime && var(3)=3
x=ifelse(!sysvar(1),const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.runjump.fwd.x),const(velocity.runjump.back.x)))
y=ifelse(!sysvar(1),const(velocity.runjump.y),const(velocity.jump.y))

[State 60, end]
type=changestate
trigger1=!animtime
value=50
ctrl=1


;======================<RUN>===========================
[Statedef 100]
type=S
physics=N
movetype=I
anim=100
ctrl=0
sprpriority=1

[State 100, vel]
type=velset
trigger1=animelemtime(2)>=0
x=const(velocity.run.fwd.x)

[State 100, step]
type=playsnd
trigger1=!time
value=0,100
[State 100, dust]
type=explod
trigger1=!time
anim=8103
sprpriority=3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1
[State 100, steps]
type=playsnd
trigger1=(animelem=4 || animelem=7)
value=0,ifelse((animelem=7),102,101)

[State 100, jump]
type=changestate
trigger1=var(59)<=0 && command="holdup"
value=ifelse(command="holdfwd",40,101)
[State 100, jump]
type=changestate
trigger1=var(59)>=1 && random<25
value=40

[State 100, end]
type=changestate
triggerall=time>=14
trigger1=var(59)<=0 && command!="holdfwd"
trigger2=var(59)>=1 && p2bodydist x<=90
value=101


;---STOP---
[Statedef 101]
type=S
physics=S
movetype=I
anim=101
ctrl=0
sprpriority=1

[State 101, snd]
type=playsnd
trigger1=!time
value=0,103
[State 101, dust]
type=explod
trigger1=!time
anim=8104
sprpriority=3
postype=p1
pos=0,0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 101, jump]
type=changestate
trigger1=var(59)<=0 && command="holdup"
value=40
[State 101, end]
type=changestate
trigger1=!animtime
value=ifelse(command="holddown",10,0)
ctrl=1


;========================<BACK DASH>==========================
[Statedef 105]
type=S
physics=S
movetype=I
velset=0,0
anim=105
ctrl=0
sprpriority=1

[State 105, snd]
type=playsnd
trigger1=animelem=2
value=0,105
[State 105, dust]
type=explod
trigger1=animelemtime(2)=-1
anim=8103
sprpriority=3
postype=p1
pos=0,ceil(pos y)
facing=-1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 105, grav]
type=veladd
trigger1=animelemtime(2)>=0
y=.35
[State 105, sts]
type=statetypeset
trigger1=animelemtime(2)>=0
statetype=A
physics=N

[State 105, vel]
type=velset
trigger1=animelem=2
x=const(velocity.run.back.x)
y=const(velocity.run.back.y)

[State 105, land]
type=changestate
trigger1=pos y>-vel y
value=106


;---LAND---
[Statedef 106]
type=S
physics=S
ctrl=0
anim=106
velset=0,0

[State 106, pos]
type=posset
trigger1=1
y=0

[State 106, snd]
type=playsnd
trigger1=!time
value=0,53
[State 106, dust]
type=explod
trigger1=!time
anim=8102
sprpriority=-3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 106, ctrl]
type=ctrlset
trigger1=time>=2
value=1
[State 106, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;====================<FORWARD ROLL>====================
[Statedef 710]
type=S
physics=N
movetype=I
anim=710
ctrl=0
velset=0,0
sprpriority=1

[State 710, push]
type=playerpush
trigger1=1
value=0
[State 710, hb]
type=hitby
trigger1=animelemtime(7)<0
value=SCA,AT
time=1

[State 710, snd]
type=playsnd
trigger1=animelem=1
value=4,ifelse(random<500,3,6)
channel=0
[State 710, snd]
type=playsnd
trigger1=animelem=1
value=0,105

[State 710, vel]
type=velset
trigger1=animelem=2
x=5.6
[State 710, vel]
type=velset
trigger1=animelem=7
x=0

[State 710, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<POWER CHARGE>==========
[Statedef 730]
type=S
physics=S
movetype=I
anim=730
velset=0,0
ctrl=0

[State 730, power]
type=poweradd
triggerall= power<const(data.power) && power<powermax
trigger1= var(59)<=0 && (command="holdb" && command="holdy")
trigger2= var(59)>=1
value= 2 + ifelse(time<60, 0, (time-60)/10)

[State 730, snd]
type=playsnd
trigger1=!time
value=4,11
channel=0
[State 730, flash]
type=palfx
trigger1=1
time=1
add=75+ceil(sin(time/6.0*pi)*75),25+ceil(sin(time/6.0*pi)*25),0

[State 730, fx]
type=helper
trigger1=!numhelper(8330)
helpertype=normal
stateno=8330
ID=8330
name="Power Charge"
postype=p1
ownpal=1
[State 730, fx]
type=helper
trigger1=!numhelper(8332)
helpertype=normal
stateno=8332
ID=8332
name="Particles"
postype=p1
ownpal=1

[State 730, end]
type=changestate
trigger1= power>=const(data.power) || power>=powermax || roundstate!=2
trigger2= var(59)<=0 && (command!="holdb" || command!="holdy")
trigger3= var(59)>=1 && (inguarddist || p2movetype=A || p2bodydist x<=120)
value=731
ctrl=1


;---END---
[Statedef 731]
type=S
physics=S
movetype=I
anim=731
velset=0,0
ctrl=1
[State 731, stopsnd]
type=stopsnd
trigger1=!time
channel=0
[State 730, snd]
type=playsnd
trigger1= !time && power>=const(data.power)
value=6,1
channel=0
persistent=0
[State 730, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;====================<ZERO COUNTER>====================
[Statedef 750]
type=S
physics=S
movetype=I
anim=750
velset=0,0
ctrl=0
sprpriority=2
poweradd=-1000

[State 750, strength]
type=varset
trigger1=!time && var(59)<=0
var(10)=(command="bdk")
ignorehitpause=1
[State 750, strengthAI]
type=varset
trigger1=!time && var(59)>=1
var(10)=ifelse((p2statetype=A),0,ifelse((p2statetype=C),1,ifelse(random<500,0,1)))
ignorehitpause=1

[State 750, nhb]
type=nothitby
trigger1=1
value=SCA
time=1
[State 750, stop]
type=posfreeze
trigger1=1
value=1

[State 750, snd]
type=playsnd
trigger1=!time
value=4,6
channel=0

[State 750, superpausefx]
type=helper
trigger1=!time
helpertype=normal
stateno=8350
ID=8350
name="Zero Counter"
postype=p1
pos=ceil(42*const(size.xscale)),ceil(-71*const(size.yscale))
supermovetime=255
ownpal=1
[State 750, superpause]
type=superpause
trigger1=!time
time=15
movetime=15
p2defmul=1
anim=-1
sound=s0,750
darken=0

[State 750, end]
type=changestate
trigger1=time>=15
value=ifelse(var(10)=1,2950,2900)


;====================<PARRY>====================
;---STANDING---
[Statedef 760]
type=S
physics=S
movetype=I
anim=760
velset=0,0
ctrl=0
sprpriority=2
poweradd=78

[State 760, hb]
type=hitby
trigger1=1
value=SCA,AT
time=1
[State 760, pause]
type=pause
trigger1=!time
time=15
movetime=15
endcmdbuftime=15
pausebg=0

[State 760, stop]
type=posfreeze
trigger1=1
value=1
[State 760, nowalk]
type=varset
trigger1=1
var(26)=7

[State 760, snd]
type=playsnd
trigger1=!time
value=4,5
channel=0
[State 760, snd]
type=playsnd
trigger1=!time
value=0,760

[State 760, blueflash]
type=palfx
trigger1=!time
add=0,64,255
sinadd=0,-64,-255,60
time=15
[State 760, spark]
type=explod
trigger1=!time
anim=8360
sprpriority=5
postype=p1
pos=ceil(42*const(size.xscale)),ceil(-71*const(size.yscale))
pausemovetime=-1
supermovetime=-1
scale=.5,.5
ownpal=1
[State 760, shake]
type=envshake
trigger1=!time
time=0
ampl=0

[State 760, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---CROUCHING---
[Statedef 761]
type=C
physics=C
movetype=I
anim=761
velset=0,0
ctrl=0
sprpriority=2
poweradd=78

[State 761, hb]
type=hitby
trigger1=1
value=SCA,AT
time=1
[State 761, pause]
type=pause
trigger1=!time
time=15
movetime=15
endcmdbuftime=15
pausebg=0

[State 761, stop]
type=posfreeze
trigger1=1
value=1
[State 761, nowalk]
type=varset
trigger1=1
var(26)=7

[State 761, snd]
type=playsnd
trigger1=!time
value=4,5
channel=0
[State 761, snd]
type=playsnd
trigger1=!time
value=0,760

[State 761, blueflash]
type=palfx
trigger1=!time
add=0,64,255
sinadd=0,-64,-255,60
time=15
[State 761, spark]
type=explod
trigger1=!time
anim=8360
sprpriority=5
postype=p1
pos=ceil(7*const(size.xscale)),ceil(-48*const(size.yscale))
pausemovetime=-1
supermovetime=-1
scale=.5,.5
ownpal=1
[State 761, shake]
type=envshake
trigger1=!time
time=0
ampl=0

[State 761, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;---JUMPING---
[Statedef 762]
type=A
physics=N
movetype=I
anim=762
ctrl=0
sprpriority=2
poweradd=78

[State 762, hb]
type=hitby
trigger1=1
value=SCA,AT
time=1
[State 762, pause]
type=pause
trigger1=!time
time=15
movetime=15
endcmdbuftime=15
pausebg=0
[State 762, stop]
type=posfreeze
trigger1=1
value=1

[State 762, snd]
type=playsnd
trigger1=!time
value=4,5
channel=0
[State 762, snd]
type=playsnd
trigger1=!time
value=0,760

[State 762, blueflash]
type=palfx
trigger1=!time
add=0,64,255
sinadd=0,-64,-255,60
time=15
[State 762, spark]
type=explod
trigger1=!time
anim=8360
sprpriority=5
postype=p1
pos=ceil(21*const(size.xscale)),ceil(-84*const(size.yscale))
pausemovetime=-1
supermovetime=-1
scale=.5,.5
ownpal=1
[State 762, shake]
type=envshake
trigger1=!time
time=0
ampl=0

[State 762, end]
type=changestate
trigger1=!animtime
value=763
ctrl=1

[Statedef 763]
type=A
physics=N
movetype=I
anim=763
ctrl=1
[State 763, vel]
type=velset
trigger1=!time
x=ifelse(vel x>2,2,ifelse(vel x<-2,-2,vel x))
y=ifelse(vel y<-2,vel y,-2)
[State 763, grav]
type=gravity
trigger1=1
[State 763, land]
type=changestate
trigger1=pos y>-vel y
value=52


;---HELPER---
[Statedef 765]
type=A
physics=N
movetype=I
anim=ifelse(root,statetype=C,766,ifelse(root,statetype=A,767,765))
velset=0,0
ctrl=0
[State 765, nhb]
type=nothitby
trigger1=1
value=SCA
[State 765, bind]
type=bindtoroot
trigger1=1
time=-1

[State 765, anim]
type=changeanim
triggerall=!time
trigger1=root,var(59)<=0 && root,command="down"
trigger2=root,var(59)>=1 && (root,statetype!=A) && p2statetype=C
value=766
[State 765, anim]
type=changeanim
triggerall=!time
trigger1=root,var(59)<=0 && root,command="fwd"
trigger2=root,var(59)>=1 && anim!=766
value=ifelse((root,statetype=A),767,765)
[State 765, anim]
type=changeanim
trigger1=anim=765 || anim=767
value=ifelse((root,statetype=A),767,765)

[State 765, disable]
type=varset
trigger1=time>=ifelse((root,statetype=A),7,8)
trigger2=facing!=(root,facing)
trigger3=(root,stateno!=[760,762]) && !(root,ctrl)
var(0)=1
[State 765, disable]
type=varset
triggerall=root,var(59)<=0
trigger1=(root,command="holdback")
trigger2=time<4 && (root,command="holdfwd"+root,command="holddown")>1
trigger3=time>=4 && (root,command="holdfwd" || root,command="holddown")
trigger4=time>=1 && (((anim=765 || anim=767) && root,command="fwd") || (anim=766 && root,command="down"))
var(0)=1
[State 765, disable]
type=changeanim
trigger1=var(0)=1
value=9741

[State 765, standing/air]
type=reversaldef
trigger1=!var(0) && (anim=765 || anim=767)
reversal.attr=SCA,AA
p1stateno=766
pausetime=0,0
sparkno=-1
numhits=0

[State 765, crouching]
type=reversaldef
trigger1=!var(0) && anim=766
reversal.attr=SC,AA
p1stateno=766
pausetime=0,0
sparkno=-1
numhits=0

[State 765, disable]
type=reversaldef
trigger1=var(0)=1
reversal.attr=
pausetime=0,0
sparkno=-1
numhits=0

[State 765, end]
type=destroyself
trigger1=time>=18
trigger2=(root,movetype!=I)
trigger3=!(root,ctrl) && (root,stateno!=[760,762])
trigger4=(root,stateno=[760,762]) && (root,time<=1)

[Statedef 766]
movetype=I
ctrl=0
[State 766, disable]
type=varset
trigger1=1
var(0)=1
[State 766, end]
type=destroyself
trigger1=(root,stateno=[760,762]) || time>=18


;====================<EXCEL COMBO>====================
;---GROUND---
[Statedef 900]
type=S
physics=S
movetype=A
anim=900
velset=0,0
ctrl=0
sprpriority=2
poweradd=-1000

[State 900, nhb]
type=nothitby
trigger1=!time
value=SCA
time=45
[State 900, stop]
type=posfreeze
trigger1=1
value=1
[State 900, var]
type=varset
trigger1=time>=4
var(20)=300

[State 900, unguardable]
type=varset
trigger1=time=4 && numenemy
trigger1=(enemynear,stateno!=[120,155])
var(17)=30

[State 900, snd]
type=playsnd
trigger1=time=4
value=6,1
channel=0
[State 900, superpausefx]
type=helper
trigger1=time=4
helpertype=normal
stateno=8400
ID=8400
name="Excel Charge"
postype=p1
pos=ceil(1*const(size.xscale)),ceil(-69*const(size.yscale))
supermovetime=255
ownpal=1
[State 900, superpause]
type=superpause
trigger1=time=4
time=30
movetime=30
anim=-1
sound=s0,900
p2defmul=1
darken=0

[State 900, image]
type=afterimage
trigger1=!animtime
time=2
timegap=1
framegap=4
length=13
palbright=0,0,0
palcontrast=64,128,192
palpostbright=0,0,0
paladd=0,0,0
palmul=.75,.75,.75
trans=add1

[State 900, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---AIR---
[Statedef 905]
type=A
physics=N
movetype=A
anim=905
ctrl=0
sprpriority=2
poweradd=-1000

[State 905, nhb]
type=nothitby
trigger1=!time
value=SCA
time=45
[State 905, stop]
type=posfreeze
trigger1=1
value=1
[State 905, var]
type=varset
trigger1=time>=4
var(20)=300

[State 905, unguardable]
type=varset
trigger1=time=4 && numenemy
trigger1=(enemynear,stateno!=[120,155])
var(17)=30

[State 905, snd]
type=playsnd
trigger1=time=4
value=6,1
channel=0
[State 905, superpausefx]
type=helper
trigger1=time=4
helpertype=normal
stateno=8400
ID=8400
name="Excel Charge"
postype=p1
pos=ceil(4*const(size.xscale)),ceil(-74*const(size.yscale))
supermovetime=255
ownpal=1
[State 905, superpause]
type=superpause
trigger1=time=4
time=30
movetime=30
anim=-1
sound=s0,900
p2defmul=1
darken=0

[State 905, image]
type=afterimage
trigger1=!animtime
time=2
timegap=1
framegap=4
length=13
palbright=0,0,0
palcontrast=64,128,192
palpostbright=0,0,0
paladd=0,0,0
palmul=.75,.75,.75
trans=add1

[State 905, end]
type=changestate
trigger1=!animtime
value=906
ctrl=1


[Statedef 906]
type=A
physics=N
movetype=I
anim=906
ctrl=1
[State 906, grav]
type=gravity
trigger1=1
[State 906, land]
type=changestate
trigger1=pos y>-vel y
value=52


;==========<FORCED P2 RECOVERY>==========
[Statedef 5025]
type=A
movetype=H
physics=N
velset=0,0
[State 5025, hfs]
type=hitfallset
trigger1=1
value=0
[State 5025, end]
type=selfstate
trigger1=1
value=5020


;==========<FALL RECOVERY>==========
[Statedef 5200]
type=A
movetype=H
physics=N
[State 5200, anim]
type=changeanim
trigger1=anim=5035 && !animtime
value=5050
[State 5200, vel]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 5200, end]
type=selfstate
trigger1=vel y>0 && pos y>=10
value=5201

[Statedef 5201]
type=S
movetype=I
physics=N
anim=5200
ctrl=0
[State 5201, turn]
type=turn
trigger1=!time && vel x>0

[State 5201, pos]
type=posset
trigger1=1
y=0
[State 5201, vel]
type=velset
trigger1=!time
x=-8
y=0
[State 5201, vel]
type=velmul
trigger1=1
x=.9

[State 5201, snd]
type=playsnd
trigger1=!time
value=4,2
channel=0
[State 5201, snd]
type=playsnd
trigger1=!time
value=0,5200

[State 5201, flash]
type=palfx
trigger1=!time
add=255,255,255
sinadd=-255,-255,-255,40
time=10
[State 5201, fx]
type=helper
trigger1=!time
helpertype=normal
stateno=8200
ID=8200
name="Recover FX"
postype=p1
pos=0,ceil(-18*const(size.yscale))
size.xscale=1
size.yscale=1
ownpal=1

[State 5201, nhb]
type=nothitby
trigger1=animelemtime(5)<0
value=SCA
time=1

[State 5201, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---AIR---
[Statedef 5210]
type=A
movetype=I
physics=N
anim=5210
ctrl=0
[State 5210, turn]
type=turn
trigger1=!time && vel x>0

[State 5210, grav]
type=veladd
trigger1=1
y=.6
[State 5210, direction]
type=velset
trigger1=!time
trigger1=command="holdfwd"^^command="holdback"
x=ifelse(command="holdfwd",-1.33,-4)
y=-7.55

[State 5210, snd]
type=playsnd
trigger1=!time
value=4,2
channel=0
[State 5210, snd]
type=playsnd
trigger1=!time
value=0,5200

[State 5210, flash]
type=palfx
trigger1=!time
add=255,255,255
sinadd=-255,-255,-255,40
time=10
[State 5210, fx]
type=helper
trigger1=!time
helpertype=normal
stateno=8200
ID=8200
name="Recover FX"
postype=p1
pos=0,ceil(-66*const(size.yscale))
size.xscale=1
size.yscale=1
ownpal=1

[State 5210, nhb]
type=nothitby
trigger1=animelemtime(8)<0
value=SCA
time=1
[State 5210, ctrl]
type=ctrlset
trigger1=animelemtime(8)>=0
value=1

[State 5210, land]
type=changestate
trigger1=pos y>-vel y
value=52


;==========<RECOVERY ROLL>==========
[Statedef 5220]
type=A
movetype=H
physics=N
[State 5220, anim]
type=changeanim
trigger1=anim=5035 && !animtime
value=5050
[State 5220, vel]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 5220, end]
type=selfstate
trigger1=vel y>0 && pos y>=10
value=5221

[Statedef 5221]
type=S
movetype=I
physics=N
anim=5220
ctrl=0
velset=0,0
sprpriority=1

[State 5221, turn]
type=turn
trigger1=!time && p2dist x<0
[State 5221, push]
type=playerpush
trigger1=1
value=0

[State 5221, pos]
type=posset
trigger1=1
y=0
[State 5221, vel]
type=velset
trigger1=time=9
x=7.66

[State 5221, end]
type=changestate
trigger1=time>=27 && command!="holdfwd"
trigger2=time>=45
value=11
ctrl=1


;===================<GUARD>================
;---START---
[Statedef 120]
type=U
physics=U
anim=120+(statetype=C)+(statetype=A)*2
[State 120, sts]
type=statetypeset
trigger1=!time && statetype=S
physics=S
[State 120, sts]
type=statetypeset
trigger1=!time && statetype=C
physics=C
[State 120, sts]
type=statetypeset
trigger1=!time && statetype=A
physics=A
[State 120, vel]
type=velset
trigger1=!time && statetype!=A
x=0
y=0
[State 120, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0 && statetype=S && command="holddown"
trigger2=var(59)>=1 && statetype=S && (enemynear,movetype=A) && (enemynear,statetype=C)
statetype=C
physics=C
[State 120, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0 && statetype=C && command!="holddown"
trigger2=var(59)>=1 && statetype=C && (enemynear,movetype=A) && (enemynear,statetype!=C)
statetype=S
physics=S
[State 120, end]
type=changestate
trigger1=!animtime
value=130+(statetype=C)+(statetype=A)*2
[State 120, stop]
type=changestate
trigger1=(var(59)<=0 && command!="holdback")
trigger2=!inguarddist
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
trigger1=var(59)<=0 && command="holddown"
trigger2=var(59)>=1 && (enemynear,movetype=A) && (enemynear,statetype=C)
value=131
[State 130, Stop Guarding]
type=changestate
trigger1=(var(59)<=0 && command!="holdback")
trigger2=!inguarddist
value=140
[State 130, snd]
type=playsnd
trigger1=!time
trigger1=prevstateno=132 || (prevstateno=[154,155])
value=0,52
[State 130, dust]
type=explod
trigger1=!time
trigger1=prevstateno=132 || (prevstateno=[154,155])
anim=8102
sprpriority=-3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

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
trigger1=var(59)<=0 && command!="holddown"
trigger2=var(59)>=1 && (enemynear,movetype=A) && (enemynear,statetype!=C)
value=130
[State 131, Stop Guarding]
type=changestate
trigger1=(var(59)<=0 && command!="holdback")
trigger2=!inguarddist
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
sysvar(0)=(pos y>=0 && vel y>0)
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
trigger1=sysvar(0) && inguarddist
trigger1=(var(59)<=0 && command="holdback") || var(59)>=1
value=130
[State 132, end]
type=changestate
trigger1=sysvar(0)
value=52
[State 132, stop guarding]
type=changestate
trigger1=(var(59)<=0 && command!="holdback")
trigger2=!inguarddist
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
trigger1=!time && statetype=S
physics=S
[State 140, sts]
type=statetypeset
trigger1=!time && statetype=C
physics=C
[State 140, sts]
type=statetypeset
trigger1=!time && statetype=A
physics=A
[State 140, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0 && statetype=S && command="holddown"
trigger2=var(59)>=1 && statetype=S && (enemynear,movetype=A) && (enemynear,statetype=C)
statetype=C
physics=C
[State 140, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0 && statetype=C && command!="holddown"
trigger2=var(59)>=1 && statetype=C && (enemynear,movetype=A) && (enemynear,statetype!=C)
statetype=S
physics=S
[State 140, end]
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
value=151+2*((var(59)<=0 && command="holddown") || (var(59)>=1 && (enemynear,movetype=A) && (enemynear,statetype=C)))
[State 150, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0 && statetype=S && command="holddown"
trigger2=var(59)>=1 && statetype=S && (enemynear,movetype=A) && (enemynear,statetype=C)
statetype=C
physics=C
[State 150, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0 && statetype=C && command!="holddown"
trigger2=var(59)>=1 && statetype=C && (enemynear,movetype=A) && (enemynear,statetype!=C)
statetype=S
physics=S

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
trigger1=var(59)<=0 && statetype=S && command="holddown"
trigger2=var(59)>=1 && statetype=S && (enemynear,movetype=A) && (enemynear,statetype=C)
statetype=C
physics=C
[State 151, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0 && statetype=C && command!="holddown"
trigger2=var(59)>=1 && statetype=C && (enemynear,movetype=A) && (enemynear,statetype!=C)
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
value=151+2*((var(59)<=0 && command="holddown") || (var(59)>=1 && (enemynear,movetype=A) && (enemynear,statetype=C)))
[State 152, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0 && statetype=S && command="holddown"
trigger2=var(59)>=1 && statetype=S && (enemynear,movetype=A) && (enemynear,statetype=C)
statetype=C
physics=C
[State 152, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0 && statetype=C && command!="holddown"
trigger2=var(59)>=1 && statetype=C && (enemynear,movetype=A) && (enemynear,statetype!=C)
statetype=S
physics=S

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
trigger1=var(59)<=0 && statetype=S && command="holddown"
trigger2=var(59)>=1 && statetype=S && (enemynear,movetype=A) && (enemynear,statetype=C)
statetype=C
physics=C
[State 153, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0 && statetype=C && command!="holddown"
trigger2=var(59)>=1 && statetype=C && (enemynear,movetype=A) && (enemynear,statetype!=C)
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
sysvar(0)=(pos y>=0 && vel y>0)
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
trigger1=sysvar(0) && inguarddist
trigger1=(var(59)<=0 && command="holdback") || var(59)>=1
value=130

[State 155, roll]
type=varset
trigger1=!time
var(0)=0
[State 155, roll]
type=varset
trigger1=vel y>-1 && alive
trigger1=var(59)<=0 && command="2k"
var(0)=1

[State 155, end]
type=changestate
trigger1=sysvar(0)
value=ifelse(var(0),5221,52)


;====================<LOSE>====================
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


;====================<DRAW GAME>====================
[Statedef 175]
type=S
ctrl=0
velset=0,0
[State 175, switch]
type=changestate
trigger1=!time && !selfanimexist(175)
value=170
[State 175, anim]
type=changeanim
trigger1=!time
value=175
[State 175, nhb]
type=nothitby
trigger1=1
value=SCA
time=1


;====================<CONTINUE?>====================
[Statedef 5500]
type=S
anim=5300
velset=0,0
ctrl=0
[State 5500, anim]
type=changeanim
trigger1=!time
value=5500


;====================<INITIALIZE>====================
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

[State 5900, vs Sakura]
type=changestate
triggerall= numenemy && !roundsexisted
trigger1= enemy,name="Sakura" || enemy,name="Sakura Kasugano" || enemy,name="Guy"
trigger2= enemy,name="cvssakura" || enemy,name="Pneophen's pissed off Sakura"
value=6910

[State 5900, turnsintro]
type= changestate
trigger1=teammode=turns
trigger1=!roundsexisted && roundno>=2
value=6900

[State 5900, intro]
type=changestate
trigger1=roundno=1
value=190+(random%2)
[State 5900, end]
type=changestate
trigger1=1
value=0


;====================<INTRO 1>====================
[Statedef 190]
type=S
physics=S
anim=190
[State 190, intro]
type=assertspecial
trigger1=1
flag=intro
[State 190, snd]
type=playsnd
trigger1=animelem=5
value=6,3
channel=0
[State 190, end]
type=changestate
trigger1=!animtime
value=0


;====================<INTRO 2>====================
[Statedef 191]
type=A
anim=191
velset=0,0
ctrl=0
[State 191, intro]
type=assertspecial
trigger1=1
flag=intro

[State 191, Ishizaki]
type=helper
trigger1=!time
trigger1=!numhelper(6010)
helpertype=normal
stateno=6010
ID=6010
name="Ishizaki"
postype=p1
ownpal=1

[State 191, bound]
type=screenbound
trigger1=1
value=0
[State 191, camera]
type=helper
trigger1=!numhelper(8999)
helpertype=normal
stateno=8999
ID=8999
name="Camera"
postype=p1

[State 191, tray]
type=helper
trigger1=time=64
trigger1=!numhelper(6015)
helpertype=normal
stateno=6015
ID=6015
name="Tray"
postype=p1
ownpal=1

[State 191, pos]
type=posset
trigger1=animelemtime(2)<0
x=-240*facing

[State 191, grav]
type=veladd
trigger1=animelemtime(2)>=0
y=.4
[State 191, vel]
type=velset
trigger1=animelem=2
x=(helper(8999),rootdist x)/-41.0
y=-8

[State 191, end]
type=changestate
trigger1=vel y>0 && pos y>-vel y
value=192


;---Land---
[Statedef 192]
type=S
physics=S
anim=192
velset=0,0
[State 192, intro]
type=assertspecial
trigger1=1
flag=intro

[State 192, pos]
type=posset
trigger1=1
y=0
[State 192, pos]
type=posset
trigger1=numhelper(8999)
x=ceil(helper(8999),pos x)

[State 192, snd]
type=playsnd
trigger1=!time
value=0,52
[State 192, dust]
type=explod
trigger1=!time
anim=8102
sprpriority=-3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 192, end]
type=changestate
trigger1=!animtime
value=0


;====================<TURNS INTRO>====================
[Statedef 6900]
type=A
anim=6900
velset=0,0
ctrl=0
[State 6900, intro]
type=assertspecial
trigger1=1
flag=intro

[State 6900, bound]
type=screenbound
trigger1=1
value=0
[State 6900, camera]
type=helper
trigger1=!numhelper(8999)
helpertype=normal
stateno=8999
ID=8999
name="Camera"
postype=p1

[State 6900, pos]
type=posadd
trigger1=!time
x=ceil(-2*backedgedist)
[State 6900, vel]
type=velset
trigger1=!time
x=(helper(8999),rootdist x)/-40.0
y=-10.25
[State 6900, grav]
type=veladd
trigger1=1
y=.5

[State 6900, end]
type=changestate
trigger1=time
trigger1=pos y>-vel y
value=6901


;---LAND---
[Statedef 6901]
type=S
physics=S
anim=6901
velset=0,0
[State 6901, intro]
type=assertspecial
trigger1=1
flag=intro

[State 6901, pos]
type=posset
trigger1=numhelper(8999)
x=ceil(helper(8999),pos x)

[State 6901, snd]
type=playsnd
trigger1=!time
value=0,52
[State 6901, dust]
type=explod
trigger1=!time
anim=8102
sprpriority=-3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 6901, snd]
type=playsnd
trigger1=animelem=7
value=6,1
channel=0

[State 6901, end]
type=changestate
trigger1=!animtime
value=0


;====================<HELICOPTER INTRO>====================
[Statedef 6910]
type=A
physics=N
anim=6910
velset=0,0
ctrl=0
sprpriority=-4

[State 6910, intro]
type=assertspecial
trigger1=1
flag=intro
flag2=nobardisplay
[State 6910, bound]
type=screenbound
trigger1=1
value=0
movecamera=0,0

[State 6910, chopper]
type=helper
trigger1=!time
helpertype=normal
stateno=6000
ID=6000
name="Helicopter"
postype=p1
ownpal=1
[State 6910, camera]
type=helper
trigger1=!numhelper(8999)
helpertype=normal
stateno=8999
ID=8999
name="Camera"
postype=p1

[State 6910, pos]
type=posset
trigger1=numhelper(6000)
x=ceil(helper(6000),pos x)
y=ceil(helper(6000),pos y)

[State 6910, snd]
type=playsnd
trigger1=time=5
value=7,0
channel=5
loop=1

[State 6910, end]
type=changestate
trigger1=!animtime
value=6911
[State 6910, no chopper]
type=changestate
trigger1=!numhelper(6000)
value=190


;---JUMP---
[Statedef 6911]
type=A
physics=N
anim=6911
velset=0,0
sprpriority=-1

[State 6911, intro]
type=assertspecial
trigger1=1
flag=intro
flag2=nobardisplay
[State 6911, bound]
type=screenbound
trigger1=1
value=0
movecamera=0,0

[State 6911, pos]
type=posadd
trigger1=!time
x=ceil(44*const(size.xscale))
y=ceil(120*const(size.yscale))

[State 6911, grav]
type=veladd
trigger1=1
y=.2
[State 6911, vel]
type=velset
trigger1=!time
y=-3
[State 6911, vel]
type=velset
trigger1=!time
trigger1=numhelper(8999)
x=(helper(8999),rootdist x)/-51.0

[State 6911, end]
type=changestate
trigger1=pos y>-vel y
value=6912


;---LAND---
[Statedef 6912]
type=S
physics=S
anim=6912
velset=0,0
[State 6912, intro]
type=assertspecial
trigger1=1
flag=intro

[State 6912, pos]
type=posset
trigger1=!time
y=0
[State 6912, pos]
type=posset
trigger1=!time
trigger1=numhelper(8999)
x=ceil(helper(8999),pos x)

[State 6912, snd]
type=playsnd
trigger1=!time
value=0,52
[State 6912, dust]
type=explod
trigger1=!time
anim=8102
sprpriority=-3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 6912, end]
type=changestate
trigger1=!animtime
value=0


;====================<WIN POSE DECIDER>====================
[Statedef 180]
type=S
ctrl=0

[State 180, win]
type=changestate
trigger1=command="holdx" || command="holdy" || command="holdz"
value=ifelse(command="holdz",184,ifelse(command="holdy",181,183))
[State 180, win]
type=changestate
trigger1=command="holda" || command="holdb" || command="holdc"
value=ifelse(command="holdc",182,ifelse(command="holdb",186,185))

[State 180, win]
type=changestate
trigger1=1
value=181+(random%6)


;====================<WIN 1>====================
[Statedef 181]
type=S
physics=S
anim=181
ctrl=0
[State 181, assert]
type=assertspecial
trigger1=time<300
flag=roundnotover
[State 181, snd]
type=playsnd
trigger1=animelem=2
value=6,4
channel=0


;====================<WIN 2>====================
[Statedef 182]
type=S
physics=S
anim=182
ctrl=0
[State 182, assert]
type=assertspecial
trigger1=time<300
flag=roundnotover


;====================<WIN 3>====================
[Statedef 183]
type=S
physics=S
anim=183
ctrl=0
[State 183, assert]
type=assertspecial
trigger1=time<300
flag=roundnotover
[State 183, snd]
type=playsnd
trigger1=animelem=5
value=6,3
channel=0


;====================<WIN 4>====================
[Statedef 184]
type=S
physics=S
anim=182
ctrl=0
[State 184, assert]
type=assertspecial
trigger1=time<300
flag=roundnotover

[State 184, Ishizaki]
type=helper
trigger1=!time
trigger1=!numhelper(6010)
helpertype=normal
stateno=6020
ID=6010
name="Ishizaki"
postype=back
pos=-60,0
ownpal=1


;====================<WIN 5>====================
[Statedef 185]
type=S
physics=S
anim=181
ctrl=0
[State 185, assert]
type=assertspecial
trigger1=time<300
flag=roundnotover

[State 185, Ishizaki]
type=helper
trigger1=!time
trigger1=!numhelper(6010)
helpertype=normal
stateno=6030
ID=6010
name="Ishizaki"
postype=back
pos=-60,0
ownpal=1

[State 185, snd]
type=playsnd
trigger1=animelem=2
value=6,5
channel=0


;====================<WIN 6>====================
[Statedef 186]
type=S
physics=S
anim=182
ctrl=0
[State 186, assert]
type=assertspecial
trigger1=time<300
flag=roundnotover

[State 186, Ishizaki]
type=helper
trigger1=!time
trigger1=!numhelper(6010)
helpertype=normal
stateno=6040
ID=6010
name="Ishizaki"
postype=back
pos=-60,0
ownpal=1

[State 186, dog]
type=helper
trigger1=time=75
trigger1=!numhelper(6045)
helpertype=normal
stateno=6045
ID=6045
name="Dog"
postype=back
pos=-30,0
ownpal=1


;====================<TAUNT>====================
[Statedef 195]
type=S
physics=S
movetype=I
anim=195
velset=0,0
ctrl=0
sprpriority=1
[State 195, snd]
type=playsnd
trigger1=animelem=5
value=6,3
channel=0
[State 195, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---Alternate---
[Statedef 196]
type=S
physics=S
movetype=I
anim=196
velset=0,0
ctrl=0
sprpriority=1
[State 196, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<CHEAP K.O.>==========
[Statedef 5950]
type=S
movetype=H
physics=S
anim=5950
velset=0,0
[State 5950, nhb]
type=nothitby
trigger1=1
value=SCA

[State 5950, pos]
type=posset
trigger1=1
y=0

[State 5950, kosnd]
type=assertspecial
trigger1=1
flag=nokosnd
[State 5950, kosnd]
type=stopsnd
trigger1=!time && !alive
channel=0
[State 5950, kosnd]
type=playsnd
trigger1=!time && !alive
value=11,1

[State 5950, snd]
type=playsnd
trigger1=animelem=6
value=0,5100
[State 5950, dust]
type=explod
trigger1=animelem=6
anim=8105
sprpriority=-3
postype=p1
pos=ceil(8*const(size.xscale)),0
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 5950, end]
type=changestate
trigger1=!animtime
value=ifelse(alive,5110,5150)


;====================<AIR HIT TRANSITION>====================
[Statedef 5035]
type=A
movetype=H
physics=N

[State 5035, anim]
type=changeanim
trigger1=!time
trigger1=selfanimexist(5035)
trigger1=anim=[5000,5029]
value=5035

[State 5035, grav]
type=veladd
trigger1=1
y=gethitvar(yaccel)

[State 5035, recover]
type=changestate
triggerall=!hitfall
trigger1=hitover
trigger2=!animtime
trigger3=vel y>0 && pos y>=10
trigger4=!time
trigger4=anim!=5035
value=5040

[State 5035, fall]
type=changestate
triggerall=hitfall
trigger1=hitover
trigger2=!animtime
trigger3=vel y>0 && pos y>=10
trigger4=!time
trigger4=anim!=5035
value=5050


;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[Statedef -2]

[State -2, AI]
type=varset
trigger1= alive && ishometeam
trigger1= teamside=2 || matchno>1
var(59)=1
[State -2, Stop AI]
type=varset
trigger1= var(59)!=0
trigger1= roundstate!=2 || !alive
var(59)=0
ignorehitpause=1

[State -2, P2 Recovery]
type=targetstate
trigger1= numtarget(200)
trigger1= (target(200),stateno=5020) && (target(200),alive) && (target(200),hitfall)
ID=200
value=5025
ignorehitpause=1

[State -2, Prevent Guard]
type=assertspecial
trigger1= var(17)>0
trigger1= var(17):=(var(17)-1)
flag=unguardable
ignorehitpause=1

[State -2, Counter FX]
type=helper
trigger1= movehit && var(9) && numenemy
trigger1= enemynear,movetype=H
trigger1= hitdefattr=SCA,AA
helpertype=normal
stateno=8290
ID=8290
name="Counter FX"
postype=p2
pos=(enemy,const(size.ground.front)+var(21))*(enemy,facing)*(-facing),floor(pos y-enemy,pos y)+var(22)
ownpal=1
pausemovetime=255
supermovetime=255
ignorehitpause=1
[State -2, Counter Flag]
type=varset
trigger1=numenemy
var(9)=(enemynear,movetype=A)
ignorehitpause=1

[State -2, Hitcount]
type=varadd
trigger1= movehit=1
var(13)=1
[State -2, Hitcount Reset]
type=varset
trigger1= numenemy && var(13)
trigger1= (enemynear,movetype!=H) && (enemynear,stateno!=5300)
var(13)=0
ignorehitpause=1

[State -2, Juggle Count]
type=varadd
trigger1= movehit=1
var(14)=1
[State -2, Juggle Reset Single]
type=varset
triggerall= numenemy=1 && var(14)
trigger1= (enemy,statetype=S) || (enemy,statetype=C)
trigger2= (enemy,movetype!=H) || (enemy,stateno=[120,155]) || (enemy,ctrl)
trigger3= (enemy,canrecover) && (enemy,backedgebodydist>=5) && (enemy,frontedgebodydist>=5)
var(14)=0
ignorehitpause=1
[State -2, Juggle Reset Simul]
type=varset
triggerall= numenemy>=2 && var(14)
triggerall= abs(enemynear(1),pos x-enemynear(0),pos x)>=60 || (enemynear(1),statetype!=A)
trigger1= (enemynear(0),movetype!=H) || (enemynear(0),statetype!=A) || (enemynear(0),stateno=[120,155])  || (enemynear(0),ctrl)
trigger2= (enemynear(0),canrecover) && (enemynear(0),backedgebodydist>=5) && (enemynear(0),frontedgebodydist>=5)
var(14)=0
ignorehitpause=1

[State -2, Juggle Flag]
type=varset
triggerall= numenemy && !var(37)
trigger1= (enemynear,stateno=5040) && !(enemynear,ctrl)
var(37)=1
ignorehitpause=1
[State -2, Juggle Flag]
type=varset
triggerall= numenemy && var(37)
trigger1= (enemynear,movetype!=H) && (enemynear,statetype!=A) && (enemynear,stateno!=5040)
trigger2= (enemynear,ctrl)
var(37)=0
ignorehitpause=1

[State -2, Free Super Juggling]
type=varset
trigger1= var(36)
trigger1= stateno!=[3000,4999]
var(36)=0
ignorehitpause=1

[State -2, Super Level Reset]
type=varset
trigger1= (stateno!=[3000,4999]) || movetype=H
var(15)=0
ignorehitpause=1
[State -2, Super Count Reset]
type=varset
trigger1= var(16) && numenemy && !numhelper(3000) && !numhelper(3600)
trigger1= (stateno!=[3000,4999]) || movetype=H
trigger1= (enemynear,movetype!=H) && (enemynear,stateno!=[120,155])
var(16)=0
ignorehitpause=1

[State -2, Excel End]
type=varset
trigger1= var(20)<0 || roundstate!=2
var(20)=0
ignorehitpause=1
[State -2, Excel Timer]
type=varadd
trigger1= var(20)>0
var(20)=-1
ignorehitpause=1
[State -2, Excel PalFX]
type=palfx
trigger1= var(20)>60
time=2
add=32+ceil(sin(var(20)/16.0*pi)*32),32+ceil(sin(var(20)/16.0*pi)*32),32+ceil(sin(var(20)/16.0*pi)*32)
ignorehitpause=1
[State -2, Excel PalFX]
type=palfx
trigger1= var(20)=[1,60]
time=2
add=64+ceil(sin(var(20)/8.0*pi)*64),64+ceil(sin(var(20)/8.0*pi)*64),64+ceil(sin(var(20)/8.0*pi)*64)
ignorehitpause=1
[State -2, Excel Timer]
type=helper
trigger1= !numhelper(8405) && var(20)>0
helpertype=normal
stateno=8405
ID=8405
name="Excel Timer"
postype=p1
ownpal=1
pausemovetime=2147483647
supermovetime=2147483647
ignorehitpause=1

[State -2, Taunt Power]
type=poweradd
trigger1= numenemy
trigger1= (enemy,stateno=195)
trigger1= (enemy,prevstateno!=195) && (enemy,time=1)
value=375

[State -2, Attack Bonus]
type=varset
trigger1=1
fvar(12)=ifelse(power>=3000,.05,ifelse(power>=2000,.02,ifelse(power>=1000,.01,0)))
ignorehitpause=1

[State -2, Dampener]
type=varset
trigger1=1
trigger1=(stateno!=[3000,4999])
fvar(10)=ifelse(var(13)<6,24,ifelse(var(13)>=23,1,29-var(13)))/24.0*(1+fvar(12))
ignorehitpause=1
[State -2, Dampener Excel]
type=varset
trigger1=var(20)
fvar(10)=.72*(10-ifelse(var(13)>=11,11,var(13)))/10.0
ignorehitpause=1
[State -2, Dampener Supers]
type=varset
trigger1=0;(stateno=[3000,4999])
fvar(10)=1.0/(1+var(16));ifelse(var(16)>=3,.25,(1-var(16)*.25))
ignorehitpause=1
[State -2, Dampener Limit]
type=varset
trigger1=fvar(10)<0
fvar(10)=0
ignorehitpause=1

[State -2, Root Dampener]
type=varset
trigger1=1
fvar(11)=fvar(10)*ifelse(var(9),1.2,1)
ignorehitpause=1

[State -2, Defence Bonus]
type=defencemulset
trigger1=1
value=ifelse((life>lifemax*.3),1,ifelse((life>lifemax*.15),.9,.75))
ignorehitpause=1

[State -2, Dizzy Sound]
type=playsnd
trigger1=numtarget(3200)
trigger1=target(3200),stateno=3212 && target(3200),time=1
value=0,5300

[State -2, Voice Pos]
type=sndpan
trigger1=1
channel=0
pan=0
ignorehitpause=1

[State -2, Loop Off]
type=stopsnd
trigger1= time=1
trigger1= (prevstateno=[6910,6912]) && (stateno!=[6910,6912])
trigger2= numhelper(6000)
trigger2= helper(6000),stateno!=6000
channel=5
ignorehitpause=1

[State -2, Debug]
type=displaytoclipboard
trigger1=1
text="AI=%d Attack=%f Hits=%d Juggle=%d P2BodyDist X=%f by P.o.t.S."
params=var(59), fvar(11), var(13), var(14), p2bodydist x
ignorehitpause=1

[State -2, Debug]
type=displaytoclipboard
trigger1=0
text="pos x=%f pos y=%f P2BDX=%f vel x=%f vel y=%f"
params=(pos x+160), pos y, p2bodydist x, vel x, vel y
ignorehitpause=1

[State -2, Debug]
type=displaytoclipboard
trigger1=0
text="Juggle=%d Juggle Flag=%d Cancel=%d S.C.=%d"
params=var(14), var(37), var(7), var(8)
ignorehitpause=1


;===========================================================================
;===============================<-3 STATES>=================================
;===========================================================================
[Statedef -3]

[State -3, AI Helper]
type=helper
trigger1= !var(59) && !numhelper(9741)
trigger1= alive && roundstate=2
helpertype=normal
name="Karin's AI"
ID=9741
pos=99999,99999
stateno=9741
keyctrl=1
pausemovetime=65535
supermovetime=65535
[State -3, Gametime Var]
type=varset
trigger1=1
var(58)=gametime
ignorehitpause=1

[State -3, ProjContact Reset]
type=varset
trigger1= var(18)
trigger1= stateno!=3203
var(18)=0

[State -3, Chain Reset]
type=varset
trigger1=1
var(6)=0
ignorehitpause=1
[State -3, Chain Check]
type=varset
trigger1= var(20) && (stateno=[200,699]) && movecontact
trigger2= var(20) && (stateno=[1000,2999]) && statetype!=A && (movecontact || var(18))
trigger3= stateno=1611 && animelemtime(8)>0 && var(20)
var(6)=1
ignorehitpause=1

[State -3, Cancel Reset]
type=varset
trigger1=1
var(7)=0
ignorehitpause=1
[State -3, Cancel Check]
type=varset
trigger1= var(20) && (stateno=[200,699])
trigger2= var(20) && (stateno=[1000,2999]) && (movecontact || var(18))
trigger3= (stateno=[200,699]) && time<=2
trigger4= stateno=200 || stateno=400 || stateno=430
trigger5=(stateno=210 || stateno=240 || stateno=410) && animelemtime(4)<0
trigger6= stateno=420 && animelemtime(6)<0
trigger7=(stateno=600 || stateno=630) && (animelemtime(3)<0||movecontact)
trigger8= stateno=1611 && animelemtime(8)>0 && var(20)
var(7)=1
ignorehitpause=1

[State -3, Super Cancel Reset]
type=varset
trigger1=1
var(8)=0
ignorehitpause=1
[State -3, Super Cancel Check]
type=varset
trigger1=var(20) && (stateno=[200,699])
trigger2=var(20) && (stateno=[1000,2999]) && (movecontact || var(18))
trigger3=(stateno=[200,699]) && time<=2
trigger4= stateno=200 || stateno=230 || stateno=400 || stateno=430
trigger5=(stateno=210 || stateno=240 || stateno=410) && (animelemtime(4)<0||movecontact)
trigger6= stateno=420 && (animelemtime(7)<0||movecontact)
trigger7=(stateno=600 || stateno=630) && (animelemtime(3)<0||movecontact)
trigger8=(stateno=[1100,1120]) && animelemtime(6)>=0 && animelemtime(8)<0 && movecontact
trigger9= stateno=1300 && animelemtime(6)>=0 && animelemtime(8)<0 && movecontact && (prevstateno!=[1000,1005])
trigger10= stateno=1611 && animelemtime(8)>0 && var(20)
trigger11= stateno=3000 && animelemtime(19)>=0 && animelemtime(32)<0 && movecontact
trigger12= stateno=3311 && animelemtime(13)>=0 && animelemtime(19)<0 && movecontact
var(8)=1
ignorehitpause=1

[State -3, Parry Detection]
type=helper
triggerall=roundstate=2 && !numhelper(765)
triggerall=(movetype=I && ctrl) || (stateno=[760,762])
triggerall=(command!="rlsfwd" && command!="rlsback" && command!="rlsup" && command!="rlsdown") || var(59)>=1
trigger1=var(59)<=0 && (statetype=S || statetype=C) && (command="fwd" || command="down")
trigger2=var(59)<=0 && statetype=A && (var(3)!=1 && var(3)!=2) && command="fwd"
trigger3=var(59)>=1 && (stateno!=[760,762]) && inguarddist && random<50
trigger4=var(59)>=1 && (stateno=[760,762]) && time=14 && random<667
helpertype=normal
stateno=765
ID=765
name="Parry Detection"
postype=p1
[State -3, Parry Attacks]
type=changestate
trigger1= (stateno!=[760,762]) && numhelper(765)
trigger1= helper(765),stateno=766
value= ifelse((helper(765),anim=767), 762, ifelse((helper(765),anim=766), 761, 760))
ignorehitpause=1

[State -3, Parry Proj]
type=hitoverride
trigger1=(stateno!=[760,762]) && numhelper(765)
trigger1=!(helper(765),var(0)) && (helper(765),anim=765)
attr=SA,AP
stateno=760
slot=0
time=1
ignorehitpause=1
[State -3, Parry Proj]
type=hitoverride
trigger1=(stateno!=[760,762]) && numhelper(765)
trigger1=!(helper(765),var(0)) && (helper(765),anim=766)
attr=C,AP
stateno=761
slot=0
time=1
ignorehitpause=1
[State -3, Parry Proj]
type=hitoverride
trigger1=(stateno!=[760,762]) && numhelper(765)
trigger1=!(helper(765),var(0)) && (helper(765),anim=767)
attr=SCA,AP
stateno=762
slot=0
time=1
ignorehitpause=1

[State -3, NoWalk after Parry]
type=assertspecial
trigger1=var(26)
trigger1=var(26):=(var(26)-1)
flag=nowalk

[State -3, Afterimage]
type=afterimage
triggerall=time=1 && !var(20)
trigger1=stateno=50 && (var(3)=2 || var(3)=3)
trigger2=(stateno=[700,715])
time=2
timegap=1
framegap=4
length=9
palbright=0,0,0
palcontrast=128,128,128
palpostbright=0,0,0
paladd=0,0,0
palmul=.9,.9,.9
trans=add1

[State -3, ExFX]
type=varadd
trigger1=var(25)>0
var(25)=-1
[State -3, ExFX]
type=varset
trigger1=(stateno!=[1000,2999]) || movetype=H
var(25)=0

[State -3, Ex Afterimage]
type=afterimage
trigger1=time=1
trigger1=(stateno=[1000,2999]) && var(25)
time=2
timegap=1
framegap=1
length=8
palbright=32,32,0
palcontrast=128,128,128
paladd=-10,-10,-10
palmul=1.1,1,.5
trans=add
ignorehitpause=1
persistent=0
[State -3, Ex Flash]
type=palfx
trigger1=(stateno=[1000,2999]) && var(25)
time=1
add=32+ceil(sin(gametime/3.0*pi)*32),32+ceil(sin(gametime/3.0*pi)*32),0
mul=320,320,192
ignorehitpause=1

[State -3, Super Afterimage]
type=afterimage
trigger1=stateno=3000 && time=4
trigger2=stateno=3100 && time=4
trigger3=stateno=3200 && time=4
trigger4=stateno=3300 && time=4
time=2
timegap=1
framegap=10
length=21
palbright=0,0,0
palcontrast=ifelse(var(15)<=1,128,ifelse(var(15)>=3,160,32)),ifelse(var(15)<=1,128,ifelse(var(15)>=3,32,32)),ifelse(var(15)<=1,128,ifelse(var(15)>=3,32,160))
palpostbright=0,0,0
paladd=0,0,0
palmul=.75,.75,.75
trans=add1

[State -3, Afterimage Persist]
type=afterimagetime
trigger1=stateno=50 || (stateno=[600,650])
trigger1=(var(3)=2 || var(3)=3) && vel y<-1
trigger2=(stateno=[700,715]) || var(20)
trigger3=(stateno=[1000,2999]) && var(25)
trigger4=(stateno=[3000,4999])
time=2
[State -3, Afterimage Off]
type=afterimagetime
trigger1=time<=1
trigger1=(stateno=3000 || stateno=3100 || stateno=3200 || stateno=3300)
time=0

[State -3, Prevent Crossup]
type=width
trigger1=1
edge=8,0
ignorehitpause=1

[State -3, GetHit Snd]
type=playsnd
triggerall=alive && time=1
triggerall=stateno=5000 || stateno=5010
trigger1=gethitvar(animtype)>=2 && random<500
trigger2=gethitvar(animtype)=1 && random<375
trigger3=gethitvar(animtype)=0 && random<250
value=5000,(random%3)
channel=0
ignorehitpause=1
[State -3, GetHit Snd]
type=playsnd
triggerall=alive && time=1
trigger1=(stateno=5000 || stateno=5010) && numenemy
trigger1=gethitvar(fall) || (enemynear,hitdefattr=SCA,SA,HA)
trigger2=(stateno=5020 || stateno=5070 || stateno=5080)
trigger3=(stateno=5050 || stateno=5100) && (prevstateno!=[5000,5199])
value=5000,(random%3)
channel=0
ignorehitpause=1

[State -3, Cheap KO]
type=changestate
trigger1=!alive && (stateno=[5000,5010])
trigger1=(prevstateno=[130,131]) || (prevstateno=[140,141]) || (prevstateno=[150,153])
value=5950
ignorehitpause=1
[State -3, Cheap KO]
type=assertspecial
trigger1=(stateno=[5000,5010])
trigger1=(prevstateno=[130,131]) || (prevstateno=[140,141]) || (prevstateno=[150,153])
flag=nokosnd
ignorehitpause=1

[State -3, Ishizaki]
type=helper
trigger1= !numhelper(6010)
trigger1= !alive && stateno=5150
trigger1= roundstate=4 && matchover
helpertype=normal
stateno=6050
ID=6010
name="Ishizaki"
postype=back
pos=-60,0
ownpal=1

[State -3, Excel Finish]
type=helper
triggerall=winKO && !numhelper(8650)
trigger1=movehit && var(20)
trigger2=numhelper(1000) && var(20)
trigger2=helper(1000),var(18)
helpertype=normal
stateno=8650
ID=8650
name="Excel Finish"
postype=left
pos=160,-120
ownpal=1
pausemovetime=255
supermovetime=255
ignorehitpause=1

[State -3, Super Finish]
type=helper
triggerall=winKO && roundstate=3 && !numhelper(8600)
trigger1=movehit && (stateno=[3000,4999])
trigger1=var(23):=stateno
trigger2=numhelper(3250) && var(18)
trigger2=var(23):=3200
helpertype=normal
stateno=8600
ID=8600
name="Super Finish"
postype=left
pos=160,-120
ownpal=1
pausemovetime=255
supermovetime=255
ignorehitpause=1