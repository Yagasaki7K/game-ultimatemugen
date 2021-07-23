[Statedef 99991] ; corrida pra matar o P2 DECIDER heheh
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
anim = 3001
sprpriority = 1
powerAdd = -2000


;------------------------------------------- fim escolhe o fatal!
[State 1000]  ;seta pra onde P1 vai :)
type = VarSet 
trigger1 = command = "coracao"
var(10) = 99901
[State 1000]  ;seta pra onde P2 vai :)
type = VarSet 
trigger1 = command = "coracao"
var(11) =  99902


[State 1000]  ;seta pra onde P1 vai :)
type = VarSet 
trigger1 = command = "explode"
var(10) = 99801
[State 1000]  ;seta pra onde P2 vai :)
type = VarSet
trigger1 = command = "explode"
var(11) =  99802
;------------------------------------------- fim escolhe o fatal!


[State 99901, 0]
type = varset
Trigger1 = 1
v = 57
value = 1

;------bloco Super pause
[State 3050, PauseComSpark1]
type = SuperPause
trigger1 = AnimElem = 3
pos = -35, -78
anim = -1
sound = s99,0

[State 3050, Super PEQ frente]
type = Explod
trigger1 = AnimElem = 3
anim = 7011
pos = 10, -92
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .6,.6
sprpriority = 10

[State 3050, Super grand tras]
type = Explod
trigger1 = AnimElem = 3
anim = 7010
pos = 10, -92
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .8,.8
sprpriority = -10
;---- fim Bloco


[State 3050, run Sound]
type = PlaySnd
trigger1 = animElem = 4
value = 100, 0


[State 3050, run Sound]
type = null ;PlaySnd
trigger1 = animElem = 3
value = 3, 8


[State 3050, sombras] 
type = Afterimage
trigger1 = animElem = 3
trans = add
PalContrast =  250, 150, 150
PalBright = 0,0,0
time    =  25
length  = 20
TimeGap = 2
FrameGap = 1


[State 3050, 1]
type = VelSet
trigger1 = time >= 3
x = 7

