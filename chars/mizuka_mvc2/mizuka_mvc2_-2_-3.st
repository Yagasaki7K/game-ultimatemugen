
;===========================================================================
;===========================================================================
;システムディレクション
;===========================================================================
;===========================================================================

;---------------------------------------------------------------------------
; システムディレクション宣言（※以下の行は絶対に削除しないでください）
;---------------------------------------------------------------------------

[Statedef 46000]
type = S
movetype = I
physics = N
anim = 99999


;[State 46000, 変更例]		←この行は削除・変更しないでください
;type = VarSet			←この行は削除・変更しないでください
;trigger1 = 1			←この行は削除・変更しないでください
;var(n) = 0			←このVar(n)の隣の数値を指定された値の範囲内で変更してください


;---------------------------------------------------------------------------
;キャラクターのシステムの根幹に関わる部分
;---------------------------------------------------------------------------


[State 46000, ライフゲージ]
type = ParentVarSet
trigger1 = 1
var(30) = 1000			;ライフゲージの仕様を設定
				; 0		:変化なし
				; 1 ～  1000	:指定した値が初期値に
				: 1001以上	:自動回復
				;-1 ～ -1000	:常時指定値の絶対値で固定
				;-1001以下	:自動減少（毒状態）
				;初期値:0


[State 46000, ハイパーコンボゲージ]
type = ParentVarSet
trigger1 = 1
var(31) = 1000			;ハイパーコンボゲージの仕様を設定
				; 0		:変化なし
				; 1 ～  5000	:指定した値が初期値に
				; 5001以上	:自動回復
				;-1 ～ -5000	:常時指定値の絶対値で固定
				;-5001以下	:自動減少（毒状態）
				;初期値:1000


[State 46000, 攻撃力レベル]
type = ParentVarSet
trigger1 = 1
fvar(5) = 100			;攻撃力レベルを指定（単位：%）
				;初期値:100


[State 46000, 防御力レベル]
type = ParentVarSet
trigger1 = 1
fvar(22) = 100			;防御力レベルを指定（単位：%）
				;初期値:100


[State 46000, イグニスモードの有無];不完全（イントロなどが未実装です）
type = VarSet
trigger1 = 1
var(11) = 0			;0:イグニスモードオフ / 1:イグニスモードオン
				;初期値:0
				;詳細は同梱テキストを参照のこと


[State 46000, キャラクターのモード];未実装
type = VarSet
trigger1 = 1
var(27) = 0			;0:MVSC2
				;初期値:0


;[State 46000, 仮想バージョン仕様];未実装
;type = Null;VarSet
;trigger1 = 1
;var() = 0			;0:バグ再現版 / 1:バグ再現無し版
				;初期値:1
				;詳細は同梱テキストを参照のこと


;---------------------------------------------------------------------------
;キャラクターのシステムの詳細に関わる部分
;---------------------------------------------------------------------------


[State 46000, リコイルガードの受付時間]
type = ParentVarSet
trigger1 = 1
var(32) = 10			;リコイルガードの受付時間を設定
				;初期値:10


[State 46000, リコイルガード成立時の体力回復量]
type = ParentVarSet
trigger1 = 1
var(33) = 10			;リコイルガード成立時の体力回復量を設定
				;初期値:10


[State 46000, 空中ダッシュの回数制限]
type = ParentVarSet
trigger1 = 1
var(34) = 2			;空中ダッシュの最大回数を設定
				;初期値:2（0にすると空中ダッシュが不可能になります）


[State 46000, 空中ジャンプの回数制限]
type = ParentVarSet
trigger1 = 1
var(35) = 1			;空中ジャンプの最大回数を設定
				;初期値:1（0にすると空中ジャンプが不可能になります）


[State 46000, 削り殺しの可否]
type = VarSet
trigger1 = 1
var(4) = 0			;0:削り不可能 / 1:削り殺し可能
				;初期値:0


[State 46000, 削り無効の有無]	;不完全（闇アルクと同等の実装）
type = VarSet
trigger1 = 1
var(12) = 0			;0:削り無効オフ / 1:削り無効オン
				;初期値:0


[State 46000, 地上リコイルガードの有無]
type = VarSet
trigger1 = 1
var(6) = 1			;0:地上リコイルガード不可能 / 1:地上リコイルガード可能
				;初期値:1


[State 46000, 空中リコイルガードの有無]
type = VarSet
trigger1 = 1
var(7) = 1			;0:空中リコイルガード不可能 / 1:空中リコイルガード可能
				;初期値:1


[State 46000, アドバンシングガードの有無]
type = VarSet
trigger1 = 1
var(8) = 1			;0:アドバンシングガード不可能 / 1:アドバンシングガード可能
				;初期値:1


[State 46000, 空中ガードの有無]
type = VarSet
trigger1 = 1
var(9) = 1			;0:不可能 / 1:可能
				;初期値:1


[State 46000, チェーンコンボの有無]
type = VarSet
trigger1 = 1
var(13) = 1			;0:チェーンコンボオフ / 1:チェーンコンボオン
				;初期値:1


[State 46000, リバースビートの有無]
type = VarSet
trigger1 = 1
var(2) = 0			;0:リバースビートオフ / 1:リバースビートオン
				;初期値:0


[State 46000, スーパーキャンセルの有無]
type = VarSet
trigger1 = 1
var(14) = 1			;0:スーパーキャンセルオフ / 1:スーパーキャンセルオン
				;初期値:1


[State 46000, スーパージャンプの有無]
type = VarSet
trigger1 = 1
var(15) = 1			;0:使用不能 / 1:使用可能
				;初期値:1


