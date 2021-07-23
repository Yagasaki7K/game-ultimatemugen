[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1

[Command]
name = "CPU31"
command = U, D, F, U, D
time = 1

[Command]
name = "CPU32"
command = U, B, F, U, D
time = 1

[Command]
name = "CPU33"
command = U, D, D, U, D
time = 1

[Command]
name = "CPU34"
command = F, B, U, U, D
time = 1

[Command]
name = "CPU35"
command = U, F, U, B, U, D
time = 1

[Command]
name = "CPU36"
command = U, D, B, U, D
time = 1

[Command]
name = "CPU37"
command = F, F, B, U, D
time = 1

[Command]
name = "CPU38"
command = U, D, U, U, D
time = 1

[Command]
name = "CPU39"
command = F, B, B, U, D
time = 1

[Command]
name = "CPU40"
command = F, F, B, B, U, D
time = 1

[Command]
name = "CPU41"
command = U, U, F, U, D
time = 1

[Command]
name = "CPU42"
command = U, B, B, U, D
time = 1

[Command]
name = "CPU43"
command = U, B, F, F, U, D
time = 1

[Command]
name = "CPU44"
command = U, F, B, U, U, D
time = 1

[Command]
name = "CPU45"
command = U, B, F, U, U, D
time = 1

[Command]
name = "CPU46"
command = U, B, B, B, U, D
time = 1

[Command]
name = "CPU47"
command = U, D, B, F, U, D
time = 1

[Command]
name = "CPU48"
command = U, D, B, D, U, D
time = 1

[Command]
name = "CPU49"
command = U, D, F, U, U, D
time = 1

[Command]
name = "CPU50"
command = U, D, U, B, U, D
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "back"
command = B
time = 1

[Command]
name = "downforward"
command = DF
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

;Direccion y Boton--------------------------------------------------------------

[command]
name = "gancho"
command = /$F,a

[command]
name = "codazo"
command = /$B,a

[command]
name = "shokk"
command = /$D,a

[command]
name = "combo8"
command = ~F,F,a

[command]
name = "combo6"
command = /B,b

[command]
name = "combo5"
command = /F,b

;-------------------------------------------------------------------------------

;-| Super Motions |--------------------------------------------------------

[Command]
name = "METEOR ATTACK"
command = ~D, D, D, y
time =50

[Command]
name = "genkidama chao"
command = ~D, D, y
time =20

[Command]
name = "KAME HAME HA AEREO"
command = ~B, F , c

[Command]
name = "KAME HAME HA"
command = ~B, F , c
time =5

;-| Special Motions |------------------------------------------------------
[Command]
name = "kaioken"
command = ~D, DF , F, y

[Command]
name = "explosão de energia"
command = ~D, DF,F, c

[Command]
name = "taioken"
command = ~D, DB , B, c

[Command]
name = "sequencia chutes"
command = ~F,F,b

[Command]
name = "soco duplo"
command = ~D, DB , B, a

[Command]
name = "chute duplo"
command = ~D, DB , B, b

[Command]
name = "chute impacto"
command = ~D, DF ,  F, b

[Command]
name = "soco impacto"
command = ~B,D,F,a
time=15

[Command]
name = "super soco"
command = ~2B, F, a
time=3

[Command]
name = "super chute"
command = ~2B, F, b
time=3

[Command]
name = "3b"
command = /$DF,b
time = 1

[Command]
name = "3a"
command = /$DF,a
time = 1

[Command]
name = "voadora"
command = ~F, D, b

[Command]
name = "sequencia soco aereo"
command = ~a,a,a

[Command]
name = "charge"
command = /z
time = 1

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

;===========================================================================
[Statedef -1]

[State -1, AI]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState = 2
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
trigger31 = command = "CPU31"
trigger32 = command = "CPU32"
trigger33 = command = "CPU33"
trigger34 = command = "CPU34"
trigger35 = command = "CPU35"
trigger36 = command = "CPU36"
trigger37 = command = "CPU37"
trigger38 = command = "CPU38"
trigger39 = command = "CPU39"
trigger40 = command = "CPU40"
trigger41 = command = "CPU41"
trigger42 = command = "CPU42"
trigger43 = command = "CPU43"
trigger44 = command = "CPU44"
trigger45 = command = "CPU45"
trigger46 = command = "CPU46"
trigger47 = command = "CPU47"
trigger48 = command = "CPU48"
trigger49 = command = "CPU49"
trigger50 = command = "CPU50"
var(59) = 1

;-----------------IA RECOVER------------------------------------------------
[State -1,RECOVER1]
type = ChangeState
triggerall = var(59)
triggerall = Alive
triggerall = CanRecover && Vel Y > -1
trigger1 = StateNo = 5050
persistent = 0
value = 5210

[State -1,RECOVER2]
type = ChangeState
triggerall = var(59)
triggerall = Alive
triggerall = CanRecover && Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = StateNo = 5050
persistent = 0
value = 5200
;---------------------------------------------------------------------------
; A.I.A.I.A.I.A.I.A.I.A.I.A.I.A.I.A.I.A.I.A.I.A.I.A.I.A.I.A.I.A.I.A.I.A.I.
;---------------------------------------------------------------------------
[State -1,701__(p2Movetype=A)]
type = ChangeState
triggerALL = RoundState = 2 && prevstateno!=701
triggerall =var(59)=1 && (!Pos Y)
trigger1 = stateno=669 && P2MoveType = A
trigger1 = P2BodyDist X <= 60
trigger1 = random<50
trigger2 = (enemy, NumProj >= 1)&& ctrl
value = 701
;---------------------------------------------------------------------------
[State -1,701__(Enemy,NumProj)]
type = ChangeState
triggerALL = RoundState = 2 && prevstateno!=701
triggerall =var(59)=1
trigger1 = (enemy, NumProj >= 1)&& stateno!=[1000,21000]
trigger2 = stateno=2500&& time=360
trigger3 = stateno=680&&moveguarded
value = 701
;---------------------------------------------------------------------------
[State -1, 702__(p2Movetype=A)]
type = ChangeState
triggerall = Ctrl && RoundState = 2 && var(59)=1
trigger1 = Random <= 500
trigger1 = P2BodyDist X <= 60
trigger1 = StateType = S && MoveType != H
trigger1 = P2MoveType = A
value = 702
;---------------------------------------------------------------------------
[State -1,2222_(Back<31)]
type = ChangeState
triggerall = Ctrl && RoundState = 2 && var(59)=1 && power>1000
trigger1 = StateType = S &&  p2StateType = S && prevstateno!=2220
trigger1 = backedgedist <31&& p2bodydist X <20
value = 2222
;---------------------------------------------------------------------------
[State -1,2222_(Moveguarded)]
type = ChangeState
triggerALL = RoundState = 2
triggerall = var(59)=1 && StateType = S
trigger1 = frontedgedist<=60 && moveguarded && time=8 && p2StateType = S
trigger2 = moveguarded && random<50
value = 2222
;---------------------------------------------------------------------------
[State -1,105_(X<-35)]
type = ChangeState
triggerALL = RoundState = 2&& p2StateType=L
triggerall =var(59)=1 && (!Pos Y)&&backedgebodydist>135
trigger1 = ctrl && P2BodyDist X <35 && Power>2000
trigger1 = random<40
value = 105
;---------------------------------------------------------------------------
[State -1, 230_(X<-35)]
type = ChangeState
triggerALL = RoundState = 2 && prevstateno !=230 && prevstateno !=290
triggerall = var(59)=1 && StateType = S && (p2StateType != L)
trigger1 = ctrl && P2BodyDist X <35 && P2BodyDist Y >-65
trigger1 = random <100  ;----------------------------------
value = 230
;---------------------------------------------------------------------------
[State -1, 239_(X<-35)(C-235)] ;segada
type = ChangeState
triggerALL = RoundState = 2
triggerall = var(59)=1 && StateType = S
trigger1 = stateno = 235 && Time=27
trigger1 = random >500  && (p2StateType != L)
trigger2 = ctrl && P2BodyDist X <35 && (p2StateType != L)
trigger2 = random >400&&random <450 && p2StateType != A
value = 239
;---------------------------------------------------------------------------
[State -1, 240_(X<-35)]
type = ChangeState
triggerALL = RoundState = 2
triggerall = var(59)=1 && StateType = S && (p2StateType != L)
triggerall = P2BodyDist Y >-50 && ctrl
trigger1 = P2BodyDist X <35
trigger1 = random >100&&random <200 ;----------------------
trigger2 = P2stateno =5050 && P2BodyDist Y <-40&& P2BodyDist Y >-50
value = 240
;---------------------------------------------------------------------------
[State -1, 242_(X<-35)(C-250)(C-290ESTAMAL seria244)] ;codazo
type = ChangeState
triggerALL = RoundState = 2
triggerall = var(59)=1 && StateType = S && (p2StateType != L) && prevstateno !=242
trigger1 = ctrl && P2BodyDist Y >-50 && P2BodyDist X <35
trigger1 = random >200&&random <230 ;----------------------
trigger2 = movecontact && stateno = 250 && P2BodyDist Y >-50 && P2BodyDist Y <-40 && P2BodyDist X <35
trigger2 = random >600&&random <999
trigger3 = movecontact && stateno =290&&time=33
trigger3 = random >500
value = 242
;---------------------------------------------------------------------------
[State -1, 243_(X<-35)(C-250)(C-242)(C-290)] ;gancho
type = ChangeState
triggerALL = RoundState = 2 && prevstateno !=243
triggerall = var(59)=1 && StateType = S
triggerall = p2stateno !=5120 &&p2stateno !=5110
trigger1 = P2BodyDist Y >-50 &&ctrl && P2BodyDist X <35
trigger1 = random >300&&random <400 ;----------------------
trigger2 = movecontact && stateno = 250
trigger2 = random <300
trigger3 = movecontact && stateno =242&&time=24
trigger3 = random <200
trigger4 = stateno = 235
trigger4 = time=27 && random <500
trigger5 = movecontact && stateno =290&&time=33
trigger5 = random <500
value = 243
;---------------------------------------------------------------------------
[State -1, 233---->(C-230)(C-240)]
type = ChangeState
triggerALL = RoundState = 2
triggerall = var(59)=1 && StateType = S
trigger1 = movecontact && stateno = 230
trigger1 = random <500
trigger2 = movecontact && stateno = 240 && p2StateType=S
trigger2 = random <500
value = 233
;---------------------------------------------------------------------------
[State -1, 235---->(C-230)]
type = ChangeState
triggerALL = RoundState = 2
triggerall = var(59)=1 && StateType = S
trigger1 = movecontact && stateno = 230
trigger1 = random >500
value = 235
;---------------------------------------------------------------------------
[State -1, 250---->(C-240)]
type = ChangeState
triggerALL = RoundState = 2
triggerall = var(59)=1 && StateType = S
trigger1 = movecontact && stateno = 240
trigger1 = random >500
value = 250
;---------------------------------------------------------------------------
[State -1, 290---->(C-233)]
type = ChangeState
triggerALL = RoundState = 2
triggerall = var(59)=1 && StateType = S && p2StateType = S
trigger1 = stateno = 233 && movehit&& Time=25
value = 290
;---------------------------------------------------------------------------
[State -1, 231---->(C-239)]
type = ChangeState
triggerALL = RoundState = 2 && var(59)=1
trigger1 = movehit && stateno = 239 && Time = 17
trigger1 = random<50
value = 231
;---------------------------------------------------------------------------
[State -1, 648---->(C-242)] ;cataplaFFF
type = ChangeState
triggerALL = RoundState = 2
triggerall = var(59)=1 && StateType = S && p2StateType = S
trigger1 = movecontact && stateno = 242&& Time=24
trigger1 = random >200 ;----------------------
value = 648
;---------------------------------------------------------------------------
[State -1, 238---->(C-243)(C-648)]
type = ChangeState
triggerALL = RoundState = 2 && p2MoveType != A
triggerall = var(59)=1 && ctrl&& StateType = S
trigger1 = P2BodyDist X <30 && P2BodyDist Y >-80&& P2BodyDist Y <-40
trigger1 = prevstateno=243 || prevstateno=648
trigger1 = random <500 ;----------------------------------
value = 238
;---------------------------------------------------------------------------
[State -1, 280---->(C-243)(C-648)]
type = ChangeState
triggerALL = RoundState = 2 && p2MoveType != A
triggerall = var(59)=1 && ctrl&& StateType = S
trigger1 = P2BodyDist X <30 && P2BodyDist Y >-80&& P2BodyDist Y <-40
trigger1 = prevstateno=243 || prevstateno=648
trigger1 = random >500  ;----------------------------------
value = 280
;---------------------------------------------------------------------------
[State -1, 2100-->(C-243)(C-648)(C-231)]
type = ChangeState
triggerALL = RoundState = 2 && var(59)=1 && power>2000 && frontedgedist>85
triggerALL = statetype=S
triggerall = p2name!="GokuHR"
trigger1 = stateno=231 && movehit
trigger1 = random<100
trigger2 = stateno=243 && movehit && time=39
trigger2 = random<100
trigger3 = stateno=648 && movehit
trigger3 = random<100 && time=29
trigger4 = p2statetype=S && P2BodyDist X >80
trigger4 = random<50&&  stateno=669
trigger5 = stateno=105&& time= [13,21]
trigger5 = random<50
value = 2100
;---------------------------------------------------------------------------
[State -1, 265---->(C-250)]
type = ChangeState
triggerALL = RoundState = 2
triggerall =var(59)=1 && p2StateType = S
trigger1 = movecontact && stateno = 250
trigger1 = random >400
value = 265
;---------------------------------------------------------------------------
[State -1, 260---->(C-265)]
type = ChangeState
triggerALL = RoundState = 2
triggerall =var(59)=1 && (!Pos Y)
trigger1 = movehit && stateno = 265
trigger1 = random <500
value = 260
;---------------------------------------------------------------------------
[State -1, 675---->(C-265)]
type = ChangeState
triggerALL = RoundState = 2 && p2StateType = S
triggerall =var(59)=1 && (!Pos Y)
trigger1 = movehit && stateno = 265
trigger1 = Var(21) <2
trigger1 = random >500
value = 675
;---------------------------------------------------------------------------
[State -1,669---->(C-260)(C-2220)]
type = ChangeState
triggerALL = RoundState = 2
triggerall =var(59)=1 && (!Pos Y)
trigger1 = prevstateno=260 || prevstateno=2220
value = 669
;---------------------------------------------------------------------------
[State -1, 2225-->(C-280)(C-238)]
type = ChangeState
triggerALL = RoundState = 2
triggerall = var(59)=1 && StateType = A
trigger1 = stateno=280 && movehit && time=13
trigger1 = random>500
trigger2 = movehit && stateno = 238 && TIME=15
trigger2 = random>400&&random<700
value = 2225
;---------------------------------------------------------------------------
[State -1, 645---->(C-280)_(BodyY-30)]
type = ChangeState
triggerall = RoundState = 2 && var(59)=1
triggerall = p2bodydist Y >=-30 && StateType = A
trigger1 = movehit && stateno = 280
value = 645
;---------------------------------------------------------------------------
[State -1, 647---->(C-280)(C-238)]
type = ChangeState
triggerall = RoundState = 2 && var(59)=1
triggerall = StateType = A
trigger1 = movehit && stateno = 238 && TIME=15
trigger1 = random <400
trigger2 = stateno=280 && movehit && time=13
trigger2 = random<500
value = 647
;---------------------------------------------------------------------------
[State -1,669_(X>+35)]
type = ChangeState
triggerALL = RoundState = 2
triggerall =var(59)=1 && (!Pos Y)
trigger1 = ctrl && P2BodyDist X >35
value = 669
;---------------------------------------------------------------------------
[State -1, 630_(X<-35)_(Y<88>60)]
type = ChangeState
triggerALL = RoundState = 2 && var(59)=1 && (p2StateType != L)
triggerall = StateType = A && ctrl && prevstateno !=630&& prevstateno !=640
trigger1 = P2BodyDist X <35 && P2BodyDist Y <88&& P2BodyDist Y >60
trigger1 = random <20
value = 630
;---------------------------------------------------------------------------
[State -1, 640_(X<-35)_(Y<88>60)]
type = ChangeState
triggerALL = RoundState = 2 && var(59)=1 && (p2StateType != L)
triggerall = StateType = A && ctrl && prevstateno !=640&& prevstateno !=630
trigger1 = P2BodyDist X <35 && P2BodyDist Y <88&& P2BodyDist Y >60
trigger1 = random<20
value = 640
;---------------------------------------------------------------------------
[State -1,2110_(X>+70)_(Y<88>60)]
type = ChangeState
triggerALL = RoundState = 2 && var(59)=1 && (p2StateType != L)
triggerall = StateType = A && ctrl && prevstateno !=640&& prevstateno !=630
trigger1 = P2BodyDist X <100 && P2BodyDist X >70 &&  P2BodyDist Y <88&& P2BodyDist Y >60
trigger1 = random<200 && power>1000
trigger2 = movehit && stateno = 238 && TIME=15
trigger2 = random>700
value = 2110
;---------------------------------------------------------------------------
[State -1,2110_(C-238))]
type = ChangeState
triggerALL = RoundState = 2 && var(59)=1
triggerall = StateType = A
trigger1 = movehit && stateno = 238 && TIME=15
trigger1 = random>700
value = 2110
;--------------------------------------------------------------------------
;METEOR ATTACK
[State -1, Meteor.At(X>+80)]
type = ChangeState
value = 20000
triggerall =RoundState = 2 &&var(59)=1 && p2statetype=S && (p2StateType != L)
triggerall =!Pos Y&&(power > 6000)&& P2BodyDist X >80
triggerall = p2name!="GokuHR"
trigger1 = stateno=669
;---------------------------------------------------------------------------
[State -1, 2001, KI]
type = ChangeState
triggerall = RoundState = 2 && var(59)=1 && StateType = S
trigger1 =p2statetype=S && P2BodyDist X >80 && stateno=669
trigger1 = random<100
value = 2001
;---------------------------------------------------------------------------
[State -1, 2557, KI]
type = ChangeState
triggerall = RoundState = 2 && var(59)=1 && StateType = S
trigger1 = Stateno= 2001 && time=16
value = 2557
;---------------------------------------------------------------------------
[State -1, 2002_(X<-100-X>+70)_(Y<88>60)]
type = ChangeState
triggerALL = RoundState = 2 && var(59)=1 && (p2StateType != L)
triggerall = StateType = A && ctrl && prevstateno !=640&& prevstateno !=630
trigger1 = P2BodyDist X <100 && P2BodyDist X >70 && P2BodyDist Y <88&& P2BodyDist Y >60
trigger1 = random <100
value = 2002
;---------------------------------------------------------------------------
[State -1, 2003]
type = ChangeState
triggerALL = RoundState = 2 && var(59)=1
triggerall = StateType = A
trigger1 = prevstateno=2002
value = 2003
;---------------------------------------------------------------------------
;chute duplo
[State -1, 300]
type = ChangeState
value = 300
triggerall = RoundState = 2 && var(59)=1 && (!Pos Y)
trigger1 = movecontact && stateno = 250
trigger1 = random>300&&random<400
;---------------------------------------------------------------------------
[State -1, 320_(X>+130-X<-150)]
type = ChangeState
triggerall = RoundState = 2 && var(59)=1
triggerall = StateType = S && p2StateType = S
trigger1 = P2BodyDist X >130&& P2BodyDist X <150
trigger1 = random >500&& stateno=669
trigger2 = stateno=105&& time= [13,21]
trigger2 = random<50
value = 320
;---------------------------------------------------------------------------
;secuencia aerea (inicio)
[State -1, sequencia aerea (inicio)]
type = ChangeState
value = 330
triggerall = RoundState = 2 && var(59)=1&& (!Pos Y)
trigger1 = movehit && stateno = 320 && Time = 40
;---------------------------------------------------------------------------
;secuencia aerea
[State -1, sequencia aerea]
type = ChangeState
value = 350
triggerall = RoundState = 2 && var(59)=1&& (Pos Y)
trigger1 = movehit && stateno = 340 && Time = 20
;---------------------------------------------------------------------------
;secuencia aerea
[State -1, sequencia aerea]
type = ChangeState
value = 360
triggerall = RoundState = 2 && var(59)=1&& (Pos Y)
trigger1 = movehit && stateno = 350 && Time = 15
;---------------------------------------------------------------------------
;secuencia aerea (fiN)
[State -1, sequencia aerea]
type = ChangeState
value = 370
triggerall = RoundState = 2 && var(59)=1 && (Pos Y)
trigger1 = movehit && stateno = 360 && Time = 14
;--------------------------------------------------------------------------
;GENKIDAMA
[State -1, Genkidama_(X>+80)]
type = ChangeState
value = 2700
triggerall = p2name!="GokuHR" && (Var(13)<2)
triggerall =RoundState = 2 &&var(59)=1&& power>4000
triggerall = (!Pos Y) &&P2BodyDist X >80
trigger1 = p2statetype=S && random<250&&random>0 && stateno=669
trigger2 = stateno=105&& time= [13,21]
trigger2 = random<100 && (p2StateType != L)
;--------------------------------------------------------------------------
;KaioKen
[State -1, Kaioken_(X>+80)]
type = ChangeState
value = 1550
triggerall = p2stateno!=1550||1555||1557
triggerall =RoundState = 2 &&var(59)=1&& power>4000&& (Var(3) < 2)
triggerall = (!Pos Y) &&P2BodyDist X >80
trigger1 = p2statetype=S && random<500&&random>250&&stateno=669
trigger2 = stateno=105&& time= [13,21]
trigger2 = random<100 && (p2StateType != L)
;--------------------------------------------------------------------------
[State -1, 670_(X<-130)]
type = ChangeState
value = 670
triggerall =RoundState = 2 &&var(59)=1
triggerall = (!Pos Y)
trigger1 =P2BodyDist X <130&& p2statetype=S
trigger1 = random<50&& stateno=669
;--------------------------------------------------------------------------
[State -1, 680_(X<-130)]
type = ChangeState
value = 680
triggerall =RoundState = 2 &&var(59)=1
triggerall = (!Pos Y)
trigger1 =P2BodyDist X <130&& p2statetype=S
trigger1 = random<50&& stateno=669
;--------------------------------------------------------------------------
[State -1, 685]
type = ChangeState
value = 685
triggerall =RoundState = 2 &&var(59)=1
trigger1 = stateno=680&& movehit&&time =17

