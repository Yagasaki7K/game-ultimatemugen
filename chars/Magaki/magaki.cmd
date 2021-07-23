;==============================================================================

;-| ボタン配置 |-----------------------------------------------------
;各ボタンの配置を簡単に変更できます。
;このキャラクターのボタン配置を変えたいときなどに使います。
;x = x を x = a に変えれば、xがaに変わります。

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| 標準化 |-------------------------------------------------------
[Defaults]
; timeを記述しなかった場合、以下の値が参照されます。最小値は1です。
command.time = 15

; buffer.timeの値です。1～30まで設定できます。
; 普通は1です。
command.buffer.time = 1

;-| CPUアルゴリズム用コマンド |------------------------------
;CPUアルゴリズムを使う際に便利な記述です。
;AIを使わないなら必要ありません。
;これらのコマンドは人間には入力できないものにする必要があります。

;-| AI |------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F, U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F, U, D, F
time = 1

[Command]
name = "CPU3"
command = U, D, D, U, D, F
time = 1

[Command]
name = "CPU4"
command = F, B, U, U, D, F, U, B, U, D, F
time = 1

[Command]
name = "CPU5"
command = U, F, U, B, U, D, F
time = 1

[Command]
name = "CPU6"
command = U, D, B, U, B, U, D, F
time = 1

[Command]
name = "CPU7"
command = F, F, B, U, B, U, D, F
time = 1

[Command]
name = "CPU8"
command = U, D, U, U, B, U, D, F
time = 1

[Command]
name = "CPU9"
command = F, B, B, U, B, U, D, F
time = 1

[Command]
name = "CPU10"
command = F, F, B, B, U, B, U, D, F
time = 1

[Command]
name = "CPU11"
command = U, U, F, U, B, U, D, F
time = 1

[Command]
name = "CPU12"
command = U, B, B, U, B, U, D, F
time = 1

[Command]
name = "CPU13"
command = U, B, F, F, U, B, U, D, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U, U, B, U, D, F
time = 1

[Command]
name = "CPU15"
command = U, B, F, U, U, B, U, D, F
time = 1

[Command]
name = "CPU16"
command = U, B, B, B, U, B, U, D, F
time = 1

[Command]
name = "CPU17"
command = U, D, B, F, U, B, U, D, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D, U, B, U, D, F
time = 1

[Command]
name = "CPU19"
command = U, D, F, U, U, B, U, D, F
time = 1

[Command]
name = "CPU20"
command = U, D, U, B, U, B, U, D, F
time = 1

[Command]
name = "CPU21"
command = U, D, F, F, U, B, U, D, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F, U, B, U, D, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU24"
command = B, B, B, U, B, U, D, F
time = 1

[Command]
name = "CPU25"
command = D, D, D, D, U, B, U, D, F
time = 1

[Command]
name = "CPU26"
command = D, D, D, U, B, U, D, F
time = 1

[Command]
name = "CPU27"
command = F, F, F, U, B, U, D, F
time = 1

[Command]
name = "CPU28"
command = U, U, U, U, B, U, D, F
time = 1

[Command]
name = "CPU29"
command = U, U, B, B, U, B, U, D, F
time = 1

[Command]
name = "CPU30"
command = D, D, F, F, U, B, U, D, F
time = 1

[Command]
name = "CPU31"
command = U, D, F, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU32"
command = U, B, F, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU33"
command = U, D, D, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU34"
command = F, B, U, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU35"
command = U, F, U, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU36"
command = U, D, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU37"
command = F, F, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU38"
command = U, D, U, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU39"
command = F, B, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU40"
command = F, F, B, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU41"
command = U, U, F, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU42"
command = U, B, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU43"
command = U, B, F, F, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU44"
command = U, F, B, U, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU45"
command = U, B, F, U, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU46"
command = U, B, B, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU47"
command = U, D, B, F, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU48"
command = U, D, B, D, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU49"
command = U, D, F, U, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU50"
command = U, D, U, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU51"
command = U, D, F, U, D, F, D, U, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU52"
command = U, B, F, U, D, F, D, U, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU53"
command = U, D, D, U, D, F, D, U, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU54"
command = F, B, U, U, D, F, U, B, U, D, F, D, U, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU55"
command = U, F, U, B, U, D, F, D, U, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU56"
command = U, D, B, U, B, U, D, F, D, U, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU57"
command = F, F, B, U, B, U, D, F, D, U, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU58"
command = U, D, U, U, B, U, D, F, D, U, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU59"
command = F, B, B, U, B, U, D, F, D, U, B, U, D, U, B, U, D, F
time = 1