[State 46000, ハイパーコンボゲージリセットの有無]
type = VarSet
trigger1 = 1
var(10) = 0			;0:リセットしない / 1:リセットする
				;初期値:0


;---------------------------------------------------------------------------
;アシストに関わる部分
;---------------------------------------------------------------------------


[State 46000, アシストの無敵]
type = VarSet
trigger1 = 1
var(0) = 0			;0:アシスト無敵なし / 1:アシスト無敵あり
				;初期値:0


[State 46000, アシストリミッターの有無]
type = VarSet
trigger1 = 1
var(1) = 1			;0:リミッターなし / 1:リミッターあり
				;初期値:1


[State 46000, ダブルアシストの有無]
type = VarSet
trigger1 = 1
var(5) = 0			;0:ダブルアシスト不可能 / 1:ダブルアシスト可能
				;初期値:0


;---------------------------------------------------------------------------
;キャラクターの持ち技に関わる部分
;---------------------------------------------------------------------------


[State 46000, るてんのらせん　発動後の制限時間の有無]
type = VarSet
trigger1 = 1
var(3) = 1			;0:永久 / 1:時間制限あり
				;初期値:1


[State 46000, まどのそと　同時出現制限の有無]
type = VarSet
trigger1 = 1
var(24) = 1			;0:制限無し / 1:制限あり
				;初期値:1


[State 46000, りんねのつるぎ・ぬし？　あるじ？　消滅の有無];りんねのつるぎは若干の不具合あり
type = VarSet
trigger1 = 1
var(25) = 1			;0:攻撃を受けても消滅しない / 1:攻撃を受けると消滅する
				;初期値:1


[State 46000, ひかりのつばさ　虹の輪の有無]
type = VarSet
trigger1 = 1
var(26) = 1			;0:輪を生成しない / 1:輪を生成する
				;初期値:1


;---------------------------------------------------------------------------
;キャラクターの表示・演出に関わる部分
;---------------------------------------------------------------------------


[State 46000, アシストの状態表示]
type = VarSet
trigger1 = 1
var(16) = 1			;0:非表示 / 1:表示
				;初期値:1


[State 46000, カットインの設定]
type = VarSet
trigger1 = 1
var(17) = 2			;0:カットインなし / 1:カットイン表示（パレット非依存）/ 2:カットイン表示（通常）
				;初期値:2


[State 46000, 勝利メッセージの設定]
type = VarSet
trigger1 = 1
var(18) = 2			;0:メッセージ演出なし / 1:BGMなし / 2:通常
				;初期値:2


[State 46000, フィニッシュエフェクトの有無]
type = VarSet
trigger1 = 1
var(19) = 1			;0:なし / 1:あり
				;初期値:1


[State 46000, ハイパーコンボ背景の有無]
type = VarSet
trigger1 = 1
var(20) = 1			;0:なし / 1:あり
				;初期値:1


[State 46000, アナウンスの有無];未実装
type = VarSet
trigger1 = 1
var(21) = 1			;0:なし / 1:あり
				;初期値:1


[State 46000, システムメッセージの有無];未実装
type = VarSet
trigger1 = 1
var(22) = 1			;0:なし / 1:あり
				;初期値:1


[State 46000, 予約]
type = VarSet
trigger1 = 1
var(23) = 1			;0:なし / 1:あり
				;初期値:1


;---------------------------------------------------------------------------
; システムディレクション適用（※以下の行は絶対に削除しないでください）
;---------------------------------------------------------------------------

[State 46000, ParentVarSet]
type = ParentVarSet
trigger1 = Time = 1
var(54) = (var(0))+(var(1)*10)+(var(2)*100)+(var(3)*1000)+(var(4)*10000)+(var(5)*100000)+(var(6)*1000000)+(var(7)*10000000)
ignorehitpause = 1

[State 46000, ParentVarSet]
type = ParentVarSet
trigger1 = Time = 1
var(55) = (var(8))+(var(9)*10)+(var(10)*100)+(var(11)*1000)+(var(12)*10000)+(var(13)*100000)+(var(14)*1000000)+(var(15)*10000000)
ignorehitpause = 1

[State 46000, ParentVarSet]
type = ParentVarSet
trigger1 = Time = 1
var(36) = (var(16))+(var(17)*10)+(var(18)*100)+(var(19)*1000)+(var(20)*10000)+(var(21)*100000)+(var(22)*1000000)+(var(23)*10000000)
ignorehitpause = 1

[State 46000, ParentVarSet]
type = ParentVarSet
trigger1 = Time = 1
var(37) = (var(24))+(var(25)*10)+(var(26)*100)+(var(27)*1000)+(var(28)*10000)+(var(29)*100000)+(var(30)*1000000)+(var(31)*10000000)
ignorehitpause = 1

[State 46000, DestroySelf]
type = DestroySelf
trigger1 = Time = 5

;===========================================================================
;===========================================================================
;常時監視ステート（State -2）
;===========================================================================
;===========================================================================

[Statedef -2]

;---------------------------------------------------------------------------
;アシストタイプセレクト

[State 46000, Xアシストのタイプ]
type = VarSet
trigger1 = Time = 1
trigger1 = roundsexisted = 0
trigger1 = roundstate = 0
var(50) = 0			;0:α / 1:β / 2:γ / 3:ランダム
				;初期値:3


[State 46000, Yアシストのタイプ]
type = VarSet
trigger1 = Time = 1
trigger1 = roundsexisted = 0
trigger1 = roundstate = 0
var(51) = 0			;0:α / 1:β / 2:γ / 3:ランダム
				;初期値:3


[State 46000, Xアシストのキャラクター]
type = VarSet
trigger1 = Time = 1
trigger1 = roundsexisted = 0
trigger1 = roundstate = 0
var(52) = 0			;0:あゆ / 1:観鈴 / 2:神奈 / 3:瑞佳 / 4:ランダム
				;初期値:4