[State 3050, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 3050, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn


[State 3050, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 28
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 4,4
sparkno = -1     
sprpriority = 1  
p2facing = 1    
p1stateno = var(10)
p2stateno = var(11)
guard.dist = 0  
kill = !var(57)



[Statedef 99901]  ;levantando P2 --------------------------
type    = S
movetype= A
physics = N
anim = 99991
velset = 0,0
sprpriority = 999


[State 3202, 1]
type = Envcolor  
trigger1 = time = 0
persistent = 1
ignorehitpause = 1
value = 245,0,0
time = 2


[State 3051, Bind 1] ; sendo pego
type = TargetBind
trigger1 = time = 1
pos = 60, 0


[State 3051, Bind 1] 
type = AssertSpecial
trigger1 = 1
flag = noKoSlow
falg2 = nobardisplay

[State 3051, Push] 
type = PlayerPush
trigger1 = 1
value = 0


[State 3050, run Sound]
type = PlaySnd
trigger1 = animElem = 1
value = 4, 10


[State 3050, run Sound]
type = targetLifeAdd
trigger1 = animElem = 6
value = -5000

[State 3050, run Sound]
type = targetState
trigger1 = animElem = 6
value = 5020


[State 3051, Bind 1] 
type = AssertSpecial
trigger1 = time > 0
flag = noKoSlow
falg2 = nobardisplay

[State 3051, power]
type = envshake
trigger1 = AnimElem = 5
time = 80
ampl = 2


[State 3050, run Sound]
type = PlaySnd
trigger1 = animElem = 5
value = 3, 7
channel = 3
[State 3050, run Sound]
type = PlaySnd
trigger1 = animElem = 5
value = 3, 9
channel = 4


[State 3050, run Sound]
type = PlaySnd
trigger1 = animElem = 6
value = 3, 7
channel = 3
[State 3050, run Sound]
type = PlaySnd
trigger1 = animElem = 6
value = 3, 9
channel = 4



[State 3051, Bind 1] ; sendo pego
type = TargetBind
trigger1 = AnimElem = 5
pos = 78, -90


[State 3050, Super grand tras]
type = Explod
trigger1 = AnimElem = 5
anim = 8041
pos = 75, -89
postype = P1
bindtime = -1
pausemovetime = 100
supermovetime = 100
removetime = 100
scale = .5,.8
sprpriority = 9999


[State 3050, Super grand tras]
type = Explod
trigger1 = AnimElem = 5
anim = 8040
pos = 80, -92
postype = P1
bindtime = -1
pausemovetime = 100
supermovetime = 100
removetime = 100
sprpriority = -20


[State 3050, sangue jorrando]
type = Explod
trigger1 = time >= 25 && timeMod = 15,1 && time <= 70
anim = 8011
pos = 70, -95
postype = P1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 20

[State 3050, sangue jorrando]
type = Explod
trigger1 = time >= 30 && timeMod = 10,1 && time <= 80
anim = 8010
pos = 66, -92
postype = P1
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 20

[State 3050, sangue jorrando P2] 
type = Explod
trigger1 = AnimElem = 6
anim = 8011
pos = -10, -55
postype = P2
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 20

[State 3050, sangue jorrando P2]
type = Explod
trigger1 = AnimElem = 6
anim = 8000
pos = -20, -50
postype = P2
bindtime = -1
pausemovetime = 100
supermovetime = 100
sprpriority = 20


[State 3050, coracao]
type = Explod
trigger1 = AnimElem = 6
anim = 8052
ID = 99911
pos = 63, -86
postype = P1
removetime = 6
scale = .45,.45
sprpriority = 98
[State 3050, coracao Real]
type = Explod
trigger1 = AnimElem = 6
anim = 8055
pos = 63, -86
postype = P1
removetime = 6
scale = .8,.8
sprpriority = 97



[State 3050, coracao]
type = Explod
trigger1 = AnimElem = 7
anim = 8052
ID = 99911
pos = 34, -77
postype = P1
removetime = 70
scale = .45,.45
sprpriority = 98
[State 3050, coracao Real]
type = Explod
trigger1 = AnimElem = 7
anim = 8055
pos = 34, -77
postype = P1
removetime = 70
scale = .8,.8
sprpriority = 97





[State 3050, coracao]
type = Explod
trigger1 = AnimElem = 8
anim = 8052
ID = 99911
pos = 65, -85
postype = P1
removetime = 4
scale = .45,.45
sprpriority = 98
[State 3050, coracao Real]
type = Explod
trigger1 = AnimElem = 8
anim = 8055
pos = 65, -85
postype = P1
removetime = 4
scale = .8,.8
sprpriority = 97



[State 3050, coracao Sang]
type = Explod
trigger1 = AnimElem = 9
anim = 8052
ID = 99911
pos = 70, -102
postype = P1
removetime = 4
scale = .45,.45
sprpriority = 98
[State 3050, coracao Real]
type = Explod
trigger1 = AnimElem = 9
anim = 8055
pos = 70, -102
postype = P1
removetime = 4
scale = .8,.8
sprpriority = 97


[State 3050, coracao Sang]
type = Explod
trigger1 = AnimElem = 10
anim = 8052
ID = 99911
pos = 75, -134
postype = P1
removetime = 999
scale = .45,.45
sprpriority = 98
[State 3050, coracao Real]
type = Explod
trigger1 = AnimElem = 10
anim = 8055
pos = 75, -134
postype = P1
removetime = 999
scale = .8,.8
sprpriority = 97



[State 3050, coracao pinga]
type = Explod
trigger1 = Time >= 200 && timeMod = 20,10
anim = 8060
ID = 99911
pos = 69, -45
postype = P1
scale = 1,3
sprpriority = 9991

[State 3050, coracao pinga]
type = Explod
trigger1 = Time >= 200 && timeMod = 30,12
anim = 8060
ID = 99911
pos = 76, -40
postype = P1
scale = 1,2.8
sprpriority = 97

[State 3050, pinga]
type = PlaySnd
trigger1 = Time >= 200 && timeMod = 30,12
trigger2 = Time >= 200 && timeMod = 20,10
value = 1000, 9
channel = 3
volume = 9999

[State 3050, coracao bate]
type = PlaySnd
trigger1 = Time >= 80 && timeMod = 40,20
value = 1000, 7
channel = 2
volume = 9999


[State 3050, espirra sang peito P2] ;nao esta funcionando!! 
type = Explod
trigger1 = Time >= 200 && timeMod = 30,10 && time <= 400
anim = 8030
random = 4,0
pos = 10, -10
postype = P2
sprpriority = 9991
bindtime = -1
pausemovetime = 100
supermovetime = 100


[State 3051, Bind 1] ; sendo jogado
type = TargetBind
trigger1 = AnimElem = 7
pos = 80, -80

[State 3051, Bind 1] ; sendo mordido
type = TargetState
trigger1 = AnimElem = 7
value = 5050

[State 3050, Sound]
type = PlaySnd
trigger1 = time = 400
trigger2 = time = 700
value = 1000, 12

[State 3050, Sound]
type = PlaySnd
trigger1 = time = 600
value = 1000, 11


;P2 mordido
[Statedef 99902]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -10


[State 3052, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 99992


;------------------------------ fatal explode P2 no chao -------------------------------------
[Statedef 99801]  ;levantando P2
type    = A
movetype= A
physics = N
anim = 3020
velset = 0,0
sprpriority = 99

[State 3202, 1]
type = MoveHitReset
trigger1 = 1

[State 3202, 1]
type = ScreenBound
trigger1 = time > 0
value = 0
movecamera = 0,200

[State 1000, fala got to hell]
type = PlaySnd
trigger1 = time = 20
value = 1000, 18

[State 1000, grita]
type = PlaySnd
trigger1 = time = 210
value = 3, 8


[State 1000, efeitos]
type = PlaySnd
trigger1 = time >= 55 && Timemod = 30, 10 && time <= 160
value = 666, 4

[State 1000, efeitos]
type = PlaySnd
trigger1 = time >= 160 && Timemod = 10, 2 && time <= 260
value = 4, 7

[State 3202, 1]
type = VelSet
trigger1 = time = 60
Y = -10

[State 3202, 1]
type = VelSet
trigger1 = time = 65
Y = 0

[State 3202, 1]
type = VelSet
trigger1 = time = 265
Y = 5

[State 3202, 1]
type = PosSet
trigger1 = Pos Y >= 0
Y = 0

[State 3202, 1]
type = Envcolor  
trigger1 = time = 0
persistent = 1
ignorehitpause = 1
value = 245,0,0
time = 2

[State 191, 2] ;
type = AssertSpecial
trigger1 = 1
flag = nofg

[State 191, 2] ;
type = AssertSpecial
trigger1 = time < 250
flag = nobg

[State 3051, Bind 1] 
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noKoSlow


[State 1000, tunel Subindo]
type = Explod
trigger1 = time = 60
anim = 7037
pos = 0, 0
postype = left
sprpriority = -999
removetime = 120
bindtime = -1

[State 1000, tunel Subindo]
type = Explod
trigger1 = time = 60
anim = 7038
pos = 0, 0
postype = left
removetime = 120
sprpriority = 999
bindtime = -1

[State 1200, bolhas] ; like ZEMIAL of Sepher
type = Explod
trigger1 = time >= 60 && Timemod = 3, 2 && time <= 160
anim = 7007 
pos = 0,-50
random = 200,200
sprpriority = 6666
ownpal = 1
accel = 0,0.8
ignorehitpause = 1
supermove = 1
velocity = 0,7

[State 1200, bolhas] ; like ZEMIAL of Sepher
type = Explod
trigger1 = time >= 60 && Timemod = 3, 2 && time <= 160
anim = 7007 
pos = 0,-50
random = 200,200
sprpriority = -10
ownpal = 1
accel = 0,0.2
scale = .5,.5
ignorehitpause = 1
supermove = 1
velocity = 0,3

[State 1200, bolhas] ; like ZEMIAL of Sepher
type = Explod
trigger1 = time >= 60 && Timemod = 3, 2 && time <= 160
anim = 7007 
pos = 0,-50
random = 100,100
sprpriority = -10
ownpal = 1
accel = 0,0.2
scale = .5,.5
ignorehitpause = 1
supermove = 1
velocity = 0,3




[State 1000, tunel Desc]
type = Explod
trigger1 = time = 160
anim = 7035
pos = 0, 0
postype = left
sprpriority = -999
removetime = 115
bindtime = -1

[State 1000, tunel Desc]
type = Explod
trigger1 = time = 160
anim = 7036
pos = 0, 0
postype = left
removetime = 120
sprpriority = 999
bindtime = -1

[State 1200, bolhas] ; like ZEMIAL of Sepher
type = Explod
trigger1 = time >= 160 && Timemod = 3, 2 && time <= 250
anim = 7007 
pos = 0,0
random = 100,100
sprpriority = 6666
ownpal = 1
accel = 0,-1
ignorehitpause = 1
supermove = 1
velocity = 0,-9

[State 1200, bolhas] ; like ZEMIAL of Sepher
type = Explod
trigger1 = time >= 160 && Timemod = 3, 2 && time <= 250
anim = 7007 
pos = 0,0
random = 200,200
sprpriority = -10
ownpal = 1
accel = 0,-0.2
scale = .5,.5
ignorehitpause = 1
supermove = 1
velocity = 0,-3

[State 1200, bolhas] ; like ZEMIAL of Sepher
type = Explod
trigger1 = time >= 160 && Timemod = 3, 2 && time <= 250
anim = 7007 
pos = 0,0
random = 100,100
sprpriority = -10
ownpal = 1
accel = 0,-0.2
scale = .5,.5
ignorehitpause = 1
supermove = 1
velocity = 0,-3

[State 3052, 1]
type = AllPalFx
Trigger1 = Time >= 200 && time <= 250
time = 20
sinadd = 40,20,10,10
add = 30,10,0
ignorehitpause = 1


;-------------------------------------------- Posicionar -----------
[State 3050, sombras] 
type = Afterimage
trigger1 = time = 0
trans = add
PalContrast =  250, 150, 150
PalBright = 0,0,0
time    =  2
length  = 2
TimeGap = 1
FrameGap = 1

[State 2041, 1]
type = Width
trigger1 = Time >= 0 && time <= 100
edge = 150, 150 
value = 70, 70 

[State 3051, Bind 1] ; sendo pego
type = TargetBind
trigger1 = time <= 60
pos = 20, -60
bindtime = -1

[State 3051, Bind 1] ; sendo pego
type = TargetBind
trigger1 = time > 60 && time <= 100
pos = 20, -120
bindtime = -1

[State 3051, Bind 1] ; sendo pego
type = TargetBind
trigger1 = AnimElem = 5
pos = 10, -140
bindtime = -1

[State 3051, Bind 1] ; sendo pego
type = TargetBind
trigger1 = AnimElem = 6
pos = 0, -150
bindtime = -1

[State 3051, Bind 1] ; sendo pego
type = TargetBind
trigger1 = AnimElem = 7
pos = -10, -120
bindtime = -1

[State 3051, Bind 1] ; sendo pego
type = TargetBind
trigger1 = AnimElem = 8
pos = -20, -60
bindtime = -1

[State 3051, Bind 1] ; sendo pego
type = TargetBind
trigger1 = time >= 255
pos = -20, -50
bindtime = -1


[State 3051, Bind 1] ; sendo pego
type = TargetBind
trigger1 = AnimElem = 9
pos = -20, 30
bindtime = -1

[State 3051, Bind 1] ; sendo solto
type = TargetLifeAdd
trigger1 = AnimElem = 9
value = -3000

[State 3051, Bind 1] ; sendo solto
type = TargetState
trigger1 = AnimElem = 9
value = 99803

[State 3202, 1]
type = sprpriority
trigger1 = animElem = 11
value = -10

[State 3105, spark-fogos]
type = Explod
trigger1 = time >= 200 && timeMod = 4, 3 &&time <= 260 
anim = 7008
posType = p2
pos = -10, 0
random = 40,50
sprpriority = 10
ownpal = 1
scale = .5,.5
pausemovetime = 666
supermovetime = 666
bindtime = -1
removetime = 30

;-------------------------pedaços pela tela

[State 200, 6]
type = Explod
trigger1 = animelem = 9
persistent = 0
anim = 80500
pos = -30, 20
postype = p1
scale = (.1+(time/10*.1)),(.1+(time/10*.1))  ; 2,2
sprpriority = 9999
bindtime = 1
ignorehitpause = 1
supermove = 1
removetime = 25
ownpal = 1

[State 200, 6]
type = Explod
trigger1 = animelem = 10
persistent = 0
anim = 80500
pos = -30, 20
postype = p1
scale = (.1+(time/16*.1)),(.1+(time/16*.1))  ; 2,2
sprpriority = 9999
bindtime = 1
ignorehitpause = 1
supermove = 1
removetime = 22
ownpal = 1


;------------------------------------------------------

[State 1200, bolhas] ; like ZEMIAL of Sepher
type = Explod
trigger1 = AnimElem = 9
anim = 80500
pos = -25,10
sprpriority = 90
ownpal = 1
facing = -1
scale = 1.2,1.2
ignorehitpause = 1
supermove = 1

[State 3101, explosao2]
type = Explod
trigger1 = AnimElem = 9
anim = 7006
pos = -30, -40
bindtime = 2
scale = 1.2,1.2
sprpriority = -999


[State 3101, explosao2]
type = Explod
trigger1 = AnimElem = 9
anim = 7006
pos = -30, -20
bindtime = 2
scale = 1,1
sprpriority = 999

[State 1000, explosao]
type = PlaySnd
trigger1 = AnimElem = 9
value = 666, 2

[State 3202, 1]
type = Envcolor  
trigger1 = time = 280
persistent = 1
ignorehitpause = 1
value = 245,0,0
time = 1

[State 3051, power]
type = envshake
trigger1 = time = 280
time = 20
phase = 5


[State 3051, Bind 1]
type = HitAdd
trigger1 = time = 0
value = -2

;------------surge from hell --------------
[State 1000, som vento]
type = PlaySnd
trigger1 = time = 490
value = 4, 4

[State 1000, som explode]
type = PlaySnd
trigger1 = time = 480
value = 3, 6


[State 1040, fumaca]
type = Explod
trigger1 = time = 480
anim = 7003
pos = 0, 0
postype = P1
sprpriority = 9696
bindtime = 4

[State 1040, fumaca]
type = Explod
trigger1 = time = 480
anim = 7003
pos = 10, 20
postype = P1
sprpriority = 9696
bindtime = 4

[State 1040, fumaca]
type = Explod
trigger1 = time = 480
anim = 7003
pos = -5, 50
postype = P1
sprpriority = 9696
bindtime = 4

[State 1040, fumaca]
type = Explod
trigger1 = time = 480
anim = 7003
pos = 0, 80
postype = P1
sprpriority = 9696
bindtime = 4

[State 3101, explosao2]
type = Explod
trigger1 = time = 480
anim = 7006
pos = 0, -40
bindtime = 2
scale = 1,1
sprpriority = 10

[State 1700, 5] ; fica tudo verm escuro
type = BGpalfx
trigger1 = time = 270
add = -200,-156,-56
sinadd = 50,50,150,70
time = 2

;-------------------------


[State 3051, Bind 1]
type = ChangeState
trigger1 = Animtime = 0
value = 99811



[Statedef 99811]  ; P1 Alterado
type    = S
movetype= A
physics = N
velset = 0,0
sprpriority = -10

[State 1000, fala]
type = PlaySnd
trigger1 = time = 40
value = 666, 3

[State 1000, fala Lady] 
type = PlaySnd
trigger1 = time = 10
value = 1000, 17

[State 3052, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = 189


[State 3101, filha]
type = Explod
trigger1 = time = 2
anim = 667
pos = 8, -2
bindtime = 2
scale = 1,1
sprpriority = -8


[State 3052, 1]
type = ChangeState
Trigger1 = Time = 300
value = 188




[Statedef 99802]  ; P2 ferrado no fatal
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -10

[State 3052, 1]
type = PalFx
Trigger1 = Time >= 200 && time <= 260
time = 50 ; cor de pegando fogo p2 nova
add = -50,-100,-100 
sinadd = 50,20,20,50
color = 256 


[State 3052, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3021



[Statedef 99803]  ; P2 ferrado no fatal
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 10

[State 3050, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 3052, 1]
type = PosSet
Trigger1 = Time >= 10
Y = 1500

[State 3052, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 50100

[State 3052, 1]
type = ChangeAnim2
Trigger1 = Time = 10
value = 950100


