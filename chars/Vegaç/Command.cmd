; _______________________________
;| Vega by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;===================<BUTTON REMAPPING>===================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;===================<DEFAULT VALUES>===================
[Defaults]
command.time=15
command.buffer.time=1


;===================<SINGLE BUTTON>===================
[Command]
name="a"
command=a
time=1
[Command]
name="b"
command=b
time=1
[Command]
name="c"
command=c
time=1
[Command]
name="x"
command=x
time=1
[Command]
name="y"
command=y
time=1
[Command]
name="z"
command=z
time=1
[Command]
name="start"
command=s
time=1


;===================<HOLD DIR>===================
[Command]
name="holdfwd"
command=/$F
time=1
[Command]
name="holdback"
command=/$B
time=1
[Command]
name="holdup"
command=/$U
time=1
[Command]
name="holddown"
command=/$D
time=1


;===================<HOLD BUTTON>===================
[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holdstart"
command=/s
time=1


;===================<CPU>===================
[Command]
name="a2"
command=a
time=1
[Command]
name="b2"
command=b
time=1
[Command]
name="c2"
command=c
time=1
[Command]
name="x2"
command=x
time=1
[Command]
name="y2"
command=y
time=1
[Command]
name="z2"
command=z
time=1
[Command]
name="start2"
command=s
time=1

[Command]
name="holdfwd2"
command=/$F
time=1
[Command]
name="holdback2"
command=/$B
time=1
[Command]
name="holdup2"
command=/$U
time=1
[Command]
name="holddown2"
command=/$D
time=1

[Command]
name="holda2"
command=/a
time=1
[Command]
name="holdb2"
command=/b
time=1
[Command]
name="holdc2"
command=/c
time=1
[Command]
name="holdx2"
command=/x
time=1
[Command]
name="holdy2"
command=/y
time=1
[Command]
name="holdz2"
command=/z
time=1
[Command]
name="holdstart2"
command=/s
time=1

[Command]
name="recovery2"
command=x+y
time=1


;===================<DIR>===================
[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1


;===================<SUPER MOTIONS>===================

[Command]
name="cbfbf2p"
command=~45$B, $F, $B, F, x+y
time=30
[Command]
name="cbfbf2p"
command=~45$B, $F, $B, F, x+z
time=30
[Command]
name="cbfbf2p"
command=~45$B, $F, $B, F, y+z
time=30

[Command]
name="bfbf2p"
command=~$B, $F, $B, F, x+y
time=30
[Command]
name="bfbf2p"
command=~$B, $F, $B, F, x+z
time=30
[Command]
name="bfbf2p"
command=~$B, $F, $B, F, y+z
time=30

[Command]
name="cbfbfp"
command=~45$B, $F, $B, F, x
time=30
[Command]
name="cbfbfp"
command=~45$B, $F, $B, F, y
time=30
[Command]
name="cbfbfp"
command=~45$B, $F, $B, F, z
time=30
[Command]
name="cbfbfp"
command=~45$B, $F, $B, F, ~x
time=30
[Command]
name="cbfbfp"
command=~45$B, $F, $B, F, ~y
time=30
[Command]
name="cbfbfp"
command=~45$B, $F, $B, F, ~z
time=30

[Command]
name="bfbfp"
command=~$B, $F, $B, F, x
time=30
[Command]
name="bfbfp"
command=~$B, $F, $B, F, y
time=30
[Command]
name="bfbfp"
command=~$B, $F, $B, F, z
time=30
[Command]
name="bfbfp"
command=~$B, $F, $B, F, ~x
time=30
[Command]
name="bfbfp"
command=~$B, $F, $B, F, ~y
time=30
[Command]
name="bfbfp"
command=~$B, $F, $B, F, ~z
time=30

[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,x
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,y
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,z
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~x
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~y
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~z
time=30

[Command]
name="2qcfk"
command=~D,DF,F,D,DF,F,a
time=30
[Command]
name="2qcfk"
command=~D,DF,F,D,DF,F,b
time=30
[Command]
name="2qcfk"
command=~D,DF,F,D,DF,F,c
time=30
[Command]
name="2qcfk"
command=~D,DF,F,D,DF,F,~a
time=30
[Command]
name="2qcfk"
command=~D,DF,F,D,DF,F,~b
time=30
[Command]
name="2qcfk"
command=~D,DF,F,D,DF,F,~c
time=30


;===================<SPECIAL MOTIONS>===================

[Command]
name="cbfx"
command=~45$B,F,x
time=15
[Command]
name="cbfy"
command=~45$B,F,y
time=15
[Command]
name="cbfz"
command=~45$B,F,z
time=15
[Command]
name="cbfx"
command=~45$B,F,~x
time=15
[Command]
name="cbfy"
command=~45$B,F,~y
time=15
[Command]
name="cbfz"
command=~45$B,F,~z
time=15

[Command]
name="bfx"
command=$B,F,x
time=15
[Command]
name="bfy"
command=$B,F,y
time=15
[Command]
name="bfz"
command=$B,F,z
time=15
[Command]
name="bfx"
command=$B,F,~x
time=15
[Command]
name="bfy"
command=$B,F,~y
time=15
[Command]
name="bfz"
command=$B,F,~z
time=15

[Command]
name="cbfa"
command=~45$B,F,a
time=15
[Command]
name="cbfb"
command=~45$B,F,b
time=15
[Command]
name="cbfc"
command=~45$B,F,c
time=15
[Command]
name="cbfa"
command=~45$B,F,~a
time=15
[Command]
name="cbfb"
command=~45$B,F,~b
time=15
[Command]
name="cbfc"
command=~45$B,F,~c
time=15

[Command]
name="bfa"
command=$B,F,a
time=15
[Command]
name="bfb"
command=$B,F,b
time=15
[Command]
name="bfc"
command=$B,F,c
time=15
[Command]
name="bfa"
command=$B,F,~a
time=15
[Command]
name="bfb"
command=$B,F,~b
time=15
[Command]
name="bfc"
command=$B,F,~c
time=15

[Command]
name="cdux"
command=~45$D,$U,x
time=15
[Command]
name="cduy"
command=~45$D,$U,y
time=15
[Command]
name="cduz"
command=~45$D,$U,z
time=15
[Command]
name="cdux"
command=~45$D,$U,~x
time=15
[Command]
name="cduy"
command=~45$D,$U,~y
time=15
[Command]
name="cduz"
command=~45$D,$U,~z
time=15
[Command]
name="dux"
command=$D,$U,x
time=15
[Command]
name="duy"
command=$D,$U,y
time=15
[Command]
name="duz"
command=$D,$U,z
time=15

[Command]
name="cdua"
command=~45$D,$U,a
time=15
[Command]
name="cdub"
command=~45$D,$U,b
time=15
[Command]
name="cduc"
command=~45$D,$U,c
time=15
[Command]
name="cdua"
command=~45$D,$U,~a
time=15
[Command]
name="cdub"
command=~45$D,$U,~b
time=15
[Command]
name="cduc"
command=~45$D,$U,~c
time=15

[Command]
name="dua"
command=$D,$U,a
time=15
[Command]
name="dub"
command=$D,$U,b
time=15
[Command]
name="duc"
command=$D,$U,c
time=15
[Command]
name="dua"
command=$D,$U,~a
time=15
[Command]
name="dub"
command=$D,$U,~b
time=15
[Command]
name="duc"
command=$D,$U,~c
time=15

[Command]
name="hcfx"
command=~B,DB,D,DF,F,x
time=30
[Command]
name="hcfy"
command=~B,DB,D,DF,F,y
time=30
[Command]
name="hcfz"
command=~B,DB,D,DF,F,z
time=30
[Command]
name="hcfx"
command=~B,DB,D,DF,F,~x
time=30
[Command]
name="hcfy"
command=~B,DB,D,DF,F,~y
time=30
[Command]
name="hcfz"
command=~B,DB,D,DF,F,~z
time=30

[Command]
name="hcbx"
command=~F,DF,D,DB,B,x
time=30
[Command]
name="hcby"
command=~F,DF,D,DB,B,y
time=30
[Command]
name="hcbz"
command=~F,DF,D,DB,B,z
time=30
[Command]
name="hcbx"
command=~F,DF,D,DB,B,~x
time=30
[Command]
name="hcby"
command=~F,DF,D,DB,B,~y
time=30
[Command]
name="hcbz"
command=~F,DF,D,DB,B,~z
time=30

[Command]
name="dfx"
command=~F,D,DF,x
time=20
[Command]
name="dfy"
command=~F,D,DF,y
time=20
[Command]
name="dfz"
command=~F,D,DF,z
time=20
[Command]
name="dfx"
command=~F,D,DF,~x
time=20
[Command]
name="dfy"
command=~F,D,DF,~y
time=20
[Command]
name="dfz"
command=~F,D,DF,~z
time=20

[Command]
name="df2p"
command=~F,D,DF,x+y
time=25
[Command]
name="df2p"
command=~F,D,DF,x+z
time=25
[Command]
name="df2p"
command=~F,D,DF,y+z
time=25

[Command]
name="db2p"
command=~B,D,DB,x+y
time=25
[Command]
name="db2p"
command=~B,D,DB,x+z
time=25
[Command]
name="db2p"
command=~B,D,DB,y+z
time=25

[Command]
name="df2k"
command=~F,D,DF,a+b
time=25
[Command]
name="df2k"
command=~F,D,DF,a+c
time=25
[Command]
name="df2k"
command=~F,D,DF,b+c
time=25

[Command]
name="db2k"
command=~B,D,DB,a+b
time=25
[Command]
name="db2k"
command=~B,D,DB,a+c
time=25
[Command]
name="db2k"
command=~B,D,DB,b+c
time=25

[Command]
name="bdx"
command=~B,DB,D,x
time=20
[Command]
name="bdy"
command=~B,DB,D,y
time=20
[Command]
name="bdz"
command=~B,DB,D,z
time=20
[Command]
name="bdx"
command=~B,DB,D,~x
time=20
[Command]
name="bdy"
command=~B,DB,D,~y
time=20
[Command]
name="bdz"
command=~B,DB,D,~z
time=20

[Command]
name="bda"
command=~B,DB,D,a
time=20
[Command]
name="bdb"
command=~B,DB,D,b
time=20
[Command]
name="bdc"
command=~B,DB,D,c
time=20
[Command]
name="bda"
command=~B,DB,D,~a
time=20
[Command]
name="bdb"
command=~B,DB,D,~b
time=20
[Command]
name="bdc"
command=~B,DB,D,~c
time=20


;===================<OTHER>===================

[command]
name="superjump"
command=$D,$U
time=15

[Command]
name="taunt"
command=~D,D,s
time=15


;===================<DOUBLE TAP>===================
[Command]
name="FF"
command=F,F
time=10
[Command]
name="BB"
command=B,B
time=10


;===================<2/3 BUTTON COMBINATION>===================

[Command]
name="recovery"
command=x+y
time=1
[Command]
name="recovery"
command=x+z
time=1
[Command]
name="recovery"
command=y+z
time=1

[Command]
name="2k"
command=a+b
time=1
[Command]
name="2k"
command=a+c
time=1
[Command]
name="2k"
command=b+c
time=1

[Command]
name="roll"
command=a+x
time=1

[Command]
name="excelcombo"
command=c+z
time=1


;===========================================================================
;===============================<-1 STATES>=================================
;===========================================================================
[Statedef -1]

[State -1, AIhelper]
type=changestate
trigger1=ishelper(9741)
value=9741

[State -1, roll/dodge]
type=changestate
value=ifelse(command="holdfwd",720,ifelse(command="holdback",725,710))
trigger1=var(59)<=0&&roundstate=2&&(command="roll")&&statetype!=A
trigger1=ctrl

[State -1, finalpsychocrusher]
type=changestate
value=4000
triggerall=var(59)<=0&&roundstate=2&&command="cbfbf2p"&&statetype!=A&&power>=3000&&(var(20)<=60)
triggerall=(var(20)<=0&&command="cbfbf2p")||(var(20)>0&&command="bfbf2p")
trigger1=ctrl

[State -1, vegawarp]
type=changestate
value=1700
triggerall=var(59)<=0&&roundstate=2&&(command="df2p"||command="db2p"||command="df2k"||command="db2k")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact&&!var(20)

[State -1, vegawarp]
type=changestate
value=1710
triggerall=var(59)<=0&&roundstate=2&&(command="df2p"||command="db2p"||command="df2k"||command="db2k")
trigger1=alive&&((stateno=5050&&canrecover)||stateno=5110)
trigger2=movecontact&&var(20)
trigger3=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger3=helper(stateno+5),var(3)

[State -1, psychobreaksmasher]
type=changestate
value=3050
triggerall=var(59)<=0&&roundstate=2&&statetype!=A&&power>=2000&&(var(20)<=60)
triggerall=(var(20)<=0&&command="cbfbfp")||(var(20)>0&&command="bfbfp")
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=(stateno=1000||stateno=1100||stateno=1300||stateno=1400||stateno=3100)&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, heartbreakdespair]
type=changestate
value=3000
triggerall=var(59)<=0&&roundstate=2&&command="2qcfp"&&statetype!=A&&power>=1000&&(var(20)<=60)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=(stateno=1000||stateno=1100||stateno=1300||stateno=1400||stateno=3100)&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, kneepressnightmare]
type=changestate
value=3100
triggerall=var(59)<=0&&roundstate=2&&command="2qcfk"&&statetype!=A&&power>=1000&&(var(20)<=60)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=(stateno=1000||stateno=1100||stateno=1300||stateno=1400)&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, psychoimpact]
type=changestate
value=1300
triggerall=var(59)<=0&&roundstate=2&&statetype!=A&&(command="hcfx"||command="hcfy"||command="hcfz")
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, psychobanish]
type=changestate
value=1400
triggerall=var(59)<=0&&roundstate=2&&statetype!=A&&(command="dfx"||command="dfy"||command="dfz")
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, psychofield]
type=changestate
value=1600
triggerall=var(59)<=0&&roundstate=2&&statetype!=A&&(command="hcbx"||command="hcby"||command="hcbz")
triggerall=ifelse(!var(20),!numhelper(1605),1);;;&&!numhelper(3605)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, psychocrusher]
type=changestate
value=1000
triggerall=var(59)<=0&&roundstate=2&&statetype!=A
triggerall=(var(20)<=0&&(command="cbfx"||command="cbfy"||command="cbfz"))||(var(20)>0&&(command="bfx"||command="bfy"||command="bfz"))
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, doublekneepress]
type=changestate
value=1100
triggerall=var(59)<=0&&roundstate=2&&statetype!=A
triggerall=(var(20)<=0&&(command="cbfa"||command="cbfb"||command="cbfc"))||(var(20)>0&&(command="bfa"||command="bfb"||command="bfc"))
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, headpress]
type=changestate
value=1200
triggerall=var(59)<=0&&roundstate=2&&statetype!=A
triggerall=(var(20)<=0&&(command="cdua"||command="cdub"||command="cduc"))||(var(20)>0&&(command="dua"||command="dub"||command="duc"))
trigger1=(ctrl||stateno=40)
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, devilreverse]
type=changestate
value=1250
triggerall=var(59)<=0&&roundstate=2&&statetype!=A
triggerall=(var(20)<=0&&(command="cdux"||command="cduy"||command="cduz"))||(var(20)>0&&(command="dux"||command="duy"||command="duz"))
trigger1=(ctrl||stateno=40)
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, zerocounter]
type=changestate
value=750
triggerall=var(59)<=0&&roundstate=2&&(command="bdx"||command="bdy"||command="bdz"||command="bda"||command="bdb"||command="bdc")&&(var(20)<=60)
triggerall=p2dist x>0&&power>=1000&&statetype!=A
trigger1=stateno=150||stateno=152