[State 46000, Yアシストのキャラクター]
type = VarSet
trigger1 = Time = 1
trigger1 = roundsexisted = 0
trigger1 = roundstate = 0
var(53) = 2			;0:あゆ / 1:観鈴 / 2:神奈 / 3:瑞佳 / 4:ランダム
				;初期値:4

;---------------------------------------------------------------------------
;システムディレクション適用

[State -2, LifeAdd]
type = LifeAdd
trigger1 = var(30) > 1000
trigger1 = Time % 5 = 0
trigger1 = MoveType != H
value = var(30) - 1000
ignorehitpause = 1

[State -2, LifeSet]
type = LifeSet
trigger1 = var(30) < 0
trigger1 = var(30) > -1001
value = abs(var(30)*-1)
ignorehitpause = 1

[State -2, LifeAdd]
type = LifeAdd
trigger1 = var(30) < -1000
trigger1 = Time % 10 = 0
trigger1 = Life > abs(var(30))-1000
trigger1 = roundstate = 2
value = -1*(abs(var(30))-1000)
ignorehitpause = 1

[State -2, PowerAdd]
type = PowerAdd
trigger1 = var(31) > 5000
trigger1 = Time % 5 = 0
value = var(31) - 5000
ignorehitpause = 1

[State -2, PowerSet]
type = PowerSet
trigger1 = var(31) < 0
trigger1 = var(31) > -5001
value = abs(var(31)*-1)
ignorehitpause = 1

[State -2, PowerAdd]
type = PowerAdd
trigger1 = var(31) < -5000
trigger1 = Time % 10 = 0
trigger1 = roundstate = 2
value = -1*(abs(var(31))-5000)
ignorehitpause = 1

;---------------------------------------------------------------------------
;対フライング攻撃キャラ対策

[State -2, ラウンドアナウンス中は無敵]
type = NotHitBy
triggerall = ctrl = 0
triggerall = roundstate = [0,1]
trigger1 = stateno = 0
trigger2 = stateno = 5900
value = SCA
time = 2

;---------------------------------------------------------------------------
;ヒットエフェクト処理

[State -2, MoveContact]
type = MoveHitReset
trigger1 = MoveContact
trigger1 = var(14) = [1,2]
trigger1 = (stateno != [620,630]) && (stateno != 1120) && (stateno != [6090,6109])
ignorehitpause = 1

[State -2, MoveHit]
type = VarSet
trigger1 = MoveHit
trigger1 = (stateno != [620,630]) && (stateno != 1120) && (stateno != [6090,6109])
var(14) = 1
ignorehitpause = 1

[State -2, MoveGurded]
type = VarSet
trigger1 = MoveGuarded
trigger1 = (stateno != [620,630]) && (stateno != 1120) && (stateno != [6090,6109])
var(14) = 2
ignorehitpause = 1

[State -2, Varをリセット]
type = VarSet
trigger1 = Time = 1
var(14) = 0
ignorehitpause = 1

[State -2, 補正用ヒットカウント]
type = VarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State -2, ヒットフラグリセット]
type = VarSet
trigger1 = Movetype != A
var(16) = 0
ignorehitpause = 1

[State -2, ヒットエフェクト]
type = Explod
trigger1 = movehit
trigger1 = var(15) = 1
anim = 10010
postype = p1
pos = ceil(P2Dist X),-35
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.4,0.4

[State -2, ヒットエフェクト]
type = Explod
trigger1 = movehit
trigger1 = var(15) = 2
anim = 10010
postype = p1
pos = ceil(P2Dist X),-35
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.5,0.5

[State -2, ヒットエフェクト]
type = Explod
trigger1 = movehit
trigger1 = var(15) = 3
anim = 10000
postype = p1
pos = ceil(P2Dist X),-35
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.5,0.5

[State -2, ヒットエフェクト]
type = Explod
trigger1 = movehit
trigger1 = var(15) = 3
anim = 10010
postype = p1
pos = ceil(P2Dist X),-35
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.5,0.5

[State -2, ヒットエフェクト]
type = Explod
trigger1 = movehit
trigger1 = var(15) = 4
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.5,0.5

[State -2, ヒットエフェクト]
type = Explod
trigger1 = movehit
trigger1 = var(15) = 5
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.5,0.5

[State -2, ヒットエフェクト]
type = Explod
trigger1 = movehit
trigger1 = var(15) = 5
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.5,0.5

[State -2, ヒットエフェクト]
type = Explod
trigger1 = movehit
trigger1 = var(15) = 6
anim = 10000
postype = p1
pos = ceil(P2Dist X),-25
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.4,0.4

[State -2, ヒットエフェクト]
type = Explod
trigger1 = movehit
trigger1 = var(15) = 7
anim = 10000
postype = p1
pos = ceil(P2Dist X),30
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.5,0.5

[State -2, ヒットエフェクト]
type = Explod
trigger1 = movehit
trigger1 = var(15) = 7
anim = 10010
postype = p1
pos = ceil(P2Dist X),30
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.5,0.5

[State -2, ヒットエフェクト]
type = Explod
trigger1 = movehit
trigger1 = var(15) = 8
anim = 10000
postype = p1
pos = ceil(P2Dist X),0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.5,0.5

[State -2, ヒットエフェクト]
type = Explod
trigger1 = movehit
trigger1 = var(15) = 8
anim = 10010
postype = p1
pos = ceil(P2Dist X),0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.5,0.5

