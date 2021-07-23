;=====================================================================
;  CMD File For "whip"	                                Made By H"         
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| Super Motions |---------------------------------------------------

[Command]
name = "Super Black Hawk"
command = ~D, F, D, F, z
time = 35

[Command]
name = "Sonic Slaughter(Code : KW)_MAX"
command = ~D, F, D, F, x+y
time = 35

[Command]
name = "Sonic Slaughter(Code : KW)_x"
command = ~D, F, D, F, x
time = 35

[Command]
name = "Sonic Slaughter(Code : KW)_y"
command = ~D, F, D, F, y
time = 35

[Command]
name = "Sonic Slaughter(Code : DP)_a"
command = ~D, F, D, F, a
time = 35

[Command]
name = "Sonic Slaughter(Code : DP)_b"
command = ~D, F, D, F, b
time = 35

;-| Special Motions |-------------------------------------------------
[Command]
name = "Boomerang Shot (Code : SC)_x"
command = ~D, DF, F, x
time = 20

[Command]
name = "Boomerang Shot (Code : SC)_y"
command = ~D, DF, F, y
time = 20

[Command]
name = "Strength Shot . Type A (Code: Superior)"
command = ~D, DB, B, x
time = 20

[Command]
name = "Strength Shot . Type B (Code: Strength)"
command = ~D, DB, B, a
time = 20

[Command]
name = "Strength Shot . Type C (Code: Victory)"
command = ~D, DB, B, y
time = 20

[Command]
name = "Assassin Strike (Code : BB)_x"
command = ~F, D, DF, x

[Command]
name = "Assassin Strike (Code : BB)_y"
command = ~F, D, DF, y

[Command]
name = "Assassin Strike (Code : BB)_a"
command = ~F, D, DF, a

[Command]
name = "Assassin Strike (Code : BB)_b"
command = ~F, D, DF, b

[Command]
name = "Desert Eagle_x"
command = ~B, D, DB, x

[Command]
name = "Desert Eagle_y"
command = ~B, D, DB, y

[Command]
name = "Hook Shot (Code: Wind)_x"
command = ~D, DB, B, x

[Command]
name = "Hook Shot (Code: Wind)_y"
command = ~D, DB, B, y

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 15

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "bx"
command = b+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "ay"
command = a+y
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "abcd"
command = x+y+a+b
time = 1

[Command]
name = "abcd"
command = c+z
time = 1

;-| Dir + Button |----------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_b"
command = /D,b
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

;-----------------------------For KOF Seriese only
[Command]
name = "gc_fwd"
command = /DF, a+x
time = 1

[Command]
name = "gc_fwd"
command = /DF, z
time = 1

[Command]
name = "gc_fwd"
command = /F, a+x
time = 1

[Command]
name = "gc_fwd"
command = /F, z
time = 1

[Command]
name = "gc_back"
command = /DB, a+x
time = 1

[Command]
name = "gc_back"
command = /DB, z
time = 1

[Command]
name = "gc_back"
command = /B, a+x
time = 1

[Command]
name = "gc_back"
command = /B, z
time = 1

[Command]
name = "q_fwd"
command = /F, a+x
time = 1

[Command]
name = "q_fwd"
command = /F, z
time = 1

[Command]
name = "q_back"
command = /B, a+x
time = 1

[Command]
name = "q_back"
command = /B, z
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;----------------------------- KOF Seriese only
[Command]
name = "gc_fwd"
command = z
time = 1

[Command]
name = "q_fwd"
command = z
time = 1

;----------------------------- レバガチャ
[Command]
name = "random"
command = x
time = 1

[Command]
name = "random"
command = y
time = 1

[Command]
name = "random"
command = z
time = 1

[Command]
name = "random"
command = a
time = 1

[Command]
name = "random"
command = b
time = 1

[Command]
name = "random"
command = c
time = 1

[Command]
name = "random"
command = F
time = 1

[Command]
name = "random"
command = DF
time = 1

[Command]
name = "random"
command = D
time = 1

[Command]
name = "random"
command = DB
time = 1

[Command]
name = "random"
command = B
time = 1

[Command]
name = "random"
command = UB
time = 1

[Command]
name = "random"
command = U
time = 1

[Command]
name = "random"
command = UF
time = 1

