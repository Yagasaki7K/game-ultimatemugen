; _______________________________
;| Vega by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<HELPER STATES>========================================
;==============================================================================================

;========================<AI ACTIVATION>=============================
;---Adapted from Winane's---
[StateDef 9741]
anim=9741
ctrl=0
[State 9741, safety]
type=selfstate
trigger1=!ishelper
value=0
[State 9741, end]
type=destroyself
trigger1=((root,ID)!=(parent,ID))||!(root,alive)
trigger2=roundstate!=2
trigger3=root,var(59)

[State 9741, facing]
type=turn
trigger1=facing!=root,facing
[State 9741, pausecheck]
type=varset
trigger1=(root,movecontact)&&!(root,ctrl)
trigger2=(facing!=root,facing)
var(0)=0

[State 9741, dirturnonAI]
type=parentvarset
triggerall=var(0)
trigger1=(root,command="up")||(root,command="down")||(root,command="back")||(root,command="fwd")
var(59)=1
[State 9741, dirturnoffAI]
type=parentvarset
trigger1=(command="up")&&(root,command="up")
trigger2=(command="down")&&(root,command="down")
trigger3=(command="back")&&(root,command="back")
trigger4=(command="fwd")&&(root,command="fwd")
var(59)=-1
[State 9741, buttonturnonAI]
type=parentvarset
triggerall=var(0)
trigger1=(root,command="a")||(root,command="b")||(root,command="c")||(root,command="x")
trigger2=(root,command="y")||(root,command="z")||(root,command="start")
var(59)=1
[State 9741, buttonturnoffAI]
type=parentvarset
trigger1=(command="a")&&(root,command="a")
trigger2=(command="b")&&(root,command="b")
trigger3=(command="c")&&(root,command="c")
trigger4=(command="x")&&(root,command="x")
trigger5=(command="y")&&(root,command="y")
trigger6=(command="z")&&(root,command="z")
trigger7=(command="start")&&(root,command="start")
var(59)=-1
[State 9741, unpausecheck]
type=varset
trigger1=root,ctrl
var(0)=1


;========================<PSYCHO POWER>=============================
[Statedef 6000]
physics=N
anim=9741
sprpriority=2
ctrl=0

[State 6000, bind]
type=bindtoroot
trigger1=1
[State 6000, turn]
type=turn
trigger1=facing!=(root,facing)
[State 6000, assert]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1

[State 6000, movevar]
type=varset
trigger1=!time
var(0)=(root,stateno)
[State 6000, movevar]
type=varset
trigger1=!time
var(1)=(root,anim)
[State 6000, movevar]
type=varset
trigger1=!(root,hitpausetime)
var(2)=(root,animelemno(0))

[State 6000, anim]
type=changeanim
trigger1=(root,stateno=[200,270])&&(root,anim=[200,271])
trigger1=selfanimexist((root,anim)+5800)
value=(root,anim)+5800
elem=var(2)
[State 6000, anim]
type=changeanim
trigger1=(root,stateno=1205)&&(root,anim=1205)
value=1206
elem=var(2)
[State 6000, anim]
type=changeanim
trigger1=(root,stateno=1250)&&(root,anim=1255)
value=1256
elem=var(2)
[State 6000, anim]
type=changeanim
trigger1=(root,stateno=1400)&&(root,anim=[1400,1402])
value=1405
elem=var(2)

[State 6000, spr]
type=sprpriority
trigger1=1
value=2
[State 6000, spr]
type=sprpriority
trigger1=anim=6006&&animelemtime(3)<0
value=0

[State 6000, end]
type=destroyself
trigger1=!animtime||(root,movetype!=A)
trigger2=(root,stateno)!=var(0)||(root,anim)!=var(1)
trigger3=(anim!=[6000,6071])&&anim!=1206&&anim!=1256&&anim!=1405


;========================<PSYCHO FIELD>=============================
;---ADVANCING---
[Statedef 1605]
type=A
physics=N
movetype=A
anim=1605
ctrl=0
velset=0,0
sprpriority=4

[State 1605, nothitby]
type=nothitby
trigger1=1
time=-1
value=SCA
ignorehitpause=1
[State 1605, strengthvar]
type=varset
trigger1=!time
var(10)=root,var(10)
[State 1605, timevar]
type=varadd
trigger1=time
var(0)=1
[State 1605, assert]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1