;===========================================================================
;==========================PLAYER---MOVES===================================
;===========================================================================
;METEOR ATTACK
[State -1, METEOR ATTACK]
type = ChangeState
value = 20000
triggerall =var(59)=0
triggerall =(command = "METEOR ATTACK") && (!Pos Y) && (power > 8000)&& (Var(4) < 1)
trigger1 = ctrl
;---------------------------------------------------------------------------
;GENKIDAMA
[State -1, GENKIDAMA]
type = ChangeState
value = 2700
triggerall =var(59)=0
triggerall = (command = "genkidama chao") && (!Pos Y) && (ctrl)
trigger1 = (power > 6000)
;---------------------------------------------------------------------------
;KAME HAME HA AEREO
[State -1, KAME HAME HA AEREO]
type = ChangeState
value = 2110
triggerall =var(59)=0
triggerall = (command = "KAME HAME HA AEREO") && (Pos Y) && (power > 2000)
trigger1 = ctrl
;---------------------------------------------------------------------------
;KAME HAME HA
[State -1, KAME HAME HA]
type = ChangeState
value = 2100
triggerall =var(59)=0
triggerall = (command = "KAME HAME HA") && (!Pos Y) && (power > 3000)
trigger1 = ctrl
trigger2 = movehit && stateno = 243 && time>34
;---------------------------------------------------------------------------
;KAIOKEN
[State -1, KAIOKEN]
type = ChangeState
value = 1550
triggerall =var(59)=0
triggerall =  (command = "kaioken") && (!Pos Y) && (power > 5000)&& (Var(3) < 2)
trigger1 = ctrl
;---------------------------------------------------------------------------
;EXPLOSÃO DE ENERGIA (AR)
[State -1, EXPLOSÃO DE ENERGIA (AR)]
type = ChangeState
value = 2225
triggerall =var(59)=0
triggerall = (command = "explosão de energia")
trigger1 = StateType = A && ctrl
;---------------------------------------------------------------------------
;EXPLOSÃO DE ENERGIA
[State -1, EXPLOSÃO DE ENERGIA]
type = ChangeState
value = 2220
triggerall =var(59)=0
triggerall =(command = "explosão de energia") && (!Pos Y)
trigger1 = ctrl&&power >1000
;---------------------------------------------------------------------------
;TAIOKEN
[State -1, TAIOKEN]
type = ChangeState
value = 2200
triggerall =var(59)=0
triggerall = (command = "taioken") && (!Pos Y) && (Var(2) < 2)
trigger1 = ctrl && power>=4000
;---------------------------------------------------------------------------
;KI SHOT
[State -1, KI SHOT]
type = ChangeState
value = 2000
triggerall =var(59)=0
triggerall = (command = "c") && (!Pos Y)&& power>=1000
trigger1 = ctrl
;---------------------------------------------------------------------------
;KI SHOT A
[State -1, KI SHOT]
type = ChangeState
value = 2002
triggerall =var(59)=0
triggerall = (command = "c") && (Pos Y)
trigger1 = ctrl && power>=300
;---------------------------------------------------------------------------
;KI SHOT2 A
[State -1, KI SHOT2]
type = ChangeState
value = 2003
triggerall =var(59)=0
triggerall =(command = "c") && (Pos Y)
trigger1 = (stateno = 2002) && (Time > 9)
;---------------------------------------------------------------------------
[State -1, power up]
type = ChangeState
value = 1500
triggerall =var(59)=0
triggerall =(Power < 9001) && (command = "charge")
trigger1 = (ctrl) && (StateType = S)
;---------------------------------------------------------------------------
;teleport
[State -1, TELEPORTE]
type = ChangeState
value = 700
triggerall =var(59)=0
triggerall =(command = "x")
trigger1 = ctrl
;---------------------------------------------------------------------------
;sequencia soco aereo
[State -1, sequencia soco aereo]
type = ChangeState
value = 645
triggerall =var(59)=0
triggerall = command = "sequencia soco aereo"
triggerall = p2bodydist Y >=-30
trigger1 = movehit && stateno = 238
trigger2 = movehit && stateno = 280
;---------------------------------------------------------------------------
;martelo
[State -1, martelo]
type = ChangeState
value = 647
triggerall =var(59)=0
triggerall =(command = "a") && (command = "holddown")
trigger1 = StateType = A && ctrl
trigger2 = movehit && stateno = 238
trigger2 = time=[17,29]
;---------------------------------------------------------------------------
;martelo --Type-S---
[State -1, martelo]
type = ChangeState
value = 648
triggerall =var(59)=0
triggerall = StateType =S
trigger1 = (command = "shokk") && (command = "holddown")
trigger1 = movecontact && stateno = 242&& Time > 24
;---------------------------------------------------------------------------
;sequencia aerea (fim)
[State -1, sequencia aerea]
type = ChangeState
value = 370
triggerall =var(59)=0
triggerall =(command = "a") && (Pos Y)
trigger1 = movehit && stateno = 360 && Time > 14
;---------------------------------------------------------------------------
;sequencia aerea
[State -1, sequencia aerea]
type = ChangeState
value = 360
triggerall =var(59)=0
triggerall = (command = "a") && (Pos Y)
trigger1 = movehit && stateno = 350 && Time > 15
;---------------------------------------------------------------------------
;sequencia aerea
[State -1, sequencia aerea]
type = ChangeState
value = 350
triggerall =var(59)=0
triggerall =(command = "a") && (Pos Y)
trigger1 = movehit && stateno = 340 && Time > 20
;---------------------------------------------------------------------------
;sequencia aerea (inicio)
[State -1, sequencia aerea (inicio)]
type = ChangeState
value = 330
triggerall =var(59)=0
triggerall = (command = "a") && (!Pos Y)
trigger1 = movehit && stateno = 320 && Time > 40
trigger1 = power>1400
;---------------------------------------------------------------------------
;soco duplo
[State -1, soco duplo]
type = ChangeState
value = 320
triggerall =var(59)=0
triggerall = (command = "soco duplo") && (!Pos Y)
trigger1 = ctrl
;---------------------------------------------------------------------------
;chute duplo
[State -1, chute duplo]
type = ChangeState
value = 300
triggerall =var(59)=0
triggerall = (command = "chute duplo") && (!Pos Y)
trigger1 = ctrl
trigger2 = movecontact && stateno = 250 && time > 17
;---------------------------------------------------------------------------
;sequencia chutes
[State -1, sequencia chutes]
type = ChangeState
value = 290
triggerall =var(59)=0
triggerall = (command = "sequencia chutes") && (!Pos Y)
trigger1 = stateno = 233 && movecontact&& Time=[23,32]
;---------------------------------------------------------------------------
;shoryuGokulol
[State -1, gancho3]
type = ChangeState
value = 280
triggerall =var(59)=0
triggerall = ctrl && (!Pos Y)
trigger1 = (command = "3a")&& (command = "holddown")
;---------------------------------------------------------------------------
;joelhada
[State -1, joelhada]
type = ChangeState
value = 238
triggerall =var(59)=0
triggerall =ctrl && (!Pos Y)
trigger1 = (command = "3b")&& (command = "holddown")
;---------------------------------------------------------------------------
;rasteira
[State -1, rasteira]
type = ChangeState
value = 239
triggerall =var(59)=0
triggerall = (command = "b") && (command = "holddown") && (!Pos Y)
trigger1 = ctrl
trigger2 =stateno = 235 && movecontact&& Time>30
trigger3 =stateno = 300 && movecontact&& Time>24
trigger4 =stateno = 290 && movecontact&& Time>=40
;---------------------------------------------------------------------------
;Ira de GOKU
[State -1, soco impacto]
type = ChangeState
value = 670
triggerall =var(59)=0
triggerall = (command = "soco impacto") && (!Pos Y)
trigger1 = ctrl && power>1700
;---------------------------------------------------------------------------
;chute impacto
[State -1, chute impacto]
type = ChangeState
value = 680
triggerall =var(59)=0
triggerall =(command = "chute impacto") && (!Pos Y)
trigger1 = ctrl
;---------------------------------------------------------------------------
;super chute
[State -1, super chute]
type = ChangeState
value = 3100
triggerall =var(59)=0
triggerall =(command = "super chute") && (!Pos Y)
trigger1 = ctrl
;---------------------------------------------------------------------------
;super soco
[State -1, super soco]
type = ChangeState
value = 3000
triggerall =var(59)=0
triggerall =(command = "super soco") && (!Pos Y)
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall =var(59)=0
triggerall =(command = "BB") && (!Pos Y)
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back Air
[State -1, Run Back]
type = ChangeState
value = 4005
triggerall =var(59)=0
triggerall =(command = "BB") && (Pos Y)
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall =var(59)=0
triggerall = StateNo != 100
triggerall =(command = "FF") && (!Pos Y)
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Fwd Air
[State -1, Run Fwd]
type = ChangeState
value = 4000
triggerall =var(59)=0
triggerall =(command = "FF") && (Pos Y)
trigger1 = ctrl
;---------------------------------------------------------------------------
;sequencia chute forte
[State -1, sequencia chute forte]
type = ChangeState
value = 235
triggerall =var(59)=0
triggerall =(command = "combo6") && (!Pos Y)
trigger1 = movecontact && stateno = 230
;---------------------------------------------------------------------------
;sequencia soco forte
[State -1, sequencia soco forte]
type = ChangeState
value = 260
triggerall =var(59)=0
triggerall =(command = "combo8") && (!Pos Y)
trigger1 = movehit && stateno = 265
trigger1 = time = [30,50]
;---------------------------------------------------------------------------
;sequencia chute fraco
[State -1, sequencia chute fraco]
type = ChangeState
value = 233
triggerall =var(59)=0
triggerall =(command = "combo5") && (!Pos Y)
trigger1 = movecontact && stateno = 230
trigger1 = time < 15
trigger2 = movecontact && stateno = 240
;---------------------------------------------------------------------------
;sequencia soco fraco
[State -1, gancho]
type = ChangeState
value = 243
triggerall =var(59)=0
triggerall =(command = "gancho")&&(!Pos Y)
trigger1 = ctrl
trigger2 = movecontact && stateno = 250
trigger2 = time > 17
trigger3 = movecontact && stateno = 235
trigger3 = time > 27
trigger4 = movecontact && stateno =290&&time > 33
trigger5 = movecontact && stateno =242&&time > 27
;sequencia soco fraco
[State -1, codazo]
type = ChangeState
value = 242
triggerall =var(59)=0
triggerall =(command = "codazo") && (!Pos Y)
trigger1 = ctrl
trigger2 = movecontact && stateno = 250
trigger2 = time > 17
trigger3 = movecontact && stateno = 243 && (command = "codazo")
trigger3 = time > 34
;---------------------------------------------------------------------------
;sequencia soco fraco
[State -1, codazo combo]
type = ChangeState
value = 244
triggerall =var(59)=0
trigger1 = (command = "codazo") && (!Pos Y)
trigger1 = movecontact && stateno =290&&time > 33
;---------------------------------------------------------------------------
;puñetazo ShocKk
[State -1, puñetazo Shockk]
type = ChangeState
value = 265
triggerall =var(59)=0
trigger1 = movecontact && stateno = 250 && (command = "shokk")
trigger1 = time = [12,18]
;---------------------------------------------------------------------------
;sequencia soco fraco
[State -1, sequencia soco fraco]
type = ChangeState
value = 250
triggerall =var(59)=0
triggerall =(command = "a") && (!Pos Y)
trigger1 = movecontact && stateno = 240 && Time > 2
;---------------------------------------------------------------------------
;Stand CHUTE
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =var(59)=0
triggerall = (command = "b") && (!Pos Y)
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand CHUTE
[State -1, Stand Light Kick]
type = ChangeState
value = 231
triggerall =var(59)=0
triggerall =(command = "b") && (!Pos Y)
trigger1 = movecontact && stateno = 239 && Time > 15
trigger1 = command != "holddown"
;---------------------------------------------------------------------------
;Stand SOCO
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall =var(59)=0
triggerall = (command = "a") && (!Pos Y)
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump CHUTE
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall =var(59)=0
triggerall = (command = "b") && (Pos Y)
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump SOCO
[State -1, Jump Light Punch]
type = ChangeState
value = 640
triggerall =var(59)=0
triggerall = (command = "a") && (Pos Y)
trigger1 = ctrl