[Command]
name = "CPU60"
command = F, F, B, B, U, B, U, D, F, D, U, B, U, D, U, B, U, D, F
time = 1

;------------------------------------------------------------------------------
;-| MAX超必殺技 |--------------------------------------------------------------
[Command]
name = "ユニバース・ディストーション"
command = ~D, DF, F, D, DF, F, c
time = 30

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "ブロッサム"
command = ~D, B, D, B, x
time = 34

[Command]
name = "ブロッサム"
command = ~D, B, D, B, y
time = 34

[Command]
name = "バニッシュ"
command = ~D, D, c
time = 20




;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "ファントムスフィアX"
command = ~D, D , x
time = 25

[Command]
name = "ファントムスフィアY"
command = ~D, D , y
time = 25

[Command]
name = "ファントムスフィアA"
command = ~D, D , a
time = 25

[Command]
name = "サムウェアホールX"
command = ~D, DB, B, x

[Command]
name = "サムウェアホールY"
command = ~D, DB, B, y

[Command]
name = "サムウェアホールA"
command = ~D, DB, B, a

[Command]
name = "サムウェアホールB"
command = ~D, DB, B, b

[Command]
name = "エクスプローディングスフィア弱"
command = ~F, D, DF, x

[Command]
name = "エクスプローディングスフィア強"
command = ~F, D, DF, y

[Command]
name = "ディメンジョンクロー弱"
command = ~D, DF, F, a

[Command]
name = "ディメンジョンクロー強"
command = ~D, DF, F, b

[Command]
name = "ディメンジョンスフィア弱"
command = ~D, DF, F, x

[Command]
name = "ディメンジョンスフィア強"
command = ~D, DF, F, y

[Command]
name = "jump"    
command = D, $U
time = 12

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+a
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = z
time = 1

[Command]
name = "ふっとばし"
command = y+b
time = 1

[Command]
name = "ふっとばし"
command = c
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
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

;------------------------------------------------------------------------------
;-| 方向キー押しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1

;==============================================================================
;------------------------------------------------------------------------------

[Statedef -1];←この行は絶対に消さないでください。必須の項目です。

;-------------------------------------------------------------------
; AI swich -> ON
[State -1,AI]
type = Varset
triggerall = var(59) != 1
triggerall = RoundState != 3
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
trigger51 = command = "CPU51"
trigger52 = command = "CPU52"
trigger53 = command = "CPU53"
trigger54 = command = "CPU54"
trigger55 = command = "CPU55"
trigger56 = command = "CPU56"
trigger57 = command = "CPU57"
trigger58 = command = "CPU58"
trigger59 = command = "CPU59"
trigger60 = command = "CPU60"
var(59) = 1

;-----------------------------------------------------------------------
[State -1, VarRandom]
Type            = null;VarRandom
TriggerAll      = Var(59) = 1
Trigger1        = Time = 1
Trigger2        = Time%60 = 1
Trigger2        = MoveType != I
Trigger3        = Time%1 = 1
Trigger3        = MoveType = I
V               = 58
Range           = 0,99
IgnoreHitPause  = 1

;-----------------------------------------------------------------------
[State -1, AI]
Type = VarSet
TriggerAll = Var(59) = 1
Trigger1 = RoundState = 4
Trigger2 = Win = 1
Trigger3 = Lose = 1
Trigger4 = DrawGame = 1
V = 59
Value = -1

