;Var(4)		INTRO
;Var(10)	MOVEHIT判定
;Var(11)	MOVEGUARDED判定
;Var(12)	MOVECONTACT判定
;Var(13)	MOVEHITRESET判定
;Var(15)	ヒット判定
;Var(16)	ヒット判定2
;Var(17)	Vel Y 保管用
;Var(19)	挑発用
;Var(20)	AI
;Var(25)	勝利選択用(画面上端座標把握用)
;Var(26)	勝利選択用(カットイン)
;Var(29)	勝利カットインON/OFF

;--------Helper(勝利用)
;Var(5)		パレット調整用
;Var(7)		画面上端標把握
;Var(10)	parent(26)保存用
;Var(11)	カットイン選択

;---------------------------------------------------------------------------
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?
; ...
;******************************************
; Win state decider
[Statedef 180]
type = S
ctrl = 0

[State 180, 1]
type = varrandom
trigger1 = time = 0
v = 4
range = 1,3

;-------------------勝利カットイン(State 189)用変数準備
[State 189, random]
type = Varrandom
;triggerAll = MatchOver = 1
trigger1 = Time = 0
v = 26
range = 1,7

[State 189, VarSet_A]
type = VarSet
;triggerAll = MatchOver = 1
triggerAll = Time = 1
trigger1 = Enemy, Name = "Mizuchi" || Enemy, Name = "mizuchi"
trigger2 = Enemy, Name = "Mizuchi" || Enemy, Name = "mizuchi"
trigger3 = Enemy, Name = "Goenitz" || Enemy, Name = "goenitz"
trigger4 = Enemy, Name = "Goenitz" || Enemy, Name = "goenitz"
trigger5 = Enemy, Name = "Orochi" || Enemy, Name = "orochi"
trigger6 = Enemy, Name = "Orochi" || Enemy, Name = "orochi"
var(26) = 21

[State 189, VarSet_B]
type = VarSet
;triggerAll = MatchOver = 1
triggerAll = Time = 1
trigger1 = Enemy, Name = "Yashiro" || Enemy, Name = "Yashiro Nanakase"
trigger2 = Enemy, Name = "Yashiro" || Enemy, Name = "Yashiro Nanakase"
trigger3 = Enemy, Name = "Shermie" || Enemy, Name = "shermie"
trigger4 = Enemy, Name = "Shermie" || Enemy, Name = "shermie"
trigger5 = Enemy, Name = "Chris" || Enemy, Name = "chris"
trigger6 = Enemy, Name = "Chris" || Enemy, Name = "chris"
trigger7 = Enemy, Name = "Leona" || Enemy, Name = "leona"
trigger8 = Enemy, Name = "Leona" || Enemy, Name = "leona"
trigger9 = Enemy, Name = "Yamazaki" || Enemy, Name = "yamazaki"
trigger10 = Enemy, Name = "Yamazaki" || Enemy, Name = "yamazaki"
trigger11 = Enemy, Name = "Vice" || Enemy, Name = "cvsvice"
trigger12 = Enemy, Name = "Vice" || Enemy, Name = "cvsvice"
trigger13 = Enemy, Name = "Mature" || Enemy, Name = "mature"
trigger14 = Enemy, Name = "Mature" || Enemy, Name = "mature"
trigger15 = Enemy, Name = "Magaki"
trigger16 = Enemy, Name = "Magaki"
var(26) = 22

[State 189, VarSet_C]
type = VarSet
;triggerAll = MatchOver = 1
triggerAll = Time = 1
trigger1 = Enemy, Name = "Rugal" || Enemy, Name = "omega-rugal"
trigger2 = Enemy, Name = "Rugal" || Enemy, Name = "omega-rugal"
trigger3 = Enemy, Name = "Gouki" || Enemy, Name = "cvsgouki"
trigger4 = Enemy, Name = "Gouki" || Enemy, Name = "cvsgouki"
trigger5 = Enemy, Name = "Vega" || Enemy, Name = "cvsvega"
trigger6 = Enemy, Name = "Vega" || Enemy, Name = "cvsvega"
var(26) = 23

;勝利ポーズとカットイン合わせ
[State 189, winP_A];ご加護
type = VarSet
triggerAll = MatchOver = 1
triggerAll = Time = 1
trigger1 = Var(26) = 3
trigger2 = Var(26) = 6
v = 4
Value = 4

[State 189, winP_B];読書
type = VarSet
triggerAll = MatchOver = 1
triggerAll = Time = 1
trigger1 = Var(26) = 1
trigger2 = Var(26) = 7
v = 4
Value = 1

;-------------------勝利ポーズ分岐

[State 180, 3]
type = ChangeState
trigger1 = time = 2
trigger1 = var(4) = 1
;trigger1 = MatchOver = 0
value = 181

[State 180, 3]
type = ChangeState
trigger1 = time = 2
trigger1 = var(4) = 2
;trigger1 = MatchOver = 0
value = 182

[State 180, 3];END
type = ChangeState
trigger1 = time = 2
trigger1 = var(4) = 3
;trigger1 = MatchOver = 1
value = 183

[State 180, 3];END
type = ChangeState
trigger1 = time = 2
trigger1 = var(4) = 4
;trigger1 = MatchOver = 1
value = 184

;-----------------------------------------
[Statedef 181]
type = S
anim = 299;180
ctrl = 0

[State 181, 1]
type = playsnd
trigger1 = AnimElem = 3
value = S0,43
volume = -100

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 181, cut_in];
type = ChangeState
trigger1 = MatchOver = 1
trigger1 = Time = 200
trigger1 = Var(29) = 1
value = 189

;-----------------------------------------
[Statedef 182]
type = S
anim = 182
ctrl = 0

[State 182, 1]
type = playsnd
trigger1 = AnimElem = 3
value = S0,2

[State 182, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 182, cut_in];
type = ChangeState
trigger1 = MatchOver = 1
trigger1 = Time = 200
trigger1 = Var(29) = 1
value = 189

;-----------------------------------------
[Statedef 183]
type = S
anim = 181
ctrl = 0

[State 183, 1]
type = playsnd
trigger1 = AnimElem = 3
value = S0,1

[State 183, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 183, cut_in];
type = ChangeState
trigger1 = MatchOver = 1
trigger1 = Time = 200
trigger1 = Var(29) = 1
value = 189

;-----------------------------------------
[Statedef 184]
type = S
anim = 184
ctrl = 0

[State 184, 1]
type = playsnd
trigger1 = AnimElem = 1
value = S0,4

[State 184, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 184, cut_in];
type = ChangeState
trigger1 = MatchOver = 1
trigger1 = Time = 200
trigger1 = Var(29) = 1
value = 189

;---------------------勝利カットイン
[Statedef 189]
type = S
ctrl = 0

[State 189, No_music]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoMusic
flag2 = nobardisplay
flag3 = noFG

[State 189, RoundNotOver]
type = AssertSpecial
trigger1 = Time = [0,500]
flag = RoundNotOver

[State 189,Bccolor]
type = BGPalfx
trigger1 = Time >= 0
ignorehitpause = 1
time = 10
add = 0,0,0
color = 1
invertall = 0

[State 189, Win_BGM]
type = PlaySnd
trigger1 = Time = 5
value = s2,0

[State 189, y]
type = VarSet
trigger1 = time = 0
v = 25
Value = - ScreenPos Y

[State 189, cut_in];
type = Helper
trigger1 = Time = 0
ignorehitpause = 1
helpertype = normal
name = "cut_in_win"
ID = 189
postype = left
pos = 0, 0
facing = 1
stateno = 18000
keyctrl = 0
persistent = 
ownpal = 1
priority = 9999
size.xscale = 0.5
size.yscale = 0.5


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;			勝利時カットイン　Helper State
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 18000]
type = A
movetype = I
physics = N
ctrl = 0
anim = 18000
velset = 0,0
bindtime = -1
sprpriority = 99999

[State 18000, ]
type = Varset
trigger1 = Time = 0
ignorehitpause = 1
var(7) = Parent,Var(25)

[State 18000, ]
type = Varset
trigger1 = Time = 0
ignorehitpause = 1
var(10) = Parent,Var(26)

[State 18000, KO]
type = AssertSpecial
trigger1 = Time >= 0
flag = noshadow
ignorehitpause = 1

[State 18010, pos_fix]
type = Posset
trigger1 = time = 0
x = -160
y = Var(7) + 166

;----------------フェードイン処理
[State 18000, first_invisible]
type = assertspecial
trigger1 = Time = [0,5]
flag = invisible
ignorehitpause = 1

[State 18000, gradually_coller]
type = Varset
trigger1 = Time = 0
ignorehitpause = 1
var(5) = -255

[State 18000, gradually_coller]
type = Varadd
trigger1 = Time >= 0
ignorehitpause = 1
var(5) = 5

[State 18000, gradually_coller]
type = PalFX
trigger1 = Time >= 0 && Time <= 50
ignorehitpause = 1
add = Var(5)+1,Var(5)+1,Var(5)+1
time = 2

;-----------ランダム用セリフ分岐１（読書したい）
[State 18000, select]
type = ChangeAnim
triggerall = Time = 90
trigger1 = Var(10) = 1
value = 18001

[State 18000, Face_Varset]
type = Varset
trigger1 = Time = 0
trigger1 = Var(10) = 1
ignorehitpause = 1
var(11) = 1

;-----------ランダム用セリフ分岐２（故郷）
[State 18000, select]
type = ChangeAnim
triggerall = Time = 90
trigger1 = Var(10) = 2
value = 18002

[State 18000, Face_Varset]
type = Varset
trigger1 = Time = 0
trigger1 = Var(10) = 2
ignorehitpause = 1
var(11) = 2

;-----------ランダム用セリフ分岐３（風林火山）
[State 18000, select]
type = ChangeAnim
triggerall = Time = 90
trigger1 = Var(10) = 3
value = 18003

[State 18000, Face_Varset]
type = Varset
trigger1 = Time = 0
trigger1 = Var(10) = 3
ignorehitpause = 1
var(11) = 0

;-----------ランダム用セリフ分岐４（（・∀・）ｶｴﾚ!）
[State 18000, select]
type = ChangeAnim
triggerall = Time = 90
trigger1 = Var(10) = 4
value = 18004

[State 18000, Face_Varset]
type = Varset
trigger1 = Time = 0
trigger1 = Var(10) = 4
ignorehitpause = 1
var(11) = 3

;-----------ランダム用セリフ分岐５（忙しいです）
[State 18000, select]
type = ChangeAnim
triggerall = Time = 90
trigger1 = Var(10) = 5
value = 18005

[State 18000, Face_Varset]
type = Varset
trigger1 = Time = 0
trigger1 = Var(10) = 5
ignorehitpause = 1
var(11) = 2

;-----------ランダム用セリフ分岐６（さぁ、神に祈りなさい）
[State 18000, select]
type = ChangeAnim
triggerall = Time = 90
trigger1 = Var(10) = 6
value = 18006

[State 18000, Face_Varset]
type = Varset
trigger1 = Time = 0
trigger1 = Var(10) = 6
ignorehitpause = 1
var(11) = 0

;-----------ランダム用セリフ分岐７（ツンデレｗ）
[State 18000, select]
type = ChangeAnim
triggerall = Time = 90
trigger1 = Var(10) = 7
value = 18007

[State 18000, Face_Varset]
type = Varset
trigger1 = Time = 0
trigger1 = Var(10) = 7
ignorehitpause = 1
var(11) = 1

;-----------専用セリフ分岐１（スネェーク）
[State 18000, select]
type = ChangeAnim
triggerall = Time = 90
trigger1 = Var(10) = 21
value = 18021

[State 18000, Face_Varset]
type = Varset
trigger1 = Time = 0
trigger1 = Var(10) = 21
ignorehitpause = 1
var(11) = 3

;-----------専用セリフ分岐２（その程度）
[State 18000, select]
type = ChangeAnim
triggerall = Time = 90
trigger1 = Var(10) = 22
value = 18022

[State 18000, Face_Varset]
type = Varset
trigger1 = Time = 0
trigger1 = Var(10) = 22
ignorehitpause = 1
var(11) = 3

;-----------専用セリフ分岐３（愚かな）
[State 18000, select]
type = ChangeAnim
triggerall = Time = 90
trigger1 = Var(10) = 23
value = 18023

[State 18000, Face_Varset]
type = Varset
trigger1 = Time = 0
trigger1 = Var(10) = 23
ignorehitpause = 1
var(11) = 3

;=======================================

[State 18000, cut_in];
type = Helper
trigger1 = Time = 50
ignorehitpause = 1
helpertype = normal
name = "cut_in_winf"
ID = 18000
postype = left
pos = 0, 0
facing = 1
stateno = 18010
keyctrl = 0
persistent = 
ownpal = 1
priority = 1
ontop = 1
size.xscale = 1;0.5
size.yscale = 1;0.5

[State 183, END]
type = DestroySelf
trigger1 = Time >= 900


;----------勝利フェイスカットイン
[Statedef 18010]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
bindtime = -1
sprpriority = 1

[State 18010, KO]
type = AssertSpecial
trigger1 = Time >= 0
flag = noshadow
ignorehitpause = 1

[State 18010, select]
type = ChangeAnim
trigger1 = Time = 0
value = 18050 + Parent,Var(11)

[State 18010, select]
type = Explod
trigger1 = Time = 0
anim = 18050 + Parent,Var(11)
ID = 18010
sprpriority = 9998
ontop = 1
postype = p1
pos = 0,0
bindtime = -1
removetime = 9999999
supermove = 1
ownpal = 1

[State 18010, pos_fix]
type = Posset
trigger1 = time = 0
x = 200
y = Parent,Var(7) + 39

[State 18010, pos_fix]
type = VelSet
trigger1 = time = 0
x = -7

[State 18010, pos_fix]
type = VelSet
trigger1 = time = 37
x = 0




;--------------------------------------
;イントロ
;--------------------------------------
[Statedef 190]
type = S
ctrl = 0

[State 190, 5]
type = Varrandom
trigger1 = Time = 0
v = 1
range = 0,60

[State 190, 6]
type = ChangeState
trigger1 = Var(1) = [0,19]
value = 191

[State 190, 7]
type = ChangeState
trigger1 = Var(1) = [20,39]
value = 193

[State 190, 7]
type = ChangeState
trigger1 = Var(1) = [40,60]
value = 194

;-------------------------
;浮遊イントロ
[Statedef 191]
type = S
physics = N
ctrl = 0
anim = 190
velset = 0,0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,320]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,5

;[State 191, 1]
;type = AssertSpecial
;trigger1 = Time = [0,220]
;flag = NoMusic

[State 191, 3]
type = Projectile
trigger1 = AnimElem = 1
projanim = 9100
ProjRemAnim = -1
projremovetime = 120
offset = 0, 15
velocity = 0.0000001

[State 191, 1]
type = PosSet
trigger1 = Time = 0
y =  -15

;[State 191, 1]
;type = VelSet
;trigger1 = Time = 0
;y =  0.02

[State 191, 1]
type = VelAdd
trigger1 = animelem = 38,> 0
y =  0.3