[State -2, ガードエフェクト]
type = Helper
trigger1 = moveguarded
trigger1 = var(15) = [1,3]
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-35
ownpal = 1
pausemovetime = 9999
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State -2, ガードエフェクト]
type = Helper
trigger1 = moveguarded
trigger1 = var(15) = [4,5]
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 9999
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State -2, ガードエフェクト]
type = Helper
trigger1 = moveguarded
trigger1 = var(15) = 6
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-25
ownpal = 1
pausemovetime = 9999
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State -2, ガードエフェクト]
type = Helper
trigger1 = moveguarded
trigger1 = var(15) = 7
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),30
ownpal = 1
pausemovetime = 9999
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State -2, ガードエフェクト]
type = Helper
trigger1 = moveguarded
trigger1 = var(15) = 8
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),0
ownpal = 1
pausemovetime = 9999
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

;---------------------------------------------------------------------------
; 空中強・とんでって・はじまりのきのエフェクト消去

[State -2, Explod消去]
type = RemoveExplod
trigger1 = StateType != A
trigger2 = stateno != [620,631]
ID = 6200
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State -2, Explod消去]
type = RemoveExplod
trigger1 = stateno != [1120,1121]
ID = 11200
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State -2, Explod消去]
type = RemoveExplod
trigger1 = stateno != [6010,6019]
ID = 60100
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

;---------------------------------------------------------------------------
;ハイパーコンボ処理

[State -2, 背景消去]
type = VarSet
trigger1 = Movetype = H
var(8) = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
;音声処理

[State -2, 音声フラグ]
type = VarAdd
trigger1 = var(9) > 0
var(9) = -1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 1
value = s1,0
channel = 5
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 1
value = s3,9
channel = 7
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 2
value = s1,3
channel = 5
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 3
value = s1,8
channel = 5
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 4
value = s1,2
channel = 5
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 5
value = s3,4
channel = 4
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 6
value = s1,11
channel = 5
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 6
value = s1,11
channel = 5
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 7
value = s1,14
channel = 5
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 8
value = s3,27
channel = 7
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 9
value = s1,16
channel = 5
ignorehitpause = 1

;---------------------------------------------------------------------------
; 空中動作系管理

[State -3, スーパージャンプの慣性解除]
type = VarSet
trigger1 = StateType != A
var(0) = 0

[State -2, 空中ダッシュの制限解除]
type = VarSet
trigger1 = StateType != A
var(1) = 0

[State -3, 二段ジャンプの制限解除]
type = VarSet
trigger1 = StateType != A
var(2) = 0

[State -3, 二段ジャンプフラグ]
type = VarSet
trigger1 = stateno = 45
trigger1 = Time = 1
var(2) = 1

;---------------------------------------------------------------------------
; 攻撃力補正

