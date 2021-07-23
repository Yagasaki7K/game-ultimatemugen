[Statedef 30000]
type=S
movetype=I
physics=N
velset=0,0
anim=31000
ctrl=0
sprpriority=2147483647
[State ]
type=Screenbound
trigger1=Ishelper
value=0
movecamera=0,0
[State ]
type=AssertSpecial
trigger1=Ishelper
flag=noshadow
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
trigger1=animelemtime(9)<=2
trans=addalpha
alpha=224,32
[State ]
type=VarAdd

trigger1=Ishelper
trigger1=animelemtime(9)>=10
sysfvar(2)=.2
[State ]
type=AngleDraw
trigger1=Ishelper
trigger1=animelemtime(9)<=10
scale=.95,.95
[State ]
type=AngleDraw
trigger1=Ishelper
trigger1=animelemtime(9)>=10
scale=.95+sysfvar(2),.95+sysfvar(2)
[State ]
type=Trans
trigger1=Ishelper
trigger1=animelemtime(9)>=10
trans=addalpha
alpha=255-(11*(Time-26)),0+(11*(Time-26))
[State ]
type=Destroyself
triggerall=Ishelper
trigger1=Time>=50
[Statedef 31000]
type=S
movetype=I
physics=N
velset=0,0
anim=31001
ctrl=0
sprpriority=2147483647
[State ]
type=Screenbound
trigger1=Ishelper
value=0
movecamera=0,0
[State ]
type=AssertSpecial
trigger1=Ishelper
flag=noshadow
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
trigger1=animelemtime(9)<=2
trans=addalpha
alpha=224,32
[State ]
type=AngleDraw
trigger1=Ishelper
trigger1=animelemtime(13)<=0
scale=.8,.8
[State ]
type=VarAdd

trigger1=Ishelper
trigger1=animelemtime(13)>=0
sysfvar(2)=.2
[State ]
type=AngleDraw
trigger1=Ishelper
trigger1=animelemtime(13)>=0
scale=1+sysfvar(2),1+sysfvar(2)
[State ]
type=Trans
trigger1=Ishelper
trigger1=animelemtime(13)>=0
trans=addalpha
alpha=255-(7*(Time-26)),0+(7*(Time-26))
[State ]
type=Destroyself
triggerall=Ishelper
trigger1=Time>=60
[Statedef 99999]
anim=60000
[State ]
type=AssertSpecial
trigger1=Ishelper
flag=noshadow
[State ]
type=varset
triggerall=!root,var(30)
trigger1=command="holdup"&&root,command="holdup"
trigger2=command="holddown"&&root,command="holddown"
trigger3=command="holdback"&&root,command="holdback"
trigger4=command="holdfwd"&&root,command="holdfwd"
trigger5=command="a"&&root,command="a"
trigger6=command="b"&&root,command="b"
trigger7=command="c"&&root,command="c"
trigger8=command="x"&&root,command="x"
trigger9=command="y"&&root,command="y"
trigger10=command="z"&&root,command="z"
var(29)=1
[State ]
type=varset
triggerall=!root,var(30)
triggerall=var(29)!=1
trigger1=command="holdup"&&root,command="holdup"
trigger2=command="holddown"&&root,command="holddown"
trigger3=command="holdback"&&root,command="holdback"
trigger4=command="holdfwd"&&root,command="holdfwd"
trigger5=command="a"
trigger6=command="b"
trigger7=command="c"
trigger8=command="x"
trigger9=command="y"
trigger10=command="z"
var(30)=2
[State ]
type=Bindtoroot
trigger1=1
pos=0,0
[State ]
type=screenbound
trigger1=1
value=0
movecamera=0,0
[State ]
type=DestroySelf
triggerall=Ishelper
trigger1=root,var(30)=1