[State -1, throw]
type=changestate
value=800
trigger1=var(59)<=0&&roundstate=2&&(command="recovery"||command="2k")&&(command="holdfwd"||command="holdback")&&statetype=S
trigger1=ctrl&&stateno!=100

[State -1, excelcombo]
type=changestate
value=760
trigger1=var(59)<=0&&roundstate=2&&(command="excelcombo")&&power>=1000&&!var(20)
trigger1=ctrl

[State -1, powercharge]
type=changestate
value=740
trigger1=var(59)<=0&&roundstate=2&&command="holdb"&&command="holdy"&&statetype!=A&&power<powermax&&ctrl&&!var(20)

[State -1, run/dash]
type=changestate
value=ifelse(command="FF",100,105)
trigger1=var(59)<=0&&roundstate=2&&(stateno!=[100,106])&&(command="FF"||command="BB")&&statetype=S
trigger1=ctrl

[State -1, SLP]
type=changestate
value=200
triggerall=var(59)<=0&&command="x"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=200||stateno=230||stateno=245)&&time>=5
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SMP]
type=changestate
value=205
triggerall=var(59)<=0&&command="y"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SHP]
type=changestate
value=210
triggerall=var(59)<=0&&command="z"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=stateno=205&&anim=206&&animelemtime(4)>=0&&movecontact
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SLK]
type=changestate
value=215
triggerall=var(59)<=0&&command="a"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SMK]
type=changestate
value=220
triggerall=var(59)<=0&&command="b"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SHK]
type=changestate
value=225
triggerall=var(59)<=0&&command="c"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CLP]
type=changestate
value=230
triggerall=var(59)<=0&&command="x"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=200||stateno=230||stateno=245)&&time>=5
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CMP]
type=changestate
value=235
triggerall=var(59)<=0&&command="y"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CHP]
type=changestate
value=240
triggerall=var(59)<=0&&command="z"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CLK]
type=changestate
value=245
triggerall=var(59)<=0&&command="a"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=200||stateno=230||stateno=245)&&time>=5
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CMK]
type=changestate
value=250
triggerall=var(59)<=0&&command="b"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CHK]
type=changestate
value=255
triggerall=var(59)<=0&&command="c"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, ALP]
type=changestate
value=260
triggerall=var(59)<=0&&command="x"&&statetype=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, HellAttack]
type=changestate
value=266
trigger1=var(59)<=0&&command="y"&&statetype=A&&vel x
trigger1=stateno=265&&animelemtime(3)>=0