;-| Hold Button |-----------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;------------------------ For KOF Series Only
[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; キャンセル設定
;=====================================================================
;------------------------ キャンセル設定リセット
[State -1]
type = varset
trigger1 = var(40)
var(40) = 0
;------------------------ スーパーキャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(40)
triggerall = MoveContact
trigger1  = ((StateNo = 1000 || StateNo = 1020) && AnimElem = 15,< 0)
trigger2  = (StateNo = 1301 && AnimElem = 9,< 0)
trigger3  =  ((StateNo = 1311 || StateNo = 1321)  && AnimElem = 9,< 0)
var(40) = -1
ignorehitpause = 1
;------------------------ ダッシュキャンセル
[State -1]
type = varset
triggerall = RoundState = 2
trigger1 = !var(40)
trigger1 = StateNo = 100 || StateNo = 110 || (StateNo = 4100 && AnimElem = 3,> 0)
var(40) = 1
;------------------------ 特殊技キャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(40)
triggerall = MoveContact
trigger1  = StateNo = 205 || StateNo = 215 || (StateNo = [230,239]) || StateNo = 245
trigger2  = StateNo = 410 || StateNo = 430 || StateNo = 704
var(40) = 2
ignorehitpause = 1
;------------------------ 特殊技キャンセル（空キャンセル）
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(40)
trigger1  = StateNo = 240
trigger2  = StateNo = 500
var(40) = 2
ignorehitpause = 1
;------------------------ 必殺技・超必殺技キャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(40)
triggerall  = MoveContact
trigger1  = (StateNo = [630,639]) || StateNo = 645
var(40) = 3
ignorehitpause = 1
;------------------------ どこでもキャンセル
[State -1]
type = varset
triggerall = var(30)
triggerall = RoundState = 2
triggerall = !var(40)
triggerall = var(47) && fvar(0) > 0
trigger1  = !MoveContact && MoveType = A && (StateNo = 205 || StateNo = 215 || (StateNo = [230,239]) || (StateNo = [240,249]))
trigger2  = !MoveContact && MoveType = A && (StateNo = 410 || StateNo = 430)
trigger3  = MoveType = A && (StateNo = 200 || StateNo = 210 || StateNo = 400 || StateNo = 440)
trigger4  = MoveHit && StateNo = [1000,1999]
var(40) = 4
ignorehitpause = 1

;=====================================================================
; CPU Function
;=====================================================================
;
;=====================================================================
; Super Arts
;=====================================================================
;---------------------------------------------------------------------
; スーパーブラックホーク（MAX2）
[State -1]
type = ChangeState
value = 3500
triggerall= Command = "Super Black Hawk"
trigger1 = Power >= 3000 && var(30)=0 && var(47)=0
trigger2 = Power >= 1000 && var(30)=1 && fvar(0) > 0 && ((100*life/const(data.life))<=25 || var(44) = 2)
trigger3 = (((100*life/const(data.life))<=50 && !var(49)) || var(44) = 2) && var(30)=2
triggerall = StateType != A && (Ctrl || (StateNo = [230,499]) || (StateNo = [700,799]))

;------------------------ スーパーキャンセル
[State -1]
type = ChangeState
value = 3500
triggerall= Command = "Super Black Hawk"
trigger1 = var(30)=2 && var(47)=0 && fvar(0) > 0
triggerall = !StateType = A && var(40)=-1
ignorehitpause = 1

;---------------------------------------------------------------------
; ソニック・スローター”コード：KW”（MAX版）
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "Sonic Slaughter(Code : KW)_MAX"
trigger1 = Power >= 2000 && var(30)=0 && var(47)=0
trigger2 = Power >= 1000 && var(30)=1 && fvar(0) > 0
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

;------------------------ スーパーキャンセル
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "Sonic Slaughter(Code : KW)_MAX"
trigger1 = Power >= 3000 && var(30)=0 && var(47)=0
trigger2 = Power >= 2000 && var(30)=1 && fvar(0) > 0
triggerall = !StateType = A && var(40)=-1
ignorehitpause = 1

;---------------------------------------------------------------------
; ソニック・スローター”コード：KW”（ノーマル版）
;------------------------ 
[State 861,VarSet]
type = VarSet
triggerall = !var(20)
trigger1 = Command = "Sonic Slaughter(Code : KW)_x" || Command = "Sonic Slaughter(Code : KW)_y"
var(20) = IfElse(Command = "Sonic Slaughter(Code : KW)_x",3000,3001)

[State -1]
type = ChangeState
value = 3000
triggerall = var(20) = [3000,3010]
trigger1 = Power >= 1000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 1000 || fvar(0) > 0) && (var(30)=[1,2])
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

;------------------------ スーパーキャンセル
[State -1]
type = ChangeState
value = 3000
triggerall = var(20) = [3000,3001]
trigger1 = Power >= 2000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 2000 || (Power >= 1000 && fvar(0) > 0)) && var(30)=1
trigger3 = fvar(0) > 0 && var(30)= 2
triggerall = !StateType = A && var(40)=-1
ignorehitpause = 1

;---------------------------------------------------------------------
; ソニック・スローター”コード：DP”
[State 861,VarSet]
type = VarSet
triggerall = !var(20)
trigger1 = Command = "Sonic Slaughter(Code : DP)_a" || Command = "Sonic Slaughter(Code : DP)_b"
var(20) = IfElse(Command = "Sonic Slaughter(Code : DP)_a",3200,3201)