[State -2, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = fvar(0)
ignorehitpause = 1

[State -2, 攻撃力補正式]
type = VarSet
trigger1 = 1
fvar(0) = fvar(2) * fvar(3) * fvar(4) * ifelse(var(55)/10000%10 = 1,1.2,1) * (fvar(5)/100)
ignorehitpause = 1

[State -2, ヒット数による補正の解除]
type = VarSet
trigger1 = P2Movetype != H
fvar(1) = 0
ignorehitpause = 1

[State -2, ヒット数による補正]
type = VarSet
trigger1 = fvar(1) = 0
fvar(2) = 1

[State -2, ヒット数による補正]
type = VarSet
trigger1 = fvar(1) > 0
trigger1 = fvar(1) < 26
fvar(2) = 1 - ((fvar(1)/2)*0.08)

[State -2, ヒット数による補正]
type = VarSet
triggerall = var(31) = 1
trigger1 = fvar(1) >= 26
fvar(2) = 0.01

[State -2, カウンターヒット補正]
type = VarSet
trigger1 = P2Movetype = A
fvar(3) = 1.25

[State -2, カウンターヒット補正解除]
type = VarSet
trigger1 = P2Movetype != A
fvar(3) = 1

[State -2, ライフ残量による攻撃力の増加]
type = VarSet
trigger1 = ((100*Life) / const(data.life)) = [60,100]
fvar(4) = 0.9

[State -2, ライフ残量による攻撃力の増加]
type = VarSet
trigger1 = ((100*Life) / const(data.life)) = [50,59]
fvar(4) = 1

[State -2, ライフ残量による攻撃力の増加]
type = VarSet
trigger1 = ((100*Life) / const(data.life)) = [30,49]
fvar(4) = 1.15

[State -2, ライフ残量による攻撃力の増加]
type = VarSet
trigger1 = ((100*Life) / const(data.life)) = [10,29]
fvar(4) = 1.25

[State -2, ライフ残量による攻撃力の増加]
type = VarSet
trigger1 = ((100*Life) / const(data.life)) = [0,9]
fvar(4) = 1.3

;---------------------------------------------------------------------------
;防御力補正管理

[State -2, 補正の適用]
type = DefenceMulSet
trigger1 = 1
value = fvar(20)
ignorehitpause = 1

[State -2, 防御力補正式]
type = VarSet
trigger1 = roundstate = 2
fvar(20) = fvar(21) * (100/fvar(22))
ignorehitpause = 1

[State -2, ライフ残量による防御力の増加]
type = VarSet
trigger1 = ((100*Life) / const(data.life)) = [51,100]
fvar(21) = 1

[State -2, ライフ残量による防御力の増加]
type = VarSet
trigger1 = ((100*Life) / const(data.life)) = [26,50]
fvar(21) = 0.9

[State -2, ライフ残量による防御力の増加]
type = VarSet
trigger1 = ((100*Life) / const(data.life)) = [0,25]
fvar(21) = 0.85

;---------------------------------------------------------------------------
;リコイルガード

[State -2, 立ち・空中リコイルガードフラグセット]
type = VarSet
trigger1 = command != "BB"
trigger1 = var(3) = 0
trigger1 = ctrl
trigger1 = MoveType != A
trigger1 = MoveType != H
trigger1 = command = "back"
var(3) = var(32)
ignorehitpause = 1

[State -2, しゃがみリコイルガードフラグセット]
type = VarSet
trigger1 = command != "BB"
trigger1 = var(3) = 0
trigger1 = ctrl
trigger1 = MoveType != A
trigger1 = MoveType != H
trigger1 = command = "downback"
var(3) = var(32)
ignorehitpause = 1

[State -2, 時間制限]
type = VarAdd
trigger1 = var(3) != 0
trigger1 = var(3) >= 0
trigger1 = 1
var(3) = -1
ignorehitpause = 1

[State -2, フラグを解除]
type = VarSet
triggerall = var(3) != 0
trigger1 = stateno = 0
trigger2 = stateno = [4020,4040]
trigger2 = AnimTime = 0
trigger3 = MoveType = A
var(3) = 0

[State -2, リコイルガードステートへ移行]
type = HitOverRide
trigger1 = var(3) != 0
trigger1 = var(54)/1000000%10 = 1
trigger1 = StateType != A
trigger1 = StateType = S
trigger1 = StateType != C
trigger1 = MoveType = I
trigger1 = ctrl
attr = SCA, NA, SA, HA, NP, SP, HP
stateno = 4020
time = 1

[State -2, リコイルガードステートへ移行]
type = HitOverRide
trigger1 = var(3) != 0
trigger1 = var(54)/1000000%10 = 1
trigger1 = StateType != A
trigger1 = StateType != S
trigger1 = StateType = C
trigger1 = MoveType = I
trigger1 = ctrl
attr = SCA, NA, SA, HA, NP, SP, HP
stateno = 4030
time = 1

[State -2, リコイルガードステートへ移行]
type = HitOverRide
trigger1 = var(3) != 0
trigger1 = var(54)/10000000%10 = 1
trigger1 = StateType = A
trigger1 = StateType != S
trigger1 = StateType != C
trigger1 = MoveType = I
trigger1 = ctrl
attr = SCA, NA, SA, HA, NP, SP, HP
stateno = 4040
time = 1

;---------------------------------------------------------------------------
;ワイヤーダメージ処理

[State -2, PlaySnd]
type = PlaySnd
triggerall = P2MoveType = H
trigger1 = P2Stateno = 50002
trigger2 = P2Stateno = 56005
value = s1,9
abspan = 1

;---------------------------------------------------------------------------
;るてんのらせん処理

[State -2, 発光]
type = PalFX
triggerall = var(5) > 0
trigger1 = GameTime % 21 = 0
trigger2 = GameTime % 21 = 20
time = 2
add = 255,255,255
ignorehitpause = 1

[State -2, 発光]
type = PalFX
triggerall = var(5) > 0
trigger1 = GameTime % 21 = 2
trigger2 = GameTime % 21 = 18
time = 2
add = 210,210,210
ignorehitpause = 1

[State -2, 発光]
type = PalFX
triggerall = var(5) > 0
trigger1 = GameTime % 21 = 4
trigger2 = GameTime % 21 = 16
time = 2
add = 170,170,170
ignorehitpause = 1

[State -2, 発光]
type = PalFX
triggerall = var(5) > 0
trigger1 = GameTime % 21 = 6
trigger2 = GameTime % 21 = 14
time = 2
add = 130,130,130
ignorehitpause = 1

[State -2, 発光]
type = PalFX
triggerall = var(5) > 0
trigger1 = GameTime % 21 = 8
trigger2 = GameTime % 21 = 12
time = 2
add = 90,90,90
ignorehitpause = 1

[State -2, 発光]
type = PalFX
triggerall = var(5) > 0
trigger1 = GameTime % 21 = 10
time = 2
add = 50,50,50
ignorehitpause = 1

[State -2, Explod消去]
type = RemoveExplod
trigger1 = stateno != [6001,6002]
ID = 60010
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State -2, 残り時間]
type = VarAdd
trigger1 = var(54)/1000%10 = 1
trigger1 = var(5) > 0
var(5) = -1
ignorehitpause = 1

;---------------------------------------------------------------------------
;フィニッシュ

[State -2, フィニッシュ用ヘルパー]
type = Helper
triggerall = NumHelper(40000) <= 0
triggerall = roundstate = 3
triggerall = stateno != [6000,6999]
triggerall = var(36)/1000%10 = 1
trigger1 = Winko
helpertype = normal
name = "Finish"
ID = 40000
stateno = 40000
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, フィニッシュ用ヘルパー]
type = Helper
triggerall = NumHelper(40000) <= 0
triggerall = roundstate = 3
triggerall = stateno = [6000,6999]
triggerall = var(36)/1000%10 = 1
trigger1 = Winko
helpertype = normal
name = "Finish"
ID = 40000
stateno = 40001
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;---------------------------------------------------------------------------
;その他

[State -2, NoAirGuard]
type = AssertSpecial
trigger1 = var(55)/10%10 = 0
flag = NoAirGuard
ignorehitpause = 1

[State -2, NotHitBy]
type = NotHitBy
trigger1 = var(55)/1000%10 = 1
value = SCA
time = -1
ignorehitpause = 1

[State -2, HitBy]
type = HitBy
trigger1 = var(55)/1000%10 = 1
value = SCA,NA,SA,HA
time = -1
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
triggerall = var(55)/10000%10 = 1
trigger1 = stateno != [120,155]
trigger1 = stateno != [4050,4070]
var(13) = Life
ignorehitpause = 1

