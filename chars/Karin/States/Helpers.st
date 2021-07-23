; ________________________________
;| Karin by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<HELPER STATES>========================================
;==============================================================================================

;========================<AI ACTIVATION>=============================
;Adapted from Winane's (http://www.mugenguild.net/~winane)
[Statedef 9741]
type=A
movetype=I
physics=N
anim=9741
ctrl=0

[State 9741, wrong]
type=destroyself
trigger1=(parent,ID)!=(root,ID)
[State 9741, safety]
type=selfstate
trigger1=!ishelper
value=0

[State 9741, uglyhack]
type=varset
trigger1=!var(1)
var(2)=1
[State 9741, pausecheck]
type=varset
trigger1=gametime>root,var(58)
trigger2=!(root,alive)
trigger3=roundstate!=2
trigger4=root,var(59)
var(2)=1

[State 9741, facing]
type=turn
trigger1=var(9):=(facing!=root,facing)

[State 9741, dirturnonAI]
type=parentvarset
triggerall=!var(2)&&!var(9)
trigger1=root,command="fwd"
trigger2=root,command="back"
trigger3=root,command="up"
trigger4=root,command="down"
var(59)=1
[State 9741, dirturnoffAI]
type=parentvarset
triggerall=!var(2)&&!var(9)&&(root,var(59)>=1)
trigger1=command="fwd"&&root,command="fwd"
trigger2=command="back"&&root,command="back"
trigger3=command="up"&&root,command="up"
trigger4=command="down"&&root,command="down"
var(59)=-1

[State 9741, buttonturnonAI]
type=parentvarset
triggerall=!var(2)
trigger1=root,command="a"
trigger2=root,command="b"
trigger3=root,command="c"
trigger4=root,command="x"
trigger5=root,command="y"
trigger6=root,command="z"
trigger7=root,command="start"
var(59)=1
[State 9741, buttonturnoffAI]
type=parentvarset
triggerall=!var(2)&&(root,var(59)>=1)
trigger1=command="a"&&root,command="a"
trigger2=command="b"&&root,command="b"
trigger3=command="c"&&root,command="c"
trigger4=command="x"&&root,command="x"
trigger5=command="y"&&root,command="y"
trigger6=command="z"&&root,command="z"
trigger7=command="start"&&root,command="start"
var(59)=-1

[State 9741, unpausecheck]
type=varset
triggerall=var(2)
trigger1=root,command="fwd"||root,command="back"||root,command="up"||root,command="down"
trigger2=root,command="a"||root,command="b"||root,command="c"
trigger3=root,command="x"||root,command="y"||root,command="z"
trigger4=root,command="start"
trigger5=var(2)=1
trigger5=var(2):=0
var(2)=1

[State 9741, goodbye]
type=destroyself
triggerall=var(1):=1
trigger1=root,var(59)
trigger2=!(root,alive)
trigger3=roundstate!=2


;========================<SATELLITE BEAM>=============================
[Statedef 3250]
type=A
physics=N
movetype=A
anim=3250
ctrl=0
sprpriority=5

[State 3250, nhb]
type=nothitby
trigger1=1
value=SCA,AA,AP,AT
time=-1
ignorehitpause=1

[State 3250, pos]
type=posset
trigger1=1
y=0

[State 3250, scale]
type=angledraw
trigger1=1
scale=.5+(random/1000.0),1
[State 3250, trans]
type=trans
trigger1=1
trans=addalpha
alpha=128+ceil(128*random/1000.0),256
ignorehitpause=1

[State 3250, bgpalfx]
type=bgpalfx
trigger1=1
time=1
mul=192,0,96
[State 3250, bgpalfx]
type=bgpalfx
trigger1=!(time%2)
time=1
color=0
invertall=1
[State 3250, shake]
type=envshake
trigger1=!(time%6)
time=6
ampl=3
freq=120

[State 3250, snd]
type=playsnd
trigger1=!time
value=7,4
channel=0
[State 3250, dust]
type=explod
trigger1=!(time%6)
anim=8105
sprpriority=-3
postype=p1
pos=0,0
scale=1,1
ownpal=1
[State 3250, FX]
type=helper
trigger1=!time
helpertype=normal
stateno=3255
ID=3255
name="Dooooon!!!"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1