[State -1, AMP]
type=changestate
value=265
triggerall=var(59)<=0&&command="y"&&statetype=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, AHP]
type=changestate
value=270
triggerall=var(59)<=0&&command="z"&&statetype=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, ALK]
type=changestate
value=275
triggerall=var(59)<=0&&command="a"&&statetype=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, AMK]
type=changestate
value=280
triggerall=var(59)<=0&&command="b"&&statetype=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, AHK]
type=changestate
value=285
triggerall=var(59)<=0&&command="c"&&statetype=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, sparry]
type=hitoverride
triggerall=var(59)<=0&&roundstate=2&&statetype!=A
triggerall=command="fwd"&&command!="back"&&command!="up"&&command!="down"
trigger1=ctrl||stateno=700||stateno=701
trigger1=var(21):=1
trigger2=(stateno=[150,153])
trigger2=var(21):=-1
attr=SA,AA,AP
stateno=700
slot=0
time=ifelse((stateno=[154,155]),6,8)

[State -1, cparry]
type=hitoverride
triggerall=var(59)<=0&&roundstate=2
triggerall=(statetype=S&&command="down")||(statetype=C&&command="fwd")&&command!="back"&&command!="up"
trigger1=ctrl||stateno=700||stateno=701
trigger1=var(21):=2
trigger2=(stateno=[150,153])
trigger2=var(21):=-2
attr=C,AA,AP
stateno=701
slot=0
time=ifelse((stateno=[154,155]),6,8)

