;---------------------------------------------------------------------------
; ワイヤーやられ

[Statedef 50000]
type = A
movetype = H
phisics = N

[State 50000, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = 1
value = 50000

[State 50000, 速度の適用]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 50000, 次のステートへ]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 50001

[Statedef 50001]
type = A
movetype = H
phisics = N

[State 50001, 速度の適用]
type = VelSet
trigger1 = 1
x = -14

[State 50001, 接触判定]
type = PlayerPush
trigger1 = 1
value = 0

[State 50001, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 50001, 壁に当たった場合]
type = ChangeState
trigger1 = BackEdgeBodyDist < 15
value = 50002

[Statedef 50002]
type = A
movetype = H
phisics = N

[State 50002, 画面固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 50002, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = time = 0
value = 50001

[State 50002, 振動]
type = EnvShake
trigger1 = time = 0
time = 10
ampl = -10

[State 50002, 落下へ接続]
type = ChangeState
trigger1 = Time = 1
value = 50003

[Statedef 50003]
type = A
movetype = H
phisics = N

[State 50003, 画面固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 50003, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = time = 0
value = 50001

[State 50003, 跳ね返り]
type = VelSet
trigger1 = time = 4
x = 3
y = -3

[State 50003, 左右の入れ替え]
type = Turn
trigger1 = Time = 4

[State 50003, 落下へ接続]
type = ChangeState
trigger1 = Time = 9
value = 50004

[Statedef 50004]
type = A
movetype = H
phisics = N

[State 50004, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = time = 0
value = 50002

[State 50004, 画面固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 50004, 落下]
type = VelSet
trigger1 = Time = 0
x = -1.6

[State 50004, 落下]
type = VelAdd
trigger1 = 1
y = 0.65

[State 50004, 相手のアニメ変更] 
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5050

[State 50004, 相手を解放]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; まどのそとやられ

[Statedef 51103]
type = A
movetype = H
phisics = N

[State 51103, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = time = 0
value = 51103

[State 51103, 位置指定]
type = VelSet
trigger1 = Time = 0
x = 0

[State 51103, 位置指定]
type = PosSet
trigger1 = Time = 0
y = -1000

[State 51103, 位置指定]
type = PosAdd
trigger1 = Time = 5
x = ceil(P2Dist X)

[State 51103, 落下]
type = VelAdd
trigger1 = 1
y = 0.6

[State 51103, 相手のアニメ変更] 
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5050

[State 51103, 相手を解放]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; るてんのらせんやられ

[Statedef 56000]
type = A
movetype = H
phisics = N
velset = 0,0
facep2 = 1

[State 56000, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = 1
value = 56000

[State 56000, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[Statedef 56001]
type = A
movetype = H
phisics = N

[State 56001, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 56001, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = 1
value = 56001

[Statedef 56002]
type = A
movetype = H
phisics = N

[State 56002, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 56002, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = 1
value = 56002

[Statedef 56003]
type = A
movetype = H
phisics = N

[State 56003, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = 1
value = 50000

[State 56003, 速度の適用]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 56003, 次のステートへ]
type = ChangeState
trigger1 = Time = 1
value = 56004

[Statedef 56004]
type = A
movetype = H
phisics = N

[State 56004, 速度の適用]
type = VelSet
trigger1 = Time = 1
x = -14
y = -12

[State 56004, 速度の適用]
type = VelAdd
trigger1 = Time > 4
y = 0.65

[State 56004, 接触判定]
type = PlayerPush
trigger1 = 1
value = 0

[State 56004, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 56004, 壁に当たった場合]
type = ChangeState
trigger1 = BackEdgeBodyDist < -10
value = 56005

[State 56004, 壁に当たらなかった場合]
type = ChangeState
trigger1 = Time > 10
trigger1 = Pos Y >= -5
value = 56007

[Statedef 56005]
type = A
movetype = H
phisics = N

[State 56005, 画面固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 56005, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = time = 0
value = 50001

[State 56005, 振動]
type = EnvShake
trigger1 = time = 0
time = 10
ampl = -10

[State 56005, 落下へ接続]
type = ChangeState
trigger1 = Time = 1
value = 56006

[Statedef 56006]
type = A
movetype = H
phisics = N

[State 56006, 画面固定]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 56006, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = time = 0
value = 50001

[State 56006, 跳ね返り]
type = VelSet
trigger1 = time = 4
x = 3
y = -3

[State 56006, 左右の入れ替え]
type = Turn
trigger1 = Time = 4

[State 56006, 落下へ接続]
type = ChangeState
trigger1 = Time = 9
value = 56007

[Statedef 56007]
type = A
movetype = H
phisics = N

[State 56007, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = time = 0
value = 50002

[State 56007, 画面固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 56007, 落下]
type = VelSet
trigger1 = Time = 0
x = -1.6

[State 56007, 落下]
type = VelAdd
trigger1 = 1
y = 0.65

[State 56007, 相手のアニメ変更] 
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5050

[State 56007, 相手を解放]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; イドのつるぎやられ

[Statedef 56020]
type = A
movetype = H
phisics = N

[State 56020, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = 1
value = 50000

[State 56020, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 56020, 速度の適用]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 56020, 次のステートへ]
type = ChangeState
trigger1 = Time = 1
value = 56021

[Statedef 56021]
type = A
movetype = H
phisics = N

[State 56021, 速度の適用]
type = VelSet
trigger1 = Time = 0
x = -5
y = -4

[State 56021, 速度の適用]
type = VelAdd
trigger1 = 1
y = 0.45

[State 56021, 接触判定]
type = PlayerPush
trigger1 = 1
value = 0

[State 56021, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 56021, 相手を解放]
type = ChangeState
trigger1 = Time > 12
value = 56022

[Statedef 56022]
type = A
movetype = H
phisics = N

[State 56022, 画面固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 56022, 落下]
type = VelAdd
trigger1 = 1
y = 0.45

[State 56022, 相手のアニメ変更] 
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 56022, 相手を解放]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

[Statedef 56023]
type = A
movetype = H
phisics = N

[State 56023, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = 1
value = 50000

[State 56023, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 56023, 速度の適用]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 56023, 次のステートへ]
type = ChangeState
trigger1 = Time = 1
value = 56024

[Statedef 56024]
type = A
movetype = H
phisics = N

[State 56024, 速度の適用]
type = VelSet
trigger1 = Time = 0
x = 0
y = -6.5

[State 56024, 速度の適用]
type = VelAdd
trigger1 = 1
y = 0.45

[State 56024, 接触判定]
type = PlayerPush
trigger1 = 1
value = 0

[State 56024, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 56024, 相手を解放]
type = ChangeState
trigger1 = Time > 15
value = 56022

[Statedef 56025]
type = A
movetype = H
phisics = N

[State 56025, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = 1
value = 50000

[State 56025, 速度の適用]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 56025, 次のステートへ]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 56026

[Statedef 56026]
type = A
movetype = H
phisics = N

[State 56026, 速度の適用]
type = VelSet
trigger1 = Time = 0
x = -4
y = -6

[State 56026, 速度の適用]
type = VelAdd
trigger1 = 1
y = 0.45

[State 56026, 接触判定]
type = PlayerPush
trigger1 = 1
value = 0

[State 56026, 相手を解放]
type = ChangeState
trigger1 = Time > 12
value = 56027

[Statedef 56027]
type = A
movetype = H
phisics = N

[State 56027, 落下]
type = VelAdd
trigger1 = 1
y = 0.45

[State 56027, 相手のアニメ変更] 
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 56027, 相手を解放]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; パニッシュメントやられ

[Statedef 56050]
type = A
movetype = H
phisics = N

[State 56050, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = 1
value = 56050

[State 56050, 速度の適用]
type = VelSet
trigger1 = 1
x = 0
y = 0

[Statedef 56052]
type = A
movetype = H
phisics = N

[State 56052, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 56052, 上昇]
type = VelAdd
trigger1 = time = [0,3]
y = -2

[State 56052, 落下]
type = VelAdd
trigger1 = time != [0,3]
y = const(movement.yaccel)

[State 56052, 相手のアニメ変更] 
type = ChangeAnim
trigger1 = Time = 0
value = 5050
persistent = 0

[State 56052, 相手を解放]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

[Statedef 56062]
type = A
movetype = H
phisics = N

[State 56062, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 56062, 上昇]
type = VelAdd
trigger1 = time = 0
y = -15

[State 56062, 落下]
type = VelAdd
trigger1 = time > 0
y = const(movement.yaccel)*1.2

[State 56062, 相手のアニメ変更] 
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 56052, 相手を解放]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;---------------------------------------------------------------------------
; セラフックウィングやられ

[Statedef 56070]
type = A
movetype = H
phisics = N

[State 56070, 相手のアニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 56070

[State 56070, 速度の適用]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 56070, ライフ減少]
type = LifeAdd
trigger1 = Time = 0
trigger1 = GetHitVar(Damage) < 15
value = -1*(15-GetHitVar(damage))
absolute = 1
ignorehitpause = 1

[State 56070, 次のステートへ]
type = ChangeState
trigger1 = Time = 1
value = 56071
ignorehitpause = 1

[Statedef 56071]
type = A
movetype = H
phisics = N

[State 56070, 次のステートへ]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 56004

;---------------------------------------------------------------------------
; ファイナルサイコクラッシャーやられ

[Statedef 56101]
type = A
movetype = H
phisics = N

[State 56101, ヒット効果]
type = VelSet
trigger1 = Time = 0
x = -1.5

[State 56101, ヒット効果]
type = VelAdd
trigger1 = Time = 0
y = -1.5

[State 56101, 画面固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 56101, 落下]
type = VelAdd
trigger1 = time > 4
y = const(movement.yaccel)*1.2

[State 56101, 相手のアニメ変更] 
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 56101, 相手を解放]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100