[State 1605, vel]
type=veladd
trigger1=vel x<2
x=.05
[State 1605, vel]
type=velset
trigger1=vel x>2
x=2
[State 1605, vel]
type=velset
trigger1=var(0)<20
x=0
y=0
[State 1605, bind]
type=bindtoroot
trigger1=var(0)<20
pos=47,-71

[State 1605, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
[State 1605, angle]
type=angleadd
trigger1=1
value=4
[State 1605, angle]
type=angledraw
trigger1=1

[State 1605, end]
type=changestate
trigger1=root,movetype=H
value=1606
[State 1605, end]
type=changestate
trigger1=var(0)>=ifelse(var(10)=3,121,ifelse(var(10)=2,95,68))
value=1610


;---CANCELLED---
[Statedef 1606]
type=A
physics=N
movetype=I
velset=.66*vel x,0
ctrl=0
sprpriority=4
[State 1606, anim]
type=changeanim
trigger1=anim!=1605
value=1605
[State 1606, assert]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 1606, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
[State 1606, fade]
type=palfx
trigger1=!time
time=20
sinadd=-255,-255,-255,80
[State 1605, angle]
type=angleadd
trigger1=1
value=6
[State 1606, shrink]
type=angledraw
trigger1=1
scale=1-(time*.05),1-(time*.05)
[State 1606, end]
type=destroyself
trigger1=time>=20


;---BURSTING---
[Statedef 1610]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=4

[State 1610, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=ifelse((var(2)<3),1610,1612)
ignorehitpause=1
[State 1610,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1610, hitvar]
type=varadd
trigger1=!time
var(2)=1
[State 1610, movehitvar]
type=parentvarset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1

[State 1610, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=-123

[State 1610, timevar]
type=varadd
trigger1=time
var(1)=1
[State 1610, anim]
type=changeanim
trigger1=anim!=[1610,1611]
value=1610
[State 1610, anim]
type=changeanim
trigger1=anim=1610&&var(1)>=5
value=1611
elem=animelemno(0)

[State 1610, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
[State 1610, angle]
type=angleadd
trigger1=1
value=4
[State 1610, angle]
type=angledraw
trigger1=1
[State 1610, shrink]
type=angledraw
trigger1=var(1)<5
scale=(.4+.12*var(1)),(.4+.12*var(1))
[State 1610, vel]
type=velset
trigger1=1
x=0
y=0

[State 1610, snd]
type=playsnd
trigger1=!time&&prevstateno=1605
value=5,12
[State 1610, dust]
type=explod
trigger1=!time&&prevstateno=1605
anim=7104
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
scale=.5,.5

[State 1610, assert]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 1610, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 1610, hit]
type=hitdef
trigger1=!(var(1)%6)
priority=7,Hit
attr=S,SP
damage=ceil(36*root,fvar(12)),5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=0,6
sparkno=-1
guard.sparkno=-1
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.type=Low
air.velocity=-4,-4
down.velocity=-4,-4
air.fall=1
fall.recover=0
getpower=72*!(root,var(20))
envshake.time=16
envshake.freq=100
envshake.ampl=6
sprpriority=4

[State 1610, sparks]
type=explod
trigger1=movecontact&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=ifelse(moveguarded,7001,7020+(random%8))
ID=7000
sprpriority=5
postype=left;p1
pos=160+ceil(pos x+target,pos x)/2,ceil(screenpos y+target,screenpos y+target,const(size.mid.pos.y))/2
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 1610, end]
type=changestate
trigger1=movecontact
value=ifelse(var(2)<3,1610,1612)
ignorehitpause=1
[State 1610, end]
type=changestate
trigger1=var(1)>=30
value=1612


[Statedef 1612]
type=A
physics=N
movetype=I
anim=1612
ctrl=0
velset=0,0
sprpriority=4

[State 1612, assert]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 1612, angle]
type=angleadd
trigger1=1
value=4
[State 1612, angle]
type=angledraw
trigger1=1
[State 1612, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 1612, end]
type=destroyself
trigger1=!animtime


;========================<PROJECTILE HITTER>=============================
[Statedef 1007]
type=A
physics=N
movetype=I
anim=9741
ctrl=0

[State 1007, end]
type=destroyself
trigger1=(root,stateno!=1000)&&(root,stateno!=3000)&&(root,stateno!=3050)&&(root,stateno!=4000)
trigger2=root,stateno=1000&&(root,anim!=1000||animelemtime(6)<0)
trigger3=root,stateno=3000&&(root,anim!=3000||animelemtime(6)<0)
trigger4=root,stateno=3050&&(root,anim!=3050||animelemtime(13)<0)
trigger5=root,stateno=4000&&root,anim!=4001

[State 1007, elemvar]
type=varset
trigger1=!(root,hitpausetime)
var(0)=(root,animelemno(0))
[State 1007, anim]
type=changeanim
trigger1=1
value=root,anim
elem=var(0)

[State 1007, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1007
ignorehitpause=1

[State 1007, hitby]
type=hitby
trigger1=(root,stateno=1000)||(root,stateno=3000)
time=-1
value=SCA,NP
ignorehitpause=1
[State 1007, hitby]
type=hitby
trigger1=(root,stateno=3050)
time=-1
value=SCA,NP,SP
ignorehitpause=1
[State 1007, hitby]
type=hitby
trigger1=(root,stateno=4000)
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1007, bind]
type=bindtoroot
trigger1=1
time=-1
[State 1007, assert]
type=assertspecial
trigger1=1
flag=invisible


;========================<PROJECTILE BANISHER>=============================
[Statedef 1407]
type=A
physics=N
movetype=I
ctrl=0
anim=1407
velset=0,0
[State 1407, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1407
ignorehitpause=1
[State 1407, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP
ignorehitpause=1
[State 1407, anim]
type=changeanim
trigger1=anim!=1407
value=1407
[State 1407, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1407, bind]
type=bindtoroot
trigger1=1
time=-1
[State 1407, end]
type=destroyself
;triggerall=0
trigger1=root,stateno!=1400||(root,anim!=[1400,1402])
trigger2=root,animelemtime(7)<0||root,movetype=H
trigger3=root,anim=1400&&root,animelemtime(10)>=0
trigger4=root,anim=1401&&root,animelemtime(11)>=0
trigger5=root,anim=1402&&root,animelemtime(12)>=0


;========================<PSYCHO CRUSHER>=============================
[Statedef 1005]
physics=N
anim=1005
sprpriority=3
ctrl=0
[State 1005, bind]
type=bindtoroot
trigger1=1
pos=80,-60
[State 1005, turn]
type=turn
trigger1=facing!=(root,facing)
[State 1005, assert]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 1005, end]
type=destroyself
trigger1=(root,stateno!=1000)||(root,anim!=1000)
trigger2=(root,stateno=1000)&&root,animelemtime(6)<0


;========================<HEARTBREAK DESPAIR>=============================
[Statedef 3010]
physics=N
anim=3010
sprpriority=3
ctrl=0
[State 3010, bind]
type=bindtoroot
trigger1=(root,stateno=3000)&&(root,movetype!=H)
pos=(90-time*3),-59
[State 3010, turn]
type=turn
trigger1=facing!=(root,facing)
[State 3010, assert]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 3010, angle]
type=angledraw
trigger1=time<=2
scale=.083*(time+1),.17*(time+1)
[State 3010, angle]
type=angledraw
trigger1=time>=3
scale=(.25+.11*(time-3)),(.5-.071*(time-3))
[State 3010, end]
type=destroyself
trigger1=time>=11


;========================<PSYCHO BREAK SMASHER>=============================
[Statedef 3060]
physics=N
anim=3060
sprpriority=3
ctrl=0
[State 3060, bind]
type=bindtoroot
trigger1=anim=3060
pos=80,-60
[State 3060, turn]
type=turn
trigger1=facing!=(root,facing)
[State 3060, assert]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 3060, end]
type=changeanim
triggerall=anim=3060
trigger1=(root,stateno!=3050)||(root,anim!=3050)
trigger2=(root,stateno=3050)&&root,animelemtime(13)<0
value=3061
[State 3060, end]
type=destroyself
trigger1=anim=3061&&!animtime