[State -1, aparry]
type=hitoverride
triggerall=var(59)<=0&&roundstate=2&&statetype=A
triggerall=command="fwd"&&command!="back"&&command!="up"&&command!="down"
trigger1=ctrl||stateno=702
trigger1=var(21):=3
trigger2=(stateno=[154,155])
trigger2=var(21):=-3
attr=SA,AA,AP
stateno=702
forceair=1
slot=0
time=ifelse((stateno=[154,155]),6,8)

[State -1, resetparry]
type=hitoverride
trigger1=statetype=S&&var(21)!=1&&var(21)!=-1
trigger2=statetype=C&&var(21)!=2&&var(21)!=-2
trigger3=statetype=A&&var(21)!=3&&var(21)!=-3
trigger4=movetype=A
trigger5=movetype=H&&(stateno!=[120,155])
slot=0
time=0

[State -1, taunt]
type=changestate
value=195
triggerall=var(59)<=0&&command="start"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact


;===========================================================================
;=================================<A.I.>====================================
;===========================================================================

[State -1, sparry]
type=hitoverride
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
trigger1=(ctrl&&random<75)||((stateno=[700,701])&&random<250)
trigger1=var(21):=1
trigger2=(stateno=[150,153])&&random<25
trigger2=var(21):=-1
attr=SA,AA,AP
stateno=700
slot=0
time=ifelse((stateno=[150,153]),4,8)