[State -1]
type = ChangeState
value = 3200
triggerall = var(20) = [3200,3210]
trigger1 = Power >= 1000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 1000 || fvar(0) > 0) && (var(30)=[1,2])
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

;------------------------ スーパーキャンセル
[State -1]
type = ChangeState
value = 3200
triggerall = var(20) = [3200,3210]
trigger1 = Power >= 2000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 2000 || (Power >= 1000 && fvar(0) > 0)) && var(30)=1
trigger3 = fvar(0) > 0 && var(30)= 2
triggerall = !StateType = A && var(40)=-1
ignorehitpause = 1

;------------------------ ソニック・スローターコマンドリセット
[State -1]
type = varset
trigger1 = var(20)
trigger1 = Time > 0
var(20) = 0

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; ブーメラン・ショット”コード：SC”（弱）
[State -1]
type = ChangeState
value = 1000
triggerall= Command = "Boomerang Shot (Code : SC)_x"
triggerall = !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1000,1099])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------
; ブーメラン・ショット”コード：SC”（強）
[State -1]
type = ChangeState
value = 1020
triggerall= Command = "Boomerang Shot (Code : SC)_y"
triggerall = !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1000,1099])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------
; ストリングス・ショット・タイプA”コード：優越”
[State -1]
type = ChangeState
value = 1300
triggerall= Command = "Strength Shot . Type A (Code: Superior)"
triggerall = !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1300,1399])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------
; ストリングス・ショット・タイプB”コード：力” 
[State -1]
type = ChangeState
value = 1310
triggerall= Command = "Strength Shot . Type B (Code: Strength)"
triggerall = !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1300,1399])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------
; ストリングス・ショット・タイプC”コード：勝利” 
[State -1]
type = ChangeState
value = 1320
triggerall= Command = "Strength Shot . Type C (Code: Victory)"
triggerall = !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1300,1399])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------
; フック・ショット”コード：風” ・弱
[State -1]
type = ChangeState
value = 1200
triggerall= Command = "Hook Shot (Code: Wind)_x" && Pos Y <= -50
triggerall = StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1200,1299])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------
; フック・ショット”コード：風” ・強
[State -1]
type = ChangeState
value = 1210
triggerall= Command = "Hook Shot (Code: Wind)_y" && Pos Y <= -50
triggerall = StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1200,1299])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------
; アサシン・ストライク”コード：BB”
[State -1]
type = ChangeState
value = 1100
triggerall= Command = "Assassin Strike (Code : BB)_x"
triggerall = !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1100,1199])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------
; アサシン・ストライク”コード：BB”
[State -1]
type = ChangeState
value = 1110
triggerall= Command = "Assassin Strike (Code : BB)_a"
triggerall = !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1100,1199])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------
; アサシン・ストライク”コード：BB”
[State -1]
type = ChangeState
value = 1120
triggerall= Command = "Assassin Strike (Code : BB)_y"
triggerall = !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1100,1199])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------
; アサシン・ストライク”コード：BB”
[State -1]
type = ChangeState
value = 1130
triggerall= Command = "Assassin Strike (Code : BB)_b"
triggerall = !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])
trigger2 = var(40) = 4 && (StateNo != [1100,1199])
ignorehitpause = (var(40) = 4)

;---------------------------------------------------------------------
; デザートイーグル（弱）
[State -1]
type = ChangeState
value = 1400
triggerall= Command = "Desert Eagle_x"
triggerall = !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])

;---------------------------------------------------------------------
; デザートイーグル（強）
[State -1]
type = ChangeState 
value = IfElse(fvar(32)=1,1400,1410)
triggerall= Command = "Desert Eagle_y"
triggerall = !StateType = A
trigger1 = Ctrl || (var(40)=[1,3])

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = IfElse(var(30)=2,110,100)
trigger1 = Command = "FF" && StateType = S && Ctrl

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl

;=====================================================================
; 2/3 Buttons
;=====================================================================
;
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; ツェット（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 900
triggerall = StateType = S && Ctrl
trigger1 = var(30) = 2 && Command = "recovery"
trigger2 = var(30) != 2 && P2MoveType != H && !P2StateType = A
trigger2 = (Command = "fwd_y" && P2BodyDist X < 8) || (Command = "back_y" && P2BodyDist X < 20)

;---------------------------------------------------------------------
; ツェット（Ｋ通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateType = S && Ctrl
trigger1 = var(30) = 2 && Command = "by"
trigger2 = var(30) != 2 && P2MoveType != H && !P2StateType = A
trigger2 = (Command = "fwd_b" && P2BodyDist X < 8) || (Command = "back_b" && P2BodyDist X < 20)

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------------
; パワーMAXモード発動
[State -1]
type = ChangeState
value = 4200
triggerall = command = "ay"
triggerall = power >= 1000 && var(47) = 0 && var(30) = 1
trigger1 = ctrl && statetype != A
trigger2 = var(40)=1