;========================<FINAL PSYCHO CRUSHER>=============================
[Statedef 4006]
physics=N
anim=4006
sprpriority=5
velset=-2,0
[State 4006, assert]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 4006, bind]
type=bindtoroot
trigger1=(root,stateno=4000)&&(root,anim=4001)
pos=175-25*time,-60
[State 4006, shrink]
type=angledraw
trigger1=time<7
scale=.25+.07*time,.5+.14*time
[State 4006, shrink]
type=angledraw
trigger1=time>=7
scale=.75-.032*(time-7),1.5-.065*(time-7)
[State 4006, fadeout]
type=trans
trigger1=1
trans=addalpha
alpha=ceil(256-8.5*time),256
[State 4006, end]
type=destroyself
trigger1=time>=30


;========================<WARP FX>=============================
;---FADE OUT---
[Statedef 1705]
physics=N
anim=9741
sprpriority=ifelse((parent,ishelper),0,-2)
[State 1705, nothitby]
type=nothitby
trigger1=1
time=-1
value=SCA
[State 1705, fx]
type=helper
trigger1=!(parent,ishelper)
helpertype=normal
stateno=1705
ID=1705
name="Warp FX"
postype=p1
ownpal=1
persistent=0

[State 1705, animvar]
type=varset
trigger1=!time
var(0)=(root,anim)
[State 1705, animvar]
type=varset
trigger1=!time
var(1)=(root,animelemno(0))
[State 1705, anim]
type=changeanim
trigger1=1
value=var(0)
elem=var(1)