[State -1, cparry]
type=hitoverride
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
trigger1=(ctrl&&random<75)||((stateno=[700,701])&&random<250)
trigger1=var(21):=2
trigger2=(stateno=[150,153])&&random<25
trigger2=var(21):=-2
attr=C,AA,AP
stateno=701
slot=0
time=ifelse((stateno=[150,153]),4,8)

[State -1, aparry]
type=hitoverride
triggerall=var(59)>=1&&roundstate=2&&statetype=A
trigger1=(ctrl&&random<75)||(stateno=702&&random<250)
trigger1=var(21):=3
trigger2=(stateno=[154,155])&&random<25
trigger2=var(21):=-3
attr=SA,AA,AP
stateno=702
forceair=1
slot=0
time=ifelse((stateno=[154,155]),4,8)

[State -1, run]
type=changestate
value=100
trigger1=var(59)>=1&&statetype=S&&roundstate=2&&ctrl&&(stateno!=[100,106])
trigger1=enemynear,movetype!=A&&p2bodydist x>120&&random<50

[State -1, dash]
type=changestate
value=105
trigger1=var(59)>=1&&statetype=S&&roundstate=2&&ctrl&&(stateno!=[100,106])
trigger1=enemynear,movetype=A&&backedgedist>120&&p2bodydist x<160&&random<200