[State 3250, hitcount]
type=parentvaradd
trigger1=movehit=1&&numtarget
trigger1=!(target,ishelper)
var(13)=1
ignorehitpause=1
[State 3250, juggle]
type=parentvaradd
trigger1=movehit=1&&numtarget
trigger1=!(target,ishelper)
var(14)=1
ignorehitpause=1
[State 3250, projcontact]
type=parentvarset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
trigger1=root,stateno=3203
var(18)=1
ignorehitpause=1

[State 3250, dampener]
type=varset
trigger1=!time&&!prevstateno
fvar(11)=root,fvar(10)
ignorehitpause=1

[State 3250, hit]
type=hitdef
trigger1=!(movecontact%4)
ID=3250
attr=S,HP
hitflag=MAF
guardflag=M
priority=5,Hit
damage=ceil(ifelse(fvar(11)*15<7,7,fvar(11)*15)),2
getpower=0,0
givepower=36,36
pausetime=0,12
guard.pausetime=0,12
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
ground.type=High
air.type=High
ground.hittime=17
ground.slidetime=17
guard.hittime=17
air.hittime=60
ground.velocity=-9,-6
guard.velocity=-12.65
air.velocity=-9,-6
ground.cornerpush.veloff=0
guard.cornerpush.veloff=0
air.cornerpush.veloff=0
yaccel=.5
forcestand=1
fall=1
fall.recover=0
sparkno=-1
guard.sparkno=-1
sparkxy=-10,-30

[State 3250, p2state]
type=targetstate
trigger1= movehit && numtarget(3250)
trigger1= (target(3250),stateno=5000) || (target(3250),stateno=5010) || (target(3250),stateno=5020)
ID=3250
value=3270
ignorehitpause=1

[State 3250, hitsound]
type=playsnd
trigger1= movecontact=1 && numtarget(3250)
value=ifelse(moveguarded,3,2),ifelse(moveguarded,0,2)
channel=2
ignorehitpause=1
[State 3250, sparks]
type=explod
trigger1= movecontact=1 && numtarget(3250)
trigger1= !(target,time)
anim=ifelse(moveguarded,8001,8030+(random%8))
sprpriority=5
postype=left
pos= ceil(target(3250),pos x) + 160, ceil(target(3250),screenpos y + target(3250),const(size.mid.pos.y))
facing=facing
ownpal=1
pausemovetime=-1
supermovetime=-1
ignorehitpause=1

[State 3250, end]
type=changestate
trigger1=time>=60
value=3251
ignorehitpause=1