[State -2, LifeSet]
type = LifeSet
triggerall = var(55)/10000%10 = 1
triggerall = var(13) > Life
trigger1 = stateno = [120,155]
trigger2 = stateno = [4080,4100]
value = var(13)
ignorehitpause = 1

[State -2, ChangeState]
type = ChangeState
triggerall = command = "holdfwd"
triggerall = command = "z"
triggerall = var(55)/1000%10 = 1
triggerall = alive = 1
trigger1 = stateno = [5000,5120]
value = 1050
ignorehitpause = 1

[State -2, ChangeState]
type = ChangeState
triggerall = command = "holdback"
triggerall = command = "z"
triggerall = var(55)/1000%10 = 1
triggerall = alive = 1
trigger1 = stateno = [5000,5120]
value = 1051
ignorehitpause = 1

;===========================================================================
;===========================================================================
;アシストに関する処理
;===========================================================================
;===========================================================================

;---------------------------------------------------------------------------
; アシスト召喚

[State -1, アシスト召喚]
type = Helper
triggerall = NumHelper(20000) <= 0
triggerall = NumHelper(21000) <= 0
triggerall = command = "x"
triggerall = Movetype != H
triggerall = stateno != 5900
triggerall = stateno != [6000,6999]
triggerall = var(20) != 1
triggerall = roundstate = 2
triggerall = var(54)/100000%10 = 0
triggerall = var(37)/1000%10 = 0
trigger1 = var(19) != 1
trigger2 = var(54)/10%10 = 0
helpertype = normal
name = "Assist"
pos = -300,0
postype = p1
ID = 20000
facing = 1
stateno = 20000+(var(52)*1000)+1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State -1, アシスト召喚]
type = Helper
triggerall = NumHelper(20000) <= 0
triggerall = NumHelper(21000) <= 0
triggerall = command = "y"
triggerall = Movetype != H
triggerall = stateno != 5900
triggerall = stateno != [6000,6999]
triggerall = var(20) != 1
triggerall = roundstate = 2
triggerall = var(54)/100000%10 = 0
triggerall = var(37)/1000%10 = 0
trigger1 = var(19) != 1
trigger2 = var(54)/10%10 = 0
helpertype = normal
name = "Assist"
pos = -300,0
postype = p1
ID = 21000
facing = 1
stateno = 20000+(var(53)*1000)+1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; アシスト召喚（ダブルアシスト有効）

[State -1, アシスト召喚]
type = Helper
triggerall = NumHelper(20000) <= 0
triggerall = command = "x"
triggerall = Movetype != H
triggerall = stateno != 5900
triggerall = stateno != [6000,6999]
triggerall = var(20) != 1
triggerall = roundstate = 2
triggerall = var(54)/100000%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = var(19) != 1
trigger2 = var(54)/10%10 = 0
helpertype = normal
name = "Assist"
pos = -300,0
postype = p1
ID = 20000
facing = 1
stateno = 20000+(var(52)*1000)+1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State -1, アシスト召喚]
type = Helper
triggerall = NumHelper(21000) <= 0
triggerall = command = "y"
triggerall = Movetype != H
triggerall = stateno != 5900
triggerall = stateno != [6000,6999]
triggerall = var(20) != 1
triggerall = roundstate = 2
triggerall = var(54)/100000%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = var(19) != 1
trigger2 = var(54)/10%10 = 0
helpertype = normal
name = "Assist"
pos = -300,0
postype = p1
ID = 21000
facing = 1
stateno = 20000+(var(53)*1000)+1
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; アシスト処理

[State -2, アシストリミッター解除]
type = VarSet
trigger1 = P2MoveType != H
trigger2 = P2StateType = L
var(19) = 0

[State -2, ラウンド開始前リミッター]
type = VarSet
trigger1 = (stateno = 0) && (ctrl = 0)
var(20) = 1

[State -2, ラウンド開始前リミッター]
type = VarSet
trigger1 = ctrl = 1
var(20) = 0

;---------------------------------------------------------------------------
; アシストの状態表示・1P側

[State -2, メッセージ表示時間の制御（共通）]
type = VarAdd
trigger1 = NumHelper(20000) <= 0
trigger1 = var(11) > 0
var(11) = -1
ignorehitpause = 1

[State -2, メッセージ表示時間の制御（共通）]
type = VarAdd
trigger1 = NumHelper(21000) <= 0
trigger1 = var(12) > 0
var(12) = -1
ignorehitpause = 1

[State -2, アシスト顔（上・1P）]
type = Explod
triggerall = var(36)%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = roundstate = 2
trigger1 = TeamSide = 1
trigger1 = NumExplod(58610) < 1
anim = 20500+(var(52)*1000)
postype = left
pos = 15,60
ID = 58610
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -6
scale = 1,1

[State -2, アシスト顔（下・1P）]
type = Explod
triggerall = var(36)%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = roundstate = 2
trigger1 = TeamSide = 1
trigger1 = NumExplod(58611) < 1
anim = 20500+(var(53)*1000)
postype = left
pos = 15,82
ID = 58611
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -6
scale = 1,1

[State -2, アシスト名前]
type = Explod
triggerall = var(36)%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = roundstate = 2
trigger1 = TeamSide = 1
trigger1 = NumExplod(58612) < 1
anim = 29000+var(52)
postype = left
pos = 56,68
ID = 58612
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -7
scale = 0.5,0.5

[State -2, アシスト名前]
type = Explod
triggerall = var(36)%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = roundstate = 2
trigger1 = TeamSide = 1
trigger1 = NumExplod(58613) < 1
anim = 29000+var(53)
postype = left
pos = 56,90
ID = 58613
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -7
scale = 0.5,0.5

