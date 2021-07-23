;versus 16 non-SvCVampiro-compliant SvC chars
;-------------------------------------------- MIDNIGHT BLISS version 25
;                                             SvC Chaos : SNK vs CAPCOM
;                                             and all others games.....

[Statedef 3100] 
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
anim = 3010
sprpriority = 1
powerAdd = -3000

;========================
;Stuff added by BlackJack
;========================

[State -2, 1]
type = VarSet
trigger1 = P2Name = "Tin's Shiki"
var(58) = 10

[State -2, 2]
type = VarSet
trigger1 = P2Name = "Red Arremer" && Enemy,Authorname = "Hh"
trigger2 = P2Name = "svcathena" && Enemy,Authorname = "Warusaki3"
trigger3 = P2Name = "Demitri" && Enemy,Authorname = "bad darkness"
trigger4 = P2Name = "SVCKEN" && Enemy,Authorname = "Hh" && Enemy,PalNo = [1,6]
trigger5 = P2Name = "svckarate" && Enemy,Authorname = "Warusaki3" && Enemy,PalNo = [1,6]
trigger6 = P2Name = "Guile svc" && Enemy,Authorname = "Star Platinum"
trigger7 = P2Name = "svcryu" && Enemy,Authorname = "Warusaki3"
trigger8 = P2Name = "Zero" && Enemy,Authorname = "N64Mario"
trigger9 = P2Name = "SVCVEGA" && Enemy,Authorname = "Hh"
var(58) = 20

[State -2, 3]
type = VarSet
trigger1 = P2Name = "SVCKEN" && Enemy,Authorname = "Hh" && Enemy,PalNo = [7,12]
trigger2 = P2Name = "svckarate" && Enemy,Authorname = "Warusaki3" && Enemy,PalNo = [7,12]
var(58) = 100020

[State -2, 4]
type = VarSet
triggerall = enemy,authorname = "Chloe"
trigger1 = P2Name = "violent ken"
trigger2 = P2Name = "Asamiya Athena"
var(58) = 30

[State -2, 5]
type = VarSet
trigger1 = P2Name = "SvCGenJyuro" && Enemy,Authorname = "ActJapan"
var(58) = 40

[State -2, 6]
type = VarSet
trigger1 = P2Name = "Tin's Kibagami"
var(58) = 50

[State -2, 7]
type = VarSet
trigger1 = P2Name = "svc m.bison" && Enemy,Authorname = "wara"
var(58) = 60

[State -2, 1]
type = VarSet
trigger1 = P2Name = "Tin's chunli"
var(58) = 70

;=========================
;End of BlackJack's coding
;=========================

[State 3100, Push] 
type = PlayerPush
trigger1 = 1
value = 0

;------bloco Super pause
[State 3100, PauseComSpark1]
type = SuperPause
trigger1 = AnimElem = 1
pos = -35, -78
anim = -1
sound = s99,0

[State 3100, Super PEQ frente]
type = Explod
trigger1 = AnimElem = 1
anim = 7011
pos = 10, -92
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .6,.6
sprpriority = 10

[State 3100, Super grand tras]
type = Explod
trigger1 = AnimElem = 1
anim = 7010
pos = 10, -92
postype = P1
bindtime = 2
pausemovetime = 100
supermovetime = 100
scale = .8,.8
sprpriority = -10


[State 3100, NaoApanha]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, ATC , NA
time = 20
;---- fim Bloco

[State 3100, fala]
type = PlaySnd
trigger1 = animElem = 1
value = 3000, 0
channel = 4

[State 3100, run Sound]
type = PlaySnd
trigger1 = animElem = 2
value = 100, 0
channel = 1


[State 3100, sombras] 
type = Afterimage
trigger1 = animElem = 3
trans = add
PalContrast =  250, 150, 150
PalBright = 0,0,0
time    =  25
length  = 20
TimeGap = 2
FrameGap = 1


[State 3100, 1]
type = VelSet
trigger1 = 1
x = 7