[Statedef 3251]
type=A
physics=N
movetype=I
ctrl=0
anim=3250
velset=0,0
sprpriority=5
[State 3251, shrink]
type=angledraw
trigger1=1
scale=1-(time/16.0),1
[State 3250, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256-(time*16),256
[State 3251, end]
type=destroyself
trigger1=time>=16


;========================<COUNTER FX>=============================
[Statedef 3205]
type=A
velset=0,0
anim=9741
[State 3205, reset]
type=parentvarset
trigger1=!time
var(9)=0

[State 3205, circle]
type=explod
trigger1=!numexplod(3205)
anim=8290
ID=3205
sprpriority=-3
postype=p1
pausemovetime=-1
supermovetime=-1
ownpal=1
[State 3205, scale]
type=modifyexplod
trigger1=numexplod(3205)
ID=3205
scale=.2+(.1*time),.04+(.02*time)
trans=addalpha
alpha=ceil(256-(12.8*time)),256

[State 3205, safety]
type=removeexplod
trigger1=time>=20
[State 3205, end]
type=destroyself
trigger1=time>=20


;========================<LIGHTING FX>=============================
[Statedef 3206]
type=A
physics=N
movetype=I
anim=3206
ctrl=0
sprpriority=2

[State 3206, nhb]
type=nothitby
trigger1=1
value=SCA,AA,AP,AT
time=-1
ignorehitpause=1

[State 3206, bind]
type=bindtoroot
trigger1=1

[State 3206, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1

[State 3206, end]
type=destroyself
trigger1=root,stateno!=3203
trigger2=root,movetype=H


;========================<ONOMATOPAEA>=============================
[Statedef 3255]
type=A
velset=0,0
anim=3255
sprpriority=5
[State 3255, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
[State 3255, turn]
type=turn
trigger1=facing=-1

[State 3255, pos]
type=posset
trigger1=!time
y=-120

[State 3255, scale]
type=angledraw
trigger1=1
scale=.5+(.05*time),.5+(.05*time)
[State 3255, trans]
type=trans
trigger1=1
trans=addalpha
alpha=ceil(256-8.53*time),ceil(8.53*time)

[State 3255, end]
type=destroyself
trigger1=time>=30


;====================<HELICOPTER>====================
[Statedef 6000]
type=A
physics=N
anim=6000
velset=0,0
ctrl=0
sprpriority=-5

[State 6000, pos]
type=posset
trigger1=1
x=-168*facing
y=ceil(pos y-screenpos y)+ceil(sin(time/30.0*pi)*4)-8

[State 6000, door]
type=explod
trigger1=!time
anim=6001
ID=6001
sprpriority=-3
postype=p1
bindtime=-1
removetime=600
scale=const(size.xscale),const(size.yscale)
ownpal=1

[State 6000, shake]
type=envshake
trigger1=!(time%6)
time=6
ampl=2
freq=90

[State 6000, dust]
type=explod
trigger1=!(time%9)
anim=8105
sprpriority=-5
postype=p1
pos=0,-ceil(pos y)
scale=.5,.5
ownpal=1
[State 6000, dust]
type=explod
trigger1=!(time%12)
anim=8105
sprpriority=-5
postype=p1
pos=0,-ceil(pos y)
scale=1,1
ownpal=1
[State 6000, dust]
type=explod
trigger1=!(time%15)
anim=8105
sprpriority=-5
postype=p1
pos=0,-ceil(pos y)
scale=1.5,1.5
ownpal=1

[State 6000, end]
type=changestate
trigger1=time>=240
value=6001


;-----Fly Away-----
[Statedef 6001]
type=A
physics=N
velset=0,0
ctrl=0
sprpriority=-5

[State 6001, snd]
type=playsnd
trigger1=!time
value=7,1
channel=0
[State 6001, dust]
type=explod
trigger1=!time||time=12
anim=8105
sprpriority=-5
postype=p1
pos=0,-ceil(pos y)
scale=ifelse(!time,.5,1),ifelse(!time,.5,1)
ownpal=1

[State 6001, vel]
type=veladd
trigger1=vel x>-3
x=-.2
[State 6001, vel]
type=veladd
trigger1=vel y>-10
y=-.1

[State 6001, safety]
type=removeexplod
trigger1=(pos x!=[-465,465])||(screenpos y!=[-212,0])
[State 6001, end]
type=destroyself
trigger1=(pos x!=[-465,465])||(screenpos y!=[-212,0])


;====================<ISHIZAKI>====================
;---Intro---
[Statedef 6010]
type=S
physics=N
anim=6010
velset=0,0
ctrl=0
sprpriority=-1
[State 6010, end]
type=changestate
trigger1=time>=96
value=6011


[Statedef 6011]
type=S
physics=N
anim=6011
velset=0,0
ctrl=0
sprpriority=-1
[State 6011, end]
type=changestate
trigger1=time>=48
value=6012


[Statedef 6012]
type=S
physics=N
anim=6012
velset=0,0
ctrl=0
sprpriority=-1

[State 6012, turn]
type=turn
trigger1=!time
[State 6012, vel]
type=velset
trigger1=!time
x=4

[State 6012, end]
type=destroyself
trigger1=pos x!=[-220,220]


;---Drink---
[Statedef 6020]
type=S
physics=N
anim=6020
velset=4,0
ctrl=0
sprpriority=1
[State 6020, end]
type=changestate
trigger1=rootdist x<=80
value=6021


[Statedef 6021]
type=S
physics=N
anim=6021
velset=0,0
ctrl=0
sprpriority=1
[State 6021, snd]
type=playsnd
trigger1=!time
value=7,2
[State 6021, end]
type=changestate
trigger1=roundstate!=4
value=6012


;---First Aid (Enemy)---
[Statedef 6030]
type=S
physics=N
anim=6030
velset=4,0
ctrl=0
sprpriority=1
[State 6030, end]
type=changestate
trigger1=numenemy
trigger1=abs(enemy,pos x-pos x)<=80
value=6031


[Statedef 6031]
type=S
physics=N
anim=6031
velset=0,0
ctrl=0
sprpriority=1
[State 6031, end]
type=changestate
trigger1=roundstate!=4
value=6012


;---Running away---
[Statedef 6040]
type=S
physics=N
anim=6040
velset=4,0
ctrl=0
sprpriority=-5
[State 6040, end]
type=destroyself
trigger1=pos x!=[-220,220]


;---First Aid (Karin)---
[Statedef 6050]
type=S
physics=N
anim=6030
velset=4,0
ctrl=0
sprpriority=1
[State 6050, end]
type=changestate
trigger1=rootdist x<=80
value=6051


[Statedef 6051]
type=S
physics=N
anim=6031
velset=0,0
ctrl=0
sprpriority=1
[State 6051, end]
type=changestate
trigger1=roundstate!=4
value=6012


;========================<TRAY>=============================
[Statedef 6015]
type=A
physics=N
anim=6015
velset=0,0
ctrl=0
sprpriority=0

[State 6015, vel]
type=posset
trigger1=!time
y=-90

[State 6015, vel]
type=veladd
trigger1=1
y=.0625
[State 6015, vel]
type=velset
trigger1=!time&&numhelper(6010)
x=facing*(helper(6010),pos x-pos x-(20*facing))/32.0
y=-1

[State 6015, snd]
type=playsnd
trigger1=time=31
value=2,2
[State 6015, sparks]
type=explod
trigger1=time=31
anim=8010+(random%8)
sprpriority=5
postype=p1
pos=20,0
facing=-1
ownpal=1
pausemovetime=-1
supermovetime=-1
ignorehitpause=1

[State 6015, end]
type=changestate
trigger1=time>=32
value=6016

[Statedef 6016]
type=A
physics=N
anim=6015
ctrl=0
sprpriority=0

[State 6016, vel]
type=veladd
trigger1=1
y=.25
[State 6016, vel]
type=velset
trigger1=!time
x=1
y=-5.92

[State 6016, end]
type=destroyself
trigger1=time>=48


;========================<DOG>=============================
[Statedef 6045]
type=S
physics=N
anim=6045
velset=8,0
ctrl=0
sprpriority=-3
[State 6045, snd]
type=playsnd
trigger1=!time
value=7,3
[State 6045, end]
type=destroyself
trigger1=time>=20
trigger1=pos x!=[-190,190]


;========================<RECOVER FX>=============================
[Statedef 8200]
type=A
velset=0,0
anim=8200
sprpriority=5
[State 8200, noshadow]
type=assertspecial
trigger1=1
flag=noshadow

[State 8200, scale]
type=angledraw
trigger1=1
scale=.25+(.017*time),.25+(.017*time)
[State 8200, trans]
type=trans
trigger1=1
trans=addalpha
alpha=ceil(256-17.1*time),256

[State 8200, end]
type=destroyself
trigger1=time>=15


;========================<COUNTER FX>=============================
[Statedef 8290]
type=A
velset=0,0
anim=9741
[State 8290, reset]
type=parentvarset
trigger1=!time
var(9)=0

[State 8290, circle]
type=explod
trigger1=!numexplod(8290)
anim=8290
ID=8290
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1
ownpal=1
[State 8290, scale]
type=modifyexplod
trigger1=numexplod(8290)
ID=8290
scale=.2+(.08*time),.2+(.08*time)
trans=addalpha
alpha=ceil(256-(25.6*time)),256

[State 8290, safety]
type=removeexplod
trigger1=time>=10
[State 8290, end]
type=destroyself
trigger1=time>=10


;====================<POWER CHARGE>====================
;---MAIN FX---
[Statedef 8330]
type=S
anim=9741
velset=0,0
ctrl=0

[State 8330, bind]
type=bindtoroot
trigger1=(root,stateno=730)
pos=0,0
[State 8330, snd]
type=playsnd
trigger1=!time
value=0,730
channel=0

[State 8330, aura]
type=explod
trigger1=!numexplod(8330)
ID=8330
anim=8330
sprpriority=3
postype=p1
bindtime=-1
removetime=-1
scale=.5,.5
ownpal=1
[State 8330, dust]
type=explod
trigger1=!(time%6)
anim=8105
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)
scale=.5,.5
ownpal=1

[State 8330, fx]
type=modifyexplod
trigger1=numexplod(8330)&&(root,power<3000)
ID=8330
scale=.5,.1+.4*(root,power/3000.0)
[State 8330, fx]
type=modifyexplod
trigger1=numexplod(8330)&&(root,power>=3000)
ID=8330
scale=.5,.5

[State 8330, end]
type=removeexplod
trigger1=root,stateno!=730
[State 8330, end]
type=stopsnd
trigger1=root,stateno!=730
channel=0
[State 8330, end]
type=destroyself
trigger1=root,stateno!=730


;---PARTICLES---
[Statedef 8332]
type=S
anim=9741
velset=0,0
ctrl=0

[State 8332, bind]
type=bindtoroot
trigger1=!(time%8)
pos=ceil(-159+(random/3.125)),ceil(92-(random/3.125))

[State 8332, particle]
type=explod
trigger1=(time%8)=1
anim=8332
sprpriority=ifelse(random<750,5,-1)
postype=p1
vel=((rootdist x-1)/32.0),((rootdist y-73)/32.0)
scale=ifelse(random<500,.5,-.5),ifelse(random<500,.5,-.5)
ownpal=1

[State 8332, end]
type=removeexplod
trigger1=root,stateno!=730
[State 8332, end]
type=destroyself
trigger1=root,stateno!=730


;========================<EXCEL COMBO CHARGE>=============================
[Statedef 8400]
type=A
velset=0,0
anim=9741
[State 8400, assert]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible

[State 8400, bgpalfx]
type=bgpalfx
trigger1=!time
time=35
add=-255,-128,-128
sinadd=255,128,128,140

[State 8400, fx]
type=explod
trigger1=!time
anim=8400
ID=8400
sprpriority=5
postype=p1
removetime=20
supermovetime=-1
[State 8400, fx]
type=explod
trigger1=time=15
anim=8401
ID=8401
sprpriority=5
postype=p1
supermovetime=-1
[State 8400, fx]
type=explod
trigger1=!time
anim=8402
ID=8402
sprpriority=5
postype=p1
removetime=15
supermovetime=-1
[State 8400, logo]
type=explod
trigger1=!time
anim=8403
ID=8403
sprpriority=-5
postype=p1
facing=facing
supermovetime=-1

[State 8400, scale]
type=modifyexplod
trigger1=numexplod(8400)
ID=8400
scale=.02*time,.02*time
[State 8400, scale]
type=modifyexplod
trigger1=numexplod(8400)&&time>=15
ID=8400
scale=.02*time,.02*time
trans=addalpha
alpha=ceil(256-(51.2*(time-15))),256

[State 8400, scale]
type=modifyexplod
trigger1=numexplod(8401)
ID=8401
scale=.1+(.1*(time-15)),.1+(.1*(time-15))
trans=addalpha
alpha=ceil(256-(25.6*(time-15))),256

[State 8400, scale]
type=modifyexplod
trigger1=numexplod(8402)
ID=8402
scale=2-(.133*time),2-(.133*time)

[State 8400, scale]
type=modifyexplod
trigger1=numexplod(8403)
ID=8403
scale=.0385*time,.0385*time
trans=addalpha
alpha=ifelse(time<15,ceil(17.1*time),ceil(256-23.3*(time-15))),256

[State 8400, safety]
type=removeexplod
trigger1=time>=26
[State 8400, end]
type=destroyself
trigger1=time>=30


;========================<EXCEL TIMER>=============================
[Statedef 8405]
physics=N
velset=0,0
anim=9741
[State 8405, turn]
type=turn
trigger1=facing=-1

[State 8405, back]
type=explod
trigger1=!numexplod(8406)
anim=8406
ID=8406
postype=p1
bindtime=-1
removetime=-1
pausemovetime=-1
supermovetime=-1
ontop=1
[State 8495, front]
type=explod
trigger1=!numexplod(8407)
anim=8407
ID=8407
postype=p1
bindtime=-1
removetime=-1
pausemovetime=-1
supermovetime=-1
ontop=1
[State 8405, frame]
type=explod
trigger1=!numexplod(8405)
anim=8405
ID=8405
postype=p1
bindtime=-1
removetime=-1
pausemovetime=-1
supermovetime=-1
ontop=1

[State 8405, scale]
type=modifyexplod
trigger1=numexplod(8407)
ID=8407
scale=(root,var(20))/300.0,1

[State 8405, bind]
type=bindtoroot
trigger1=1
pos=20*(root,facing),4
time=-1
[State 8405, safety]
type=removeexplod
trigger1=(root,var(20)<=0)
[State 8405, end]
type=destroyself
trigger1=(root,var(20)<=0)


;========================<SUPER CHARGE>=============================
[Statedef 8500]
type=A
velset=0,0
anim=8500
sprpriority=5
[State 8500, assert]
type=assertspecial
trigger1=1
flag=noshadow

[State 8500, level]
type=varset
trigger1=!time
var(0)=ifelse((root,var(15)>=3),2,ifelse((root,var(15)<=1),0,1))
[State 8500, time]
type=varset
trigger1=!time
var(1)=ifelse((root,var(10)=2),60,ifelse((root,var(10)=1),50,40))

[State 8500, Lv1 blue]
type=bgpalfx
trigger1=time<=10&&var(0)=0
time=1
add=256-ceil(25.6*time),256-ceil(25.6*time),256-ceil(25.6*time)
mul=256-ceil(25.6*time),256-ceil(25.6*time),256
color=256-ceil(25.6*time)
[State 8500, Lv1 blue]
type=bgpalfx
trigger1=time>=11&&var(0)=0
time=1
mul=0,0,256
color=0
[State 8500, Lv1 blue]
type=bgpalfx
trigger1=time>=var(1)&&var(0)=0
time=1
mul=ceil(51.2*(time-var(1))),ceil(51.2*(time-var(1))),256
color=ceil(51.2*(time-var(1)))

[State 8500, Lv2 magenta]
type=bgpalfx
trigger1=time<=10&&var(0)=1
time=1
add=256-ceil(25.6*time),256-ceil(25.6*time),256-ceil(25.6*time)
mul=256,256-ceil(25.6*time),256-ceil(12.8*time)
color=256-ceil(25.6*time)
[State 8500, Lv2 magenta]
type=bgpalfx
trigger1=time>=11&&var(0)=1
time=1
mul=256,0,128
color=0
[State 8500, Lv2 magenta]
type=bgpalfx
trigger1=time>=var(1)&&var(0)=1
time=1
mul=256,ceil(51.2*(time-var(1))),128+ceil(25.6*(time-var(1)))
color=ceil(51.2*(time-var(1)))

[State 8500, Lv3 fire]
type=bgpalfx
trigger1=time<=10&&var(0)=2
time=1
add=256-ceil(25.6*time),256-ceil(25.6*time),256-ceil(25.6*time)
mul=256,256-ceil(19.2*time),256-ceil(25.6*time)
color=256-ceil(25.6*time)
[State 8500, Lv3 fire]
type=bgpalfx
trigger1=time>=11&&var(0)=2
time=1
mul=256,64,0
color=0
[State 8500, Lv3 fire]
type=bgpalfx
trigger1=time>=var(1)&&var(0)=2
time=1
mul=256,64+ceil(38.4*(time-var(1))),ceil(51.2*(time-var(1)))
color=ceil(51.2*(time-var(1)))

[State 8500, anim]
type=changeanim
trigger1=!time
value=8500+10*var(0)
[State 8500, rotate]
type=angleset
trigger1=!time
value=0
[State 8500, rotate]
type=angleadd
trigger1=1
value=-6

[State 8500, scale]
type=angledraw
trigger1=time<var(1)
scale=1.5-1.5*((time*1.0)/var(1)),1.5-1.5*((time*1.0)/var(1))
[State 8500, scale]
type=angledraw
trigger1=time>=var(1)
scale=0,0

[State 8500, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256

[State 8500, circle]
type=explod
trigger1=!time
anim=8501+10*var(0)
ID=8501
sprpriority=5
postype=p1
supermovetime=-1
[State 8500, scale]
type=modifyexplod
trigger1=numexplod(8501)
ID=8501
scale=.25+(.075*time),.25+(.075*time)
trans=addalpha
alpha=ceil(256-6.4*time),256

[State 8500, circle]
type=explod
trigger1=time=4
anim=8502+10*var(0)
ID=85021
sprpriority=5
postype=p1
supermovetime=-1
[State 8500, circle]
type=explod
trigger1=time=8
anim=8502+10*var(0)
ID=85022
sprpriority=5
postype=p1
supermovetime=-1
[State 8500, circle]
type=explod
trigger1=time=12
anim=8502+10*var(0)
ID=85023
sprpriority=5
postype=p1
supermovetime=-1
[State 8500, circle]
type=explod
trigger1=time=16
anim=8502+10*var(0)
ID=85024
sprpriority=5
postype=p1
supermovetime=-1
[State 8500, circle]
type=explod
trigger1=time=20
anim=8502+10*var(0)
ID=85025
sprpriority=5
postype=p1
supermovetime=-1
[State 8500, circle]
type=explod
trigger1=time=24
anim=8502+10*var(0)
ID=85026
sprpriority=5
postype=p1
supermovetime=-1

[State 8500, scale]
type=modifyexplod
trigger1=numexplod(85021)
ID=85021
scale=.25+((time-4)*.0313),.25+((time-4)*.0313)
[State 8500, scale]
type=modifyexplod
trigger1=numexplod(85022)
ID=85022
scale=.25+((time-8)*.0313),.25+((time-8)*.0313)
[State 8500, scale]
type=modifyexplod
trigger1=numexplod(85023)
ID=85023
scale=.25+((time-12)*.0313),.25+((time-12)*.0313)
[State 8500, scale]
type=modifyexplod
trigger1=numexplod(85024)
ID=85024
scale=.25+((time-16)*.0313),.25+((time-16)*.0313)
[State 8500, scale]
type=modifyexplod
trigger1=numexplod(85025)
ID=85025
scale=.25+((time-20)*.0313),.25+((time-20)*.0313)
[State 8500, scale]
type=modifyexplod
trigger1=numexplod(85026)
ID=85026
scale=.25+((time-24)*.0313),.25+((time-24)*.0313)

[State 8500, safety]
type=removeexplod
trigger1=time>=(var(1)+1)
[State 8500, end]
type=destroyself
trigger1=time>=(var(1)+5)


;========================<JUMP DUST>=============================
[Statedef 8100]
type=S
velset=0,0
anim=9741
[State 8100, bind]
type=bindtoroot
trigger1=time
[State 8100, dust]
type=explod
trigger1=!time
anim=8100
sprpriority=3
postype=p1
pos=0,ceil(pos y)
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1
[State 8100, dust]
type=explod
trigger1=!time||time=2||time=6
anim=8101
sprpriority=3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1
[State 8100, end]
type=destroyself
trigger1=time>=7


;====================<ZERO COUNTER CHARGE>====================
[Statedef 8350]
type=S
anim=9741
velset=0,0

[State 8350, bgpalfx]
type=bgpalfx
trigger1=1
time=1
add=ceil(-255+17.1*time),ceil(-128+8.5*time),ceil(-32+2.1*time)
color=17*time

[State 8350, dust]
type=explod
trigger1=!time
anim=8105
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)
scale=.5,.5
supermovetime=-1
ownpal=1
[State 8350, thunder]
type=explod
trigger1=!time
anim=8350
ID=8350
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
supermovetime=-1
ownpal=1
[State 8350, circle]
type=explod
trigger1=!time
anim=8351
ID=8351
sprpriority=3
postype=p1
removetime=15
supermovetime=-1
ownpal=1

[State 8350, circle]
type=modifyexplod
trigger1=numexplod(8351)
ID=8351
scale=.2+(.12*time),.2+(.12*time)
trans=addalpha
alpha=(256-17*time),256

[State 8350, noshadow]
type=assertspecial
trigger1=1
flag=invisible
flag2=noshadow
[State 8350, end]
type=destroyself
trigger1=time>=15


;========================<SUPER FINISH>=============================
[Statedef 8600]
type=A
velset=0,0
anim=9741
[State 8600, bind]
type=posset
trigger1=1
x=0
y=ceil(pos y-screenpos y)+120

[State 8600, snd]
type=playsnd
trigger1=!time
value=0,8600

[State 8600, bgpalfx]
type=bgpalfx
trigger1=time<10
time=1
mul=0,0,0
[State 8600, bgpalfx]
type=bgpalfx
trigger1=time=[10,20]
time=1
mul=(time-10)*25,(time-10)*25,(time-10)*25

[State 8600, text]
type=varset
trigger1=!time&&(root,var(23)=3000)
var(0)=1
[State 8600, text]
type=varset
trigger1=!time&&(root,var(23)=3100)
var(0)=2
[State 8600, text]
type=varset
trigger1=!time&&(root,var(23)=[3200,3203])
var(0)=3

[State 8600, text]
type=explod
trigger1=!time&&var(0)
anim=8610+var(0)
ID=8610
ontop=1
postype=left
pos=160,120
scale=.5,.5
bindtime=-1
removetime=20
pausemovetime=-1
supermovetime=-1
[State 8600, fade]
type=modifyexplod
trigger1=numexplod(8610)
ID=8610
trans=addalpha
alpha=ifelse(time<10,256,ceil(256-(time-10)*25.6)),ifelse(time<10,0,ceil((time-10)*25.6))

[State 8600, mvc]
type=explod
trigger1=!time
anim=8600
ID=8600
ontop=1
postype=left
bindtime=-1
removetime=20
pausemovetime=-1
supermovetime=-1
[State 8600, fade]
type=modifyexplod
trigger1=numexplod(8600)
ID=8600
trans=addalpha
alpha=ifelse(time<10,256,ceil(256-(time-10)*25.6)),256

[State 8600, circle]
type=explod
trigger1=!time
anim=8601
ID=8601
sprpriority=-255
postype=left
pos=160,120
bindtime=-1
removetime=20
pausemovetime=-1
supermovetime=-1
[State 8600, scale]
type=modifyexplod
trigger1=numexplod(8601)
ID=8601
scale=(.25*time),(.25*time)
trans=addalpha
alpha=ceil(256-12.8*time),256

[State 8600, safety]
type=removeexplod
trigger1=time>20&&numexplod
trigger2=roundstate<3
[State 8600, nobars]
type=assertspecial
trigger1=time<=20
flag=nobardisplay
flag2=noFG
flag3=globalnoshadow

[State 8600, end]
type=removeexplod
trigger1=roundstate<3
[State 8600, end]
type=destroyself
trigger1=roundstate<3


;========================<EXCEL FINISH>=============================
[Statedef 8650]
type=A
velset=0,0
anim=9741
[State 8650, bind]
type=posset
trigger1=1
x=0
y=ceil(pos y-screenpos y)+120

[State 8650, snd]
type=playsnd
trigger1=!time
value=0,8600

[State 8650, bgpalfx]
type=bgpalfx
trigger1=time<10
time=1
mul=0,0,0
[State 8650, bgpalfx]
type=bgpalfx
trigger1=time=[10,20]
time=1
mul=(time-10)*25,(time-10)*25,(time-10)*25

[State 8650, mvc]
type=explod
trigger1=!time
anim=8650
ID=8650
sprpriority=5
postype=left
bindtime=-1
removetime=20
pausemovetime=-1
supermovetime=-1
ontop=1
[State 8650, fade]
type=modifyexplod
trigger1=numexplod(8650)
ID=8650
scale=1,1
trans=addalpha
alpha=ifelse(time<10,256,ceil(256-(time-10)*25.6)),256

[State 8650, circle]
type=explod
trigger1=!time
anim=8651
ID=8651
sprpriority=-5
postype=left
pos=160,120
bindtime=-1
removetime=20
pausemovetime=-1
supermovetime=-1
under=1
[State 8650, shrink]
type=modifyexplod
trigger1=numexplod(8651)
ID=8651
scale=(.25*time),(.25*time)
trans=addalpha
alpha=ceil(256-12.8*time),256

[State 8650, text]
type=explod
trigger1=!time
anim=8403
ID=8502
sprpriority=-5
postype=left
pos=160,120
scale=.75,.75
bindtime=-1
removetime=20
pausemovetime=-1
supermovetime=-1
under=1
[State 8650, fade]
type=modifyexplod
trigger1=numexplod(8502)
ID=8502
trans=addalpha
alpha=ifelse(time<10,256,ceil(256-(time-10)*25.6)),256

[State 8650, safety]
type=removeexplod
trigger1=time>20&&numexplod
trigger2=roundstate<3
[State 8650, nobars]
type=assertspecial
trigger1=time<=20
flag=nobardisplay
flag2=noFG
[State 8650, end]
type=destroyself
trigger1=roundstate<3


;========================<CAMERA CONTROL>=============================
[Statedef 8999]
type=S
velset=0,0
anim=9741
[State 8999, bound]
type=screenbound
trigger1=1
value=0
movecamera=1,1
[State 8999, end]
type=destroyself
trigger1=roundstate=2