[State -2, アシスト状態]
type = Explod
triggerall = var(36)%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = roundstate = 2
trigger1 = TeamSide = 1
trigger1 = NumExplod(58614) < 1
trigger1 = NumHelper(20000) <= 0
trigger1 = var(11) = [1,90]
anim = 29050
postype = left
pos = 56,66
ID = 58614
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -5
scale = 0.5,0.5

[State -2, アシスト状態メッセージ消去]
type = RemoveExplod
triggerall = TeamSide = 1
triggerall = NumExplod(58614) > 0
trigger1 = var(11) != [1,90]
trigger2 = NumHelper(20000) > 0
ID = 58614
supermovetime = 9999
pausemovetime = 9999

[State -2, アシスト状態]
type = Explod
triggerall = var(36)%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = roundstate = 2
trigger1 = TeamSide = 1
trigger1 = NumExplod(58615) < 1
trigger1 = NumHelper(21000) <= 0
trigger1 = var(12) = [1,90]
anim = 29050
postype = left
pos = 56,88
ID = 58615
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -5
scale = 0.5,0.5

[State -2, アシスト状態メッセージ消去]
type = RemoveExplod
triggerall = TeamSide = 1
triggerall = NumExplod(58615) > 0
trigger1 = var(12) != [1,90]
trigger2 = NumHelper(21000) > 0
ID = 58615
supermovetime = 9999
pausemovetime = 9999

;---------------------------------------------------------------------------
; アシストの状態表示・2P側

[State -2, アシスト顔（上・2P）]
type = Explod
triggerall = var(36)%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = roundstate = 2
trigger1 = TeamSide = 2
trigger1 = NumExplod(58610) < 1
anim = 20500+(var(52)*1000)
postype = right
pos = -15,60
ID = 58610
facing = -1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -6
scale = 1,1

[State -2, アシスト顔（下・2P）]
type = Explod
triggerall = var(36)%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = roundstate = 2
trigger1 = TeamSide = 2
trigger1 = NumExplod(58611) < 1
anim = 20500+(var(53)*1000)
postype = right
pos = -15,82
ID = 58611
facing = -1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -6
scale = 1,1

[State -2, アシスト名前]
type = Explod
triggerall = var(36)%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = roundstate = 2
trigger1 = TeamSide = 2
trigger1 = NumExplod(58612) < 1
anim = 29000+var(52)
postype = right
pos = -56,68
ID = 58612
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -7
scale = 0.5,0.5

[State -2, アシスト名前]
type = Explod
triggerall = var(36)%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = roundstate = 2
trigger1 = TeamSide = 2
trigger1 = NumExplod(58613) < 1
anim = 29000+var(53)
postype = right
pos = -56,90
ID = 58613
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -7
scale = 0.5,0.5

[State -2, アシスト状態]
type = Explod
triggerall = var(36)%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = roundstate = 2
trigger1 = TeamSide = 2
trigger1 = NumExplod(58614) < 1
trigger1 = NumHelper(20000) <= 0
trigger1 = var(11) = [1,90]
anim = 29050
postype = right
pos = -56,66
ID = 58614
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -5
scale = 0.5,0.5

[State -2, アシスト状態メッセージ消去]
type = RemoveExplod
triggerall = TeamSide = 2
triggerall = NumExplod(58614) > 0
trigger1 = var(11) != [1,90]
trigger2 = NumHelper(20000) > 0
ID = 58614
supermovetime = 9999
pausemovetime = 9999

[State -2, アシスト状態]
type = Explod
triggerall = var(36)%10 = 1
triggerall = var(37)/1000%10 = 0
trigger1 = roundstate = 2
trigger1 = TeamSide = 2
trigger1 = NumExplod(58615) < 1
trigger1 = NumHelper(21000) <= 0
trigger1 = var(12) = [1,90]
anim = 29050
postype = right
pos = -56,88
ID = 58615
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -5
scale = 0.5,0.5

[State -2, アシスト状態メッセージ消去]
type = RemoveExplod
triggerall = TeamSide = 2
triggerall = NumExplod(58615) > 0
trigger1 = var(12) != [1,90]
trigger2 = NumHelper(21000) > 0
ID = 58615
supermovetime = 9999
pausemovetime = 9999

;---------------------------------------------------------------------------
;相手キャラクター識別

[State -2, VarSet];みちる
type = VarSet
trigger1 = (p2name = "michiru") || (p4name = "michiru")
var(18) = 1

[State -2, VarSet];あゆ
type = VarSet
trigger1 = (p2name = "Ayu Tukimiya") || (p4name = "Ayu Tukimiya")
var(18) = 2

[State -2, VarSet];ちびみずか
type = VarSet
trigger1 = (p2name = "Unknown") || (p4name = "Unknown")
trigger2 = (p2name = "UNKNOWN") || (p4name = "UNKNOWN")
var(18) = 3

[State -2, VarSet];真琴
type = VarSet
trigger1 = (p2name = "Makoto Sawatari") || (p4name = "Makoto Sawatari")
trigger2 = (p2name = "Makoto_Sawatari") || (p4name = "Makoto_Sawatari")
trigger3 = (p2name = "Sawatari Makoto") || (p4name = "Sawatari Makoto")
trigger4 = (p2name = "Sawatari_Makoto") || (p4name = "Sawatari_Makoto")
var(18) = 4

[State -2, VarSet];神奈
type = VarSet
trigger1 = (p2name = "Kanna") || (p4name = "Kanna")
trigger2 = (p2name = "Kanna_R") || (p4name = "Kanna_R")
var(18) = 5