[State 1705, posvar]
type=varadd
trigger1=var(2)<60
var(2)=6
[State 1705, bind]
type=bindtoroot
trigger1=1
pos=ifelse((parent,ishelper),-var(2),var(2))

[State 1705, fadeout]
type=trans
trigger1=1
trans=addalpha
alpha=ceil(256-25*time),25*time
[State 1705, end]
type=destroyself
trigger1=time>=10||root,movetype=H

;---FADE IN---
[Statedef 1706]
physics=N
anim=9741
sprpriority=ifelse((parent,ishelper),0,-2)
[State 1706, nothitby]
type=nothitby
trigger1=1
time=-1
value=SCA
[State 1706, fx]
type=helper
trigger1=!(parent,ishelper)
helpertype=normal
stateno=1706
ID=1706
name="Warp FX"
postype=p1
ownpal=1
persistent=0

[State 1706, animvar]
type=varset
trigger1=!time
var(0)=(root,anim)
[State 1706, animvar]
type=varset
trigger1=!time
var(1)=(root,animelemno(0))
[State 1706, anim]
type=changeanim
trigger1=1
value=var(0)
elem=var(1)

[State 1706, posvar]
type=varadd
trigger1=var(2)<60
var(2)=6
[State 1706, bind]
type=bindtoroot
trigger1=1
pos=ifelse((parent,ishelper),-60+var(2),60-var(2))

[State 1706, fadeout]
type=trans
trigger1=1
trans=addalpha
alpha=25*time,ceil(256-25*time)
[State 1706, end]
type=destroyself
trigger1=time>=10||root,movetype=H


;========================<CAPE>=============================
[Statedef 6100]
physics=N
anim=6100
sprpriority=-1
velset=-2,-.5
[State 6100, grav]
type=veladd
trigger1=1
y=.1
[State 6100, fadeout]
type=trans
trigger1=1
trans=addalpha
alpha=ceil(256-13*time),13*time
[State 6100, end]
type=destroyself
trigger1=time>=20


;========================<JUMP DUST>=============================
[Statedef 7100]
physics=N
velset=0,0
anim=9741
[State 7100, bind]
type=bindtoroot
trigger1=time
[State 7100, dust]
type=explod
trigger1=!time
anim=7100
ID=7100
sprpriority=3
postype=p1
pos=0,ceil(pos y)
scale=.5,.5
[State 7100, dust]
type=explod
trigger1=!time||time=2||time=6
anim=7101
ID=7100
sprpriority=3
postype=p1
scale=.5,.5
[State 7100, assert]
type=assertspecial
trigger1=1
flag=invisible
[State 7100, end]
type=destroyself
trigger1=time>=7