;------------------------ クイックMAX発動
[State -1]
type = ChangeState
value = 4210
triggerall = command = "ay"
triggerall = power >= 2000 && var(47) = 0 && var(30) = 1
trigger1 = statetype != A
trigger1 = MoveContact && StateNo = [200,799]
ignorehitpause = 1

;---------------------------------------------------------------------
; 地上ふっとばし攻撃
[State -1]
type = ChangeState
value = 500
triggerall = Command = "by"
trigger1 = StateType != A && (Ctrl || var(40)=1)
trigger1 = var(30) != 2

;---------------------------------------------------------------------
; 空中ふっとばし攻撃
[State -1]
type = ChangeState
value = 510
triggerall = Command = "by"
trigger1 = StateType = A && Ctrl
trigger1 = var(30) != 2

;---------------------------------------------------------------------
; ガードキャンセル緊急回避動作（前・後）
[State -1]
type = ChangeState
value = 4050
triggerall = Command = "recovery" && Power >= 1000
triggerall = StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)
trigger2 = var(30) = 1 && MoveContact && StateNo = [200,799]

;---------------------------------------------------------------------
; ガードキャンセルグランドフロントステップ
[State -1]
type = ChangeState
value = 4100
triggerall = Var(30) = 2
triggerall = (Command = "ay" || Command = "FF")
triggerall = (Power >= 600 || (var(30) = 2 && fvar(0) > 0)) && StateType != A
trigger1 = (StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153)

;---------------------------------------------------------------------
; 緊急回避動作（前）
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "recovery" && !Command = "holdback" && var(30) != 2
trigger1 = StateType = S && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; 緊急回避動作（後）
[State -1]
type = ChangeState
value = 4010
triggerall = Command = "q_back" && !Command = "holdfwd" && var(30) != 2
trigger1 = StateType = S && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; ガードキャンセル吹っ飛ばし攻撃
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "by"
triggerall = (Power >= 1000 || (var(30) = 2 && fvar(0) > 0)) && StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)

;=====================================================================
; Dir + Button
;=====================================================================
;---------------------------------------------------------------------
; ウィップショット（→＋X）
[State -1]
type = ChangeState
value = 700
triggerall= Command = "fwd_x" && !Command = "holddown"
trigger1= !StateType = A && (Ctrl || (var(40)=[1,2]))

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S && Ctrl && StateNo != 195

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 25,205,200)
triggerall = Command = "x" && !Command = "holddown"
trigger1  = !StateType = A && (Ctrl || var(40)=1)
trigger2  = (StateNo = 205 && AnimElem = 5,> 0)
trigger3  = (StateNo = 230 && AnimElem = 5,> 0)
trigger4  = (StateNo = 235 && AnimElem = 5,> 0)
trigger5  = (StateNo = 430 && AnimElem = 7,> 0)

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,235,230)
triggerall = Command = "a" && !Command = "holddown"
trigger1  = !StateType = A && (Ctrl || var(40)=1)
trigger2  = (StateNo = 205 && AnimElem = 5,> 0)
trigger3  = (StateNo = 230 && AnimElem = 5,> 0)
trigger4  = (StateNo = 235 && AnimElem = 5,> 0)
trigger5  = (StateNo = 430 && AnimElem = 7,> 0)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 15,215,210)
triggerall = Command = "y" && !Command = "holddown"
trigger1  = !StateType = A && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,245,240)
triggerall = Command = "b" && !Command = "holddown"
trigger1  = !StateType = A && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || var(40)=1
trigger2  = (StateNo = 205 && AnimElem = 5,> 0)
trigger3  = (StateNo = 230 && AnimElem = 5,> 0)
trigger4  = (StateNo = 235 && AnimElem = 5,> 0)
trigger5  = (StateNo = 430 && AnimElem = 7,> 0)

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || var(40)=1

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || var(40)=1
trigger2  = (StateNo = 205 && AnimElem = 4,> 0)
trigger3  = (StateNo = 230 && AnimElem = 5,> 0)
trigger4  = (StateNo = 235 && AnimElem = 4,> 0)
trigger5  = (StateNo = 430 && AnimElem = 7,> 0)

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || var(40)=1

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = IfElse(var(32) != 2 && Vel X = 0,600,605)
triggerall = Command = "x" && StateType = A && Ctrl
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = IfElse(var(32) != 2 && Vel X = 0,610,615)
triggerall = Command = "y" && StateType = A && Ctrl
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
triggerall = Command = "a" && StateType = A && Ctrl
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = IfElse(var(32) != 2 && Vel X = 0,640,645)
triggerall = Command = "b" && StateType = A && Ctrl
trigger1 = StateNo != 105