[State -2, VarSet];美凪
type = VarSet
trigger1 = (p2name = "Minagi Tohno By Toshi") || (p4name = "Minagi Tohno By Toshi")
trigger2 = (p2name = "Minagi Tohno") || (p4name = "Minagi Tohno")
trigger3 = (p2name = "Minagi_Tohno") || (p4name = "Minagi_Tohno")
trigger4 = (p2name = "Tohno Minagi") || (p4name = "Tohno Minagi")
trigger5 = (p2name = "Tohno_Minagi") || (p4name = "Tohno_Minagi")
trigger6 = (p2name = "Minagi") || (p4name = "Minagi")
var(18) = 6

[State -2, VarSet];ワラキアの夜
type = VarSet
trigger1 = (p2name = "Warachia") || (p4name = "Warachia")
trigger2 = (p2name = "Warachia_EX") || (p4name = "Warachia_EX")
trigger3 = (p2name = "Warakia") || (p4name = "Warakia")
var(18) = 7

[State -2, VarSet];闇アルク・ワルクェイド
type = VarSet
trigger1 = (p2name = "Warcueid") || (p4name = "Warcueid")
trigger2 = (p2name = "Warcueid_T") || (p4name = "Warcueid_T")
trigger3 = (p2name = "Red Arcueid") || (p4name = "Red Arcueid")
trigger4 = (p2name = "Dark Arcueid") || (p4name = "Dark Arcueid")
var(18) = 8

[State -2, VarSet];香里
type = VarSet
trigger1 = (p2name = "Kaori Misaka") || (p4name = "Kaori Misaka")
trigger2 = (p2name = "Kaori_Misaka") || (p4name = "Kaori_Misaka")
trigger3 = (p2name = "Misaka Kaori") || (p4name = "Misaka Kaori")
trigger4 = (p2name = "Misaka_Kaori") || (p4name = "Misaka_Kaori")
var(18) = 9

[State -2, VarSet];観鈴
type = VarSet
trigger1 = (p2name = "Misuzu") || (p4name = "Misuzu")
trigger2 = (p2name = "Misuzu_K") || (p4name = "Misuzu_K")
var(18) = 10

[State -2, VarSet];遠野志貴
type = VarSet
trigger1 = (p2name = "Shiki_Tohno") || (p4name = "Shiki_Tohno")
trigger2 = (p2name = "Shiki Tohno") || (p4name = "Shiki Tohno")
trigger3 = (p2name = "Tohno_Shiki") || (p4name = "Tohno_Shiki")
trigger4 = (p2name = "Tohno Shiki") || (p4name = "Tohno Shiki")
var(18) = 11

[State -2, VarSet];舞
type = VarSet
trigger1 = (p2name = "Mai Kawasumi") || (p4name = "Mai Kawasumi")
trigger2 = (p2name = "Mai_Kawasumi") || (p4name = "Mai_Kawasumi")
trigger3 = (p2name = "Mai_K") || (p4name = "Mai_K")
trigger4 = (p2name = "D-Mai_Kawasumi_by_Nachel") || (p4name = "D-Mai_Kawasumi_by_Nachel")
var(18) = 12

[State -2, VarSet];七夜志貴
type = VarSet
trigger1 = (p2name = "Shiki Nanaya") || (p4name = "Shiki Nanaya")
trigger2 = (p2name = "Shiki_Nanaya") || (p4name = "Shiki_Nanaya")
trigger3 = (p2name = "Nanaya_T") || (p4name = "Nanaya_T")
var(18) = 13

[State -2, VarSet];栞
type = VarSet
trigger1 = (p2name = "Shiori Misaka") || (p4name = "Shiori Misaka")
trigger2 = (p2name = "Shiori_Misaka") || (p4name = "Shiori_Misaka")
trigger3 = (p2name = "Misaka Shiori") || (p4name = "Misaka Shiori")
trigger4 = (p2name = "Misaka_Shiori") || (p4name = "Misaka_Shiori")
trigger5 = (p2name = "Shiori") || (p4name = "Shiori")
var(18) = 14

[State -2, VarSet];秋子さん / 琥珀さん
type = VarSet
trigger1 = (p2name = "Akiko Minase") || (p4name = "Akiko Minase")
trigger2 = (p2name = "Akiko_Minase") || (p4name = "Akiko_Minase")
trigger3 = (p2name = "Minase Akiko") || (p4name = "Minase Akiko")
trigger4 = (p2name = "Minase_Akiko") || (p4name = "Minase_Akiko")
trigger5 = (p2name = "Kohaku") || (p4name = "Kohaku")
var(18) = 15

[State -2, VarSet];長門
type = VarSet
trigger1 = (p2name = "Nagato Yuki") || (p4name = "Nagato Yuki")
var(18) = 16

;テンプレ

;[State -2, VarSet];
;type = VarSet
;trigger1 = (p2name = "") || (p4name = "")
;var(18) = 0

;---------------------------------------------------------------------------
;デバッグ

[State -2, デバッグ表示]
type = DisplayToClipboard
trigger1 = 1
text = "NumHit=%f v37=%d v53=%d Explod=%d Helper=%d\n"
params = fvar(1),var(37)/100000%10,var(50),NumExplod,NumHelper
ignorehitpause = 1

;---------------------------------------------------------------------------
;獣を焦がす（⑨さん作赤秋葉用コード）

[State -2]
Type = LifeAdd
TriggerAll = Enemy,AuthorName = "⑨" && Enemy,Name = "Akiha_Vermilion"
Trigger1 = Enemy,Var(47) = 1
Value = -5
Kill = 0

[State -2]
Type = PowerAdd
TriggerAll = Enemy,AuthorName = "⑨" && Enemy,Name = "Akiha_Vermilion"
Trigger1 = Enemy,Var(47) = 1
Value = -26