[State -1, sidestep/dodge]
type=changestate
value=ifelse((backedgebodydist>40&&random<200),725,ifelse(random<600,720,710))
trigger1=var(59)>=1&&roundstate=2&&statetype!=A&&ctrl&&random<250
trigger1=enemynear,movetype=A&&p2bodydist x<80

[State -1, jump]
type=changestate
value=40
triggerall=var(59)>=1&&statetype!=A&&roundstate=2&&ctrl
trigger1=ctrl&&p2bodydist x>160&&p2dist y<-100&&random<200
trigger2=enemynear,movetype=A&&p2bodydist x<160&&enemynear,hitdefattr=SC,AT

[State -1, guard]
type=changestate
value=120
trigger1=var(59)>=1&&roundstate=2&&ctrl
trigger1=(stateno!=[120,155])&&(stateno!=[700,702])
trigger1=!(enemynear,hitdefattr=SCA,AT)&&inguarddist

[State -1, zerocounter]
type=changestate
value=750
trigger1=var(59)>=1&&roundstate=2&&power>=1000&&(var(20)<=60)
trigger1=life<500&&random<50
trigger1=(p2dist x=[0,90])&&stateno=150||stateno=152
persistent=1

[State -1, powercharge]
type=changestate
value=740
trigger1=var(59)>=1&&roundstate=2&&statetype!=A&&power<3000&&power<powermax
trigger1=!var(20)&&ctrl
trigger1=random<50&&!inguarddist&&p2movetype!=A&&p2dist x>=160

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall=var(59)>=1&&roundstate=2&&stateno=5050
trigger1=vel y>-1&&alive&&canrecover&&random<250