[State 3100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 3100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn


[State 3100, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT       
hitflag = M-       
priority = 1, Miss 
pausetime = 0,0 ;4,4
sparkno = -1     
sprpriority = 1  
p2facing = 1    
p1stateno = 3101
p2stateno = 3102
guard.dist = 0  
fall = 1        


[State 3100, 4]
type = ChangeState
trigger1 = time > 20
value = 101


[Statedef 3101]  ;Pegando P2 --------------------------´------------
type    = S
movetype= A
physics = N
anim = 3011
velset = 0,0

[State 3101, 1]
type = Width
trigger1 = FrontEdgeDist < 60
trigger1 = Time >= 0 && time < 10
edge = 80, 50 

[State 3100, 1]
type = Width
trigger1 = FrontEdgeDist < 60
trigger1 = Time >= 0 && time < 10
edge = 80, 50 

[State 3100, 1]
type = Width
trigger1 = Time >= 130
edge = 0, 0 

[State 3101, Bind 1] ; Posicionando
type = TargetBind
trigger1 = Time >= 0 && time < 30
pos = 60, 0

[State 3101, som]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 3
channel = 1

[State 3101, som]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 5
channel = 1

[State 3101, som]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 4
channel = 2


[State 3101, Fumaca1]
type = Explod
trigger1 = Time >= 0 && timeMod = 10,1 && time <= 20
anim = 7003
random = 20,10
pos = 20, -50
postype = P2
bindtime = -1 
sprpriority = 10


[State 3101, Fumaca1]
type = Explod
trigger1 = Time >= 0 && timeMod = 10,1 && time <= 20
anim = 7003
random = 20,10
pos = 0, -50
postype = P2
bindtime = -1 
sprpriority = 10


[State 3101, Fumaca1]
type = Explod
trigger1 = Time >= 0 && timeMod = 10,1 && time <= 20
anim = 7003
random = 20,10
pos = -20, -30
postype = P2
bindtime = -1 
sprpriority = 10


[State 3101, Fumaca1]
type = Explod
trigger1 = Time >= 0 && timeMod = 10,1 && time <= 30
anim = 7003
random = 20,10
pos = 0, 20
postype = P2
bindtime = -1 
sprpriority = 10

[State 3101, Fumaca1]
type = Explod
trigger1 = Time >= 0 && timeMod = 10,1 && time <= 20
anim = 7003
random = 20,10
pos = -20, 20
postype = P2
bindtime = -1 
sprpriority = 10

[State 3101, Fumaca1]
type = Explod
trigger1 = Time >= 0 && timeMod = 10,1 && time <= 20
anim = 7003
random = 20,10
pos = 30, 20
postype = P2
bindtime = -1 
sprpriority = 10

[State 3101, Fumaca1]
type = Explod
trigger1 = Time >= 0 && timeMod = 10,1 && time <= 20
anim = 7003
random = 20,10
pos = 0, 50
postype = P2
bindtime = -1 
sprpriority = 10

[State 3101, Fumaca1]
type = Explod
trigger1 = Time >= 0 && timeMod = 10,1 && time <= 20
anim = 7003
random = 20,10
pos = -20, 60
postype = P2
bindtime = -1 
sprpriority = 10

[State 3101, Fumaca1]
type = Explod
trigger1 = Time >= 0 && timeMod = 10,1 && time <= 20
anim = 7003
random = 20,10
pos = 30, 70
postype = P2
bindtime = -1 
sprpriority = 10

[State 3101, Fumaca1]
type = Explod
trigger1 = Time >= 0 && timeMod = 10,1 && time <= 20
anim = 7003
random = 20,10
pos = 0, 90
postype = P2
bindtime = -1 
sprpriority = 10


[State 3101, Fumaca1]
type = Explod
trigger1 = Time >= 0 && timeMod = 10,1 && time <= 20
anim = 7003
random = 20,10
pos = 20, 100
postype = P2
bindtime = -1 
sprpriority = 10


[State 3101, explosao2]
type = Explod
trigger1 = time = 2
anim = 7009
pos = 0, -50
postype = P2
bindtime = 2
scale = 1,1
sprpriority = 10


[State 3101, Sang]
type = Explod
trigger1 = time >= 90 && timeMod = 10,1 && time <= 150
anim = 8021
pos = 65, -160
postype = P1
bindtime = 1
facing = -1
sprpriority = -5

[State 3101, Sang]
type = Explod
trigger1 = time >= 90 && timeMod = 10,1 && time <= 150
anim = 8000
pos = 70, -155
postype = P1
bindtime = 1
facing = -1
sprpriority = 10

[State 3101, power]
type = targetLifeAdd
trigger1 = AnimElem = 21
trigger2 = AnimElem = 22
trigger3 = AnimElem = 23
trigger4 = AnimElem = 24
trigger5 = AnimElem = 25
trigger6 = AnimElem = 26
trigger7 = AnimElem = 27
trigger8 = AnimElem = 28
trigger9 = AnimElem = 29
value = -30

[State 3101, power]
type = powerAdd
trigger1 = AnimElem = 21
trigger2 = AnimElem = 22
trigger3 = AnimElem = 23
trigger4 = AnimElem = 24
trigger5 = AnimElem = 25
trigger6 = AnimElem = 26
trigger7 = AnimElem = 27
trigger8 = AnimElem = 28
trigger9 = AnimElem = 29
value = 100

[State 3101, quebra pescoco]
type = PlaySnd
trigger1 = time = 158
value = 3, 7
channel = 2

[State 3101, fala]
type = PlaySnd
trigger1 = AnimElem = 15
value = 900, 1
channel = 1

[State 3101, Bind 1] ; Posicionando
type = TargetBind
trigger1 = AnimElem = 1
pos = 60, 0


[State 3101, Bind 1] ; pego pelo corpo 1
type = TargetBind
trigger1 = AnimElem = 18
pos = 60, -110


[State 3101, Bind 1] ; pego pelo corpo 2
type = TargetBind
trigger1 = AnimElem = 19
pos = 65, -120


[State 3101, Bind 1] ; pego pelo Pescoco 1
type = TargetBind
trigger1 = AnimElem = 20
pos = 71, -140


[State 3101, Bind 1] ; pego pelo Pescoco ate a morte
type = TargetBind
trigger1 = AnimElem = 21
pos = 71, -158


[State 3101, Throw 11]
type = TargetState
trigger1 = AnimElem = 18
value = 3103


[State 3101, Throw 11]
type = TargetState
trigger1 = AnimElem = 28
value = 3104


[State 3101, Throw 11]
type = TargetState
trigger1 = AnimElem = 33
value = 3105


[State 3101, explosao1]
type = Explod
trigger1 = AnimElem = 33
anim = 7009
pos = -10, -70
postype = P2
bindtime = 2
sprpriority = 10

[State 3101, explosao1]
type = Explod
trigger1 = AnimElem = 33
anim = 7009
pos = -25, -50
postype = P2
bindtime = 2
sprpriority = 10


[State 3101, explosao2]
type = Explod
trigger1 = AnimElem = 33
anim = 7006
pos = -20, -80
postype = P2
bindtime = 2
scale = 1.3,1.3
sprpriority = -10


[State 3101, 3]
type = PlaySnd
trigger1 = AnimElem = 33
value = 3,6
channel = 3

[State 3101, 3]
type = PlaySnd
trigger1 = AnimElem = 34
value = 4,5
channel = 2

[State 3101, vel]
type = VelSet
trigger1 = AnimElem = 34
X = -6

[State 3101, vel]
type = VelSet
trigger1 = AnimElem = 36
X = -2

[State 3101, vel]
type = VelSet
trigger1 = AnimElem = 41
X = -1

[State 3101, vel]
type = envShake
trigger1 = AnimElem = 20
time = 30
envshake.time = 7
envshake.ampl = 4

[State 3101, sombras] 
type = Afterimage
trigger1 = animElem = 34
trans = add
PalContrast =  250, 150, 150
PalBright = 0,0,0
time    =  20
length  = 20
TimeGap = 2
FrameGap = 1


[State 3101, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;P2 pego pelo Bliss forma normal em pe
[Statedef 3102]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -10
anim = -1 ;prevent bugs versus P4

[State 3102, NaoApanha]
type = NotHitBy
trigger1 = 1
value = , NA, SA, ATC , NA
time = 50

;for the problem with MrKarate by Diego Sanches
[State 3102, 1c]
type = ChangeAnim
triggerAll = SelfAnimExist(66670)
triggerAll = PalNo = [6,12]
triggerAll = Name = "Mr. Karate" && Authorname = "Diego Sanches"
trigger1 = time = 12
value = 66670

[State 3102, 1]
type = ChangeAnim
triggerAll = SelfAnimExist(66660)
Trigger1 = time = 10
value = 66660
[State 3102, 1]
type = ChangeAnim2
triggerAll = !SelfAnimExist(66660)
triggerall = Enemy,Var(58) = 0 ;This is the TIP sent to me by BlackJack
                               ;A code to test the Name and Author of chars
                               ;Thus, myself can transform the other creators'
                               ;chars. Thanks BJ!
Trigger1 = time = 10
value = 66670

;==================
;Added by BlackJack
;==================
[State 3102, 1b]
type = ChangeAnim2
trigger1 = Enemy,Var(58) > 0
trigger1 = time = 10
value = 77700+Enemy,Var(58)
;=========================
;End of BlackJack's coding
;=========================

;P2 pego pelo Bliss forma normal sendo levantado
[Statedef 3103]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -10

[State 3103, 1]
type = PalFx
triggerAll = Anim = 66671
Trigger1 = time = 0
time = 50
add = 0,-10,-10 
sinadd = 10,0,0,90
color = 256 

;for the problem with MrKarate by Diego Sanches
[State 3102, 1c]
type = ChangeAnim
triggerAll = SelfAnimExist(66671)
triggerAll = PalNo = [6,12]
triggerAll = Name = "Mr. Karate" && Authorname = "Diego Sanches"
trigger1 = time = 1
value = 66671


[State 3103, 1]
type = ChangeAnim
triggerAll = SelfAnimExist(66661)
Trigger1 = time = 0
value = 66661
[State 3103, 1]
type = ChangeAnim2
triggerAll = !SelfAnimExist(66661)
triggerall = Enemy,Var(58) = 0 ;BlackJack's Tip!
Trigger1 = time = 0
value = 66671

;==================
;Added by BlackJack
;==================
[State 3103, 1b]
type = ChangeAnim2
trigger1 = Enemy,Var(58) > 0
trigger1 = time = 0
value = 77701+Enemy,Var(58)
;=========================
;End of BlackJack's coding
;=========================

;P2 pego pelo Bliss morrendo no alto
[Statedef 3104]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -10

[State 3104, 1]
type = PalFx
triggerAll = Anim = 66672
Trigger1 = time = 0
time = 10
add = -10,-20,-20 
color = 256 
[State 3104, 1]
type = PalFx
triggerAll = Anim = 66672
Trigger1 = time = 5
time = 10
add = -20,-30,-30 
color = 256 
[State 3104, 1]
type = PalFx
triggerAll = Anim = 66672
Trigger1 = time = 10
time = 10
add = -30,-40,-40 
color = 256 
[State 3104, 1]
type = PalFx
triggerAll = Anim = 66672
Trigger1 = time = 15
time = 100
add = -40,-50,-50 
color = 256 

;for the problem with MrKarate by Diego Sanches
[State 3102, 1c]
type = ChangeAnim
triggerAll = SelfAnimExist(66672)
triggerAll = PalNo = [6,12]
triggerAll = Name = "Mr. Karate" && Authorname = "Diego Sanches"
trigger1 = time = 1
value = 66672


[State 3104, 1]
type = ChangeAnim
triggerAll = SelfAnimExist(66662)
Trigger1 = time = 0
value = 66662
[State 3104, 1]
type = ChangeAnim2
triggerAll = !SelfAnimExist(66662)
triggerall = Enemy,Var(58) = 0 ;BlackJack's TIP!
Trigger1 = time = 0
value = 66672

;==================
;Added by BlackJack
;==================
[State 3104, 1b]
type = ChangeAnim2
trigger1 = Enemy,Var(58) > 0
trigger1 = time = 0
value = 77702+Enemy,Var(58)
;=========================
;End of BlackJack's coding
;=========================

;P2 pego pelo Bliss caindo do ar
[Statedef 3105]
type    = A
movetype= H
physics = N
velset = -4,-10
sprpriority = -10

[State 3105, 1]
type = PosAdd
Trigger1 = time = 0
Y = 75

[State 3105, 1]
type = PalFx
Trigger1 = time = 0
time = 30 ; cor de pegando fogo p2 nova
add = -50,-200,-200 
sinadd = 50,20,20,50
color = 256 

[State 3105, spark-fogos]
type = Explod
trigger1 = Time >= 0 && timeMod = 3,0
anim = 7008
pos = -10, -50
random = 60,20
sprpriority = 1
ownpal = 1
scale = .5,.5
pausemovetime = 666
supermovetime = 666
bindtime = -1
removetime = 30

[State 3105, spark-fogos]
type = Explod
trigger1 = Time >= 0 && timeMod = 3,0
anim = 7008
pos = 15, -50
random = 50,30
sprpriority = 1
ownpal = 1
scale = .5,.5
pausemovetime = 666
supermovetime = 666
bindtime = -1
removetime = 30


[State 3105, 1]
type = ChangeAnim
Trigger1 = time = 0
value = 5030


[State 3105, 4]
type = SelfState
trigger1 = Time = 10
value = 5030
ctrl = 1