;-----------------------------------------------------------------------
[State -1, AI]
Type = VarSet
TriggerAll = Var(59) = -1
Trigger1 = RoundState = 2
V = 59
Value = 1

;---------------------------------------------------------------------------
;立ちガード
[State -1, SGuard]
type            = ChangeState
Value           = 130
triggerall      = var(59) = 1
triggerall      = RoundState = 2
triggerall      = statetype != A
triggerall      = p2statetype != L
triggerall      = p2movetype = A
Triggerall      = ctrl
Trigger1        = StateType = S
trigger1        = p2statetype = S
trigger1        = p2bodydist X < 50
trigger1        = random = [551,999]
trigger2        = p2statetype = A
trigger2        = p2bodydist X < 50 && random = [400,999]

;---------------------------------------------------------------------------
;しゃがみガード
[State -1, CGuard]
type            = ChangeState
Value           = 131
triggerall      = var(59) = 1
triggerall      = RoundState = 2
triggerall      = statetype != A
triggerall      = p2statetype != L
triggerall      = p2movetype = A
Triggerall      = ctrl
Trigger1        = EnemyNear,MoveType != A
Trigger1        = StateType = C
trigger1        = p2statetype = C
trigger1        = P2bodydist X <  50

;---------------------------------------------------------------------------
;空中ガード
[State -1, AGuard]
type            = ChangeState
Value           = 132
triggerall      = var(59) = 1
triggerall      = RoundState = 2
triggerall      = statetype = A
triggerall      = p2statetype != L
triggerall      = p2movetype = A
Triggerall      = ctrl
trigger1        = P2bodydist X < 80;(abs(enemynear,Pos X - Pos X)<= 80

;---------------------------------------------------------------------------
;ダウン回避
[State -1, UKEMI]
type            = ChangeState
value           = 52000
triggerall      = var(59) = 1 && Alive && CanRecover && Vel Y > -1 && pos y > -30 && random <= 500
trigger1        = StateNo = 5050

;-----------------------------------------------------------------------
;ユニバース・ディストーション
[State -1, MAX]
type           = ChangeState
value          = 3000
triggerall     = power >= 2000
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = p2statetype != L
triggerall     = ctrl
trigger1       = Enemy,NumHelper > 0 || Enemy,NumProj > 0
trigger2       = enemynear,statetype = A && random >= 300
trigger3       = p2life >= 100 && random >= 200
trigger4       = enemynear,statetype != A && enemynear,movetype = A && random >= 800


;---------------------------------------------------------------------------
[State -1, 飛び道具ガード]
type            = ChangeState
value           = 130
TriggerAll      = Var(59) = 1
triggerall      = RoundState = 2
triggerAll      = statetype != A
triggerall      = enemynear,NumProj
trigger1        = ctrl && random = [65,170]
trigger2        = inguarddist = [0,120]
trigger2        = ctrl ;&& random < 100

;------------------------------------------------------------------------------
;ブロッサム
[State -1, H1]
type            = ChangeState
value           = 2100
triggerall      = power >= 500
TriggerAll      = Var(59) = 1
triggerall      = statetype != A
triggerall      = p2statetype != L
triggerall      = p2statetype != A
triggerall      = ctrl
trigger1        = p2bodydist X = [0,15]
trigger1        = p2statetype != A && p2movetype != H
trigger1        = Random <= 250

;------------------------------------------------------------------------------
;サムウェアホールX
[State -1, HOLE X]
type           = ChangeState
value          = 1400
TriggerAll      = Var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = frontedgebodydist > 60
trigger1       = ctrl && random > 301
trigger1       = enemynear,movetype = A

;-----------------------------------------------------------------
;サムウェアホールY
[State -1, HOLE Y]
type           = ChangeState
value          = 1410
TriggerAll     = Var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = BackEdgeBodyDist <= 40
trigger1       = ctrl && random > 501
trigger1       = enemynear,movetype = A

;-----------------------------------------------------------------
;エクスプローディングスフィア弱
[State -1, EXP A]
type           = ChangeState
value          = 1200
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = p2statetype != L
trigger1       = ctrl
Trigger1       = (abs(enemynear,Pos X - Pos X)= [0,60])
Trigger1       = enemynear,statetype = A
trigger1       = enemynear,movetype != H && (abs(enemynear,Pos Y - Pos Y) = [5,90]) && random <= 800
trigger2       = ctrl && enemynear,statetype != A && (abs(enemynear,Pos X - Pos X)= [0,40])
trigger2       = enemynear,movetype = A && random <= 600
trigger3       = ctrl && enemynear,statetype != A && (abs(enemynear,Pos X - Pos X)= [0,40])
trigger3       = enemynear,movetype = A && frontedgebodydist > 60 && random <= 350
trigger4       = ctrl && enemynear,statetype != A && (abs(enemynear,Pos X - Pos X)= [0,40])
trigger4       = enemynear,movetype = A && BackEdgeBodyDist <= 40 && random <= 500

;-----------------------------------------------------------------
;エクスプローディングスフィア強
[State -1, EXP B]
type           = ChangeState
value          = 1250
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = p2statetype != L
trigger1       = ctrl && enemynear,statetype != A && (abs(enemynear,Pos X - Pos X)= [41,110])
trigger1       = frontedgebodydist > 60 && random <= 200

;------------------------------------------------------------------------------
;ディメンジョンスフィア弱
[State -1, D S X]
type           = ChangeState
value          = 1000
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = numprojID(1001) = 0
triggerall     = p2statetype != L
trigger1       = ctrl && random <= 80
trigger2       = ctrl && (p2bodydist X >= 160)
trigger2       = NumHelper(1301) = 1 && random <= 200
trigger3       = ctrl && (p2bodydist X >= 160)
trigger3       = NumHelper(1311) = 1 && random = [201,550]
trigger4       = ctrl && (p2bodydist X >= 160)
trigger4       = NumHelper(1321) = 1 && random = [551,850]
trigger5       = ctrl && (p2bodydist X = [100,160]) && random <= 100
trigger5       = enemynear,movetype != A

;------------------------------------------------------------------------------
;ディメンジョンスフィア強
[State -1, D S Y]
type = ChangeState
value = 1050
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = numprojID(1001) = 0
triggerall     = p2statetype != L
trigger1       = ctrl && random  = [81,150]
trigger2       = ctrl && (p2bodydist X >= 160)
trigger2       = NumHelper(1301) = 1 && random <= 200
trigger3       = ctrl && (p2bodydist X >= 160)
trigger3       = NumHelper(1311) = 1 && random = [201,550]
trigger4       = ctrl && (p2bodydist X >= 160)
trigger4       = NumHelper(1321) = 1 && random = [551,850]
trigger5       = ctrl && (p2bodydist X = [100,160]) && random = [100,200]
trigger5       = enemynear,movetype != A

;-----------------------------------------------------------------
;ファントムスフィアX
[State -1, FS X]
type           = ChangeState
value          = 1300
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = NumHelper(1301) = 0
trigger1       = ctrl && random  <= 150
trigger1       = (p2bodydist X >= 160)
trigger2       = ctrl && (p2bodydist X = [100,160]) && random = [201,250]
trigger2       = enemynear,movetype != A

;-----------------------------------------------------------------
;ファントムスフィアY
[State -1, FS Y]
type           = ChangeState
value          = 1310
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = NumHelper(1311) = 0
trigger1       = ctrl && random  = [151,300]
trigger1       = (p2bodydist X >= 160)
trigger2       = ctrl && (p2bodydist X = [100,160]) && random = [251,300]
trigger2       = enemynear,movetype != A

;-----------------------------------------------------------------
;ファントムスフィアA
[State -1, FS A]
type           = ChangeState
value          = 1320
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = NumHelper(1321) = 0
trigger1       = ctrl && random  = [301,550]
trigger1       = (p2bodydist X >= 160)
trigger2       = ctrl && (p2bodydist X = [100,160]) && random = [351,400]
trigger2       = enemynear,movetype != A

;------------------------------------------------------------------------------
;ディメンジョンクロー弱
[State -1, D C A]
type           = ChangeState
value          = 1100
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = p2statetype != L
trigger1       = ctrl && (p2bodydist X = [140,160]) && enemynear,statetype != A
trigger1       = random >= 750

;------------------------------------------------------------------------------
;ディメンジョンクロー強
[State -1, D C B]
type           = ChangeState
value          = 1150
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = p2statetype != L
trigger1       = ctrl && (p2bodydist X = [240,260]) && enemynear,statetype != A
trigger1       = random >= 750

;---------------------------------------------------------------------------
;P投げ
[State -1, Kung Fu Throw]
Type            = ChangeState
Value           = 800
triggerall      = var(59) = 1
triggerall      = statetype != A
triggerall      = p2statetype != L
triggerall      = p2statetype != A
triggerall      = ctrl
triggerall      = p2bodydist X = [0,15]
triggerall      = p2statetype != A && p2movetype != H
trigger1        = power < 500
trigger1        = Random <= 250 && frontedgebodydist < 40 && p2movetype != A

;------------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type           = ChangeState
value          = 200
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = p2statetype != L
trigger1       = ctrl && (p2bodydist X = [100,160]) && enemynear,statetype != A
trigger1       = random = [201,500]

;------------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type           = ChangeState
value          = 210
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = p2statetype != L
trigger1       = ctrl && (p2bodydist X = [61,110]) && enemynear,statetype != C
trigger1       = random = [201,300]

;------------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 230
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = p2statetype != L
trigger1       = ctrl && enemynear,statetype != A && (abs(enemynear,Pos X - Pos X)= [0,30])
trigger1       = enemynear,movetype != A
trigger1       = random = [201,300]

;------------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type           = ChangeState
value          = 195
triggerall     = var(59) = 1
triggerall     = RoundState = 2
triggerall     = statetype != A
triggerall     = var(20) = 0
trigger1       = ctrl
trigger1       = life > 1200
trigger1       = p2life < 300


;==============================================================================
;ここから下はプレイヤー用


;==============================================================================
;ユニバース・ディストーション
[State -1, MAX]
type = ChangeState
value = 3000
triggerall = command = "ユニバース・ディストーション"
triggerall = power >= 500
triggerall = var(59) != 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 2110) &&(time>200) 
;------------------------------------------------------------------------------
;ブロッサム
[State -1, H1]
type = ChangeState
value = 2100
triggerall = command = "ブロッサム"
triggerall = power >= 500
triggerall = var(59) != 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;------------------------------------------------------------------------------
;バニッシュ
[State -1, H1]
type = ChangeState
value = 2000
triggerall = command = "バニッシュ"
triggerall = power >= 500
triggerall = var(59) != 1
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;ファントムスフィアX
[State -1, FS X]
type = ChangeState
value = 1300
triggerall = command = "ファントムスフィアX"
triggerall = statetype != A
triggerall = var(59) != 1
triggerall = NumHelper(1301) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;ファントムスフィアY
[State -1, FS Y]
type = ChangeState
value = 1310
triggerall = command = "ファントムスフィアY"
triggerall = statetype != A
triggerall = var(59) != 1
triggerall = NumHelper(1311) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;ファントムスフィアA
[State -1, FS A]
type = ChangeState
value = 1320
triggerall = command = "ファントムスフィアA"
triggerall = statetype != A
triggerall = var(59) != 1
triggerall = NumHelper(1321) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;------------------------------------------------------------------------------
;サムウェアホールX
[State -1, HOLE X]
type = ChangeState
value = 1400
triggerall = command = "サムウェアホールX"
triggerall = statetype != A
triggerall = var(59) != 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;サムウェアホールY
[State -1, HOLE Y]
type = ChangeState
value = 1410
triggerall = command = "サムウェアホールY"
triggerall = statetype != A
triggerall = var(59) != 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;サムウェアホールA
[State -1, HOLE A]
type = ChangeState
value = 1420
triggerall = command = "サムウェアホールA"
triggerall = statetype != C
triggerall = var(59) != 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;サムウェアホールB
[State -1, HOLE B]
type = ChangeState
value = 1430
triggerall = command = "サムウェアホールB"
triggerall = statetype != C
triggerall = var(59) != 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;------------------------------------------------------------------------------
;エクスプローディングスフィア弱
[State -1, EXP A]
type = ChangeState
value = 1200
triggerall = command = "エクスプローディングスフィア弱"
triggerall = statetype != A
triggerall = var(59) != 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;エクスプローディングスフィア強
[State -1, EXP B]
type = ChangeState
value = 1250
triggerall = command = "エクスプローディングスフィア強"
triggerall = statetype != A
triggerall = var(59) != 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;------------------------------------------------------------------------------
;ディメンジョンクロー弱
[State -1, D C A]
type = ChangeState
value = 1100
triggerall = command = "ディメンジョンクロー弱"
triggerall = statetype != A
triggerall = var(59) != 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;ディメンジョンクロー強
[State -1, D C B]
type = ChangeState
value = 1150
triggerall = command = "ディメンジョンクロー強"
triggerall = statetype != A
triggerall = var(59) != 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;------------------------------------------------------------------------------
;ディメンジョンスフィア弱
[State -1, D S X]
type = ChangeState
value = 1000
triggerall = command = "ディメンジョンスフィア弱"
triggerall = statetype != A
triggerall = var(59) != 1
triggerall = numprojID(1001) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;ディメンジョンスフィア強
[State -1, D S Y]
type = ChangeState
value = 1050
triggerall = command = "ディメンジョンスフィア強"
triggerall = statetype != A
triggerall = var(59) != 1
triggerall = numprojID(1001) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;---------------------------------------------------------------------------
;後緊急回避
[State -1, T S]
type = ChangeState
value = 710
triggerall = command = "recovery" && command = "holdback"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 500
trigger2 = stateno = [150,151]