[State -1, taunt]
type=changestate
value=195
trigger1=var(59)>=1&&roundstate=2&&statetype!=A
trigger1=life>=500&&life>=(enemynear,life)
trigger1=p2dist x>200&&(enemynear,vel y>0)&&ctrl&&random<100
trigger1=!(enemynear,ctrl)&&(enemynear,movetype=H)

[State -1, throw]
type=changestate
value=800
triggerall=var(59)>=1&&roundstate=2&&statetype=S&&stateno!=100&&ctrl
triggerall=p2statetype!=A&&p2statetype!=L&&p2movetype!=H
trigger1=(p2dist x=[0,64])&&(p2dist y=[-25,25])&&random<250
trigger2=(p2stateno=[120,155])&&(p2dist x=[0,64])&&(p2dist y=[-25,25])&&random<500

[State -1, SLP]
type=changestate
value=200
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,25])&&(p2dist y=[-50,50])&&p2statetype!=L
trigger1=ctrl&&random<50

[State -1, SMP]
type=changestate
value=205
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,50])&&(p2dist y=[-50,50])&&(p2statetype=S)
trigger1=ctrl&&random<50

[State -1, SHP]
type=changestate
value=210
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,75])&&(p2dist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
trigger2=stateno=205&&anim=206&&animelemtime(4)>=0&&movehit

[State -1, SLK]
type=changestate
value=215
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,25])&&(p2dist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=A)
trigger1=ctrl&&random<50

[State -1, SMK]
type=changestate
value=220
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,50])&&(p2dist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=C)
trigger1=ctrl&&random<50

[State -1, SHK]
type=changestate
value=225
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,75])&&(p2dist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=C)
trigger1=ctrl&&random<50

[State -1, CLP]
type=changestate
value=230
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,20])&&(p2dist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=A)
trigger1=ctrl&&random<50

[State -1, CMP]
type=changestate
value=235
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,40])&&(p2dist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=A)
trigger1=ctrl&&random<50

[State -1, CHP]
type=changestate
value=240
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,60])&&(p2dist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50

[State -1, CLK]
type=changestate
value=245
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,20])&&(p2dist y=[-50,50])&&(p2statetype!=L)&&(p2statetype=S)
trigger1=ctrl&&random<50

[State -1, CMK]
type=changestate
value=250
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,40])&&(p2dist y=[-50,50])&&(p2statetype!=L)&&(p2statetype=S)
trigger1=ctrl&&random<50

[State -1, CHK]
type=changestate
value=255
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,60])&&(p2dist y=[-50,50])&&(p2statetype!=L)&&(p2statetype=S)
trigger1=ctrl&&random<50

