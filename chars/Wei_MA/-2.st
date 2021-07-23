
[Statedef -2]
[State ]
type=Removeexplod
triggerall=palno=12
trigger1=anim!=1
id=231841
[State ]
type=Afterimage
triggerall=palno=12
trigger1=!Time&&!Ishelper
trans=add
PalContrast=250,0,0
PalBright=0,0,0
time=-1
paladd=25,10,10
palmul=.75,.65,.65
length=10
TimeGap=2
FrameGap=1
[State ]
type=Afterimagetime
trigger1=Movetype=H
time=1
[State ]
type=Stopsnd
trigger1=Movetype=H
channel=2
[State ]
type=Selfstate
trigger1=Ishelper(99999)
value=99999
ignorehitpause=1
[State ]
type=Helper
triggerall=name="WeiƒÀ_MA"
triggerall=!Ishelper
triggerall=!var(30)
trigger1=!numhelper(99999)
stateno=99999
name="AI"
id=99999
pos=0,0
helpertype=player
postype=p1
ownpal=0
keyctrl=1
ignorehitpause=1
supermovetime=2147483647
pausemovetime=2147483647
[State ]
type=VarSet
triggerall=palno!=12
trigger1=enemy,GethitVar(hitcount)>=1
fv=0
value=1.00-(enemy,GethitVar(hitcount)*.230)
ignorehitpause=1
[State ]
type=VarSet
triggerall=palno!=12
trigger1=p2movetype!=H
trigger2=!(enemy,GethitVar(hitcount))
trigger3=enemy,GethitVar(guarded)
fv=0
value=1.00
ignorehitpause=1
[State ]
type=VarSet
triggerall=palno!=12
trigger1=fvar(0)<=0
fv=0
value=ifelse(enemy,gethitvar(hitcount)>20,.1,.2)
ignorehitpause=1
[State ]
type=AttackMulSet
triggerall=palno!=12
trigger1=stateno!=2201
value=fvar(0)
ignorehitpause=1
[State ]
type=AttackMulSet
trigger1=palno=12
value=1.5
ignorehitpause=1
[State ]
type=DefenceMulSet
trigger1=palno=12
value=1.5
ignorehitpause=1
[State ]
type=Nothitby
triggerall=palno=12&&!IsHelper
trigger1=movetype=H&&stateno=[5000,5120]
trigger2=movetype=A
value=SCA
[State ]
type=AssertSpecial
trigger1=palno=12&&!IsHelper
flag=nostandguard
flag2=noairguard
flag3=nocrouchguard
ignorehitpause=1
[State ]
type=Poweradd
trigger1=palno=12
value=2
ignorehitpause=1
[State ]
type=VarRandom
triggerall=!Ishelper
trigger1=time%2
v=1
range=1,10
[state ]
type=PlaySnd
triggerall=stateno=5000||stateno=5010||stateno=5020
triggerall=!Time
triggerall=var(1)=[1,5]
triggerall=Alive
trigger1=!(GetHitVar(animtype))
value=5000,0+random%2
channel=0
[state ]
type=PlaySnd
triggerall=stateno=5000||stateno=5010||stateno=5020
triggerall=!Time
triggerall=var(1)=[6,10]
triggerall=Alive
trigger1=!(GetHitVar(animtype))
value=5000,2+random%2
channel=0
[state ]
type=PlaySnd
triggerall=stateno=5000||stateno=5010||stateno=5020
triggerall=!Time
triggerall=var(1)=[1,5]
triggerall=Alive
trigger1=GetHitVar(animtype)=1
value=5000,4+random%2
channel=0
[state ]
type=PlaySnd
triggerall=stateno=5000||stateno=5010||stateno=5020
triggerall=!Time
triggerall=var(1)=[6,10]
triggerall=alive
trigger1=GetHitVar(animtype)=1
value=5000,6+random%2
channel=0
[state ]
type=PlaySnd
triggerall=stateno=5000||stateno=5010||stateno=5020
triggerall=!Time
triggerall=var(1)=[1,5]
triggerall=alive
trigger1=GetHitVar(animtype)=2
trigger2=GetHitVar(animtype)=3
trigger3=GetHitVar(animtype)=4
value=5000,8+random%2
channel=0
[state ]
type=PlaySnd
triggerall=stateno=5000||stateno=5010||stateno=5020
triggerall=!Time
triggerall=var(1)=[6,10]
triggerall=alive
trigger1=GetHitVar(animtype)=2
trigger2=GetHitVar(animtype)=3
trigger3=GetHitVar(animtype)=4
value=5000,10
channel=0
[state ]
type=PlaySnd
trigger1=stateno=5120&&1=time=1
value=5100,0+random%3
channel=0
[State ]
type=DisplayToClipboard
trigger1=!Ishelper
text="p2dist x=%f,p2dist y=%f"
params=(p2dist x),(p2dist y)
[Statedef -3]
[State ]
type=PlaySnd
triggerall=Time=1
trigger1=stateno=52
value=47,0