[State 191, 4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 192

;---
[Statedef 192]
type = S
physics = S
ctrl = 0
anim = 191
velset = 0,0,0

;[State 192, land]
;type = PlaySnd
;trigger1 = Time = 0
;value = S1,8
;channel = 1

[State 192, 0]
type = PosSet
trigger1 = 1
y = 0

[State 192, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------
;読本イントロ
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0,0

[State 193, 1]
type = AssertSpecial
trigger1 = Time = [0,320]
flag = Intro

[State 193, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,3
volume = -100

[State 193, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;--------------------
;平常時イントロ
[Statedef 194]
type = S
ctrl = 0
anim = 192
velset = 0,0,0

[State 194, 1]
type = AssertSpecial
trigger1 = Time = [0,270]
flag = Intro

[State 194, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,42

[State 194, 4]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1,2

[State 194, 4]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1,1

;[State 194, 1]
;type = AssertSpecial
;trigger1 = Time = [0,270]
;flag = NoMusic

[State 194, 5]
type = Explod
trigger1 = AnimElem = 12
anim = 196
ID = 196
sprpriority = 6
postype = p1
pos = 0,0
bindtime = -1
supermove = 1
ownpal = 1
removeongethit = 1

[State 194, 5]
type = Explod
trigger1 = AnimElem = 13
anim = 197
ID = 197
sprpriority = 6
postype = p1
pos = 0,0
bindtime = -1
removetime = 100
supermove = 1
ownpal = 1
removeongethit = 1

[State 194, 5]
type = Explod
trigger1 = AnimElem = 13
anim = 199
ID = 199
sprpriority = 6
postype = p1
pos = 0,0
bindtime = -1
removetime = 100
supermove = 1
ownpal = 1
removeongethit = 1

;[State 194, 5]
;type = Explod
;trigger1 = AnimElem = 13
;anim = 3370
;ID = 3370
;sprpriority = 6
;postype = p1
;pos = 0,0
;bindtime = -1
;removetime = 100
;supermove = 1
;ownpal = 1
;removeongethit = 1

;[State 194, 4]
;type = RemoveExplod
;trigger1 = AnimElem = 24
;ID = 3370

[State 194, 4]
type = RemoveExplod
trigger1 = AnimElem = 24
ID = 197

[State 194, 4]
type = RemoveExplod
trigger1 = AnimElem = 24
ID = 199

[State 194, 5]
type = Explod
trigger1 = AnimElem = 24
anim = 198
ID = 198
sprpriority = 6
postype = p1
pos = 0,0
bindtime = -1
supermove = 1
ownpal = 1
removeongethit = 1

[State 194, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------  
;Gauge Charge
[Statedef 280]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 280

[State 280, 0]
type = PlaySnd
trigger1 = time = 10
channel = 1
value = S1, 24

[State 280, 0]
type = PlaySnd
trigger1 = time = 15
channel = 0
value = S0, 36

[State 280, 1]
type = PowerAdd
trigger1 = time >= 15
value = 5

[State 280, 1]
type = PowerAdd
trigger1 = time >= 50
value = 5

[State 280, 3]
type = ChangeState
triggerall = var(20) = 0
trigger1 = command != "hold_a"
trigger2 = command != "hold_b"
trigger3 = power >= 9000
value = 285


[State 280, 3]
type = ChangeState
triggerall = var(20) = 1
trigger1 = p2bodydist x < 150 
trigger1 = P2statetype != L
trigger2 = enemy, numhelper > 0 || (enemy, numproj > 0 && enemynear, movetype = A)
trigger3 = power >= 9000
trigger4 = power >= 3000
trigger4 = Time % 15 = 0
trigger4 = random > 950
value = 285

;Stop Charging
[Statedef 285]
type = S
movetype = I
physics = S
ctrl = 0
anim = 285

[State 285, 2]
type = StopSnd
trigger1 = time = 0
channel = 0
value = S0, 5

[State 285, 2]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 285, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
; Taunt読本
[Statedef 290];本を開く
type    = S
physics = S
movetype= I
anim = 290
ctrl = 0
velset = 0,0
facep2 = 1

[State 290, 0]
type = PlaySnd
trigger1 = animelem = 1
value = s0,44
volume = -100

[State 290]
type = varrandom
trigger1 = Time = 0
v = 19
range = 50,0

[State 290, 3]
type = ChangeState
triggerAll = AnimElem = 2,>0
trigger1 = Var(20) = 0
trigger1 = command != "hold_start" 
trigger2 = Var(20) = 1
trigger2 = p2bodydist x < 150 
trigger2 = P2statetype != L
trigger3 = Var(20) = 1
trigger3 = enemy, numhelper > 0 || (enemy, numproj > 0 && enemynear, movetype = A)
value = 291
ctrl = 0

[State 290, 3];めくる
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [0,20]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 292
ctrl = 0

[State 290, 3];悩む
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [21,31]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 293
ctrl = 0

[State 290, 3];そよ風
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [32,48]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 294
ctrl = 0

[State 290, 3];突風
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [49,50]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 295
ctrl = 0

;---------------
[Statedef 291];本を閉じる
type    = S
physics = S
movetype= I
anim = 291
ctrl = 0
velset = 0,0
facep2 = 1

[State 291, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------
[Statedef 292];本をめくる
type    = S
physics = S
movetype= I
anim = 292
ctrl = 0
velset = 0,0
facep2 = 1

[State 292, 1]
type = LifeAdd
trigger1 = time % 10 = 1
value = 1

[State 292, 1]
type = PowerAdd
trigger1 = time % 10 = 1
value = 5

[State 292]
type = varrandom
trigger1 = Time = 0
v = 19
range = 50,0

[State 292, 3]
type = ChangeState
;triggerAll = AnimTime = 0
trigger1 = Var(20) = 0
trigger1 = command != "hold_start" 
trigger2 = Var(20) = 1
trigger2 = p2bodydist x < 150 
trigger2 = P2statetype != L
trigger3 = Var(20) = 1
trigger3 = enemy, numhelper > 0 || (enemy, numproj > 0 && enemynear, movetype = A)
trigger4 = Var(20) = 1
trigger4 = random > 800
trigger4 = Life >= 500
trigger4 = Power >= 3000
value = 291
ctrl = 0

[State 292, 3];めくる
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [0,20]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 292
ctrl = 0

[State 292, 3];悩む
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [21,31]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 293
ctrl = 0

[State 292, 3];そよ風
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [32,48]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 294
ctrl = 0

[State 292, 3];突風
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [49,50]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 295
ctrl = 0

;---------------
[Statedef 293];悩む
type    = S
physics = S
movetype= I
anim = 293
ctrl = 0
velset = 0,0
facep2 = 1

[State 293, 1]
type = LifeAdd
trigger1 = time % 12 = 1
value = 1

[State 293, 1]
type = PowerAdd
trigger1 = time % 8 = 1
value = 5

[State 293]
type = varrandom
trigger1 = Time = 0
v = 19
range = 50,0

[State 293, 3]
type = ChangeState
;triggerAll = AnimTime = 0
trigger1 = Var(20) = 0
trigger1 = command != "hold_start" 
trigger2 = Var(20) = 1
trigger2 = p2bodydist x < 150 
trigger2 = P2statetype != L
trigger3 = Var(20) = 1
trigger3 = enemy, numhelper > 0 || (enemy, numproj > 0 && enemynear, movetype = A)
trigger4 = Var(20) = 1
trigger4 = random > 800
trigger4 = Life >= 500
trigger4 = Power >= 3000
value = 291
ctrl = 0

[State 293, 3];めくる
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [0,29]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 292
ctrl = 0

[State 293, 3];そよ風
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [30,48]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 294
ctrl = 0

[State 293, 3];突風
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [49,50]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 295
ctrl = 0

;---------------
[Statedef 294];そよ風
type    = S
physics = S
movetype= I
anim = 294
ctrl = 0
velset = 0,0
facep2 = 1

[State 294, 1]
type = LifeAdd
trigger1 = time % 6 = 1
value = 1

[State 294, 1]
type = PowerAdd
trigger1 = time % 14 = 1
value = 5

[State 294]
type = varrandom
trigger1 = Time = 0
v = 19
range = 50,0

[State 294, 3]
type = ChangeState
;triggerAll = AnimTime = 0
trigger1 = Var(20) = 0
trigger1 = command != "hold_start" 
trigger2 = Var(20) = 1
trigger2 = p2bodydist x < 150 
trigger2 = P2statetype != L
trigger3 = Var(20) = 1
trigger3 = enemy, numhelper > 0 || (enemy, numproj > 0 && enemynear, movetype = A)
trigger4 = Var(20) = 1
trigger4 = random > 800
trigger4 = Life >= 500
trigger4 = Power >= 3000
value = 291
ctrl = 0

[State 294, 3];めくる
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [0,9]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 292
ctrl = 0

[State 294, 3];悩む
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [10,14]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 293
ctrl = 0

[State 294, 3];そよ風
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [15,45]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 294
ctrl = 0

[State 294, 3];突風
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [46,50]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 295
ctrl = 0

;---------------
[Statedef 295];突風
type    = S
physics = S
movetype= I
anim = 295
ctrl = 0
velset = 0,0
facep2 = 1

[State 295, 1]
type = LifeAdd
trigger1 = time % 8 = 1
value = 1

[State 295, 1]
type = PowerAdd
trigger1 = time % 12 = 1
value = 5

[State 295, 1]
type = playsnd
trigger1 = time = 0
value = S0,36

[State 295, 1]
type = playsnd
trigger1 = time = 0
value = S1,2

[State 295]
type = varrandom
trigger1 = Time = 0
v = 19
range = 50,0

[State 295, 3]
type = ChangeState
triggerAll = AnimTime = 0
trigger1 = Var(20) = 0
trigger1 = command != "hold_start" 
trigger2 = Var(20) = 1
trigger2 = p2bodydist x < 150 
trigger2 = P2statetype != L
trigger3 = Var(20) = 1
trigger3 = enemy, numhelper > 0 || (enemy, numproj > 0 && enemynear, movetype = A)
trigger4 = Var(20) = 1
trigger4 = random > 800
trigger4 = Life >= 500
trigger4 = Power >= 3000
value = 291
ctrl = 0

[State 295, 3];めくる
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [0,18]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 292
ctrl = 0

[State 295, 3];悩む
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [19,29]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 293
ctrl = 0

[State 295, 3];そよ風
type = ChangeState
triggerAll = AnimTime = 0
triggerAll = Var(19) = [30,50]
trigger1 = Var(20) = 0
trigger1 = command = "hold_start"
trigger2 = Var(20) = 1
value = 294
ctrl = 0

;-----------------------------------------------------------------------------------
投げ技
;------------------------------------
;B投げ
[Statedef 840]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
animtype  = hard
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 811
p2stateno = 812
guard.dist = 0
fall = 1
fall.recover = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 240

;-------------
[Statedef 811]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60
sprpriority = 5

[State 811, 1]
type = Width
trigger1 = 1
edge = 50,0

[State 811, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 42, 0

[State 811, Bind 1]
type = Targetstate
trigger1 = AnimElem = 4
value = 813

[State 811, Bind 1]
type = Targetstate
trigger1 = AnimElem = 5
value = 814

[State 811, 4]
type = null;targetbind
trigger1 = animelem = 3
postype = p1
pos = 47,-35

[State 811, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = 47,-35

[State 811, 4]
type = targetbind
trigger1 = animelem = 5
postype = p1
pos = 50,0

[State 811, 4]
type = targetlifeadd
trigger1 = animelem = 5
value = -100

[State 811, 4]
type = envshake
trigger1 = animelem = 5
time = 5

[State 811, 1]
type = playsnd
trigger1 = AnimElem = 2
value = S0,10

[State 811, 1]
type = playsnd
trigger1 = AnimElem = 4
value = S1,19

[State 811, 1]
type = playsnd
trigger1 = AnimElem = 5
value = S1,5

[State 811, 4]
type = Explod
trigger1 = AnimElem = 5
anim = 515
postype = p1
pos = 40,0
sprpriority = -2
ownpal = 1

[State 811, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------P2State
[Statedef 812]
type    = A
movetype= H
physics = N
velset = 0,0
;anim = 811
sprpriority = -1

[State 812, 4]
type = SelfState
trigger1 = enemy,movetype = H
value = 5300

[State 812, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 812, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 811

;-------------P2State
[Statedef 813]
type    = A
movetype= H
physics = N
sprpriority = 4
;velset = -3,-6

[State 813, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 812

[State 813, 1]
type = null;VelAdd
Trigger1 = time > 0
y = .39

[State 813, 4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;-----------P2State
[Statedef 814]
type    = A
movetype= H
physics = N
sprpriority = 4
velset = 0,0

[State 814, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 814

[State 814, 1]
type = Velset
Trigger1 = animelem = 3
x = -4
y = -5.5

[State 814, 1]
type = VelAdd
Trigger1 = animelem = 3, >= 0
y = .39

[State 814, 4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;----------------------------------------
[Statedef 810];C
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
animtype  = hard
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 830;811
p2stateno = 831;812
guard.dist = 0
fall = 1
fall.recover = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 220

[Statedef 830];D
type    = S
movetype= A
physics = N
anim = 830
poweradd = 60
sprpriority = 5

[State 701, 1]
type = Width
trigger1 = 1
edge = 50,0

[State 240, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 8002
postype = p1
pos = 55, -112
sprpriority = 4
ownpal = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 55, -116

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = -20,-80

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = -20,-107

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 19,-113

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = 48,-36

[State 810, Bind 1]
type = null;Targetstate
trigger1 = AnimElem = 5
value = 813

[State 810, Bind 1]
type = Targetstate
trigger1 = AnimElem = 7
value = 814

[State 240, 4]
type = targetbind
trigger1 = animelem = 7
postype = p1
pos = 62,0

[State 840, 4]
type = targetlifeadd
trigger1 = animelem = 7
value = -100

[State 840, 4]
type = envshake
trigger1 = animelem = 7
time = 5

[State 701, 1]
type = playsnd
trigger1 = AnimElem = 1
value = S1,4

[State 701, 1]
type = playsnd
trigger1 = AnimElem = 1
value = S0,12

[State 701, 1]
type = playsnd
trigger1 = AnimElem = 7
value = S1,5

[State 240, 4]
type = Explod
trigger1 = AnimElem = 7
anim = 515
postype = p1
pos = 40,0
sprpriority = -2
ownpal = 1

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;B投げ
[Statedef 815]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 815, 1]
type = HitDef
Trigger1 = Time = 0
animtype  = hard
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 816
p2stateno = 812
guard.dist = 0
fall = 1
fall.recover = 0

[State 815, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 240

;----------------------
[Statedef 816];B
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 820
sprpriority = 2

[State 816, 1]
type = Width
trigger1 = time = 0
edge = 70,0

[State 816, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0

[State 816, Bind 1]
type = posadd
trigger1 = AnimElem = 5
x = 20

[State 816, 4]
type = targetstate
trigger1 = animelem = 5
value = 817

[State 816, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 19, -131

[State 816, 1]
type = playsnd
trigger1 = AnimElem = 5
value = S1,4

[State 816, 1]
type = playsnd
trigger1 = AnimElem = 2
value = S0,10

[State 816, 1]
type = playsnd
trigger1 = animelem = 8,>=0
trigger1 = animelem = 21,<=0
trigger1 = Time % 14 = 0
value = S1,21

[State 816, 4];掴み
type = Explod
trigger1 = animelem = 5
anim = 8002
postype = p1
pos = 17,-123
sprpriority = 2
supermove = 1
ownpal = 1

[State 816, 4];血
type = Explod
trigger1 = animelem = 6
trigger2 = animelem = 8
trigger3 = animelem = 10
trigger4 = animelem = 12
trigger5 = animelem = 14
trigger6 = animelem = 16
trigger7 = animelem = 18
trigger8 = animelem = 20
anim = 8002
postype = p1
pos = 17,-123
sprpriority = 2
supermove = 1
ownpal = 1

[State 816, 4]
type = targetlifeadd
trigger1 = animelem = 6
trigger2 = animelem = 8
trigger3 = animelem = 10
trigger4 = animelem = 12
trigger5 = animelem = 14
trigger6 = animelem = 16
trigger7 = animelem = 18
trigger8 = animelem = 20
value = -10
kill = 0

[State 816, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 820

;----------------
[Statedef 820];Y
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3004
sprpriority = 1

[State 820, 1]
type = Width
trigger1 = time = 0
edge = 0,90

[State 820, 4]
type = targetstate
trigger1 = animelem = 1
value = 3033

[State 820, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = -32,-118

[State 820, 4]
type = targetbind
trigger1 = animelem = 2
postype = p1
pos = -16,-113

[State 820, 4]
type = targetbind
trigger1 = animelem = 3
postype = p1
pos = -47,-35

[State 820, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = -55,0

[State 820, 4]
type = targetlifeadd
trigger1 = animelem = 4
value = -20

[State 820, 4]
type = envshake
trigger1 = animelem = 4
time = 5

[State 820, 4]
type = posadd
trigger1 = animelem = 2
x = -17

[State 820, 4]
type = posadd
trigger1 = animelem = 3
x = -20

[State 820, Bind 1]
type = posadd
trigger1 = AnimElem = 6
x = -9

[State 820, 4]
type = targetstate
trigger1 = animelem = 6,= 2
value = 3034

[State 820, 4]
type = turn
trigger1 = animtime = 0
value = 1

[State 820, 4]
type = PlaySnd
trigger1 = animelem = 2
value = S1,9

[State 820, 5]
type = PlaySnd
trigger1 = animelem = 4
value = S1,5

[State 820, 4]
type = Explod
trigger1 = animelem = 4
anim = 515
postype = p1
pos = -55,0
sprpriority = -4
ownpal = 1

[State 820, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------P2State
[Statedef 817];相手head
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 821


;[Statedef 818]
;type    = A
;movetype= H
;physics = N
;sprpriority = 4
;velset = 3,-6

;[State 5050, 1]
;type = ChangeAnim2
;trigger1 = time = 0
;value = 813

;[State 821, 1]
;type = VelAdd
;Trigger1 = time > 0
;y = .39

;[State 821, 4]
;type = SelfState
;trigger1 = Vel Y > 0
;trigger1 = Pos Y >= 0
;value = 5100

;---------------P2State
[Statedef 831]
type    = A
movetype= H
physics = N
velset = 0,0
;anim = 811
sprpriority = -1

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 5050, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 831

;-------------------------------------------------------------------------------
;特殊技
;----------------------------------------
[Statedef 900];回避（前）
type = S
movetype = I
physics = N
anim = 900
velset = 0,0
ctrl = 0
sprpriority = 1
poweradd = 0

[State 900, 1]
type = playsnd
trigger1 = time = 5
value = S0,39

[State 900,0]
type = PlayerPush
trigger1=Time >= 0
value = 0

[State 900, 1]
type = HitBy
trigger1 = Time = 0
value = SCA, AT
time = 25

[State 900, 1]
type = SprPriority
Trigger1 = Time = 0
value = -1

[State 900, 1]
type = Velset
trigger1 = animelem = 3
x = 5

[State 900, 1]
type = Velset
trigger1 = animelem = 9
x = 0

[State 900, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
[Statedef 905];ガードキャンセル回避（前）
type = S
movetype = I
physics = N
anim = 900
velset = 0,0
ctrl = 0
sprpriority = 1
poweradd = -500

[State 905, 1]
type = playsnd
trigger1 = time = 1
value = S0,27

[State 905, 4]
type = Explod
trigger1 = Time = 0
anim = 8008
postype = p1
pos = 0,-78
sprpriority = 4

[State 905,0]
type = PlayerPush
trigger1=Time >= 0
value = 0

[State 905,0]
type = envcolor
trigger1 = Time = 0
time = 2
value = 255,255,255

[State 905, 1]
type = HitBy
trigger1 = Time = 0
value = SCA, AT
time = 25

[State 905, 2]
type = Pause
trigger1 = Time = 0
time = 6
movetime = 6

[State 905, 1]
type = SprPriority
Trigger1 = Time = 0
value = -1

[State 905, 2]
type = afterimage
trigger1 = animelem = 2
time = 10
length = 8
PalBright   =   0,  0,  0
PalContrast = 255,255,255
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
ignorehitpause = 1

[State 905, 1]
type = Velset
trigger1 = animelem = 3
x = 5

[State 905, 1]
type = Velset
trigger1 = animelem = 9
x = 0

[State 905, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------
[Statedef 910];回避（後）
type = S
movetype = I
physics = N
anim = 910
velset = 0,0
ctrl = 0
sprpriority = 1
poweradd = 0

[State 910, 1]
type = playsnd
trigger1 = time = 5
value = S0,39

[State 910,0]
type = PlayerPush
trigger1=Time >= 0
value = 0

[State 910, 1]
type = HitBy
trigger1 = Time = 0
value = SCA, AT
time = 25

[State 910, 1]
type = HitBy
trigger1 = Time = 0
value = SCA, AT
time = 20

[State 910, 1]
type = SprPriority
Trigger1 = Time = 0
value = -1

[State 910, 1]
type = Velset
trigger1 = animelem = 3
x = -5.3

[State 910, 1]
type = Velset
trigger1 = animelem = 9
x = 0

[State 910, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------
[Statedef 915];回避（後）ガードキャンセル
type = S
movetype = I
physics = N
anim = 910
velset = 0,0
ctrl = 0
sprpriority = 1
poweradd = -500

[State 915, 1]
type = playsnd
trigger1 = time = 1
value = S0,27

[State 915, 4]
type = Explod
trigger1 = Time = 0
anim = 8008
postype = p1
pos = 0,-78
sprpriority = 4

[State 915,0]
type = PlayerPush
trigger1=Time >= 0
value = 0

[State 915,0]
type = envcolor
trigger1 = Time = 0
time = 2
value = 255,255,255

[State 915, 1]
type = HitBy
trigger1 = Time = 0
value = SCA, AT
time = 25

[State 915, 1]
type = HitBy
trigger1 = Time = 0
value = SCA, AT
time = 20

[State 915, 2]
type = Pause
trigger1 = Time = 0
time = 6
movetime = 6

[State 915, 1]
type = SprPriority
Trigger1 = Time = 0
value = -1

[State 915, 2]
type = afterimage
trigger1 = animelem = 2
time = 10
length = 8
PalBright   =   0,  0,  0
PalContrast = 255,255,255
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
ignorehitpause = 1

[State 915, 1]
type = Velset
trigger1 = animelem = 3
x = -5.3

[State 915, 1]
type = Velset
trigger1 = animelem = 9
x = 0

[State 915, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
;FORWARD + A(Cancel)
[Statedef 605]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 605
sprpriority = 4
velset = 0,0
juggle = 7

[State 200,sn ]
type = PlaySnd
trigger1 = animelem = 1
value = s0,14

[State 200,ht ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
pausetime = 12,15
damage = 20,0
sparkno = s8002
sparkxy = 0,-75
hitsound = s1,14
guardsound = s1,3
ground.type = High
ground.slidetime = 12
ground.hittime = 20
ground.velocity = -8.5,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -6
getpower = 30,0
givepower = 5,30

[State 200, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------
;FORWARD + A
[Statedef 607]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 605
sprpriority = 4
velset = 0,0
juggle = 7

[State 200,sn ]
type = PlaySnd
trigger1 = animelem = 1
value = s0,14

[State 200,ht ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
pausetime = 12,15
damage = 20,0
sparkno = s8002
sparkxy = 0,-75
hitsound = s1,14
guardsound = s1,3
ground.type = High
ground.slidetime = 12
ground.hittime = 20
ground.velocity = -8.5,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -6
getpower = 30,0
givepower = 5,30

[State 200, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;;Jump Down Y
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 7
poweradd= 20
ctrl = 0
anim = 630
sprpriority = 2

[State 630, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 630, 1]
type = playsnd
trigger1 = time = 0
value = S0,18

[State 630, 2]
type = HitDef
trigger1 = animelem = 6
attr = S, NA
animtype  = Medium
damage    = 25,0
guardflag = H
hitflag = MAF
pausetime = 2,0
sparkno = S8003
guard.sparkno = S8004
sparkxy = -7,-15
hitsound   = S1,15
guardsound = S1,18
ground.type = high
ground.slidetime = 5
ground.hittime  = 8
ground.velocity = -2.5, 6
air.velocity = -2,6.5
air.juggle  = 7
fall = 1
fall.yvelocity = 4
fall.recover = 0
fall.damage = 25
air.fall = 1

[State 630, 1]
type = VarSet
trigger1 = Time = 0
var(17) = Vel Y

[State 630, 1]
type = VelSet
trigger1 = animelem = 5,< 1
y = 0

[State 630, 1]
type = VelSet
trigger1 = animelem = 5,= 1
x = Vel X * 0.7
y = var(17)

;---------------------------------------------------------------------------
;ふっとばし
[Statedef 250];
type    = S
movetype= A
physics = S
juggle  = 7
poweradd = 20
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

[State 250, 1]
type = VelAdd
trigger1 = animelem = 5
x = 2

[State 250, 1]
type = playsnd
trigger1 = time = 0
value = S0,7

[State 250, 5]
type = Explod
trigger1 = AnimElem = 6
anim = 1741
ID = 1741
sprpriority = 6
postype = p1
pos = 40,-75
vel = 3, 0
facing = -1
vfacing = -1
supermove = 1
ownpal = 1
removeongethit = 1

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = hard
damage = 65,5
guardflag = M
hitflag = MAF
pausetime = 12,16
sparkxy = -20,-60
hitsound   = S1,28
guardsound = S1,19
ground.type = High
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -7,-5
air.velocity = -7,-4
sparkno = S8000
guard.sparkno = S8004
air.juggle  = 7
fall = 1
fall.recover = 0

[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ふっとばし（ガードキャンセル）
[Statedef 252];
type    = S
movetype= A
physics = S
juggle  = 7
poweradd = -500
ctrl = 0
velset = 0,0
anim = 252
sprpriority = 2

[State 252, 1]
type = VelAdd
trigger1 = animelem = 5
x = 2

[State 252, 2]
type = Pause
trigger1 = Time = 0
time = 6
movetime = 6

[State 252, 1]
type = playsnd
trigger1 = time = 0
value = S0,29

[State 252,0]
type = envcolor
trigger1 = Time = 0
time = 2
value = 255,255,255

[State 252, 1]
type = notHitBy
trigger1 = Time = 0
value = SCA, AA, AP
time = 10

[State 252, 4]
type = Explod
trigger1 = Time = 0
anim = 8008
postype = p1
pos = 0,-78
sprpriority = 4

[State 252, 5]
type = Explod
trigger1 = AnimElem = 6
anim = 1741
ID = 1741
sprpriority = 6
postype = p1
pos = 40,-75
vel = 3, 0
facing = -1
vfacing = -1
supermove = 1
ownpal = 1
removeongethit = 1

[State 252, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = hard
damage = 50,10
guardflag = M
hitflag = MAF
pausetime = 12,16
sparkxy = -20,-60
hitsound   = S1,28
guardsound = S1,19
ground.type = High
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -7,-5
air.velocity = -7,-4
sparkno = S8000
guard.sparkno = S8004
air.juggle  = 7
fall = 1
fall.recover = 0

[State 252, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------
;ジャンプ　ふっとばし
[Statedef 255]
type = A
movetype = A
physics = A
poweradd = 20
juggle  = 4
anim = 305
ctrl = 0

[State 255, 1]
type = VelAdd
trigger1 = animelem = 4
x = Vel X * 0.05
y = -1

[State 255, se]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,9

[State 255, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 3241
postype = p1
pos = 0,0
vel = Vel X, (Vel Y + 0.4) * 0.5
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 255, 1]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype = Back
damage = 70,5
hitflag = MAF
guardflag = MA
pausetime = 20,23
sparkxy = -10,-35
sparkno = S8000
guard.sparkno = S8004
hitsound = s1,27
guardsound = 1,19
ground.type = High
ground.slidetime = 12
ground.hittime = 18
ground.velocity = -7.5,-4.5   
air.velocity = -7.5,-2.5
fall = 1
fall.recover = 0

[State 255, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;--------------------------------
;ジャンプ　ふっとばし（ガードキャンセル）
[Statedef 257]
type = A
movetype = A
physics = A
poweradd = -500
juggle  = 4
anim = 305
ctrl = 0

[State 257, 1]
type = VelAdd
trigger1 = animelem = 4
x = Vel X * 0.05
y = -1

[State 257, 2]
type = Pause
trigger1 = Time = 0
time = 4
movetime = 4

[State 257, se]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,29

[State 257,0]
type = envcolor
trigger1 = Time = 0
time = 2
value = 255,255,255

[State 257, 1]
type = notHitBy
trigger1 = Time = 0
value = SCA, AA, AP
time = 10

[State 257, 4]
type = Explod
trigger1 = Time = 0
anim = 8008
postype = p1
pos = 0,-78
sprpriority = 4

[State 257, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 3241
postype = p1
pos = 0,0
vel = Vel X, (Vel Y + 0.4) * 0.5
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 257, 1]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype = Back
damage = 60,12
hitflag = MAF
guardflag = MA
pausetime = 20,23
sparkxy = -10,-35
sparkno = S8000
guard.sparkno = S8004
hitsound = s1,27
guardsound = 1,19
ground.type = High
ground.slidetime = 12
ground.hittime = 18
ground.velocity = -7.5,-4.5   
air.velocity = -7.5,-2.5
fall = 1
fall.recover = 0

[State 257, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;-----------------------------------------------------------------
;通常技
;----------------------------------------
;Standing X
[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
ctrl = 0

[State 200, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 200, 1]
type = playsnd
trigger1 = time = 0
value = S0,14

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 25,0
animtype = Light
guardflag = MA
hitflag = MA
priority = 3, Hit 
pausetime = 5, 6
sparkno = S8002
guard.sparkno = S8004
sparkxy = 5, -85
hitsound = s1, 3
guardsound = s1, 18
ground.type = High
ground.slidetime = 7
ground.hittime  = 13
ground.velocity = -5
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 15 
getpower = 10,10

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Standing Y - Close
[Statedef 220];
type    = S
movetype= A
physics = S
juggle  = 7
poweradd = 20
ctrl = 0
velset = 0,0
anim = 220
sprpriority = -1

[State 220, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 220, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = hard
damage    = 60,0
guardflag = M
hitflag = MA
pausetime = 12,16
sparkxy = 10,-70
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -8
air.velocity = -6,-5
sparkno = S8000
guard.sparkno = S8004
air.juggle  = 5

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Standing C - Normal
[Statedef 221]
type = S
movetype = A
physics = S
anim = 221
ctrl = 0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,14

[State 221, 1]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 12
trigger6 = AnimElem = 13
x = 10

[State 221, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 30,0
animtype = Light
guardflag = MA
hitflag = MA
priority = 3, Hit 
pausetime = 10, 15
sparkno = S8000
guard.sparkno = S8004
sparkxy = 5, -85
hitsound   = S1,14
guardsound = S1,19
ground.type = Low
ground.slidetime = 10
ground.hittime  = 23
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 15 
getpower = 0,0

[State 221, 2]
type = HitDef
trigger1 = AnimElem = 11
attr = S, NA
damage = 25,0
animtype = Light
guardflag = MA
hitflag = MA
priority = 3, Hit 
pausetime = 10, 13
sparkno = S8000
guard.sparkno = S8004
sparkxy = 5, -85
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 15
ground.hittime  = 23
ground.velocity = -10
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 15 
getpower = 0,0

[State 221, pow]
type = PowerAdd
trigger1 = Movehit
trigger1 = Var(1) != 1
value = 20
persistent = 0

[State 221,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;----------------------------------------
;Standing A - Close
[Statedef 210]
type = S
movetype = A
physics = S
anim = 210
ctrl = 0

[State 210, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 210, 1]
type = playsnd
trigger1 = time = 0
value = S0,19

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 25,0
animtype = Light
guardflag = MA
hitflag = MA
priority = 3, Hit 
pausetime = 5, 8
sparkno = S8002
guard.sparkno = S8004
sparkxy = 5, -85
hitsound = s1, 4
guardsound = s1,18
ground.type = High
ground.slidetime = 5
ground.hittime  = 13
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 15 
getpower = 10,10

[State 210,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Standing A - Normal
[Statedef 211]
type = S
movetype = A
physics = S
anim = 211
ctrl = 0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,19

[State 211, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 25,0
animtype = Light
guardflag = MA
hitflag = MA
priority = 3, Hit 
pausetime = 7, 10
sparkno = S8002
guard.sparkno = S8004
sparkxy = 5, -85
hitsound = s1, 4
guardsound = s1, 18
ground.type = High
ground.slidetime = 5
ground.hittime  = 13
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 15 
getpower = 0,0

[State 211, pow]
type = PowerAdd
trigger1 = Movehit
trigger1 = Var(1) != 1
value = 10
persistent = 0

[State 211,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------
;Standing B - Normal
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 7
poweradd = 40
ctrl = 0
velset = 0,0
anim = 212
sprpriority = 2


[State 240, 1]
type = playsnd
trigger1 = time = 0
value = S1,0


[State 240, 4]
type = posadd
trigger1 = animelem = 6
x = 14

[State 240, 4]
type = posadd
trigger1 = animelem = 9
x = 26

[State 240, 1]
type = playsnd
trigger1 = time = 0
value = S0,16

[State 240, 2]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
animtype  = hard
damage    = 25,0
guardflag = M
hitflag = MA
pausetime = 10,13
sparkno = S8000
guard.sparkno = S8004
sparkxy = -7,-75
hitsound   = S1,14
guardsound = S1,19
ground.type = high
ground.slidetime = 10
ground.hittime  = 13
ground.velocity = -4
air.velocity = -3
air.juggle  = 7

[State 240, 2]
type = HitDef
trigger1 = animelem = 6
attr = S, NA
animtype  = hard
damage    = 25,0
guardflag = M
hitflag = MA
pausetime = 10,13
sparkno = S8000
guard.sparkno = S8004
sparkxy = -7,-75
hitsound   = S1,14
guardsound = S1,19
ground.type = high
ground.slidetime = 10
ground.hittime  = 13
ground.velocity = -4
guard.velocity = -7
air.velocity = -3
air.juggle  = 7

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------
;Crouch X
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd = 20
ctrl = 0
velset = 0,0
anim = 203
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 410, 1]
type = playsnd
trigger1 = time = 0
value = S0,14

[State 410, 2]
type = HitDef
trigger1 = animelem = 2
attr = S, NA
damage = 25, 0
animtype  = Medium
guardflag = M
hitflag = MA
priority = 3, Hit
pausetime = 5, 8
sparkno = S8002
guard.sparkno = S8004
sparkxy = -10, -50
hitsound = S1,3
guardsound = S1,18
ground.type = High
ground.slidetime = 5
ground.hittime  = 13
ground.velocity = -5
airguard.velocity = -5,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 15
air.juggle  = 7

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------
;Crouch Y
[Statedef 411]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd = 50
ctrl = 0
velset = 0,0
anim = 229
sprpriority = 2

[State 411, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 411, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 411, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = hard
damage    = 60,0
guardflag = M
hitflag = MA
pausetime = 10,13
sparkxy = 10,-70
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -7
air.velocity = -6,-4
sparkno = S8000
guard.sparkno = S8004
air.juggle  = 7
guard.velocity = -8

[State 411, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch A
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd = 20
ctrl = 0
velset = 0,0
anim = 214
sprpriority = 2

[State 430, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 430, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 430, 2]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
damage = 25, 0
animtype  = Medium
guardflag = L
hitflag = MA
priority = 3, Hit
pausetime = 5, 8
sparkno = S8002
guard.sparkno = S8004
sparkxy = -10, -15
hitsound = S1,3
guardsound = S1,18
ground.type = High
ground.slidetime = 5
ground.hittime  = 7
ground.velocity = -5
airguard.velocity = -5,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 15
air.juggle  = 7

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch B
[Statedef 440];しゃがみ強キック
type    = C
movetype= A
physics = C
juggle  = 7
poweradd = 40
ctrl = 0
velset = 0,0
anim = 213
sprpriority = 2

[State 440, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 440, 1]
type = playsnd
trigger1 = time = 0
value = S0,16

[State 440, 2]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
damage = 50, 0
animtype  = Medium
guardflag = L
hitflag = MA
priority = 3, Hit
pausetime = 10, 13
sparkno = S8000
guard.sparkno = S8004
sparkxy = -10, -10
hitsound   = S1,15
guardsound = S1,19
ground.type = High
ground.slidetime = 5
ground.hittime  = 7
ground.velocity = -2,-5
airguard.velocity = -2,-3
air.type = High
air.velocity = -2.5,-3
air.hittime = 15
fall = 1
air.juggle  = 7

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------
;Front Jump X
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 7
poweradd= 11
ctrl = 0
anim = 600
sprpriority = 2

[State 600, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 600, 1]
type = playsnd
trigger1 = time = 0
value = S0,14

[State 600, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 50, 0
animtype  = Medium
guardflag = H
hitflag = MA
priority = 3, Hit
pausetime = 5, 8
sparkno = S8003
guard.sparkno = S8004
sparkxy = -10, -26
hitsound = S1,12
guardsound = S1,18
ground.type = High
ground.slidetime = 5
ground.hittime  = 7
ground.velocity = -5
airguard.velocity = -5,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 15
air.juggle  = 7

;-------------------------------------------------------------------
;Neu Jump X
[Statedef 601]
type    = A
movetype= A
physics = A
juggle  = 7
poweradd= 11
ctrl = 0
anim = 660
sprpriority = 2

[State 601, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 601, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 601, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 50, 0
animtype  = Medium
guardflag = H
hitflag = MA
priority = 3, Hit
pausetime = 5, 8
sparkno = S8003
guard.sparkno = S8004
sparkxy = -10, -26
hitsound = S1,12
guardsound = S1,18
ground.type = High
ground.slidetime = 5
ground.hittime  = 7
ground.velocity = -5
airguard.velocity = -5,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 15
air.juggle  = 7

;---------------------------------------------------------------------------
;Jump Y
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 7
poweradd= 65
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 610, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 610, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = hard
damage    = 60,0
guardflag = H
hitflag = MA
pausetime = 10,14
sparkxy = 10,-40
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 17
ground.hittime  = 18
ground.velocity = -6
air.velocity = -6,-4
sparkno = S8000
guard.sparkno = S8004
air.juggle  = 7

;---------------------------------------------------------------------------
;Neu Jump Y
[Statedef 611]
type    = A
movetype= A
physics = A
juggle  = 7
poweradd= 65
ctrl = 0
anim = 662
sprpriority = 2

[State 611, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 611, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 611, 2]
type = HitDef
trigger1 = AnimElem = 3,>= 0
trigger1 = NumTarget(611) = 0
attr = S, NA
ID = 611
animtype  = hard
damage    = 60,0
guardflag = H
hitflag = MA
pausetime = 10,20
sparkxy = 10,-40
hitsound   = S1,10
guardsound = S1,19
ground.type = High
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -6
air.velocity = -6,-4
sparkno = S8000
guard.sparkno = S8004
air.juggle  = 7

;---------------------------------------------------------------------------
;Jump A
[Statedef 631]
type    = A
movetype= A
physics = A
juggle  = 7
poweradd= 20
ctrl = 0
anim = 661
sprpriority = 2

[State 631, 1]
type = playsnd
trigger1 = time = 0
value = S0,19

[State 631, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 631, 2]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
animtype  = Medium
damage    = 25,0
guardflag = H
hitflag = MA
pausetime = 12,15
sparkno = S8003
guard.sparkno = S8004
sparkxy = -7,-15
hitsound   = S1,13
guardsound = S1,18
ground.type = high
ground.slidetime = 5
ground.hittime  = 8
ground.velocity = -8
air.velocity = -2.5,-3.5
air.juggle  = 7

;---------------------------------------------------------------------------
;Neu Jump B
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 7
poweradd= 65
ctrl = 0
anim = 640
sprpriority = 2

[State 640, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 640, 4]
type = posadd
trigger1 = animelem = 7
x = 26

[State 640, 1]
type = playsnd
trigger1 = time = 0
value = S0,16

[State 640, 2]
type = HitDef
triggerAll = NumTarget(640) = 0
trigger1 = animelem = 2,>= 0
trigger1 = animelem = 5,< 0
attr = S, NA
ID = 640
animtype  = hard
damage    = 70,0
guardflag = H
hitflag = MA
pausetime = 10,15
sparkno = S8000
guard.sparkno = S8004
sparkxy = -7,-75
hitsound   = S1,14
guardsound = S1,19
ground.type = high
ground.slidetime = 17
ground.hittime  = 18
ground.velocity = -4
air.velocity = -3
air.juggle  = 7

[State 640, 2]
type = HitDef
triggerAll = NumTarget(641) = 0
trigger1 = animelem = 5,>= 0
trigger1 = animelem = 7,< 0
attr = S, NA
ID = 641
animtype  = hard
damage    = 70,0
guardflag = H
hitflag = MA
pausetime = 10,13
sparkno = S8000
guard.sparkno = S8004
sparkxy = -7,-75
hitsound   = S1,14
guardsound = S1,19
ground.type = high
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -4
air.velocity = -3
air.juggle  = 7

[State 630, 1]
type = VarSet
trigger1 = Time = 0
var(17) = Vel Y

[State 630, 1]
type = VelSet
trigger1 = animelem = 3,< 0
y = 0

[State 630, 1]
type = VelSet
trigger1 = animelem = 3,= 0
x = Vel X * 0.7
y = var(17)

;---------------------------------------------------------------------------
;Jump Y
[Statedef 641]
type    = A
movetype= A
physics = A
juggle  = 7
poweradd= 65
ctrl = 0
anim = 663
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,16

[State 240, 2]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
animtype  = hard
damage    = 70,0
guardflag = H
hitflag = MA
pausetime = 10,13
sparkno = S8000
guard.sparkno = S8004
sparkxy = -7,-15
hitsound   = S1,14
guardsound = S1,19
ground.type = high
ground.slidetime = 17
ground.hittime  = 18
ground.velocity = -4
air.velocity = -3
air.juggle  = 7


;-----------------------------------------------------------
;---------------------------------------------------------------------------
;必殺技
;----------------------------------------------------------------
[Statedef 1000];よのかぜX
type    = S
movetype= A
physics = S
juggle  = 7
poweradd= 110
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 1000, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,25

[State 1000, 4]
type = PlaySnd
trigger1 = animelem = 7
value = S1,7

[State 1000, 2]
type = Projectile
projID = 1000
trigger1 = animelem = 7
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = -1
projpriority = 999999999
projanim = 1040
offset = 50,0
velocity = 0,0
attr = S, SP
damage   = 120,10
guard.pausetime = 0,8
animtype = heavy
guardflag = M
hitflag = MA
pausetime = 0,7
hitsound   = S1,14
guardsound = S1,19
sparkxy = 0, -75 + floor(p2bodydist y)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 26
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
[Statedef 1010];よのかぜA
type    = S
movetype= A
physics = S
juggle  = 7
poweradd= 110
velset = 0,0
anim = 1010
ctrl = 0
sprpriority = 2

[State 1010, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,25

[State 1010, 4]
type = PlaySnd
trigger1 = animelem = 7
value = S1,7

[State 1010, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 7
projremove = 0
projremovetime = 27
projhits = 1
projremanim = -1
projhitanim = -1
projpriority = 999999999
projanim = 1040
offset = 100,0
velocity = 0,0
attr = S, SP
damage   = 120,10
animtype = heavy
guardflag = M
hitflag = MA
pausetime = 0,7
guard.pausetime = 0,8
hitsound   = S1,14
guardsound = S1,19
sparkxy = 0, -75 + floor(p2bodydist y)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 26
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40
p2facing = 1

[State 1010, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
[Statedef 1020];よのかぜＹ
type    = S
movetype= A
physics = S
juggle  = 7
poweradd= 110
velset = 0,0
anim = 1020
ctrl = 0
sprpriority = 2

[State 1020, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,25

[State 1020, 4]
type = PlaySnd
trigger1 = animelem = 7
value = S1,7

[State 1020, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 7
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = -1
projpriority = 999999999
projanim = 1040
offset = 150,0
guard.dist = 150
velocity = 0,0
attr = S, SP
damage   = 120,10
animtype = heavy
guardflag = M
hitflag = MA
pausetime = 0,7
guard.pausetime = 0,8
hitsound   = S1,14
guardsound = S1,19
sparkxy = 0, -75 + floor(p2bodydist y)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 26
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
[Statedef 1030];よのかぜＢ
type    = S
movetype= A
physics = S
juggle  = 7
poweradd= 110
velset = 0,0
anim = 1030
ctrl = 0
sprpriority = 2

[State 1030, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,25

[State 1030, 4]
type = PlaySnd
trigger1 = animelem = 7
value = S1,7

[State 1030, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 7
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = -1
projpriority = 999999999
projanim = 1040
offset = 200,0
guard.dist = 200
velocity = 0,0
attr = S, SP
damage   = 120,10
animtype = heavy
guardflag = M
hitflag = MA
pausetime = 0,7
guard.pausetime = 0,8
hitsound   = S1,14
guardsound = S1,19
sparkxy = 0, -75 + floor(p2bodydist y)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 26
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40

[State 1030, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1300];あおいばな
type    = S
movetype= A
physics = S
juggle  = 7
poweradd = 60
ctrl = 0
velset = 0,0
anim = 1300
sprpriority = -1

[State 1300, 1]
type = playsnd
trigger1 = time = 0
value = S0,14

[State 1300, 1]
type = Velset
trigger1 = animelem = 2
x = 5

[State 1300, 1]
type = Velset
trigger1 = animelem = 6
x = 0

[State 1300, 1]
type = PosAdd
trigger1 = animelem = 6
x = 9

[State 1300, 4]
type = Explod
trigger1 = animelem = 5
anim = 1305
postype = p1
pos = 0,0
sprpriority = 5
ownpal = 1

[State 1300, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype  = hard
damage    = 50,5
guardflag = M
hitflag = MA
pausetime = 2,7
guard.pausetime = 2,4
guard.hittime = 15
sparkxy = 0,-60
hitsound   = S1,6
guardsound = S1,19
ground.type = High
ground.slidetime = 12
ground.hittime  = 22
ground.velocity = -6
air.velocity = -6,-4
sparkno = S8001
guard.sparkno = S8004
guardsound = S0,33
air.fall = 1
air.juggle  = 7

[State 1300, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1305];あおいばな
type    = S
movetype= A
physics = S
juggle  = 7
poweradd = 80
ctrl = 0
velset = 0,0
anim = 1302
sprpriority = -1

[State 1305, 1]
type = playsnd
trigger1 = time = 0
value = S0,14

[State 1305, 1]
type = Velset
trigger1 = animelem = 2
x = 9.5

[State 1305, 1]
type = Velset
trigger1 = animelem = 6
x = 0

[State 1305, 1]
type = PosAdd
trigger1 = animelem = 6
x = 9

[State 1305, 4]
type = Explod
trigger1 = animelem = 5
anim = 1305
postype = p1
pos = 0,0
sprpriority = 5
ownpal = 1

[State 1305, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype  = hard
damage    = 70,10
guardflag = M
hitflag = MA
pausetime = 2,9
guard.pausetime = 3,7
guard.hittime = 18
sparkxy = 0,-60
hitsound   = S1,6
guardsound = S1,19
ground.type = High
ground.slidetime = 17
ground.hittime  = 25
ground.velocity = -6
air.velocity = -6,-4.5
sparkno = S8001
guard.sparkno = S8004
guardsound = S0,33
air.fall = 1
air.juggle  = 7

[State 1305, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------
[Statedef 1310];あおいばな２発目
type    = S
movetype= A
physics = S
juggle  = 7
poweradd = 80
ctrl = 0
velset = 0,0
anim = 1310
sprpriority = -1

[State 1310, 1]
type = Width
trigger1 = AnimElem = 5
player = 40,0

[State 1310, 4]
type = posadd
trigger1 = animelem = 5
x = 4

[State 1310, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 1310, 1]
type = Velset
trigger1 = animelem = 1
x = 8

[State 821, 1]
type = Velset
trigger1 = animelem = 5
x = 0

[State 1310, 4]
type = Explod
trigger1 = animelem = 4
anim = 1315
postype = p1
pos = 0,0
sprpriority = 5
ownpal = 1

[State 1310, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = hard
damage    = 60,9
guardflag = M
hitflag = MA
pausetime = 4,12
guard.pausetime = 4,8
sparkxy = 0,-60
hitsound   = S1,6
guardsound = S1,19
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
air.velocity = -6,-4
sparkno = S8001
guard.sparkno = S8004
air.fall = 1
air.juggle  = 7

[State 1310, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------
[Statedef 1320];あおいばな３発目
type    = S
movetype= A
physics = S
juggle  = 7
poweradd = 80
ctrl = 0
velset = 0,0
anim = 1320
sprpriority = -1

[State 1320, 4]
type = posadd
trigger1 = animelem = 1
x = 3;33

[State 1320, 1]
type = playsnd
trigger1 = time = 0
value = S0,24

[State 1320, 1]
type = Velset
trigger1 = animelem = 1, >= 0
trigger1 = AnimElem = 9, <= 0
x = 3

[State 1320, 1]
type = envcolor
trigger1 = movehit
time = 1
value = 255,255,255
under = -1
ignorehitpause = 1
persistent = 0

[State 1320, 4]
type = Explod
trigger1 = animelem = 7
anim = 1325
postype = p1
pos = 0,0
sprpriority = 5
ownpal = 1

[State 1320, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = up
damage    = 60,9
guardflag = M
hitflag = MAFD
pausetime = 0,3
guard.pausetime = 2,7
sparkxy = 0,-60
hitsound   = S1,10
guardsound = S1,18
ground.type = High
ground.slidetime = 18
ground.hittime  = 21
ground.velocity = -3,-5
air.velocity = -3,-4
sparkno = S8001
guard.sparkno = S8004
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
air.juggle  = 7

[State 1320, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------
[Statedef 1330];あおいばな天昇
type    = S
movetype= A
physics = S
juggle  = 7
poweradd = 80
ctrl = 0
velset = 0,0
anim = 1330
sprpriority = -1

[State 1330, 1]
type = Width
trigger1 = AnimElem = 5
player = 40,0

[State 1330, 4]
type = posadd
trigger1 = animelem = 3
x = 15

[State 1330, 1]
type = playsnd
trigger1 = time = 0
value = S0,16

[State 1330, 1]
type = Velset
trigger1 = animelem = 3
x = 3

[State 1330, 1]
type = Velset
trigger1 = animelem = 5
x = 0

[State 1330, 1]
type = playsnd
trigger1 = animelem = 7
value = S1,7

[State 1330, 2]
type = Projectile
projID = 1330
trigger1 = animelem = 7
projremove = 0
Projremovetime = 4
projhits = 1
projremanim = 1040
projpriority = 5
projanim = 1108
offset = 40,0
guard.dist = 200
velocity = 0,0
attr = S, SP
damage   = 40,8
animtype = Up
guardflag = M
hitflag = MAF
pausetime = 0,0
guard.pausetime = 0,2
hitsound   = S1,6
guardsound = S1,19
sparkxy = 0, -75 + floor(p2bodydist y)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 26
ground.velocity = -0.5,-9
air.animtype = Up
air.velocity = -0.5,-7.5
air.juggle = 1
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
Projedgebound = 40

[State 1310, VarSet_Int]
type = VarSet
trigger1 = Time = 0
v = 16
Value = 0

[State 1310, VarSet_A]
type = VarSet
trigger1 = projhit(1330) = 1
v = 16
Value = 1

[State 1310, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------
[Statedef 1340];あおいばな天翔
type    = S
movetype= A
physics = N
juggle  = 7
poweradd = 80
ctrl = 0
velset = 0,0
anim = 1340
sprpriority = -1

[State 1340,0]
type = PlayerPush
trigger1=Time >= 0
value = 0

[State 1340, 4]
type = statetypeset
trigger1 = animelem = 2
value = A

[State 1340, 4]
type = Explod
trigger1 = animelem = 1
anim = 3241
postype = p1
pos = 0,15
sprpriority = 5
ownpal = 1

[State 1340, 4]
type = velset
trigger1 = animelem = 2
x = 1
y = -11

[State 1340, 1]
type = playsnd
trigger1 = time = 0
value = S0,12

[State 1340, 1]
type = VelAdd
trigger1 = animelem = 2, > 0
y = .6

[State 1340, 1]
type = playsnd
trigger1 = animelem = 2
value = S1,22
;---------------------------------

[State 1340, 2]
type = afterimage
trigger1 = animelem = 10
time = 20
length = 12
PalContrast = 110,110,225
PalBright   =   3,3,9
PalAdd      =  0,0,85
trans = add
TimeGap  = 1
FrameGap = 4
ignorehitpause = 1

[State 1340, 2]
type = AfterImageTime
trigger1 = 1
time = 2

[State 1340, 1]
type = Velset
trigger1 = animelem = 9
x = 8
y = 5

[State 1340, 1]
type = envcolor
trigger1 = movehit
time = 1
value = 255,255,255
under = -1
ignorehitpause = 1
persistent = 0

[State 1340, 4]
type = Explod
trigger1 = animelem = 10
anim = 1442
postype = p1
pos = 37,-29
sprpriority = 5
ownpal = 1

[State 1340, 2]
type = HitDef
trigger1 = AnimElem = 10
attr = S, SA
animtype  = Diagup
damage    = 90,18
guardflag = HA
hitflag = MAFD
pausetime = 0,3
guard.pausetime = 2,7
sparkxy = 0,-60
hitsound   = S1,10
guardsound = S1,18
ground.type = High
ground.slidetime = 18
ground.hittime  = 21
ground.velocity = -2,-5
air.velocity = -2,-5
sparkno = S8000
guard.sparkno = S8004
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
air.juggle  = 7

[State 1340, 6]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1341
ctrl = 0

;-----------------
[Statedef 1341];着地
type    = S
movetype= I
physics = S
juggle  = 0
ctrl = 0
anim = 1341
sprpriority = 2

[State 1341, land]
type = PlaySnd
trigger1 = Time = 0
value = S1,8
channel = 1

[State 1341, 0]
type = velset
trigger1 = Time = 0
y = 0

[State 1341, 0]
type = veladd
trigger1 = Time = 0
y = 0

[State 1341, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1341, 1]
type = VelSet
trigger1 = Time = 0
x = Vel X * 0.5

[State 1341, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------
[Statedef 1400];わんひょう・まめつ
type    = S
movetype= A
physics = S
juggle  = 7
velset = 0,0
ctrl = 0
anim = 1400
sprpriority = 2

[State 1400, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 24

[State 1400, 1]
type = playsnd
trigger1 = Time = 0
value = S0,22

[State 1400, 1]
type = playsnd
trigger1 = animelem = 7
value = S1,23

[State 1400, 2]
type = Projectile
projID = 1401
trigger1 = animelem = 9, = 1
projremove = 0
Projremovetime = 8
projhits = 1
projremanim = -1
projpriority = 5
projanim = 1441
offset = 10,-50
velset = 2,-5
attr = S, SP
damage    = 12,3
guard.pausetime = 0,8
animtype = Hard
guardflag = M
hitflag = MA
pausetime = 0,7
hitsound   = S1,6
guardsound = S1,18
sparkxy = 10,-45
sparkno = S8002
guard.sparkno = S8004
guard.cornerpush.veloff = -6
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -8
ground.cornerpush.veloff = -5
air.animtype = Up
air.velocity = -4,-5
air.juggle = 3
air.cornerpush.veloff = -7
;fall = 1
;fall.xvelocity = -3
;fall.yvelocity = 10
air.fall = 1


[State 1400, 2]
type = Projectile
projID = 1400
trigger1 = animelem = 9, = 4
projremove = 0
Projremovetime = 8
projhits = 1
projremanim = -1
projpriority = 5
projanim = 1440
offset = 30,-62
velset = 15,0
attr = S, SP
damage    = 12,3
guard.pausetime = 0,8
animtype  = Midium
guardflag = M
hitflag = MA
pausetime = 0,7
hitsound   = S1,6
guardsound = S1,18
sparkxy = 10,-25
sparkno = S8002
guard.sparkno = S8004
guard.cornerpush.veloff = -6
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -8
ground.cornerpush.veloff = -5
air.animtype = Up
air.velocity = -4,-5
air.juggle = 3
air.cornerpush.veloff = -7
;fall = 1
;fall.xvelocity = -3
;fall.yvelocity = 10
air.fall = 1


[State 1400, 2]
type = Projectile
projID = 1402
trigger1 = animelem = 9, = 7
projremove = 0
Projremovetime = 8
projhits = 1
projremanim = -1
projpriority = 5
projanim = 1442
offset = 10,-60
velset = 15,0
attr = S, SP
damage    = 12,3
guard.pausetime = 0,8
animtype  = Back
guardflag = M
hitflag = MA
pausetime = 0,7
hitsound   = S1,6
guardsound = S1,18
sparkxy = 10,-5
sparkno = S8002
guard.sparkno = S8004
guard.cornerpush.veloff = -6
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -8
ground.cornerpush.veloff = -5
air.animtype = Up
air.velocity = -4,-5
air.juggle = 3
air.cornerpush.veloff = -7
;fall = 1
;fall.xvelocity = -3
;fall.yvelocity = 10
air.fall = 1

[State 1400]
type = Pause
triggerAll = ProjHit(1400) = 1 || ProjHit(1401) = 1 || ProjHit(1402) = 1
trigger1 = (GameTime%3) = 1
time = 1
movetime = 0
ignorehitpause = 1

[State 1400]
type = PosAdd
trigger1 = ProjContact(1400) = 1 || ProjContact(1401) = 1 || ProjContact(1402) = 1
trigger1 = frontedgebodydist < 80
x = -2

[State 1400,5]
type = ChangeState
trigger1 = Time = 63
value = 1401
ctrl = 0

;-----------------
[Statedef 1401]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1401
sprpriority = 2

[State 1401,5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------
[Statedef 1410];わんひょう
type    = S
movetype= A
physics = S
juggle  = 7
velset = 0,0
ctrl = 0
anim = 1410
sprpriority = 2

[State 1410, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 1410, 1]
type = playsnd
trigger1 = Time = 0
value = S0,22

[State 1410, 1]
type = playsnd
trigger1 = animelem = 6
value = S1,23

[State 1410, 2]
type = Projectile
projID = 1411
trigger1 = animelem = 8, = 1
projremove = 0
Projremovetime = 8
projhits = 1
projremanim = -1
projpriority = 5
projanim = 1441
offset = 5,-128
velset = 2,-5
attr = S, SP
damage    = 12,3
guard.pausetime = 0,8
animtype = Up
guardflag = M
hitflag = MAFD
pausetime = 0,7
hitsound   = S1,6
guardsound = S1,18
sparkxy = 10,-45
sparkno = S8002
guard.sparkno = S8004
guard.cornerpush.veloff = -6
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -7
ground.cornerpush.veloff = -5
air.animtype = Up
air.velocity = -3,-7
air.juggle = 1
air.cornerpush.veloff = -7
;fall = 1
;fall.xvelocity = -3
;fall.yvelocity = 10
air.fall = 1

[State 1410, 2]
type = Projectile
projID = 1410
trigger1 = animelem = 8, = 4
projremove = 0
Projremovetime = 8
projhits = 1
projremanim = -1
projpriority = 5
projanim = 1440
offset = 5,-128
velset = 2,-5
attr = S, SP
damage    = 12,3
guard.pausetime = 0,8
animtype = Hard
guardflag = M
hitflag = MAFD
pausetime = 0,7
hitsound   = S1,6
guardsound = S1,18
sparkxy = 10,-45
sparkno = S8002
guard.sparkno = S8004
guard.cornerpush.veloff = -6
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -7
ground.cornerpush.veloff = -5
air.animtype = Hard
air.velocity = -3,-7
air.juggle = 1
air.cornerpush.veloff = -7
;fall = 1
;fall.xvelocity = -3
;fall.yvelocity = 10
air.fall = 1

[State 1410, 2]
type = Projectile
projID = 1412
trigger1 = animelem = 8, = 7
projremove = 0
Projremovetime = 8
projhits = 1
projremanim = -1
projpriority = 5
projanim = 1442
offset = 5,-130
velset = 2,-5
attr = S, SP
damage    = 12,3
guard.pausetime = 0,8
animtype = Back
guardflag = M
hitflag = MAFD
pausetime = 0,7
hitsound   = S1,6
guardsound = S1,18
sparkxy = 10,-45
sparkno = S8002
guard.sparkno = S8004
guard.cornerpush.veloff = -6
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -7
ground.cornerpush.veloff = -5
air.animtype = Back
air.velocity = -3,-7
air.juggle = 1
air.cornerpush.veloff = -7
;fall = 1
;fall.xvelocity = -3
;fall.yvelocity = 10
air.fall = 1

[State 1410]
type = Pause
triggerAll = ProjHit(1410) = 1 || ProjHit(1411) = 1 || ProjHit(1412) = 1
trigger1 = (GameTime%3) = 1
time = 1
movetime = 0
ignorehitpause = 1

[State 1410]
type = PosAdd
trigger1 = ProjContact(1410) = 1 || ProjContact(1411) = 1 || ProjContact(1412) = 1
trigger1 = frontedgebodydist < 80
x = -2

[State 1410,5]
type = ChangeState
trigger1 = Time = 79;63
value = 1411
ctrl = 0

;-----------------
[Statedef 1411]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1411
sprpriority = 2

[State 1411,5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
[Statedef 1500];ひょうかA
type    = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1500
sprpriority = 2

[State 1500, 0]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1500, 4]
type = Explod
trigger1 = animelem = 2
anim = 3241
postype = p1
pos = 30,15
sprpriority = 5
ownpal = 1

[State 1500, 4]
type = velset
trigger1 = animelem = 3
x = 10

[State 1500, 1]
type = playsnd
trigger1 = time = 0
value = S0,21

[State 1500, 1]
type = playsnd
trigger1 = animelem = 2
value = S1,20

[State 1500, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1501

;-----------------
[Statedef 1501];end
type = S
physics = N
movetype= I
anim = 101
velset = 2,0
ctrl = 0

[State 1501, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
[Statedef 1510];ひょうかB
type    = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1510
sprpriority = 2

[State 1510, 0]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1510, 4]
type = Explod
trigger1 = animelem = 2
anim = 3241
postype = p1
pos = 30,15
sprpriority = 5
ownpal = 1

[State 1510, 4]
type = velset
trigger1 = animelem = 3
x = 11

[State 1510, 1]
type = playsnd
trigger1 = time = 0
value = S0,21

[State 1510, 1]
type = playsnd
trigger1 = animelem = 2
value = S1,20

[State 1510, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1501

;------------------------------------------------------------
;ひょうかX
[Statedef 1550]
type    = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1550
sprpriority = 2

[State 1550,0]
type = PlayerPush
trigger1=Time >= 0
value = 0

[State 1550, 4]
type = statetypeset
trigger1 = animelem = 3
value = A

[State 1550, 4]
type = Explod
trigger1 = animelem = 2
anim = 3241
postype = p1
pos = 30,15
sprpriority = 5
ownpal = 1

[State 1550, 4]
type = velset
trigger1 = animelem = 3
x = 6.5
y = -8.5

[State 1550, 1]
type = VelAdd
trigger1 = animelem = 3, > 0
y = .6

[State 1550, 1]
type = playsnd
trigger1 = time = 0
value = S0,21

[State 1550, 1]
type = playsnd
trigger1 = animelem = 2
value = S1,22

[State 1550, 6]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1551
ctrl = 0

;-----------------
[Statedef 1551];着地
type    = S
movetype= I
physics = S
juggle  = 0
ctrl = 0
anim = 1551
sprpriority = 2

[State 1551, land]
type = PlaySnd
trigger1 = Time = 0
value = S1,8
channel = 1

[State 1551, 0]
type = velset
trigger1 = Time = 0
y = 0

[State 1551, 0]
type = veladd
trigger1 = Time = 0
y = 0

[State 1551, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1551, 1]
type = VelSet
trigger1 = Time = 0
x = Vel X * 0.5

[State 1551, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------
;ひょうかY
[Statedef 1560]
type    = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1560
sprpriority = 2

[State 1560,0]
type = PlayerPush
trigger1=Time >= 0
value = 0

[State 1560, 4]
type = statetypeset
trigger1 = animelem = 3
value = A

[State 1560, 4]
type = Explod
trigger1 = animelem = 2
anim = 3241
postype = p1
pos = 30,15
sprpriority = 5
ownpal = 1

[State 1560, 4]
type = velset
trigger1 = animelem = 3
x = 8
y = -9

[State 1560, 1]
type = VelAdd
trigger1 = animelem = 3, > 0
y = .6

[State 1560, 1]
type = playsnd
trigger1 = time = 0
value = S0,21

[State 1560, 1]
type = playsnd
trigger1 = animelem = 2
value = S1,22

[State 1560, 6]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1561
ctrl = 0

;-----------------
[Statedef 1561];着地
type    = S
movetype= I
physics = S
juggle  = 0
ctrl = 0
anim = 1561
sprpriority = 2

[State 1561, land]
type = PlaySnd
trigger1 = Time = 0
value = S1,8
channel = 1

[State 1561, 0]
type = velset
trigger1 = Time = 0
y = 0

[State 1561, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1561, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
[Statedef 1600];かぜのいぶきX
type    = A
movetype= A
physics = N
juggle  = 7
poweradd= 110
velset = 0,0
anim = 1600
ctrl = 0
sprpriority = 2

[State 1600, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,25

[State 1600, 4]
type = PlaySnd
trigger1 = animelem = 5
value = S1,7

[State 1600, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 5
projremove = 0
Projremovetime = 12
projhits = 1
projremanim = 1641
projpriority = 999999999
projanim = 1640
offset = 30, -220 - Pos Y
velocity = 0,0
attr = S, SP
damage   = 120,10
guard.pausetime = 0,8
animtype = Up
guardflag = M
hitflag = MA
pausetime = 0,7
hitsound   = S1,14
guardsound = S1,19
sparkxy = 0, 55 + floor(p2bodydist y)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 26
ground.velocity = -3,6
air.animtype = Up
air.velocity = -3,6
air.juggle = 3
fall = 1
fall.xvelocity = -3
fall.yvelocity = 10
air.fall = 1
Projedgebound = 40

[State 1600, 1]
type = Velset
trigger1 = animelem = 5
x = -2
y = -4

[State 1600, 1]
type = VelAdd
trigger1 = animelem = 5, > 0
y = 0.3

[State 1600, 7]
type = ChangeState
trigger1 = Vel Y > 0
value = 1640
ctrl = 0

[State 1600, 7]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 0
ctrl = 1

;----------------------------------------------------------------
[Statedef 1610];かぜのいぶきA
type    = A
movetype= A
physics = N
juggle  = 7
poweradd= 110
velset = 0,0
anim = 1600
ctrl = 0
sprpriority = 2

[State 1610, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,25

[State 1610, 4]
type = PlaySnd
trigger1 = animelem = 6
value = S1,7

[State 1610, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 6
projremove = 0
Projremovetime = 12
projhits = 1
projremanim = 1641
projhitanim = -1
projpriority = 999999999
projanim = 1640
offset = 80, -220 - Pos Y
velocity = 0,0
attr = S, SP
damage   = 120,10
animtype = Up
guardflag = M
hitflag = MA
pausetime = 0,7
guard.pausetime = 0,8
hitsound   = S1,14
guardsound = S1,19
sparkxy = 0, 55 + floor(p2bodydist y)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 26
ground.velocity = -3,6
air.animtype = Up
air.velocity = -3,6
air.juggle = 3
fall = 1
fall.xvelocity = -3
fall.yvelocity = 10
air.fall = 1
Projedgebound = 40
p2facing = 1

[State 1610, 1]
type = Velset
trigger1 = animelem = 6
x = -2
y = -4

[State 1610, 1]
type = VelAdd
trigger1 = animelem = 6, > 0
y = 0.3

[State 1610, 7]
type = ChangeState
trigger1 = Vel Y > 0
value = 1640
ctrl = 0

[State 1610, 7]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 0
ctrl = 1

;----------------------------------------------------------------
[Statedef 1620];かぜのいぶきＹ
type    = A
movetype= A
physics = N
juggle  = 7
poweradd= 110
velset = 0,0
anim = 1600
ctrl = 0
sprpriority = 2

[State 1620, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,25

[State 1620, 4]
type = PlaySnd
trigger1 = animelem = 7
value = S1,7

[State 1620, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 7
projremove = 0
Projremovetime = 12
projhits = 1
projremanim = 1641
projpriority = 999999999
projanim = 1640
offset = 130, -220 - Pos Y
guard.dist = 150
velocity = 0,0
attr = S, SP
damage   = 120,10
animtype = Up
guardflag = M
hitflag = MA
pausetime = 0,7
guard.pausetime = 0,8
hitsound   = S1,14
guardsound = S1,19
sparkxy = 0, 55 + floor(p2bodydist y)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 26
ground.velocity = -3,6
air.animtype = Up
air.velocity = -3,6
air.juggle = 3
fall = 1
fall.xvelocity = -3
fall.yvelocity = 10
air.fall = 1
Projedgebound = 40

[State 1620, 1]
type = Velset
trigger1 = animelem = 7
x = -2
y = -4

[State 1620, 1]
type = VelAdd
trigger1 = animelem = 7, > 0
y = 0.3

[State 1620, 7]
type = ChangeState
trigger1 = Vel Y > 0
value = 1640
ctrl = 0

[State 1620, 7]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 0
ctrl = 1

;----------------------------------------------------------------
[Statedef 1630];かぜのいぶきＢ
type    = A
movetype= A
physics = N
juggle  = 7
poweradd= 110
velset = 0,0
anim = 1600
ctrl = 0
sprpriority = 2

[State 1630, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,25

[State 1630, 4]
type = PlaySnd
trigger1 = animelem = 8
value = S1,7

[State 1630, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 8
projremove = 0
Projremovetime = 12
projhits = 1
projremanim = 1641
projpriority = 999999999
projanim = 1640
offset = 180, -220 - Pos Y
guard.dist = 200
velocity = 0,0
attr = S, SP
damage   = 120,10
animtype = Up
guardflag = M
hitflag = MA
pausetime = 0,7
guard.pausetime = 0,8
hitsound   = S1,14
guardsound = S1,19
sparkxy = 0, 55 + floor(p2bodydist y)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 26
ground.velocity = -3,6
air.animtype = Up
air.velocity = -3,6
air.juggle = 3
fall = 1
fall.xvelocity = -3
fall.yvelocity = 10
air.fall = 1
Projedgebound = 40

[State 1630, 1]
type = Velset
trigger1 = animelem = 8
x = -2
y = -4

[State 1630, 1]
type = VelAdd
trigger1 = animelem = 8, > 0
y = 0.3

[State 1630, 7]
type = ChangeState
trigger1 = Vel Y > 0
value = 1640
ctrl = 0

[State 1630, 7]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 0
ctrl = 1

;---------------
[Statedef 1640];着地
type    = A
movetype= A
physics = A
juggle  = 7
poweradd= 0
anim = 1601
ctrl = 0
sprpriority = 2

[State 1630, 7]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52
ctrl = 0


;----------------------------------------------------------------
[Statedef 1700];ヴィルヴェルヴィント
type    = A
movetype= A
physics = N
juggle  = 5
poweradd= 110
velset = 0,0
anim = 1700
ctrl = 0
sprpriority = 2

[State 1700, 1]
type = Velset
trigger1 = animelem = 1
x = -2
y = -3

[State 1700, 1]
type = Velset
trigger1 = animelem = 2
x = -1
y = -1.5

[State 1700, 1]
type = Velset
trigger1 = animelem = 3
x = 0.5
y = -0.5

[State 1700, 1]
type = Velset
trigger1 = animelem = 4
x = 1
y = 2

[State 1700, 1]
type = Velset
trigger1 = Time > 10
x = 7

[State 1700, 1]
type = VelAdd
trigger1 = Time >= 10
y = -0.15

[State 1700, 1]
type = playsnd
trigger1 = time = 0
value = S1,20

[State 1700, 1]
type = playsnd
trigger1 = Time = 12
value = S1,22

[State 1700, 5]
type = Explod
trigger1 = Time = 12
anim = 1740
ID = 1740
sprpriority = 6
postype = p1
pos = 67,-75
vfacing = -1
scale = 0.7, 0.7
bindtime = -1
removetime = 999
supermove = 1
ownpal = 1
removeongethit = 1

[State 1700, 2]
type = HitDef
triggerAll = UniqHitCount <= 3
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
attr = S, SA
animtype  = diagup
damage    = 30,3
guardflag = M
hitflag = MAF
pausetime = 4,10
guard.pausetime = 4,4
sparkxy = 0,-60
hitsound   = S1,6
guardsound = S1,19
ground.type = High
ground.slidetime = 13
ground.hittime  = 17
ground.velocity = -1.5, -9
air.velocity = -1.5,-8
sparkno = S8001
guard.sparkno = S8004
fall = 1
fall.recover = 0
air.fall = 1
air.juggle  = 5

[State 1705, 6]
type = changeState
trigger1 = Time = 30
value = 1705
ctrl = 0

;--------------------------
[Statedef 1705];着地
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
anim = 1703
ctrl = 0
sprpriority = 2

[State 1700, 1]
type = VelAdd
trigger1 = 1
y = 0.4

[State 1705, 4]
type = RemoveExplod
trigger1 = Time = 0
ID = 1740

[State 1705, 5]
type = Explod
trigger1 = Time = 0
anim = 1741
ID = 1741
sprpriority = 6
postype = p1
pos = 50,-75
vfacing = -1
bindtime = -1
supermove = 1
ownpal = 1
removeongethit = 1

[State 1705, 6]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1706
ctrl = 0

;-----------------
[Statedef 1706];着地
type    = S
movetype= I
physics = S
juggle  = 0
ctrl = 0
anim = 1706
sprpriority = 2

[State 1706, land]
type = PlaySnd
trigger1 = Time = 0
value = S1,8
channel = 1

[State 1706, 0]
type = velset
trigger1 = Time = 0
y = 0

[State 1706, 0]
type = veladd
trigger1 = Time = 0
y = 0

[State 1706, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1706, 1]
type = VelSet
trigger1 = Time = 0
x = Vel X * 0.5

[State 1706, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
[Statedef 1750];ヴィルヴェルヴィントB
type    = A
movetype= A
physics = N
juggle  = 5
poweradd= 110
velset = 0,0
anim = 1750
ctrl = 0
sprpriority = 2

[State 1750, 1]
type = Velset
trigger1 = animelem = 1
x = -2
y = -3

[State 1750, 1]
type = Velset
trigger1 = animelem = 2
x = -1
y = -1.5

[State 1750, 1]
type = Velset
trigger1 = animelem = 3
x = 0.5
y = -0.5

[State 1750, 1]
type = Velset
trigger1 = animelem = 4
x = 1
y = 2

[State 1750, 1]
type = Velset
trigger1 = Time > 20
x = 8

[State 1750, 1]
type = VelAdd
trigger1 = Time >= 20
y = -0.1

[State 1750, 0]
type = PlayerPush
trigger1 = 1
value = 0

[State 1750, 1]
type = playsnd
trigger1 = time = 0
value = S1,20

[State 1750, 1]
type = playsnd
trigger1 = Time = 22
value = S1,22

[State 1750, 5]
type = Explod
trigger1 = Time = 22
anim = 1740
ID = 1740
sprpriority = 6
postype = p1
pos = 67,-75
vfacing = -1
scale = 0.7, 0.7
bindtime = -1
removetime = 999
supermove = 1
ownpal = 1
removeongethit = 1

[State 1750, 2]
type = HitDef
triggerAll = UniqHitCount <= 4
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
attr = S, SA
animtype  = diagup
damage    = 30,3
guardflag = M
hitflag = MAF
pausetime = 4,10
guard.pausetime = 4,4
sparkxy = 0,-60
hitsound   = S1,6
guardsound = S1,19
ground.type = High
ground.slidetime = 13
ground.hittime  = 17
ground.velocity = -2, -10.5
air.velocity = -2,-9.5
sparkno = S8001
guard.sparkno = S8004
fall = 1
fall.recover = 0
air.fall = 1
air.juggle  = 5

[State 1750, 6]
type = changeState
trigger1 = Time = 50
value = 1705
ctrl = 0

;-------------------------------------------------------------
;やおとめ_地上A
[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 1

[State 3000, 0]
type = PlaySnd
trigger1 = Time = 0
value = S0,28

[State 3000, 2]
type = PlaySnd
trigger1 = Time = 3
value = S1,29
channel = 1

[State 3000, 3]
type = SuperPause
trigger1 = Time = 0
time = 32
p2defmul = 1
unhittable = 1
movetime = 32
anim = -1

[State 3000, 4]
type = EnvColor
trigger1 = Time = [0,32]
time = 1
value = 0,0,0
under = 1
supermove = 1
;
[State 3000, 5]
type = Explod
trigger1 = Time = 5
anim = 8006
sprpriority = -4
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3000, 6]
type = Explod
trigger1 = Time = 10
anim = 8007
sprpriority = -2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1
;
[State 3000, 7]
type = Explod
trigger1 = Time = 20
anim = 8008
sprpriority = 2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3000, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001

;-----------------やおとめ_地上A_ダッシュ
[Statedef 3001]
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3001
sprpriority = 1

[State 3001, 0]
type = PlaySnd
trigger1 = animelem = 2
value = S1,9

[State 3001, 2]
type = afterimage
trigger1 = time = 0
time = 20
length = 12
PalContrast = 110,110,225
PalBright   =   3,3,9
PalAdd      =  0,0,85
trans = add
TimeGap  = 1
FrameGap = 4
ignorehitpause = 1

[State 3001, 2]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3001, 2]
type = velset
trigger1 = animelem = 3
x = 9

[State 3001, 3]
type = HitDef
Trigger1 = var(10) < 2
animtype  = hard
attr = S, HA
guardflag = M
pausetime = 0,1
guard.pausetime = 9,7
hitflag = MAF
ID = 3001
priority = 4,hit
hitsound = S1,14
guardsound = S1,19
sparkno = S8001
guard.sparkno = S8004
sparkxy = 10,-30
ground.hittime  = 15
ground.velocity = -3
air.velocity = -3
guard.velocity = -5
sprpriority = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3001, 4]
type = varset
trigger1 = time = 0
var(10) = 0

[State 3001, 4]
type = varadd
trigger1 = movehit
var(10) = 1

[State 3001, 4]
type = varset
trigger1 = numtarget(3001) > 0
trigger1 = target(3001),stateno = 5000 || target(3001),stateno = 5020
var(15) = 1

[State 3001, 4]
type = varset
trigger1 = numtarget(3001) = 0
trigger2 = numtarget(3001) > 0
trigger2 = target(3001),stateno != 5000 && target(3001),stateno != 5020
var(15) = 0

[State 3001, 4]
type = movehitreset
triggerall = movehit > 0
trigger1 = numtarget(3001) = 0
trigger2 = numtarget(3001) > 0
trigger2 = target(3001),stateno != 5000 && target(3001),stateno != 5020
persistent = 0

[State 3001, 4]
type = Targetstate
trigger1 = movehit && numtarget(3001) > 0
value = 3035
id = 3001
ignorehitpause = 1
persistent = 0

[State 3001, 4]
type = changestate
trigger1 = movehit  && var(15) = 1 && var(10) < 2
trigger2 = movehit  && var(10) > 1
value = 3003
ignorehitpause = 1
persistent = 0

[State 3001, 4] 
type = changestate 
trigger1 = time = 20
trigger2 = moveguarded
value = 3002 

;-----------------やおとめ_地上A_不発
[Statedef 3002]
type = S
physics = S
movetype= I
anim = 3005
velset = 10,0
ctrl = 0

[State 3002, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------やおとめ_地上_乱舞開始
[Statedef 3003]
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= 0
ctrl = 0
velset = 1.5,0
anim = 3002
sprpriority = 1

[State 3003, 4]
type = posset
trigger1 = time = 0
y = 0

[State 3003, 1]
type = Width
trigger1 = 1
edge = 45,0

[State 3003, 4]
type = targetbind
trigger1 = animelem = 5, >= 0
postype = p1
pos = 50,0

[State 3003, 4]
type = varrandom
trigger1 = 1
v = 1
range = 1,2

[State 3003, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
anim = 8001
postype = p1
pos = 50,-60
sprpriority = 5
supermove = 1
ownpal = 1

[State 3003, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
anim = 8002
postype = p1
pos = 50,-60
sprpriority = 5
supermove = 1
ownpal = 1

[State 3003, 4]
type = hitadd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
value = 1

[State 3003, 4]
type = envcolor
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
value = 255,0,0
time = 1
under = -1

[State 3003, 4]
type = targetstate
trigger1 = animelem = 5
trigger2 = animelem = 16
trigger3 = animelem = 27
value = 3030

[State 3003, 4]
type = targetstate
trigger1 = animelem = 10
trigger2 = animelem = 21
trigger3 = animelem = 32
value = 3031

[State 3003, 4]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
value = S1,14

[State 3003, 4]
type = targetlifeadd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
value = -34
kill = 0

[State 3003, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3004

;-----------------やおとめ_地上_ラスト
[Statedef 3004]
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3003
sprpriority = 4

[State 3004, 4]
type = targetstate
trigger1 = animelem = 1
value = 3036

[State 3004, 4]
type = Explod
trigger1 = animelem = 5
anim = 8002
ID = 500
postype = p1
pos = 19,-125
sprpriority = 6
removetime = 999
ownpal = 1

[State 3004, 4]
type = Explod
trigger1 = AnimTime = 0
anim = 8003
postype = p1
pos = 19,-125
sprpriority = 6
ownpal = 1

[State 3004, 4];小
type = Explod
trigger1 = animelem = 5
anim = 8002
postype = p1
pos = 3,-110
ID = 500
sprpriority = 6
removetime = 999
ownpal = 1

[State 3004, 4]
type = Explod
trigger1 = AnimTime = 0
anim = 8003
postype = p1
pos = 3,-110
sprpriority = 6
ownpal = 1

[State 3004, 4]
type = Explod
trigger1 = animelem = 5, = 4
anim = 8002
postype = p1
ID = 500
pos = 35,-100
facing = -1
sprpriority = 6
removetime = 999
ownpal = 1

[State 3004, 4]
type = Explod
trigger1 = AnimTime = 0
anim = 8003
postype = p1
pos = 35,-100
facing = -1
sprpriority = 6
ownpal = 1

[State 3004, 4]
type = Explod
trigger1 = animelem = 5
anim = 8002
ID = 500
postype = p1
pos = 30,-115
facing = -1
sprpriority = 6
removetime = 999
ownpal = 1

[State 3004, 4]
type = Explod
trigger1 = AnimTime = 0
anim = 8003
postype = p1
pos = 30,-115
facing = -1
sprpriority = 6
ownpal = 1

[State 3004, 4];
type = Explod
trigger1 = animelem = 4
anim = 8002
postype = p1
pos = 18,-120
sprpriority = 2
supermove = 1
ownpal = 1

[State 3004, 4]
type = null;posadd
trigger1 = time = 0
x = 15

[State 3004, 4]
type = targetstate
trigger1 = animelem = 4
value = 3032

[State 3004, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = 18,-133

[State 3004, 4]
type = PlaySnd
trigger1 = animelem = 4
value = S1,21

[State 3004, 4]
type = PlaySnd
trigger1 = animelem = 10
value = S1,21

[State 3004, 4]
type = PlaySnd
trigger1 = animelem = 16
value = S1,21

[State 3004, 4]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 500

[State 3004, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3005

;-----------------やおとめ_地上_ラスト
[Statedef 3005];
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3004
sprpriority = 1

[State 3005, 4]
type = targetstate
trigger1 = animelem = 1
value = 3033

[State 3005, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = -32,-118

[State 3005, 4]
type = targetbind
trigger1 = animelem = 2
postype = p1
pos = -16,-113

[State 3005, 4]
type = targetbind
trigger1 = animelem = 3
postype = p1
pos = -47,-35

[State 3005, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = -55,0

[State 3005, 4]
type = targetlifeadd
trigger1 = animelem = 4
value = -70

[State 3005, 4]
type = envshake
trigger1 = animelem = 4
time = 5

[State 3005, 4]
type = posadd
trigger1 = animelem = 2
x = -30

[State 3005, 4]
type = posadd
trigger1 = animelem = 3
x = -25

[State 3005, 4]
type = PosAdd
trigger1 = animelem = 6
x = -9

[State 3005, 4]
type = targetstate
trigger1 = animelem = 6,= 2
value = 3034

[State 3005, 4]
type = turn
trigger1 = animtime = 0
value = 1

[State 3005, 4]
type = PlaySnd
trigger1 = animelem = 2
value = S0,15

[State 3005, 5]
type = PlaySnd
trigger1 = animelem = 4
value = S1,26

[State 3005, 4]
type = Explod
trigger1 = animelem = 4
anim = 516
postype = p1
pos = -55,-5
sprpriority = -4
ownpal = 1

[State 3005, 4]
type = Explod
trigger1 = animelem = 4
anim = 517
postype = p1
pos = -55,10
sprpriority = 6
ownpal = 1

[State 3005, 4]
type = Explod
trigger1 = animelem = 4
anim = 518
postype = p1
pos = -55,10
sprpriority = -5
ownpal = 1

[State 3005, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------
;やおとめ_地上_B
[Statedef 3010]
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3010
sprpriority = 1

[State 3010, 0]
type = PlaySnd
trigger1 = Time = 0
value = S0,28

[State 3010, 2]
type = PlaySnd
trigger1 = Time = 3
value = S1,29
channel = 1

[State 3010, 3]
type = SuperPause
trigger1 = Time = 0
time = 32
p2defmul = 1
unhittable = 1
movetime = 32
anim = -1

[State 3010, 4]
type = EnvColor
trigger1 = Time = [0,32]
time = 1
value = 0,0,0
under = 1
supermove = 1

[State 3010, 5]
type = Explod
trigger1 = Time = 5
anim = 8006
sprpriority = -4
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3010, 6]
type = Explod
trigger1 = Time = 10
anim = 8007
sprpriority = -2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1
;
[State 3010, 7]
type = Explod
trigger1 = Time = 20
anim = 8008
sprpriority = 2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3010, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 3011

;-----------------やおとめB_地上_ダッシュ
[Statedef 3011]
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3011
sprpriority = 1

[State 3011, 0]
type = PlaySnd
trigger1 = animelem = 2
value = S1,9

[State 3011, 2]
type = afterimage
trigger1 = time = 0
time = 20
length = 12
PalContrast = 110,110,225
PalBright   =   3,3,9
PalAdd      =  0,0,85
trans = add
TimeGap  = 1
FrameGap = 4
ignorehitpause = 1

[State 3011, 2]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3011, 2]
type = velset
trigger1 = animelem = 3
x = 10

[State 3011, 3]
type = HitDef
Trigger1 = var(10) < 2
animtype  = hard
attr = S, HA
guardflag = M
pausetime = 0,1
guard.pausetime = 9,7
hitflag = MAF
ID = 3011
priority = 4,hit
hitsound = S1,14
guardsound = S1,19
sparkno = S8001
guard.sparkno = S8004
sparkxy = 10,-30
ground.hittime  = 15
ground.velocity = -3
air.velocity = -3
guard.velocity = -5
sprpriority = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3011, 4]
type = varset
trigger1 = time = 0
var(10) = 0

[State 3011, 4]
type = varadd
trigger1 = movehit
var(10) = 1

[State 3011, 4]
type = varset
trigger1 = numtarget(3011) > 0
trigger1 = target(3011),stateno = 5000 || target(3011),stateno = 5020
var(15) = 1

[State 3011, 4]
type = varset
trigger1 = numtarget(3011) = 0
trigger2 = numtarget(3011) > 0
trigger2 = target(3011),stateno != 5000 && target(3011),stateno != 5020
var(15) = 0

[State 3011, 4]
type = movehitreset
triggerall = movehit > 0
trigger1 = numtarget(3011) = 0
trigger2 = numtarget(3011) > 0
trigger2 = target(3011),stateno != 5000 && target(3011),stateno != 5020
persistent = 0

[State 3011, 4]
type = Targetstate
trigger1 = movehit && numtarget(3011) > 0
value = 3035
id = 3011
ignorehitpause = 1
persistent = 0

[State 3011, 4]
type = changestate
trigger1 = movehit  && var(15) = 1 && var(10) < 2
trigger2 = movehit  && var(10) > 1
value = 3003
ignorehitpause = 1
persistent = 0

[State 3011, 4] 
type = changestate 
trigger1 = time = 30
trigger2 = moveguarded
value = 3015

;-----------------やおとめB_地上_不発
[Statedef 3015]
type = S
physics = S
movetype= I
anim = 3006
velset = 10,0
ctrl = 0

[State 3015, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------P2State
[Statedef 3030]
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 3030, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 3030, 4]
type = changeanim2
trigger1 = time = 0
value = 3030

;------------------P2State
[Statedef 3031];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 3031, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 3031, 4]
type = changeanim2
trigger1 = time = 0
value = 3031

;--------------------P2State
[Statedef 3032];head
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 3032, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 3032, 4]
type = changeanim2
trigger1 = time = 0
value = 3032

;----------------P2State
[Statedef 3033];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 3033, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 3033, 4]
type = changeanim2
trigger1 = time = 0
value = 3033

[Statedef 3034];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 4,-7
sprpriority = -1
movetype = H

[State 3034, 1]
type = VelAdd
Trigger1 = time >= 0
y = .45

[State 3034, 4]
type = changeanim2
trigger1 = time = 0
value = 3034

[State 3034, 6]
type = selfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;----------------P2State
[Statedef 3035];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 3035, 4]
type = changeanim2
trigger1 = time = 0
value = 3035

[State 3035, 4]
type = selfstate
trigger1 = time = 15
value = 0
ctrl = 1

[Statedef 3036];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 3036, 4]
type = turn
trigger1 = time = 0
trigger1 = facing = 1
trigger1 = enemy,facing = 1

[State 3036, 4]
type = turn
trigger1 = time = 0
trigger1 = facing = -1
trigger1 = enemy,facing = -1

[State 3036, 4]
type = changeanim2
trigger1 = time = 0
value = anim

;-------------------------------------------------------------
;やおとめ_空中
[Statedef 3050]
type    = S
movetype= A
physics = S
juggle  = 7
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 1

[State 3050, 0]
type = PlaySnd
trigger1 = Time = 0
value = S0,28

[State 3050, 2]
type = PlaySnd
trigger1 = Time = 3
value = S1,29
channel = 1

[State 3050, 3]
type = SuperPause
trigger1 = Time = 0
time = 22
p2defmul = 1
unhittable = 1
movetime = 22
anim = -1

[State 3050, 4]
type = EnvColor
trigger1 = Time = [0,32]
time = 1
value = 0,0,0
under = 1
supermove = 1
;
[State 3050, 5]
type = Explod
trigger1 = Time = 5
anim = 8006
sprpriority = -4
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3050, 6]
type = Explod
trigger1 = Time = 10
anim = 8007
sprpriority = -2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1
;
[State 3050, 7]
type = Explod
trigger1 = Time = 20
anim = 8008
sprpriority = 2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3050, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 3051

;-----------------やおとめ_空中_ジャンプ
[Statedef 3051]
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3051
sprpriority = 1

[State 3051, 0]
type = PlaySnd
trigger1 = animelem = 2
value = S1,9

[State 3051, 2]
type = afterimage
trigger1 = time = 0
time = 20
length = 12
PalContrast = 110,110,225
PalBright   =   3,3,9
PalAdd      =  0,0,85
trans = add
TimeGap  = 1
FrameGap = 4
ignorehitpause = 1

[State 3051, 2]
type = afterimagetime
trigger1 = 1
time = 2

[State 3051, 4]
type = Explod
trigger1 = animelem = 1
anim = 3241
postype = p1
pos = 30,15
sprpriority = 5
ownpal = 1

[State 3051, 4]
type = statetypeset
trigger1 = animelem = 3
value = A

[State 3051, 4]
type = velset
trigger1 = animelem = 3
x = 7
y = -7

[State 3051, 1]
type = VelAdd
trigger1 = animelem = 3, > 0
y = .6

[State 3051, 3]
type = HitDef
Trigger1 = var(12) < 2
Trigger1 = Target(3051), gethitvar(guarded) = 0
animtype  = hard
attr = S, HA
guardflag = M
pausetime = 0,1
guard.pausetime = 0,7
hitflag = MAF
ID = 3051
priority = 4,hit
hitsound = S1,14
guardsound = S1,19
sparkno = S8001
guard.sparkno = S8004
sparkxy = 10,-30
ground.hittime  = 15
ground.velocity = -3
air.velocity = -3
guard.velocity = -5
sprpriority = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3051, 4]
type = varset
trigger1 = time = 0
var(10) = 0

[State 3051, 4]
type = varadd
trigger1 = movehit
var(10) = 1

[State 3051, 4]
type = varset
trigger1 = time = 0
var(12) = 0

[State 3051, 4]
type = varadd
trigger1 = moveContact
var(12) = 1

[State 3051, 4]
type = varset
trigger1 = numtarget(3051) > 0
trigger1 = target(3051),stateno = 5000 || target(3051),stateno = 5020
var(15) = 1

[State 3051, 4]
type = varset
trigger1 = numtarget(3051) = 0
trigger2 = numtarget(3051) > 0
trigger2 = target(3051),stateno != 5000 && target(3051),stateno != 5020
var(15) = 0

[State 3051, 4]
type = movehitreset
triggerall = movehit > 0
trigger1 = numtarget(3051) = 0
trigger2 = numtarget(3051) > 0
trigger2 = target(3051),stateno != 5000 && target(3051),stateno != 5020
persistent = 0

[State 3051, 4]
type = Targetstate
trigger1 = movehit && numtarget(3051) > 0
value = 3035
id = 3051
ignorehitpause = 1
persistent = 0

[State 3051, 4]
type = changestate
trigger1 = movehit  && var(15) = 1 && var(10) < 2
trigger2 = movehit  && var(10) > 1
value = 3003
ignorehitpause = 1
persistent = 0

[State 3051, 6]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 3052

;-----------------やおとめX_空中_不発
[Statedef 3052]
type = S
physics = S
movetype= I
anim = 3015
ctrl = 0

[State 3052, 0]
type = velset
trigger1 = Time = 0
y = 0

[State 3052, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3052, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------
;やおとめ_空中Y
[Statedef 3060]
type    = S
movetype= A
physics = S
juggle  = 7
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3010
sprpriority = 1

[State 3060, 0]
type = PlaySnd
trigger1 = Time = 0
value = S0,28

[State 3060, 2]
type = PlaySnd
trigger1 = Time = 3
value = S1,29
channel = 1

[State 3060, 3]
type = SuperPause
trigger1 = Time = 0
time = 22
p2defmul = 1
unhittable = 1
movetime = 22
anim = -1

[State 3060, 4]
type = EnvColor
trigger1 = Time = [0,32]
time = 1
value = 0,0,0
under = 1
supermove = 1
;
[State 3060, 5]
type = Explod
trigger1 = Time = 5
anim = 8006
sprpriority = -4
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3060, 6]
type = Explod
trigger1 = Time = 10
anim = 8007
sprpriority = -2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3060, 7]
type = Explod
trigger1 = Time = 20
anim = 8008
sprpriority = 2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3060, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 3061

;-----------------やおとめ_空中_ジャンプ
[Statedef 3061]
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3061
sprpriority = 1

[State 3061, 0]
type = PlaySnd
trigger1 = animelem = 2
value = S1,9

[State 3061, 2]
type = afterimage
trigger1 = time = 0
time = 20
length = 12
PalContrast = 110,110,225
PalBright   =   3,3,9
PalAdd      =  0,0,85
trans = add
TimeGap  = 1
FrameGap = 4
ignorehitpause = 1

[State 3061, 2]
type = afterimagetime
trigger1 = 1
time = 2

[State 3061, 4]
type = Explod
trigger1 = animelem = 1
anim = 3241
postype = p1
pos = 30,15
sprpriority = 5
ownpal = 1

[State 3061, 4]
type = statetypeset
trigger1 = animelem = 3
value = A

[State 3061, 4]
type = velset
trigger1 = animelem = 3
x = 7.5
y = -8.5

[State 3061, 1]
type = VelAdd
trigger1 = animelem = 3, > 0
y = .6

[State 3061, 3]
type = HitDef
Trigger1 = var(12) < 2
Trigger1 = Target(3061), gethitvar(guarded) = 0
animtype  = hard
attr = S, HA
guardflag = M
pausetime = 0,1
guard.pausetime = 0,7
hitflag = MAF
ID = 3061
priority = 4,hit
hitsound = S1,14
guardsound = S1,19
sparkno = S8001
guard.sparkno = S8004
sparkxy = 10,-30
ground.hittime  = 15
ground.velocity = -3
air.velocity = -3
guard.velocity = -5
sprpriority = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3061, 4]
type = varset
trigger1 = time = 0
var(10) = 0

[State 3061, 4]
type = varadd
trigger1 = movehit
var(10) = 1

[State 3061, 4]
type = varset
trigger1 = time = 0
var(12) = 0

[State 3061, 4]
type = varadd
trigger1 = moveContact
var(12) = 1

[State 3061, 4]
type = varset
trigger1 = numtarget(3061) > 0
trigger1 = target(3061),stateno = 5000 || target(3061),stateno = 5020
var(15) = 1

[State 3061, 4]
type = varset
trigger1 = numtarget(3061) = 0
trigger2 = numtarget(3061) > 0
trigger2 = target(3061),stateno != 5000 && target(3061),stateno != 5020
var(15) = 0

[State 3061, 4]
type = movehitreset
triggerall = movehit > 0
trigger1 = numtarget(3061) = 0
trigger2 = numtarget(3061) > 0
trigger2 = target(3061),stateno != 5000 && target(3061),stateno != 5020
persistent = 0

[State 3061, 4]
type = Targetstate
trigger1 = movehit && numtarget(3061) > 0
value = 3035
id = 3061
ignorehitpause = 1
persistent = 0

[State 3061, 4]
type = changestate
trigger1 = movehit  && var(15) = 1 && var(10) < 2
trigger2 = movehit  && var(10) > 1
value = 3003
ignorehitpause = 1
persistent = 0

[State 3061, 6]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 3062

;-----------------やおとめY_空中_不発
[Statedef 3062]
type = S
physics = S
movetype= I
anim = 3016
ctrl = 0

[State 3062, 0]
type = velset
trigger1 = Time = 0
y = 0

[State 3062, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3062, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------
;やおとめ_地上_MAX
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 7
poweradd= -2000
ctrl = 0
velset = 0,0
anim = 3100
sprpriority = 1

[State 3100, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3100, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,8

[State 3100, 0]
type = SuperPause
trigger1 = Time = 0
time = 31
darken = 0
p2defmul = 1
unhittable = 1
movetime = 31
anim = -1

[State 3100, 1]
type = PlaySnd
trigger1 = Time = 0
value = S1,30

[State 3100, 4]
type = EnvColor
trigger1 = Time = [0,58]
time = 1
value = 0,0,0
under = 1
supermove = 1

[State 3100, 5]
type = Explod
trigger1 = Time = 1
anim = 8009
sprpriority = -6
postype = left
pos = 160,130
scale = 1.5,1.5
bindtime = 1
supermove = 1
ownpal = 1

[State 3100, 7]
type = Explod
trigger1 = Time = 20
anim = 8010
sprpriority = -4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3100, 8]
type = Explod
trigger1 = Time = 20
anim = 8011
sprpriority = -2
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3100, 9]
type = Explod
trigger1 = Time = 20
anim = 8012
sprpriority = 4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3100, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101

;-----------------Dash
[Statedef 3101]
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3101
sprpriority = 1

[State 3101, 2]
type = afterimage
trigger1 = time = 0
time = 20
length = 12
PalContrast = 110,110,225
;PalBright   =   3,3,9
PalAdd      =  0,0,85
trans = add
TimeGap  = 1
FrameGap = 4
ignorehitpause = 1

[State 3101, 2]
type = afterimagetime
trigger1 = 1
time = 2

[State 3101, 5]
type = PlaySnd
trigger1 = animelem = 2
value = S1,9

[State 3101, 4]
type = Explod
trigger1 = animelem = 1
anim = 3241
postype = p1
pos = 30,15
sprpriority = 5
ownpal = 1

[State 3101, 2]
type = null;afterimage
trigger1 = time = 0
time = 20
length = 12
PalContrast = 110,110,225
;PalBright   =   3,3,9
PalAdd      =  0,0,85
trans = add
TimeGap  = 1
FrameGap = 4
ignorehitpause = 1

[State 3101, 2]
type = afterimagetime
trigger1 = 1
time = 2

[State 3101, 4]
type = velset
trigger1 = animelem = 2
x = 10

[State 3101, 1]
type = HitDef
Trigger1 = var(10) < 2
animtype  = hard
attr = S, HA
guardflag = M
pausetime = 0,1
hitflag = MAF
ID = 3101
priority = 2
hitsound = S1,14
guardsound = S1,19
sparkno = S8000
guard.sparkno = S8004
sparkxy = 10,-30
sprpriority = 1
ground.velocity = -3
air.velocity = -3
guard.velocity = -5
sprpriority = 1
air.fall = 1
fall.recover = 0
;p2facing = 1
;p1stateno = 1702
;p2stateno = 1045
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3101, 4]
type = varset
trigger1 = time = 0
var(10) = 0

[State 3101, 4]
type = varadd
trigger1 = movehit
var(10) = 1

[State 3101, 4]
type = varset
trigger1 = numtarget(3101) > 0
trigger1 = target(3101),stateno = 5000 || target(3101),stateno = 5020
var(15) = 1

[State 3101, 4]
type = varset
trigger1 = numtarget(3101) = 0
trigger2 = numtarget(3101) > 0
trigger2 = target(3101),stateno != 5000 && target(3101),stateno != 5020
var(15) = 0

[State 3101, 4]
type = movehitreset
triggerall = movehit > 0
trigger1 = numtarget(3101) = 0
trigger2 = numtarget(3101) > 0
trigger2 = target(3101),stateno != 5000 && target(3101),stateno != 5020
persistent = 0

[State 3101, 4]
type = Targetstate
trigger1 = movehit && numtarget(3101) > 0
value = 3035
id = 3101
ignorehitpause = 1
persistent = 0

[State 3101, 4]
type = changestate
trigger1 = movehit  && var(15) = 1 && var(10) < 2
trigger2 = movehit  && var(10) > 1
value = 3103
ignorehitpause = 1
persistent = 0

[State 3101, 4] 
type = changestate 
trigger1 = time = 30
trigger2 = moveguarded
value = 3102 

;-----------------やおとめMAX_地上_不発
[Statedef 3102]
type = S
physics = S
movetype= I
anim = 3006
velset = 10,0
ctrl = 0

[State 3102, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------やおとめMAX_地上_乱舞開始
[Statedef 3103];
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= 0
ctrl = 0
velset = 1.5,0
anim = 3102
sprpriority = 1

[State 3103, 1]
type = posset
trigger1 = time = 0
y = 0

[State 3103, 1]
type = Width
trigger1 = 1
edge = 45,0

[State 3103, 4]
type = targetbind
trigger1 = animelem = 5, >= 0
postype = p1
pos = 50,0

[State 3103, 4]
type = varrandom
trigger1 = 1
v = 1
range = 1,2

[State 3103, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
anim = 4540
postype = p1
pos = 40,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 3103, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
anim = 8002
postype = p1
pos = 50,-60
sprpriority = 5
supermove = 1
ownpal = 1

[State 3103, 4]
type = hitadd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
value = 1

[State 3103, 4]
type = envcolor
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
value = 255,255,255
time = 1
under = -1

[State 3103, 4]
type = targetstate
trigger1 = animelem = 5
trigger2 = animelem = 16
trigger3 = animelem = 27
trigger4 = animelem = 38
trigger5 = animelem = 50
value = 3030

[State 3103, 4]
type = targetstate
trigger1 = animelem = 10
trigger2 = animelem = 21
trigger3 = animelem = 32
trigger4 = animelem = 44
trigger5 = animelem = 56
triggerall = var(10) >= 1
value = 3031

[State 3103, 4]
type = PlaySnd
triggerall = var(1) = 1
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
value = S1,14

[State 3103, 4]
type = PlaySnd
triggerall = var(1) = 2
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
value = S1,14

[State 3103, 4]
type = targetlifeadd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
value = -16
kill = 0

[State 3103, 4]
type = StopSnd
trigger1 = AnimTime = 0
channel = 0

[State 3103, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3104

[Statedef 3104];乱舞掴み
type    = S
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3103
sprpriority = 4

[State 3104, 4]
type = targetlifeadd
trigger1 = animelem = 5
value = -100
kill = 0

[State 3104, 1]
type = playsnd
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
trigger7 = animelem = 17
trigger8 = animelem = 19
value = S1,21

[State 3104, 4]
type = targetstate
trigger1 = animelem = 1
value = 3036

[State 3104, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
trigger7 = animelem = 15, = 3
anim = 8002
ID = 500
postype = p1
facing = 1
pos = 15,-125
sprpriority = 6
ownpal = 1

[State 3104, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
trigger7 = animelem = 15, = 3
anim = 8002
ID = 500
postype = p1
pos = 25,-125
facing = -1
sprpriority = 6
ownpal = 1

[State 3104, 4];掴み
type = Explod
trigger1 = animelem = 4
anim = 8000
postype = p1
pos = 18,-120
sprpriority = 2
supermove = 1
ownpal = 1

[State 3104, 4]
type = posadd
trigger1 = time = 0
x = 15

[State 3104, 4]
type = targetstate
trigger1 = animelem = 4
value = 3134

[State 3104, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = 18,-133

[State 3104, 4]
type = PlaySnd
trigger1 = animelem = 5
value = S1,28

[State 3104, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3105

;-----------------------------
[Statedef 3105];とどめ
type    = S
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 0,-13
anim = 3104
sprpriority = 1

[State 3105, 4]
type = targetbind
;trigger1 = animelem = 1
trigger1 = 1
postype = p1
pos = 16,-105

[State 3105, 4]
type = null;targetbind
trigger1 = animelem = 2
trigger1 = 1
postype = p1
pos = 13,-118

[State 3105, 5]
type = PlaySnd
trigger1 = animelem = 1
value = S1,17

[State 3105, 1]
type = Veladd
trigger1 = time >= 0
y = .65

[State 3105, 4]
type = targetstate
trigger1 = animelem = 1
value = 3130

[State 3105, 4]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 3106

;-------------------------
[Statedef 3106];END
type    = S
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3105
sprpriority = 1

[State 3106, 4]
type = envshake
trigger1 = animelem = 2
time = 5

[State 3106, 4]
type = targetlifeadd
trigger1 = animelem = 2
value = -140

[State 3106, 4]
type = targetbind
trigger1 = animelem = 2,<0
postype = p1
pos = -15,-35

[State 3106, 4]
type = targetbind
trigger1 = animelem = 2
postype = p1
pos = -20,0

[State 3106, 4]
type = targetstate
trigger1 = animelem = 1
value = 3131

[State 3106, 5]
type = PlaySnd
trigger1 = animelem = 1
value = S1,27

[State 3106, 5]
type = PlaySnd
trigger1 = animelem = 1
value = S0,10

[State 3106, 4]
type = Explod
trigger1 = animelem = 2
anim = 517
postype = p1
pos = -35,10
sprpriority = 6
ownpal = 1

[State 3106, 4]
type = Explod
trigger1 = animelem = 2
anim = 518
postype = p1
pos = -35,10
sprpriority = -5
ownpal = 1

[State 3106, 1]
type = posset
trigger1 = time = 0
y = 0

[State 3106, 1]
type = posadd
trigger1 = time = 0
x = -25

[State 3106, 5]
type = turn
trigger1 = AnimTime = 0

[State 3106, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------P2State
[Statedef 3134];head
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 3134, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 3134, 4]
type = changeanim2
trigger1 = time = 0
value = 3133

-----------------------;P2State
[Statedef 3130]
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 3130, 4]
type = changeanim2
trigger1 = time = 0
value = 3130

[State 3130, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

;-------------------------P2State
[Statedef 3131]
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = 4
movetype = H

[State 3131, 1]
type = Velset
trigger1 = animelem = 2
x = 4
y = -7

[State 3131, 1]
type = VelAdd
trigger1 = animelem = 2, >= 0
y = .45

[State 3131, 4]
type = changeanim2
trigger1 = time = 0
value = 3131

[State 3131, 6]
type = selfState
trigger1 = animelem = 2, >= 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;-------------------------------------------------------------
;やおとめ_MAX_空中
[Statedef 3150]
type    = S
movetype= A
physics = S
juggle  = 7
poweradd= -2000
ctrl = 0
velset = 0,0
anim = 3100
sprpriority = 1

[State 3100, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3150, 0]
type = PlaySnd
trigger1 = Time = 0
value = S0,8

[State 3150, 2]
type = PlaySnd
trigger1 = Time = 3
value = S1,30
channel = 1

[State 3150, 0]
type = SuperPause
trigger1 = Time = 0
time = 31
darken = 0
p2defmul = 1
unhittable = 1
movetime = 31
anim = -1

[State 3150, 4]
type = EnvColor
trigger1 = Time = [0,58]
time = 1
value = 0,0,0
under = 1
supermove = 1
;
[State 3150, 5]
type = Explod
trigger1 = Time = 1
anim = 8009
sprpriority = -6
postype = left
pos = 160,130
scale = 1.5,1.5
bindtime = 1
supermove = 1
ownpal = 1

[State 3150, 6]
type = Explod
trigger1 = Time = 20
anim = 8010
sprpriority = -4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3150, 7]
type = Explod
trigger1 = Time = 20
anim = 8011
sprpriority = -2
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3150, 9]
type = Explod
trigger1 = Time = 20
anim = 8012
sprpriority = 4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3150, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 3151

;-----------------やおとめ_空中_ジャンプ
[Statedef 3151]
type    = S
movetype= A
physics = N
juggle  = 7
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3151
sprpriority = 1

[State 3151, 0]
type = PlaySnd
trigger1 = animelem = 2
value = S1,9

[State 3151, 2]
type = afterimage
trigger1 = time = 0
time = 20
length = 12
PalContrast = 110,110,225
PalBright   =   3,3,9
PalAdd      =  0,0,85
trans = add
TimeGap  = 1
FrameGap = 4
ignorehitpause = 1

[State 3151, 2]
type = afterimagetime
trigger1 = 1
time = 2

[State 3101, 4]
type = Explod
trigger1 = animelem = 1
anim = 3241
postype = p1
pos = 30,15
sprpriority = 5
ownpal = 1

[State 3151, 4]
type = statetypeset
trigger1 = animelem = 3
value = A

[State 3151, 4]
type = velset
trigger1 = animelem = 3
x = 8
y = -9

[State 3151, 1]
type = VelAdd
trigger1 = animelem = 3, > 0
y = .6

[State 3151, 3]
type = HitDef
Trigger1 = var(10) < 2
Trigger1 = Target(3151), gethitvar(guarded) = 0
animtype  = hard
attr = S, HA
guardflag = M
pausetime = 0,1
guard.pausetime = 0,7
hitflag = MAF
ID = 3151
priority = 4,hit
hitsound = S1,14
guardsound = S1,19
sparkno = S8001
guard.sparkno = S8004
sparkxy = 10,-30
ground.hittime  = 15
ground.velocity = -3
air.velocity = -3
guard.velocity = -5
sprpriority = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3151, 4]
type = varset
trigger1 = time = 0
var(10) = 0

[State 3151, 4]
type = varadd
trigger1 = movehit
var(10) = 1

[State 3151, 4]
type = varset
trigger1 = numtarget(3151) > 0
trigger1 = target(3151),stateno = 5000 || target(3151),stateno = 5020
var(15) = 1

[State 3151, 4]
type = varset
trigger1 = numtarget(3151) = 0
trigger2 = numtarget(3151) > 0
trigger2 = target(3151),stateno != 5000 && target(3151),stateno != 5020
var(15) = 0

[State 3151, 4]
type = movehitreset
triggerall = movehit > 0
trigger1 = numtarget(3151) = 0
trigger2 = numtarget(3151) > 0
trigger2 = target(3151),stateno != 5000 && target(3151),stateno != 5020
persistent = 0

[State 3151, 4]
type = Targetstate
trigger1 = movehit && numtarget(3151) > 0
value = 3035
id = 3151
ignorehitpause = 1
persistent = 0

[State 3151, 4]
type = changestate
trigger1 = movehit  && var(15) = 1 && var(10) < 2
trigger2 = movehit  && var(10) > 1
value = 3103
ignorehitpause = 1
persistent = 0

[State 3151, 6]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 3152

;-----------------やおとめ_空中_不発
[Statedef 3152]
type = S
physics = S
movetype= I
anim = 3016
ctrl = 0

[State 3152, 0]
type = velset
trigger1 = Time = 0
y = 0

[State 3152, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3152, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;やみどうこく
[Statedef 3200];
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3200
sprpriority = 2
poweradd = -1000

[State 3200, 1]
type = HitDef
triggerall = p2stateno != 150
triggerall = p2stateno != 152
triggerall = p2stateno != 154
Trigger1 = Time = 0
animtype  = Up
attr = S, HT
hitflag = M
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 3202
p2stateno = 3230
guard.dist = 0
fall = 1
fall.recover = 0

[State 3200, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3201

;--------------------------------
[Statedef 3201];Miss
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3201
sprpriority = 2

[State 3201, 2]
type = PlaySnd
trigger1 = Time = 3
value = S1,29
channel = 1

[State 3201, 3]
type = SuperPause
trigger1 = Time = 0
time = 27
p2defmul = 1
unhittable = 1
movetime = 22
anim = -1

[State 3201, 4]
type = EnvColor
trigger1 = Time = [0,32]
time = 1
value = 0,0,0
under = 1
supermove = 1

[State 3201, 5]
type = Explod
trigger1 = Time = 5
anim = 8006
sprpriority = -4
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3201, 6]
type = Explod
trigger1 = Time = 10
anim = 8007
sprpriority = -2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3201, 7]
type = Explod
trigger1 = Time = 20
anim = 8008
sprpriority = 2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3201, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------
[Statedef 3202];掴み上げ
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3202
sprpriority = 2

[State 3202, 1]
type = playsnd
trigger1 = time = 0
value = S0,6

[State 3202, 4]
type = targetstate
trigger1 = time = 0
value = 3231

[State 3202, 1]
type = Width
trigger1 = 1
edge = 60,0

[State 3202, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 33,-80

[State 3202, 4]
type = targetstate
trigger1 = animelem = 4
value = 3231

[State 3202, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = 40,-96

[State 3202, 4]
type = targetbind
trigger1 = animelem = 5
postype = p1
pos = 26,-134

[State 3202, 2]
type = PlaySnd
trigger1 = Time = 3
value = S1,29
channel = 1

[State 3202, 3]
type = SuperPause
trigger1 = Time = 0
time = 32
p2defmul = 1
unhittable = 1
movetime = 32
anim = -1

[State 3202, 4]
type = EnvColor
trigger1 = Time = [0,32]
time = 1
value = 0,0,0
under = 1
supermove = 1

[State 3202, 5]
type = Explod
trigger1 = Time = 5
anim = 8006
sprpriority = -4
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3202, 6]
type = Explod
trigger1 = Time = 10
anim = 8007
sprpriority = -2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3202, 7]
type = Explod
trigger1 = Time = 20
anim = 8008
sprpriority = 2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3202, 2]
type = ChangeState
Trigger1 = animTime = 0
value = 3203

;-----------------------
[Statedef 3203];お別れです
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3203
sprpriority = 2

[State 3203, 4]
type = PlaySnd
trigger1 = Time = 0
value = S1,2

[State 3203, 4]
type = Explod
trigger1 = time = 0
anim = 3240
removetime = 85
postype = p1
pos = 52,-13
sprpriority = 4
ownpal = 1

[State 3203, 4]
type = Explod
trigger1 = time = 0
anim = 3242
removetime = 85
postype = p1
pos = 52, 0
sprpriority = 3
ownpal = 1

[State 3203, 4]
type = envshake
trigger1 = time = 0
triggerall = random <= 500
time = 85
ampl = -2

[State 3203, 4]
type = envcolor
trigger1 = animelem = 2
value = 255,255,255
time = 1
under = -1

[State 3203, 4]
type = targetstate
trigger1 = animelem = 1
value = 3232

[State 3203, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 25,-130

[State 3203, 2]
type = ChangeState
Trigger1 = Time = 85
value = 3204

;-----------------
[Statedef 3204];ぽぃ
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3204
sprpriority = 2

[State 3204, 4]
type = Explod
trigger1 = time = 0
anim = 3241
ID = 3241
postype = p1
pos = 55,20
sprpriority = 4
supermove = 1
ownpal = 1

[State 3204, 4]
type = targetstate
trigger1 = animelem = 1
value = 3233

[State 3204, 4]
type = targetstate
trigger1 = animelem = 3
value = 3234

[State 3204, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 6,-134

[State 3204, 4]
type = targetbind
trigger1 = animelem = 2
postype = p1
pos = 9,-135

[State 3204, 4]
type = targetlifeadd
trigger1 = animelem = 3
value = -270

[State 3204, 4]
type = targetbind
trigger1 = animelem = 3
postype = p1
pos = 40,-50

[State 3204, 2]
type = ChangeState
Trigger1 = animTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3250];やみどうこくLV2
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3200
sprpriority = 2
poweradd = -2000

[State 3250, 1]
type = HitDef
triggerall = p2stateno != 150
triggerall = p2stateno != 152
triggerall = p2stateno != 154
Trigger1 = Time = 0
animtype  = Up
attr = S, HT
hitflag = M
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 3252
p2stateno = 3230
guard.dist = 0
fall = 1
fall.recover = 0

[State 3250, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3251

;-------------------
[Statedef 3251];Miss
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3251
sprpriority = 2

[State 3251, 0]
type = SuperPause
trigger1 = Time = 0
time = 58
darken = 0
p2defmul = 1
unhittable = 1
movetime = 58
anim = -1

[State 3251, 1]
type = PlaySnd
trigger1 = Time = 0
value = S1,30

[State 3251, 4]
type = EnvColor
trigger1 = Time = [0,58]
time = 1
value = 0,0,0
under = 1
supermove = 1

[State 3251, 5]
type = Explod
trigger1 = Time = 1
anim = 8009
sprpriority = -6
postype = left
pos = 160,130
scale = 1.09,1.09
bindtime = 1
supermove = 1
ownpal = 1

[State 3251, 7]
type = Explod
trigger1 = Time = 28
anim = 8010
sprpriority = -4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3251, 8]
type = Explod
trigger1 = Time = 28
anim = 8011
sprpriority = -2
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3251, 9]
type = Explod
trigger1 = Time = 28
anim = 8012
sprpriority = 4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3251, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------
[Statedef 3252];掴み
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3252
sprpriority = 2

[State 3252, 1]
type = playsnd
trigger1 = animelem = 5
value = S0,40

[State 3252, 4]
type = targetstate
trigger1 = time = 0
value = 3230

[State 3252, 1]
type = Width
trigger1 = 1
edge = 60,0

[State 3252, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 33,0

[State 3252, 4]
type = targetstate
trigger1 = animelem = 3
value = 3231

[State 3252, 4]
type = targetbind
trigger1 = animelem = 3
postype = p1
pos = 50,-96

[State 3252, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = 36,-110

;[State 3200, 0]
;type = SuperPause
;trigger1 = Time = 0
;time = 58
;darken = 0
;p2defmul = 1
;unhittable = 1
;movetime = 58
;anim = -1

[State 3252, 1]
type = PlaySnd
trigger1 = Time = 0
value = S1,30

[State 3252, 4]
type = EnvColor
trigger1 = Time = [0,58]
time = 1
value = 0,0,0
under = 1
supermove = 1

[State 3252, 5]
type = Explod
trigger1 = Time = 1
anim = 8009
sprpriority = -6
postype = left
pos = 160,130
scale = 1.09,1.09
bindtime = 1
supermove = 1
ownpal = 1

[State 3252, 7]
type = Explod
trigger1 = Time = 28
anim = 8010
sprpriority = -4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3252, 8]
type = Explod
trigger1 = Time = 28
anim = 8011
sprpriority = -2
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3252, 9]
type = Explod
trigger1 = Time = 28
anim = 8012
sprpriority = 4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3252, 2]
type = ChangeState
Trigger1 = animTime = 0
value = 3253

;-----------------------
[Statedef 3253];お別れ
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3253
sprpriority = 2

[State 3253, 4]
type = PlaySnd
trigger1 = Time = 0
value = S1,2

[State 3253, 4]
type = PlaySnd
trigger1 = Time = 20
value = S1,1

[State 3253, 4]
type = Explod
trigger1 = time = 0
anim = 3240
removetime = 85
postype = p1
pos = 52,-13
sprpriority = 4
ownpal = 1

[State 3253, 4]
type = Explod
trigger1 = time = 0
anim = 1108
removetime = 85
postype = p1
pos = 32,0
sprpriority = 4
ownpal = 1

[State 3253, 4]
type = Explod
trigger1 = time = 2
anim = 1040
removetime = 14
postype = p1
pos = -12,0
sprpriority = 4
ownpal = 1

[State 3253, 4]
type = Explod
trigger1 = time = 20
anim = 1040
removetime = 14
postype = p1
pos = 102,0
sprpriority = 4
ownpal = 1

[State 3253, 4]
type = Explod
trigger1 = time = 42
anim = 1040
removetime = 12
postype = p1
pos = -22,0
sprpriority = 4
ownpal = 1

[State 3253, 4]
type = envshake
trigger1 = time = 0
triggerall = random <= 500
time = 85
ampl = -2

[State 3253, 4]
type = envcolor
trigger1 = animelem = 2
value = 255,255,255
time = 1
under = -1

[State 3253, 4]
type = targetstate
trigger1 = animelem = 1
value = 3232

[State 3253, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 35,-110

[State 3253, 2]
type = ChangeState
Trigger1 = Time = 85
value = 3254

;--------------------
[Statedef 3254];ぽぃ
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3255
sprpriority = 2

[State 3254, 4]
type = Explod
trigger1 = time = 0
anim = 3241
ID = 3241
postype = p1
pos = 55,20
sprpriority = 4
supermove = 1
ownpal = 1

[State 3254, 4]
type = targetstate
trigger1 = Time = 0
value = 3284

[State 3254, 4]
type = targetbind
trigger1 = Time = 0
postype = p1
pos = 35,-110

[State 3254, 4]
type = targetlifeadd
trigger1 = Time = 0
value = -395

[State 3254, 2]
type = ChangeState
Trigger1 = animTime = 0
value = 0
ctrl = 1

;---------------------------------;P2State
[Statedef 3230];P2State
type    = S
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 3230, 4]
type = changeanim2
trigger1 = time = 0
value = 3230
ignorehitpause = 1

;--------------------
[Statedef 3231];P2State
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 3231, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 3231, 4]
type = changeanim2
trigger1 = time = 0
value = 3231

[Statedef 3232];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 3232, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 3232, 4]
type = changeanim2
trigger1 = time = 0
value = 3232

;----------------
[Statedef 3233];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 3233, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 3233, 4]
type = changeanim2
trigger1 = time = 0
value = 3233

;----------------
[Statedef 3234];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = -4.5,-7
sprpriority = -1
movetype = H

[State 3234, 1]
type = VelAdd
Trigger1 = time >= 0
y = .45

[State 3234, 4]
type = changeanim2
trigger1 = time = 0
value = 3234

[State 3234, 6]
type = selfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;----------------
[Statedef 3284];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = -2,-12
sprpriority = -1
movetype = H

[State 3284, 1]
type = VelAdd
Trigger1 = time >= 0
y = .45

[State 3284, 4]
type = changeanim2
trigger1 = time = 0
value = 3234;5052

[State 3284, 6]
type = selfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;-------------------------------------------------------------------------------
; シュトゥルムヴィント
[Statedef 3300]
type = S
movetype = A
physics = N
ctrl = 0
Anim = 3300
velset = 0, 0
poweradd = -1000
juggle = 5

[State 3300, super]
type = PlaySnd
trigger1 = Time = 3
value = S1,29
channel = 1

[State 3300, super]
type = SuperPause
trigger1 = 1
time = 7
p2defmul = 1
unhittable = 1
movetime = 7
anim = -1

[State 3300, super]
type = EnvColor
trigger1 = Time = 0
time = 22
value = 0,0,0
under = 1
supermove = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3300, super]
type = Explod
trigger1 = Time = 5
anim = 8006
sprpriority = -4
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3300, super]
type = Explod
trigger1 = Time = 10
anim = 8007
sprpriority = -2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3300, super]
type = Explod
trigger1 = Time = 20
anim = 8008
sprpriority = 2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3300, 1]
type = Velset
trigger1 = animelem = 1
x = 1.5
y = -1.7

[State 3300, 1]
type = Velset
trigger1 = animelem = 2
x = 0.7
y = -1

[State 3300, 1]
type = Velset
trigger1 = animelem = 3
x = -0.3
y = -0.7

[State 3300, 1]
type = Velset
trigger1 = animelem = 4
x = -0.5
y = 0.5

[State 3300, 1]
type = Velset
trigger1 = Time > 20
x = -8

[State 3300, 1]
type = Velset
trigger1 = Time > 20
y = 0

[State 3300]
type = screenbound
trigger1 = AnimElem = 4,> 0
value = 0
ignorehitpause = 1

[State 3300, ChangeState]
type = ChangeState
trigger1 = backedgebodydist < -100
trigger2 = Time = 100
value = 3301
ctrl = 0

;------------------------ 突撃ッ
[Statedef 3301]
type = S
movetype = A
physics = N
ctrl = 0
Anim = 3301
velset = 0, 0

[State 3301, 1]
type = playsnd
trigger1 = time = 0
value = S0,17

[State 3301, 0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3301, width]
type = Width
trigger1 = 1
edge = 60,0

;[State 3301, 0b]
;type = BGPalfx
;trigger1 = 1
;ignorehitpause = 1
;time = 1
;invertall = 1

[State 3301]
type = screenbound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3301, PlaySnd]
type = PlaySnd
trigger1 = Time  = 10
value = 1,2

[State 3301, PlaySnd]
type = PlaySnd
trigger1 = Time % 23 = 0
trigger1 = movecontact
value = 1,1

[State 3301, PlaySnd]
type = PlaySnd
trigger1 = Time % 29 = 0
trigger1 = movecontact
value = 1,2

[State 3301,helper]
type = helper
trigger1 = Time = 0
name = "Wind"
id = 3320
pos = 90,-65
postype = P1
stateno = 3320
helpertype = normal
keyctrl = 0
ownpal = 0
persistent = 0
supermovetime = 999
pausemovetime = 999

[State 3301, 2]
type = HitDef
triggerAll = UniqHitCount <= 13
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
attr = S, SA
animtype  = diagup
damage    = 20,4
guardflag = M
hitflag = MAF
ID = 3301
pausetime = 0,10
guard.pausetime = 0,15
sparkxy = 0,-60
hitsound   = -1;S1,6
guardsound = -1;S1,19
ground.type = High
ground.slidetime = 13
ground.hittime  = 17
ground.velocity = -1.5, -12
air.velocity = -1.5,-10
sparkno = S8001
guard.sparkno = S8004
fall = 1
fall.recover = 0
air.fall = 1
air.juggle  = 5

[State 3301, 4]
type = Null;MoveHitReset
trigger1 = MoveContact
trigger1 = numtarget(3301) = 0
trigger2 = numtarget(3301) > 0
trigger2 = target(3301),stateno != 5000 && target(3301),stateno != 5020
persistent = 0

[State 3301, 4]
type = VarSet
trigger1 = Time = 0
var(12)= 0

[State 3301,4]
type = Varadd
trigger1 = Target(3301), gethitvar(guarded) = 1
var(12) = 1

[State 3301, 4]
type = VarSet
trigger1 = Time = 0
var(15)= 0

[State 3301, 4]
type = VarSet
triggerAll = numtarget(3301) > 0
triggerAll = frontedgebodydist >= 0
triggerAll = (target(3301),stateno = [150,152]) || (target(3301),stateno = [5000,5500])
trigger1 = P2bodyDist X >= -5
trigger1 = P2bodyDist Y >= -60
var(15)= 1

[State 3301, 4]
type = VarSet
trigger1 = (target(3301),stateno = [150,152]) || (target(3301),stateno = [5000,5500])
trigger1 = P2bodyDist X < -5 || P2bodyDist Y < -60
trigger2 = (target(3301),stateno != [150,152]) && (target(3301),stateno != [5000,5500])
trigger3 = numtarget(3301) = 0
trigger4 = frontedgebodydist < 0
var(15)= 0

[State 3301, 0c]
type = velset
trigger1 = Var(15) = 0
trigger2 = RoundState != 2
trigger3 = Var(12) > 15*3
x = 11

[State 3301, 0d]
type = velset
triggerAll = RoundState = 2
trigger1 = Var(15) = 1 && Var(12) <= 15*3
x = 1

[State 3301,ChangeState]
type = ChangeState
trigger1 = frontedgebodydist < -300
trigger2 = Time > 1000
value = 3310
ctrl = 0

;---------------------------------------------------------------------------
;Run;画面外から復帰（走り）
[Statedef 3310]
type    = S
physics = S
anim = 100
velset = 0,0
ctrl = 0

[State 3310, 0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3310, 0]
type = Turn
trigger1 = Time = 0

[State 3310, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3310]
type = screenbound
trigger1 = 1
value = 0

[State 3310, 5]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1,9

[State 3310, 1]
type = VelSet
trigger1 =  AnimElem = 2,>= 0
x =  8

[State 3310, 1]
type = NotHitBy
trigger1 = backedgebodydist < 10
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT 

[State 3310, 3]
type = ChangeState
trigger1 = backedgebodydist > 100
value = 3311
ctrl = 0

;---------------------------------------------------------------------------
;画面外から復帰（停止）
[Statedef 3311]
type = S
physics = S
ctrl = 0
anim = 3311

[State 3311, 1]
type = Velset
trigger1 = Time = 0
y = 0

[State 3311, 0]
type = Turn
trigger1 = AnimElem = 2

;[State 3311, 2]
;type = VelSet
;trigger1 = animelem = 2
;x = 0

[State 3311, 3]
type = PosSet
trigger1 = Time = 0
y = 0

;[State 3311, 1]
;type = NotHitBy
;trigger1 = 1
;value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT 

[State 3311, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------ エフェクト
[Statedef 3320]
type = A
movetype = A
physics = N
ctrl = 0
Anim = 3340
velset = 0,0
sprpriority = 5

[State 3320, 1]
type = BindtoRoot
trigger1 = 1
time = 2
pos = 90, -65

[State 3320, 3]
type = AngleSet
trigger1 = Time = 0
value = 90

[State 3320, 7]
type = AngleDraw
trigger1 = 1

[State 3320, 4]
type = Destroyself
trigger1 = root,StateNo != 3301

;-------------------------------------------------------------------------------
; シュトゥルムヴィントMAX
[Statedef 3350]
type = S
movetype = A
physics = N
ctrl = 0
Anim = 3300
velset = 0, 0
poweradd = -2000
juggle = 5

[State 3350, super]
type = PlaySnd
trigger1 = Time = 3
value = S1,30
channel = 1

[State 3350, super]
type = SuperPause
trigger1 = 1
time = 12
p2defmul = 1
unhittable = 1
movetime = 12
anim = -1

[State 3350, super]
type = EnvColor
trigger1 = Time = 0
time = 22
value = 0,0,0
under = 1
supermove = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3350, super]
type = Explod
trigger1 = Time = 1
anim = 8009
sprpriority = -6
postype = left
pos = 160,130
scale = 1.5,1.5
bindtime = 1
supermove = 1
ownpal = 1

[State 3350, super]
type = Explod
trigger1 = Time = 20
anim = 8010
sprpriority = -4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3350, super]
type = Explod
trigger1 = Time = 20
anim = 8011
sprpriority = -2
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3350, 1]
type = Velset
trigger1 = animelem = 1
x = 2
y = -2

[State 3350, 1]
type = Velset
trigger1 = animelem = 2
x = 0.8
y = -1.5

[State 3350, 1]
type = Velset
trigger1 = animelem = 3
x = -0.4
y = -1

[State 3350, 1]
type = Velset
trigger1 = animelem = 4
x = -0.5
y = 0.5

[State 3350, 1]
type = Velset
trigger1 = Time > 20
x = -8

[State 3350, 1]
type = Velset
trigger1 = Time > 20
y = 0

[State 3350]
type = screenbound
trigger1 = AnimElem = 4,> 0
value = 0
ignorehitpause = 1

[State 3350, ChangeState]
type = ChangeState
trigger1 = backedgebodydist < -150
trigger2 = Time = 100
value = 3351
ctrl = 0

;------------------------ 突撃ッ
[Statedef 3351]
type = S
movetype = A
physics = N
ctrl = 0
Anim = 3351
velset = 0, 0

[State 3351, 1]
type = playsnd
trigger1 = time = 0
value = S0,17

[State 3351, 0]
type = PlayerPush
trigger1 = 1
value = 0

[State 3351, width]
type = Width
trigger1 = 1
edge = 60,0

[State 3351, 0b]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 1
invertall = 1

[State 3351]
type = screenbound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3351, PlaySnd]
type = PlaySnd
trigger1 = Time  = 10
value = 1,2

[State 3351, PlaySnd]
type = PlaySnd
trigger1 = Time % 17 = 0
trigger1 = movecontact
value = 1,1

[State 3351, PlaySnd]
type = PlaySnd
trigger1 = Time % 23 = 0
trigger1 = movecontact
value = 1,2

[State 3351,helper]
type = helper
trigger1 = Time = 0
name = "Wind"
id = 3370
pos = 90,-65
postype = P1
stateno = 3370
helpertype = normal
keyctrl = 0
ownpal = 0
persistent = 0
supermovetime = 999
pausemovetime = 999

[State 3351, 2]
type = HitDef
triggerAll = UniqHitCount <= 19
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
attr = S, SA
animtype  = diagup
ID = 3351
damage    = 15,3
guardflag = M
hitflag = MAF
pausetime = 0,20
guard.pausetime = 0,10
sparkxy = 0,-60
hitsound   = -1;S1,6
guardsound = -1;S1,19
ground.type = High
ground.slidetime = 13
ground.hittime  = 17
ground.velocity = -2, -15
air.velocity = -2,-12
sparkno = S8001
guard.sparkno = S8004
fall = 1
fall.recover = 0
air.fall = 1
air.juggle  = 5

[State 3351,1]
type = Projectile
Trigger1 = frontedgebodydist > -50
Trigger1 = numprojID(3351) = 0
projanim = 3375
projremove = 0
projremovetime = 32
projhits = 5
projpriority = 1
offset = -300, 0
velocity = 10, 0 
attr = S, HP 
projID = 3351
damage = 24,4
animtype = Diagup
pausetime = 0,10
sparkxy = 80,-50
hitsound = s1,6
guardflag = MAF
guardsound = S1,19
ground.type = Low 
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -5,-3
air.animtype = Diagup
ground.velocity = -4,-9
air.velocity = -4,-8
air.juggle = 1 
fall = 1
fall.recover = 0
sparkno = 5
guard.sparkno = 41

[State 3351, 4]
type = Null;MoveHitReset
trigger1 = MoveContact
trigger1 = numtarget(3351) = 0
trigger2 = numtarget(3351) > 0
trigger2 = target(3351),stateno != 5000 && target(3301),stateno != 5020
persistent = 0

[State 3351, 4]
type = VarSet
trigger1 = Time = 0
var(12)= 0

[State 3351, 4]
type = Varadd
trigger1 = Target(3351), gethitvar(guarded) = 1
var(12) = 1

[State 3351, 4]
type = VarSet
trigger1 = Time = 0
var(15)= 0

[State 3351, 4]
type = VarSet
triggerAll = numtarget(3351) > 0
triggerAll = frontedgebodydist >= 0
triggerAll = (target(3351),stateno = [150,152]) || (target(3351),stateno = [5000,5500])
trigger1 = P2bodyDist X >= -10
trigger1 = P2bodyDist Y >= -65
var(15)= 1

[State 3351, 4]
type = VarSet
trigger1 = (target(3351),stateno = [150,152]) || (target(3351),stateno = [5000,5500])
trigger1 = P2bodyDist X < -10 || P2bodyDist Y < -65
trigger2 = (target(3351),stateno != [150,152]) && (target(3351),stateno != [5000,5500])
trigger3 = numtarget(3351) = 0
trigger4 = frontedgebodydist < 0
var(15)= 0

[State 3351, 0c]
type = velset
trigger1 = Var(15) = 0
trigger2 = RoundState != 2
trigger3 = Var(12) > 30*3
x = 13

[State 3351, 0d]
type = velset
triggerAll = RoundState = 2
trigger1 = Var(15) = 1 &&  Var(12) <= 30*3
x = 1

[State 3351,ChangeState]
type = ChangeState
trigger1 = frontedgebodydist < -400
trigger2 = Time > 1000
value = 3310
ctrl = 0

;------------------------ エフェクト
[Statedef 3370]
type = A
movetype = A
physics = N
ctrl = 0
Anim = 3370
velset = 0,0
sprpriority = 5

[State 3370, 1]
type = BindtoRoot
trigger1 = 1
time = 2
pos = 90, -65

[State 3370, 3]
type = AngleSet
trigger1 = Time = 0
value = 90

[State 3370, 7]
type = AngleDraw
trigger1 = 1

[State 3370, 4]
type = Destroyself
trigger1 = root,StateNo != 3351

;-------------------------------------------------
;エデン
[Statedef 4500]
type    = S
movetype= I
physics = S
anim = 4500
ctrl = 0
poweradd = -3000
velset = 0,0,0

[State 4500, BGcolor]
type = envcolor
trigger1 = time = 0
time = 80
under = 1
value = 0, 0, 0

[State 4500, 0]
type = PlaySnd
trigger1 = animelem = 10
value = s1,9

[State 4500, 1]
type = PlaySnd
trigger1 = time = 2
value = s1,30

[state 4500 ,voice]
type = playsnd
trigger1 = animelem = 1
value = s0,50

[State 4500, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 30  ;25 is all pause time

;[State 4500, 2]
;type = SuperPause
;trigger1 = animelem = 1
;anim = -1
;movetime = 76
;time = 76
;darken = 0

;[State 4500, 2]
;type = Explod
;trigger1 = AnimElem = 1
;anim = 8012
;postype = p1
;pos = 0,-90
;sprpriority = 7
;supermove = 1
;bindtime = 1
;ownpal = 1

[state 4500 ,var]
type = varset
trigger1 = animtime = 0
var(40) = 0

[State 4500, 0]
type = SuperPause
trigger1 = Time = 0
time = 58
darken = 0
p2defmul = 1
unhittable = 1
movetime = 58
anim = -1

[State 4500, 1]
type = PlaySnd
trigger1 = Time = 0
value = S1,30

[State 4500, 4]
type = EnvColor
trigger1 = Time = [0,58]
time = 1
value = 0,0,0
under = 1
supermove = 1

;[State 4500, 5]
;type = Explod
;trigger1 = Time = 2
;anim = 8009
;sprpriority = -6
;postype = left
;pos = 160,130
;scale = 1.09,1.09
;bindtime = 1
;supermove = 1
;ownpal = 1

[State 4500, 5]
type = Explod
trigger1 = Time = 2
anim = 8060
sprpriority = -6
postype = left
pos = 160,120
scale = 1.0,1.0
bindtime = 1
supermove = 1
ownpal = 1

[State 4500, 7]
type = Explod
trigger1 = Time = 28
anim = 8061
sprpriority = -6
postype = left
pos = 160,120
supermove = 999
bindtime = 1
removetime = 15
ownpal=1
scale = 1.0,1.0
vel = 0,-2.0

[State 4500, 8]
type = Explod
trigger1 = Time = 28
anim = 8011
sprpriority = -2
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 4500, 9]
type = Explod
trigger1 = Time = 28
anim = 8012
sprpriority = 4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 4500, end2]
type = changestate
trigger1 = animtime = 0
value = 4501
ctrl = 0

;----------------------
[Statedef 4501];Dash
type    = S
movetype= A
physics = N
anim = 4501
ctrl = 0

[State 4501, 1]
type = explod
;trigger1 = facing = 1
trigger1 = time = 1
ID = 13200
pos = 0,0
postype = LEFT
anim = 8050
bindtime = 235
removetime = 35
sprpriority = -3
ownpal = 1
removeongethit = 1
supermove = 1
supermovetime = 999
scale = 1.09,1.09

[State 4501, flash2]
type = Explod
trigger1 = animelem = 1
anim = 1109
postype = p1
pos = 5,5
sprpriority = 2
supermove = 1
bindtime = 1
ownpal = 1

;[State 3901 , 9]
;type = Explod
;trigger1 = AnimElem = 1
;anim = 936
;ID = 930
;ownpal = 1
;sprpriority = 5
;postype = p1
;pos = -15,-30
;bindtime = 1
;scale = 1.1,1.1

[State 4501]
type = PlaySnd
trigger1 = animelem = 1
value = 1,7

[state 4501]
type = envshake
trigger1 = animelem = 1
ampl = -4
time = 15

[state 4501]
type = envshake
trigger1 = animelem = 1,10
ampl = -3
time = 15

[state 4501]
type = envcolor
trigger1 = animelem = 1
value = 240,240,240
time = 1
under = 0

[State 4501, 0]
type = playerpush
trigger1 = time >= 0
value = 1

[State 4501, 1]
type = Velset
trigger1 = P2Bodydist X > 50
x = 9

[State 4501, 2]
type = ChangeState
trigger1 = time = 16
trigger2 = P2Bodydist X < 50
value = 4502

;----------------------
[Statedef 4502];Dash
type    = S
movetype= A
physics = N
anim = 4502
ctrl = 0

[State 4502, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 4502, sunglass]
type = envcolor
trigger1 = movehit
time = 1
under = 1
value = 240,240,240

[State 4502, 5]
type = HitDef
;trigger1 = AnimElem = 4, > 0
Trigger1 = var(10) < 2
attr = S, HA
animtype = hard
p2facing = 1
damage = 15,0
sparkno = S8000
guard.sparkno = S8004
sparkxy = 0,-60
pausetime = 0,1
hitflag = MAF
ID = 4502
forcestand = 1
guardflag = M
hitsound   = S1,14
guardsound = S1,19
fall.recover = 0
ground.slidetime = 15
ground.hittime = 18
ground.velocity = -3, 0
kill = 0

[State 4502, 4]
type = varset
trigger1 = time = 0
var(10) = 0

[State 4502, 4]
type = varadd
trigger1 = movehit
var(10) = 1

[State 4502, 4]
type = varset
trigger1 = numtarget(4502) > 0
trigger1 = target(4502),stateno = 5000 || target(4502),stateno = 5020
var(15) = 1

[State 4502, 4]
type = varset
trigger1 = numtarget(4502) = 0
trigger2 = numtarget(4502) > 0
trigger2 = target(4502),stateno != 5000 && target(4502),stateno != 5020
var(15) = 0

[State 4502, 4]
type = movehitreset
triggerall = movehit > 0
trigger1 = numtarget(4502) = 0
trigger2 = numtarget(4502) > 0
trigger2 = target(4502),stateno != 5000 && target(4502),stateno != 5020
persistent = 0

;[State 4502, 4]
;type = Targetstate
;trigger1 = movehit && numtarget(4502) > 0
;value = 3035
;id = 4502
;ignorehitpause = 1
;persistent = 0

[State 4502, 4]
type = changestate
trigger1 = movehit  && var(15) = 1 && var(10) < 2
trigger2 = movehit  && var(10) > 1
value = 4505
ignorehitpause = 1
persistent = 0

[State 4502, end1];ステップ
type = changestate
trigger1 = moveguarded
;trigger2 = frontedgedist < 5
;trigger2 = P2Bodydist X < -10
value = 4521
ctrl = 0

[State 4502, end1]
type = changestate
trigger1 = animtime = 0
value = 4520
ctrl = 0

;------------------------
;エデン　ラッシュ
[Statedef 4505]
type = S
movetype = A
physics = N
anim = 4505
velset = 0,0,0
ctrl = 0

[State 4505, 1];背景
type = explod
;trigger1 = facing = 1
trigger1 = time = 1
ID = 13200
pos = 0,0
postype = LEFT
anim = 8050
bindtime = 700
removetime = 680
sprpriority = -3
ownpal = 1
removeongethit = 1
supermove = 1
supermovetime = 999
scale = 1.09,1.09

[State 4505, push]
type = playerpush
trigger1 = time >= 0
value = 1

[State 4505, muteki]
type = nothitby
trigger1 = time >= 0
value = SCA
time = 1

[State 4505, width]
type = Width
trigger1 = time >= 0
edge = 60,0

[State 4505, 0]
type = targetbind
trigger1 = time >= 0
pos = 50,0

[State 4505, 1];上段Light
type = HitDef
trigger1 = animelem = 5
attr = S, HA
forcestand = 1
animtype  = Medium
damage    = 10
givepower = 3
hitflag = MAF
pausetime = 1,11
sparkno = S8000
sparkxy = -15,-70
hitsound   = S1,12
guardsound = S1,19
ground.type = High
ground.slidetime = 16
ground.hittime  = 19
ground.velocity = -2.3
kill = 0

[State 4505, 2];ボディLight
type = HitDef
trigger1 = animelem = 9
trigger2 = animelem = 13
trigger3 = animelem = 25
trigger4 = animelem = 36
trigger5 = animelem = 47
trigger6 = animelem = 58
trigger7 = animelem = 69
attr = S, HA
animtype  = Medium
damage    = 10
givepower = 3
hitflag = MAF
pausetime = 1,11
forcestand = 1
sparkno = S8000
sparkxy = -20,-40
hitsound   = S1,13
guardsound = S1,19
ground.type = Low
ground.slidetime = 16
ground.hittime  = 19
ground.velocity = -2.3
kill = 0

[State 4505, 3];上段Hard
type = HitDef
trigger1 = animelem = 21
trigger2 = animelem = 32
trigger3 = animelem = 43
trigger4 = animelem = 54
trigger5 = animelem = 65
trigger6 = animelem = 77
trigger7 = animelem = 81
attr = S, HA
animtype  = Midium
damage    = 15
givepower = 3
hitflag = MAF
pausetime = 2,12
forcestand = 1
sparkno = S8000
sparkxy = -15,-70
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 16
ground.hittime  = 19
ground.velocity = -2.3
kill = 0
palfx.time = 3
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1

[State 4505, 4];ボディHard
type = HitDef
trigger1 = animelem = 17
trigger2 = animelem = 28
trigger3 = animelem = 39
trigger4 = animelem = 50
trigger5 = animelem = 61
trigger6 = animelem = 72
attr = S, HA
animtype  = Hard
damage    = 15
givepower = 3
hitflag = MAF
pausetime = 2,12
forcestand = 1
sparkno = s8000
sparkxy = -20,-40
hitsound   = S1,15
guardsound = S1,19
ground.type = Low
ground.slidetime = 16
ground.hittime  = 19
ground.velocity = -2.3
kill = 0
palfx.time = 3
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1

[State 4505, envcolor]
type = envcolor
triggerall = movehit
trigger1 = animelem = 5
trigger2 = animelem = 9
trigger3 = animelem = 13
trigger4 = animelem = 17
trigger5 = animelem = 21
trigger6 = animelem = 25
trigger7 = animelem = 28
trigger8 = animelem = 32
trigger9 = animelem = 36
trigger10 = animelem = 39
trigger11 = animelem = 43
trigger12 = animelem = 47
trigger13 = animelem = 50
trigger14 = animelem = 54
trigger15 = animelem = 58
trigger16 = animelem = 61
trigger17 = animelem = 65
trigger18 = animelem = 69
trigger19 = animelem = 72
trigger20 = animelem = 77
trigger21 = animelem = 81
time = 1
under = 0
value = 240,240,240


[state 4505 ,shake]
type = envshake
triggerall = movehit
trigger1 = animelem = 5
trigger2 = animelem = 9
trigger3 = animelem = 13
ampl = -3
time = 10

[state 4505 ,shake]
type = envshake
trigger1 = animelem = 17
trigger2 = animelem = 21
trigger3 = animelem = 25
trigger4 = animelem = 28
trigger5 = animelem = 32
trigger6 = animelem = 36
trigger7 = animelem = 39
trigger8 = animelem = 43
trigger9 = animelem = 47
trigger10 = animelem = 50
trigger11 = animelem = 54
trigger12 = animelem = 58
trigger13 = animelem = 61
trigger14 = animelem = 65
trigger15 = animelem = 69
trigger16 = animelem = 72
trigger17 = animelem = 77
trigger18 = animelem = 81
ampl = -5
time = 15


[State 4505 , 5]
type = Explod
triggerall = NumExplod(2200) < 3
triggerall = random < 899
trigger1 = (AnimElemTime(27) >= 0) && (movehit)
anim = 4540
ID = 2200
ownpal = 1
sprpriority = 5
postype = p2
pos = 0,0
random = 120,0
bindtime = 1
ignorehitpause = 1


[State 4505, 8]
type = Explod
triggerall = NumExplod(2200) < 4
triggerall = random < 599
trigger1 = (AnimElemTime(27) >= 0) && (movehit)
anim = 4540
ID = 2200
ownpal = 1
sprpriority = 5
postype = p2
pos = 0,0
;random = 10,0
bindtime = 1
ignorehitpause = 1

[State 4505, end1]
type = ChangeState
trigger1 = AnimTime = 0
value = 4506
ctrl = 0

;-------------------------
[Statedef 4506]
type = S
movetype = A
physics = S
anim = 4506
velset = 0
ctrl = 0

[State 4506, muteki]
type = nothitby
trigger1 = time >= 0
value = SCA
time = 1

[State 4506, 0]
type = posadd
trigger1 = animelem = 7
x = -5

[State 4506, 1]
type = velset
trigger1 = animelem = 13
x = 6

[State 4506, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
animtype  = Hard
damage    = 15
givepower = 3
guardflag = MA
pausetime = 10,25
sparkno = s8000
sparkxy = -15,-60
hitsound   = S1,15
guardsound = S1,19
ground.type = High
ground.slidetime = 100
ground.hittime  = 100
air.hittime = 100
fall = 0
ground.velocity = -1, -8
air.velocity = -1,-8
palfx.time = 60
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1
kill = 0

[State 4506, 3]
type = explod
trigger1 = animelem = 14
Anim = 1108
pos = 35,0
shadow = 64,64,64
sprpriority = 7
postype = p1
bindtime = 1
ownpal = 1


[State 4506, 2]
type = playsnd
trigger1 = animelem = 14
value = s0,51
channel= 2

[State 4506, 8]
type = HitDef
trigger1 = AnimElem = 16, =0
;trigger2 = AnimElem = 16, =1
attr = S, HA
animtype  = Hard
damage    = 5
givepower = 3
hitflag = MAFD
guardflag = 
pausetime = 1,30
sparkno = s8000
sparkxy = -15,-60
hitsound   = S1,10
guardsound = S1,19
ground.type = High
ground.slidetime = 20
ground.hittime  = 23
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
ground.velocity = -1,-9
air.velocity = -1,-9
palfx.time = 70
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1
kill = 0

[State 4506, 8]
type = HitDef
trigger1 = AnimElem = 16, =2
attr = S, HA
animtype  = UP
damage    = 10
givepower = 3
hitflag = MAFD
guardflag = 
pausetime = 30,35
sparkno = s8000
sparkxy = -15,-60
hitsound   = S1,6
guardsound = S1,19
ground.type = High
ground.slidetime = 20
ground.hittime  = 23
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
ground.velocity = -4,-12
air.velocity = -4,-12
palfx.time = 70
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1
kill = 0

[State 4506, 3]
type = PlaySnd
trigger1 = animelem = 12
value = 1,1

[State 4506, 1]
type = VelSet
trigger1 = animelem = 17,>=0
x = 2
y = -4

[State 4506]
type = pause
trigger1 = Enemy,Alive = 1
trigger1 = Animelem = 12 >= 0
trigger1 = Timemod = 1,0
time = 1

[State 4506]
type = pause
trigger1 = Enemy,Alive = 1
trigger1 = Animelem = 16 >= 0
trigger1 = Timemod = 1,0
time = 1

[State 4506, 10]
type = envcolor
trigger1 = animelem = 5
trigger2 = animelem = 16
time = 3
under = 0
value = 240,240,240

[state 4506 ,shake]
type = envshake
trigger1 = animelem = 5
trigger2 = animelem = 14
ampl = -4
time = 50

[State 4506, end1]
type = ChangeState
trigger1 = AnimTime = 0
value = 4507
ctrl = 0

;------------------------
[Statedef 4507]
type    = S
movetype= A
physics = S
anim = 4507
ctrl = 0
velset = 0,0,0

[State 4507, BGcolor]
type = envcolor
trigger1 = time = 0
time = 80
under = 1
value = 0, 0, 0

[State 4507, 0]
type = PlaySnd
trigger1 = animelem = 1
value = s0,52

[State 4507, 0]
type = PlaySnd
trigger1 = animelem = 10
value = s1,2

[State 4507, 1]
type = PlaySnd
trigger1 = time = 2
value = 1,29

[State 4507, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 30  ;25 is all pause time

[State 4507, 2]
type = SuperPause
trigger1 = animelem = 1
anim = -1
movetime = 76
time = 76
darken = 0

[State 4507, 4]
type = Explod
trigger1 = animElem = 2
anim = 3240
ID = 3240
supermovetime = 999
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1

[State 4507, 4]
type = Explod
trigger1 = animElem = 2,=25
anim = 3241
ID = 3241
postype = p1
pos = 55,20
sprpriority = 4
supermove = 1
ownpal = 1

[State 4507, 2]
type = Explod
trigger1 = AnimElem = 1
anim = 8008
postype = p1
pos = 0,-80
sprpriority = 7
supermove = 1
bindtime = 1
ownpal = 1

[State 4507, 2]
type = Explod
trigger1 = AnimElem = 1
anim = 8032
postype = p1
pos = 20,-15
sprpriority = -1
supermove = 1
bindtime = 1000
ownpal = 1
scale = 1.6,1.6

[State 4507, end1]
type = ChangeState
trigger1 = AnimTime = 0
value = 4508
ctrl = 0

;-----------------
[Statedef 4508]
type    = S
movetype= A
physics = S
anim = 4508
ctrl = 0
velset = 0,0,0

[State 4508, 1]
type = HitDef
trigger1 = time >= 0
attr = S, HA, A
hitflag = MAF
animtype  = Hard
damage    = 1
givepower = 0
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -15,-60
;hitsound  = S240,0
;guardsound = S1500,0
ground.type = High
ground.slidetime = 60
ground.hittime  = 23
fall = 0
fall.recover = 0
air.velocity = 0,0
ground.velocity = 0,0
palfx.time = 70
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1
kill = 0

[State 4508, 3]
type = PlaySnd
trigger1 = animelem = 1,10
value = 1,2
channel = 1

[State 4508, 3]
type = PlaySnd
trigger1 = movehit
trigger1 = Timemod = 10,0
value = 1,7
channel = 2

[State 4508, 3]
type = PlaySnd
trigger1 = movehit
trigger1 = Timemod = 14,0
value = 1,1
channel = 3

;[state 4508]
;type = envcolor
;trigger1 = movehit
;trigger1 = Timemod = 2,0
;value = 240,240,240
;time = 1
;under = 0

[state 4508 ,shake]
type = envshake
trigger1 = movehit
trigger1 = Timemod = 6,0
ampl = -5
time = 50

[State 3004, 4]
type = RemoveExplod
trigger1 = animElem = 5
ID = 3240

[State 3254, 4]
type = Explod
trigger1 = animElem = 5
anim = 3241
ID = 3241
supermovetime = 999
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 4508 , 9]
type = Explod
;triggerall = NumExplod(930) < 2
;triggerall = random < 1099
trigger1 = AnimElem = 1,1
trigger2 = animelem = 1,12
trigger3 = AnimElem = 1,22
trigger4 = animelem = 1,42
trigger5 = AnimElem = 1,55
trigger6 = animelem = 1,82
trigger7 = AnimElem = 1,111
trigger8 = animelem = 1,121
trigger9 = animelem = 1,144
trigger10 = animelem = 1,167
trigger11 = animelem = 1,180
trigger12 = animelem = 1,210
trigger13 = animelem = 1,233
trigger14 = animelem = 1,265
trigger15 = animelem = 1,155
trigger16 = animelem = 1,175
trigger17 = animelem = 1,200
trigger18 = animelem = 1,223
trigger19 = animelem = 1,245
trigger20 = animelem = 1,33
trigger21 = animelem = 1,46
trigger22 = animelem = 1,66
trigger23 = animelem = 1,75
trigger24 = animelem = 1,96
anim = 1112
ID = 930
ownpal = 1
sprpriority = 5
postype = left
pos = 50,230
random = 450,0
bindtime = 1
ignorehitpause = 1

[State 4508, 3]
type = PlaySnd
trigger1 = animelem = 1,274
value = 1,2
channel = 5

[State 4507, 2]
type = playsnd
trigger1 = Time = 8
value = s0,41

[State 4508, end2]
type = changestate
trigger1 = time = 274
value = 4509
ctrl = 0

;-----------------エデン着地
[Statedef 4509]
type    = S
movetype= A
physics = N
anim = 4509
ctrl = 0
velset = 0,0,0

[state 4509]
type = posset
trigger1 = Time = 0
Y = -30

[State 4509, 1]
type = VelAdd
Trigger1 = time > 0
Trigger1 = pos Y <= -20
y = 0.2

[State 4509, 1]
type = VelAdd
Trigger1 = time > 0
Trigger1 = pos Y > -15
Trigger1 = Vel Y > 1
y = -0.05 * (15 + pos Y)

[State 4509, 2]
type = playsnd
trigger1 = animelem = 2
trigger1 = Target,Alive = 0
value = s0,54
channel= 2

[State 4509, 1]
type = HitDef
trigger1 = animelem = 1
attr = S, HA, A
hitflag = MAFD
animtype  = diagup
damage    = 20,20
givepower = 15
guardflag = H
pausetime = 0,0
sparkno = -1
sparkxy = -15,-60
;hitsound  = S1,14
;guardsound = S150,1
ground.type = High
ground.slidetime = 60
ground.hittime  = 23
fall = 1
fall.recover = 0
air.fall = 1
air.velocity = -4,-10
ground.velocity = -4,-10
palfx.time = 70
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1
kill = 1

[State 4509, 1]
type = HitDef
trigger1 = Pos Y = 5
attr = S, HA, A
hitflag = MAFD
animtype  = diagup
damage    = 20,5
givepower = 15
guardflag = H
pausetime = 0,0
sparkno = -1
sparkxy = -15,-60
hitsound  = S1,15
guardsound = S150,1
ground.type = High
ground.slidetime = 60
ground.hittime  = 23
fall = 1
fall.recover = 0
fall.yvelocity = 4
air.fall = 1
air.velocity = -1,8
ground.velocity = -1,6

[State 4509]
type = pause
trigger1 = Enemy,Alive = 1
trigger1 = Animelem = 2 >= 0
trigger1 = Timemod = 1,0
time = 2

[state 4509]
type = envcolor
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 4
value = 240,240,240
time = 2

[state 4509 ,shake]
type = envshake
trigger1 = animelem = 1
ampl = -6
time = 60

[State 4509, 9]
type = Explod
trigger1 = AnimElem = 1
anim = 936
ID = 1109
ownpal = 1
sprpriority = 5
postype = p2
pos = 0,-0
bindtime = 1
ignorehitpause = 1
scale = 1.6,1.6

[State 4509, 6]
type = selfState
;trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 4510

;-------------------
[Statedef 4510]
type    = S
movetype= A
physics = S
anim = 4510
ctrl = 0
velset = 0,0,0

[State 4510]
type = pause
trigger1 = Enemy,Alive = 1
trigger1 = Timemod = 2,0
time = 2

[state 4510]
type = posset
trigger1 = animelem = 5
Y = 0

[State 4510, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------
[Statedef 4520];Miss1
type    = S
movetype= I
physics = S
anim = 4520
ctrl = 0

[State 4520, 1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------
[Statedef 4521];Miss2 (STEP)
type    = S
movetype= I
physics = S
anim = 4521
ctrl = 0

[State 4521, 1]
type = changestate
trigger1 = animtime = 0
value = 4522
ctrl = 0

; RUN_BACK
[Statedef 4522]
type    = A
physics = N
ctrl = 0
anim = 105
sprpriority = 1

[State 4522, 0]
type = PlaySnd
trigger1 = Time = 1
value = S1,20

[State 4522, 1]
type = VelAdd
trigger1 = 1
y = 0.44

[State 4522, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 4522, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 4523
ctrl = 0

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 4523]
type    = S
physics = S
ctrl = 0
anim = 4523

[State 4523, 0]
type = PlaySnd
trigger1 = Time = 1
value = S1,8

[State 4522, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 4523, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 4523, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 4523, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;00 Jump System
;---------------------------------------------------------
; Jump Initiate
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
velset = 0,0,0

[State 40, PlaySnd]
type = PlaySnd
trigger1 = anim = 40 && animtime = 0
value = 1,16
channel = 6
persistent = 0

[State 641, turn]
type = turn
trigger1 = animtime = 0 && P2dist X < 0

[State 40, 1]
type = VarSet
trigger1 = Time = 0
var(8) = 0

[State 40, Varset]
type = VarSet
trigger1 = command = "holdfwd"
trigger1 = var(8) != 2
var(8) = 1

[State 40, Varset]
type = VarSet
trigger1 = command = "holdback"
trigger1 = var(8) != -2
var(8) = -1

[State 40, Varset]
type = VarSet
triggerall = Time = 0
triggerall = command = "holdfwd"
trigger1 = command = "longjump"
trigger2 = prevstateno = 100 ;RUN_FWD
var(8) = 2

[State 40, Varset]
type = VarSet
trigger1 = Time = 0
trigger1 = command = "holdback"
trigger1 = command = "longjump"
var(8) = -2

[State 40, 1]
type = AfterImage
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
time = 8
FrameGap = 3
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 40, 2];各特殊ジャンプへ移行
type = ChangeState
triggerall = AnimTime = 0
trigger1 = var(8) != 0
trigger1 = var(8) != 1
trigger1 = var(8) != -1
trigger1 = command = "holdup"
trigger2 = command != "holdup"
value = 2041

[State 40, 3];ノーマルジャンプ
type = VelSet
triggerall = AnimTime = 0
trigger1 = var(8) = [-1, 1]
x = ifelse(var(8)=0, const(velocity.jump.neu.x), ifelse(var(8)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

;[State 40, 3];ハイジャンプ
;type = VelSet
;triggerall = AnimTime = 0
;trigger1 = var(8) = 2
;trigger1 = var(8) = -2
;trigger1 = command = "holdup"
;x = ifelse(var(8)=2, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x))
;y = const(velocity.jump.y)

[State 40, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------
; Jump Up (short)
[Statedef 2041]
type    = A
physics = A
ctrl = 1
velset = 0, -8.5
anim = 41

[State 2041, PlaySnd]
type = StopSnd
triggerall = Time = 0
trigger1 = var(8) = -2
trigger2 = var(8) = 2
channel = 6

[State 2041, PlaySnd]
type = PlaySnd
triggerall = Time = 0
trigger1 = var(8) = -2
trigger2 = var(8) = 2
value = S1, 17
persistent = 0

[State 2041, 1]
type = AfterImage
triggerall = Time = 0
trigger1 = var(8) = -2
trigger2 = var(8) = 2
time = 8
FrameGap = 3
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

;ノーマル小ジャンプ（前）
[State 2041, Vel]
type = VelSet
trigger1 = Time = 0
trigger1 = Var(8) = 1
x = 3.5
y = -6.5

;特殊小ジャンプ（前）
[State 2041, Vel]
type = VelSet
trigger1 = Time = 0
trigger1 = Var(8) = 2
trigger1 = command != "holdup"
x = 5.5
y = -6

;ハイジャンプ（前）
[State 2041, Vel]
type = VelSet
trigger1 = Time = 0
trigger1 = Var(8) = 2
trigger1 = command = "holdup"
x = 5.5
y = -9

;ノーマル小ジャンプ（後）
[State 2041, Vel]
type = VelSet
trigger1 = Time = 0
trigger1 = Var(8) = -1
x = -2
y = -6

;特殊小ジャンプ（後）
[State 2041, Vel]
type = VelSet
trigger1 = Time = 0
trigger1 = Var(8) = -2
trigger1 = command != "holdup"
x = -5
y = -6

;ハイジャンプ（後）
[State 2041, Vel]
type = VelSet
trigger1 = Time = 0
trigger1 = Var(8) = -2
trigger1 = command = "holdup"
x = -5
y = -9

[State 2041, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X = 0
trigger1 = command = "holdup"
value = 41

[State 2041, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X = 0
trigger1 = command != "holdup"
value = 41;

[State 2041, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X > 0
trigger1 = command = "holdup"
value = 42

[State 2041, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X > 0
trigger1 = command != "holdup"
value = 42;

[State 2041, 4]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X < 0
trigger1 = command = "holdup"
value = 43

[State 2041, 4]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X < 0
trigger1 = command != "holdup"
value = 43;

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, Varset]	;勝利カットインON/OFF
type = VarSet
trigger1 = Var(29) != 1
trigger1 = Var(29) != 2
v = 29
value = 2		;「1」でON　/　「2」でOFF

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

;[Statedef -3]

[State -3, jump]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 50
value = 3,2
volume = 200

[State -3, dash]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 100
value = 3,4
volume = 200

[State -3, hop]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 105
value = 3,5
volume = 200

[State -3, land]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 52
trigger2 = StateNo = 106
value = 3,3
volume = 200

[State -3, land]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154
value = 3,1
volume = 200