;---------------------------------------------------------------------------
;前緊急回避
[State -1, T S]
type = ChangeState
value = 700
triggerall = command = "recovery"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 500
trigger2 = stateno = [150,151]
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;受身
[State -1, UKEMI]
type = ChangeState
value = 52000
triggerall = command = "recovery"
triggerall = var(59) != 1
triggerall = alive = 1
trigger1 = stateno = 5050
trigger1 = pos y > -30

;------------------------------------------------------------------------------
;ふっとばし
[State -1, Throw]
type = ChangeState
value = 300
triggerall = command = "ふっとばし"
triggerall = var(59) != 1
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = ctrl
trigger2 = power >= 500
trigger2 = stateno = [150,151]

;------------------------------------------------------------------------------
;空中ふっとばし
[State -1, CD]
type = ChangeState
value = 650
triggerall = command = "ふっとばし"
triggerall = var(59) != 1
triggerall = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;ディスバイズ
[State -1, TOKUSHU]
type = ChangeState
value = 310
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = statetype = S
triggerall = var(59) != 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 215 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact

;------------------------------------------------------------------------------
;P投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
triggerall = var(59) != 1
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl

;------------------------------------------------------------------------------
;K投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
triggerall = var(59) != 1
trigger1 = p2bodydist X < 15
trigger1 = p2statetype != A && p2movetype != H
trigger1 = ctrl

;------------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;==============================================================================
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 25
trigger1 = ctrl

;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 20
trigger1 = ctrl

;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 20
trigger1 = ctrl

;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;遠距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = command = "start"
triggerall = var(20) = 0
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 205
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = stateno != 105  ;バックステップ中は禁止
trigger1 = statetype = A
trigger1 = ctrl

;垂直ジャンプ強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;斜めジャンプ強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl


;ジャンプ強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl


;