[State -1, ALP]
type=changestate
value=260
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,25])&&(p2dist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50

[State -1, AMP]
type=changestate
value=265
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,50])&&(p2dist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50

[State -1, AHP]
type=changestate
value=270
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,75])&&(p2dist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50

[State -1, ALK]
type=changestate
value=275
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,25])&&(p2dist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50

[State -1, AMK]
type=changestate
value=280
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,50])&&(p2dist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50

[State -1, AHK]
type=changestate
value=285
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,75])&&(p2dist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50

[State -1, psycho banish]
type=changestate
value=1400
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,40])&&(p2dist y>=-60)&&(enemynear,vel y>-2)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movehit&&random<150

[State -1, psycho crusher]
type=changestate
value=1000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,160])&&(p2dist y>=-120)&&(enemynear,vel y>-2)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movehit&&random<150

[State -1, double knee press]
type=changestate
value=1100
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,160])&&(p2dist y>=-120)&&(enemynear,vel y>-2)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movehit&&random<150

[State -1, psycho impact]
type=changestate
value=1300
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,200])&&(p2dist y>=-120)&&(enemynear,vel y>-2)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movehit&&random<150

[State -1, head press]
type=changestate
value=1200
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])
triggerall=(p2dist y>=-160)&&(enemynear,vel y<=0)
trigger1=ctrl&&random<50

[State -1, devil reverse]
type=changestate
value=1250
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2dist y>=-160)&&(enemynear,vel y<=0)
trigger1=ctrl&&random<15

[State -1, psychofield]
type=changestate
value=1600
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=ifelse(!var(20),!numhelper(1605),1)
triggerall=(p2statetype!=L)&&(enemynear,vel y<=0)
trigger1=ctrl&&p2dist x>160&&random<25

[State -1, knee press nightmare]
type=changestate
value=3100
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000&&(var(20)<=60)
triggerall=!(enemynear,ctrl)&&((p2stateno!=[120,155])||p2statetype=A)&&p2statetype!=L
triggerall=(p2bodydist x=[0,90])&&(p2dist y>=-180)&&(enemynear,vel y>-2)&&(enemynear,vel x>=0)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movehit&&random<50
trigger3=(stateno=1000||stateno=1100||stateno=1300||stateno=1400)&&movehit&&random<75
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger4=helper(stateno+5),var(3)

[State -1, heartbreak]
type=changestate
value=3000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000&&(var(20)<=60)
triggerall=!(enemynear,ctrl)&&((p2stateno!=[120,155])||p2statetype=A)&&p2statetype!=L
triggerall=(p2bodydist x=[0,90])&&(p2dist y>=-180)&&(enemynear,vel y>-2)&&(enemynear,vel x>=0)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movehit&&random<50
trigger3=(stateno=1000||stateno=1100||stateno=1300||stateno=1400)&&movehit&&random<50
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger4=helper(stateno+5),var(3)
trigger5=(stateno=3100)&&animelemtime(8)>=0&&movehit&&random<200

[State -1, mega crusher]
type=changestate
value=3050
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=2000&&(var(20)<=60)
triggerall=!(enemynear,ctrl)&&((p2stateno!=[120,155])||p2statetype=A)&&p2statetype!=L
triggerall=(p2bodydist x=[0,90])&&(p2dist y>=-180)&&(enemynear,vel y>-2)&&(enemynear,vel x>=0)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movehit&&random<50
trigger3=(stateno=1000||stateno=1100||stateno=1300||stateno=1400)&&movehit&&random<75
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger4=helper(stateno+5),var(3)
trigger5=(stateno=3100)&&animelemtime(8)>=0&&movehit&&random<100

[State -1, final crusher]
type=changestate
value=4000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=3000&&(var(20)<=60)
triggerall=!(enemynear,ctrl)&&((p2stateno!=[120,155])||p2statetype=A)&&p2statetype!=L
trigger1=ctrl&&numenemy&&random<200
trigger1=(enemynear,animtime>=20)||(enemynear,pos y<=-60)