;========================<FIRE>=============================
[Statedef 7180]
physics=N
velset=0,0
anim=9741
sprpriority=4
[State 7180, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 7180, flames]
type=explod
trigger1=1
anim=7180
ID=7180
sprpriority=3
postype=p2
vel=-.2,-.75
pos=(enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10
random=40,40
removetime=-2
scale=.5,.5
ownpal=1
[State 7180, pos]
type=posadd
trigger1=1
x=ceil(p2dist x)
y=ceil(p2dist y)
[State 7180, end]
type=destroyself
trigger1=time>=120
trigger2=enemynear,ctrl||(enemynear,movetype!=H)||(enemynear,statetype=L)


;========================<SUPERCHARGE>=============================
[Statedef 7500]
physics=N
velset=0,0
anim=9741
sprpriority=5

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=!time&&root,var(10)=5
time=40
invertall=1
add=100,100,100
sinadd=-710,-710,-355,160
[State 7500, bgpalfx1]
type=bgpalfx
trigger1=time=40&&root,var(10)=5
time=5
add=-255,-255,-255
sinadd=255,255,255,20

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=!time&&root,var(10)=6
time=48
invertall=1
add=100,100,100
sinadd=-710,-710,-355,192
[State 7500, bgpalfx1]
type=bgpalfx
trigger1=time=48&&root,var(10)=6
time=5
add=-255,-255,-255
sinadd=255,255,255,20

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=!time&&root,var(10)=7
time=55
invertall=1
add=100,100,100
sinadd=-710,-710,-355,220
[State 7500, bgpalfx1]
type=bgpalfx
trigger1=time=55&&root,var(10)=7
time=5
add=-255,-255,-255
sinadd=255,255,255,20

[State 7500, fade]
type=palfx
trigger1=!time
time=40
sinadd=-255,-255,-255,160
[State 7500, fade]
type=palfx
trigger1=time=40
time=-1
add=-255,-255,-255

[State 7500, spiral]
type=helper
trigger1=!time&&root,var(10)>=6
helpertype=normal
stateno=7509
ID=7509
name="Super Charge Spiral"
postype=p1
supermovetime=300
ownpal=1
[State 7500, portrait]
type=helper
trigger1=!time&&root,var(10)=7
helpertype=normal
stateno=7510
ID=7510
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1

[State 7500, main]
type=explod
trigger1=!time
anim=7500
ID=7500
sprpriority=5
postype=p1
removetime=-1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=!time
anim=7501
ID=7501
sprpriority=5
postype=p1
removetime=43
supermovetime=300

[State 7500, circle]
type=explod
trigger1=!time
anim=7502
ID=75021
sprpriority=5
postype=p1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=time=7
anim=7502
ID=75022
sprpriority=5
postype=p1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=time=14
anim=7502
ID=75023
sprpriority=5
postype=p1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=time=21
anim=7502
ID=75024
sprpriority=5
postype=p1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=time=28
anim=7502
ID=75025
sprpriority=5
postype=p1
supermovetime=300
ownpal=1

[State 7500, shrink]
type=modifyexplod
trigger1=root,var(10)=5
ID=7500
scale=1.5-(.033*time),1.5-(.033*time)
[State 7500, shrink]
type=modifyexplod
trigger1=root,var(10)=6
ID=7500
scale=1.5-(.028*time),1.5-(.028*time)
[State 7500, shrink]
type=modifyexplod
trigger1=root,var(10)=7
ID=7500
scale=1.5-(.025*time),1.5-(.025*time)

[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(7501)
ID=7501
scale=.25+(.075*time),.25+(.075*time)

[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75021)
ID=75021
scale=.25+(.0375*time),.25+(.0375*time)
[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75022)
ID=75022
scale=.25+(.0375*(time-7)),.25+(.0375*(time-7))
[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75023)
ID=75023
scale=.25+(.0375*(time-14)),.25+(.0375*(time-14))
[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75024)
ID=75024
scale=.25+(.0375*(time-21)),.25+(.0375*(time-21))
[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75025)
ID=75025
scale=.25+(.0375*(time-28)),.25+(.0375*(time-28))

[State 7500, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 7500, safety]
type=removeexplod
trigger1=root,var(10)=5&&time>=46
trigger2=root,var(10)=6&&time>=54
trigger3=root,var(10)=7&&time>=61
[State 7500, end]
type=destroyself
trigger1=root,var(10)=5&&time>=46
trigger2=root,var(10)=6&&time>=54
trigger3=root,var(10)=7&&time>=61


;========================<SUPERCHARGE SPIRAL>=============================
[Statedef 7509]
physics=N
anim=7509
sprpriority=5
[State 7509, assert]
type=assertspecial
trigger1=1
flag=noshadow
[State 7509, spin]
type=angleadd
trigger1=1
value=-8

[State 7509, spin]
type=angledraw
trigger1=root,var(10)=6
scale=1-(time/53.0),1-(time/53.0)
[State 7509, trans]
type=trans
trigger1=root,var(10)=6
trans=addalpha
alpha=floor(4.83*time),256

[State 7509, spin]
type=angledraw
trigger1=root,var(10)=7
scale=1-(time/60.0),1-(time/60.0)
[State 7509, trans]
type=trans
trigger1=root,var(10)=7
trans=addalpha
alpha=floor(4.27*time),256

[State 7509, end]
type=destroyself
trigger1=root,var(10)=6&&time>=54
trigger2=root,var(10)=7&&time>=61


;========================<Lv3 SUPERCHARGE PORTRAIT>=============================
[Statedef 7510]
physics=N
anim=9741
sprpriority=5
[State 7510, assert]
type=assertspecial
trigger1=1
flag=invisible
flag2=nobardisplay
ignorehitpause=1
[State 7510, portrait]
type=explod
trigger1=!time
anim=7510
ID=7510
postype=back
pos=160,120
under=1
bindtime=-1
removetime=60
pausemovetime=300
supermovetime=300
[State 7510, shrink]
type=modifyexplod
trigger1=time<45
ID=7510
scale=.5,.5
[State 7510, shrink]
type=modifyexplod
trigger1=time>=45
ID=7510
scale=.5225+(.13*(time-45)),.5225+(.13*(time-45))
[State 7510, fade]
type=palfx
trigger1=time=45
time=15
sinadd=-255,-255,-255,60
[State 7510, safety]
type=removeexplod
trigger1=time>=61
[State 7510, end]
type=destroyself
trigger1=time>=61


;========================<POWER CHARGE>=============================
;-----<MAIN FX>-----
[Statedef 7240]
physics=N
anim=7240
sprpriority=-2
[State 7240, bind]
type=bindtoroot
trigger1=(root,stateno=740)&&(root,anim=740)
pos=-4,0
[State 7240, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 7240, snd]
type=playsnd
trigger1=!time
value=7,4
channel=0
[State 7240, image]
type=afterimage
trigger1=!time
time=999
timegap=1
framegap=1
length=4
palmul=.5,.33,.25
palcontrast=120,120,120
trans=add

[State 7240, fx]
type=explod
trigger1=!numexplod(7242)
anim=7242
ID=7242
sprpriority=4
postype=p1
bindtime=-1
removetime=-1
[State 7240, fx]
type=modifyexplod
trigger1=1
ID=7242
scale=.5,.1+.00022*(root,power)
[State 7240, fx]
type=modifyexplod
trigger1=root,power>=3000
ID=7242
scale=.5,.75

[State 7240, anim]
type=changeanim
trigger1=anim=7240&&((root,stateno!=740)||(root,anim!=740))
value=7241
elem=animelemno(0)
[State 7240, stopsnd]
type=stopsnd
trigger1=anim=7241
channel=0
persistent=0
[State 7240, fade]
type=palfx
trigger1=anim=7241
sinadd=-255,-255,-255,64
time=17
persistent=0
[State 7240, remove]
type=removeexplod
trigger1=anim=7241&&!animtime
[State 7240, end]
type=destroyself
trigger1=anim=7241&&!animtime


;========================<ZERO COUNTER CHARGE>=============================
[Statedef 7250]
physics=N
velset=0,0
anim=9741

[State 7250, bgpalfx]
type=bgpalfx
trigger1=!time
time=20
add=-255,-128,-64
sinadd=255,128,64,80
persistent=0
[State 7250, palfx]
type=palfx
trigger1=!time
time=20
sinadd=-255,-255,-255,80

[State 7250, dust]
type=explod
trigger1=!time
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
supermovetime=30
ownpal=1
[State 7250, thunder]
type=explod
trigger1=!time
anim=7250
ID=7250
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
removetime=-2
supermovetime=30
ownpal=1
[State 7250, circle]
type=explod
trigger1=!time
anim=7251
ID=7251
sprpriority=3
postype=p1
removetime=20
supermovetime=30

[State 7250, shrink]
type=modifyexplod
trigger1=numexplod(7251)
ID=7251
scale=.2+(.09*time),.2+(.09*time)
[State 7250, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 7250, end]
type=destroyself
trigger1=time>=20


;========================<EXCEL COMBO CHARGE>=============================
[Statedef 7260]
physics=N
velset=0,0
anim=9741

[State 7260, bgpalfx]
type=bgpalfx
trigger1=!time
time=30
add=-255,-255,-128
sinadd=255,255,128,120
[State 7260, palfx]
type=palfx
trigger1=time=20
time=11
sinadd=-255,-255,-255,40
persistent=0

[State 7260, main]
type=explod
trigger1=!time
anim=7260
ID=7260
sprpriority=5
postype=p1
removetime=20
supermovetime=300
[State 7260, sphere]
type=explod
trigger1=!time
anim=7500
ID=7261
sprpriority=5
postype=p1
removetime=-1
supermovetime=300
[State 7260, circle]
type=explod
trigger1=time=20
anim=7501
ID=7262
sprpriority=5
postype=p1
removetime=-1
supermovetime=300

[State 7260, shrinkcircle]
type=modifyexplod
trigger1=1
ID=7260
scale=2-(.1*time),2-(.1*time)
[State 7260, shrinkcircle]
type=modifyexplod
trigger1=1
ID=7261
scale=.017*time,.017*time
[State 7260, shrinkcircle]
type=modifyexplod
trigger1=time>=20
ID=7262
scale=.1+(.1*(time-20)),.1+(.1*(time-20))

[State 7260, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 7260, bound]
type=screenbound
trigger1=1
value=0
[State 7260, safety]
type=removeexplod
trigger1=time>=30
[State 7260, end]
type=destroyself
trigger1=time>=30


;========================<COUNTER F.X.>=============================
[Statedef 7400]
physics=N
velset=0,0
anim=9741
[State 7400, bgpalfx]
type=bgpalfx
trigger1=!time
time=5
add=255,255,255
sinadd=-255,-255,-255,20
[State 7400, slow]
type=pause
trigger1=time<5
time=2
[State 7400, noshadow]
type=assertspecial
trigger1=1
flag=invisible
ignorehitpause=1
[State 7400, end]
type=destroyself
trigger1=time>=5


;========================<K.O. F.X.>=============================
[Statedef 7600]
physics=N
velset=0,0
anim=9741
sprpriority=-5
[State 7600, bind]
type=posset
trigger1=1
x=0
y=-120

[State 7600, snd]
type=playsnd
trigger1=!time
value=7,5
[State 7600, palfx]
type=palfx
trigger1=!time
time=40
sinadd=-255,-255,-255,160
ignorehitpause=1
[State 7600, bgpalfx]
type=bgpalfx
trigger1=time<30
time=1
mul=512-(time*8),(time*8),(time*8)
add=-60+time*4,-60+time*4,-60+time*4

[State 7600, VSthing]
type=explod
trigger1=!time
anim=7601
ID=7601
sprpriority=5
postype=left
bindtime=-1
removetime=40
pausemovetime=300
supermovetime=300

[State 7600, circle]
type=explod
trigger1=!time
anim=7600
ID=76001
sprpriority=-5
postype=left
pos=160,120
bindtime=-1
removetime=40
pausemovetime=300
supermovetime=300
[State 7600, circle]
type=explod
trigger1=!time
anim=7600
ID=76002
sprpriority=-5
postype=left
pos=160,120
bindtime=-1
removetime=40
pausemovetime=300
supermovetime=300
[State 7600, shrink]
type=modifyexplod
trigger1=time<=40&&numexplod(76001)
ID=76001
scale=(.1*time),(.1*time)
[State 7600, shrink]
type=modifyexplod
trigger1=time<=40&&numexplod(76002)
ID=76002
scale=(.3*time),(.3*time)

[State 7600, noshadow]
type=assertspecial
trigger1=1
flag=invisible
[State 7600, nobars]
type=assertspecial
trigger1=time<=20
flag=nobardisplay


;========================<CAMERA CONTROL>=============================
[Statedef 7650]
physics=N
velset=0,0
anim=9741
[State 7650, bound]
type=screenbound
trigger1=1
value=0
movecamera=1,1
[State 7650, end]
type=destroyself
trigger1=roundstate=2