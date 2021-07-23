;---------------------------------------------------------------------------
; 空中ダッシュ（前方）

[Statedef 4000]
type = A
movetype = I
physics = N
ctrl = 1
anim = 110

[State 4000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,3

[State 4000, 加速]
type = VelSet
trigger1 = Time = 0
x = 4.5
y = 0

[State 4000, 残像]
type = AfterImage
trigger1 = time = 0
timegap  = 1
framegap = 3
Trans = Add1
length = 12
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
palmul = 1,1,1
time = 20

[State 4000, 回数の管理]
type = VarAdd
trigger1 = Time = 0
var(1) = 1

[State 4000, 終了]
type = ChangeState
trigger1 = Time > 20
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; 空中ダッシュ（後方）

[Statedef 4010]
type = A
movetype = I
physics = N
ctrl = 1
anim = 115

[State 4010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,3

[State 4010, 加速]
type = VelSet
trigger1 = Time = 0
x = -4.5
y = 0

[State 4010, 残像]
type = AfterImage
trigger1 = time = 0
timegap  = 1
framegap = 3
Trans = add1
length = 12
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
palmul = 1,1,1
time = 20

[State 4010, 回数の管理]
type = VarAdd
trigger1 = Time = 0
var(1) = 1

[State 4010, 終了]
type = ChangeState
trigger1 = Time > 20
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; リコイルガード（地上）

[Statedef 4020]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 130
poweradd = 150
sprpriority = 2

[State 4020, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4020, Just Defended]
type = Explod
trigger1 = Time = 0
anim = 11030
postype = p1
pos = 15,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
persistent = 0

[State 4020, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,1
persistent = 0

[State 4020, LifeAdd]
type = LifeAdd
trigger1 = Time = 0
value = var(33)
ignorehitpause = 1

[State 4020, Pause] 
type = Pause
trigger1 = Time = 0
time = 24
movetime = 24
ignorehitpause = 1
persistent = 1

[State 4020, CtrlSet]
type = CtrlSet
trigger1 = Time = 10
value = 1

[State 4020, 時間停止計測用ヘルパー]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Timer"
ID = 99999
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 0
stateno = 14020

[State 4020, 終了]
type = ChangeState
trigger1 = Time = 25
value = 130

;---------------------------------------------------------------------------
; リコイルガード（屈み）

[Statedef 4030]
type = C
movetype = I
physics = C
velset = 0,0
ctrl = 0
anim = 131
poweradd = 150
sprpriority = 2

[State 4030, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4030, Just Defended]
type = Explod
trigger1 = Time = 0
anim = 11030
postype = p1
pos = 20,-20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
persistent = 0

[State 4030, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,1
persistent = 0

[State 4030, LifeAdd]
type = LifeAdd
trigger1 = Time = 0
value = var(33)
ignorehitpause = 1

[State 4030, Pause] 
type = Pause
trigger1 = Time = 0
time = 24
movetime = 24
ignorehitpause = 1
persistent = 1

[State 4030, CtrlSet]
type = CtrlSet
trigger1 = Time = 10
value = 1

[State 4030, 時間停止計測用ヘルパー]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Timer"
ID = 99999
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 0
stateno = 14020

[State 4030, 終了]
type = ChangeState
trigger1 = Time = 25
value = 131

;---------------------------------------------------------------------------
; リコイルガード（空中）

[Statedef 4040]
type = A
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 132
poweradd = 150
sprpriority = 2

[State 4040, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4040, Just Defended]
type = Explod
trigger1 = Time = 0
anim = 11030
postype = p1
pos = 15,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
persistent = 0

[State 4040, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,1
persistent = 0

[State 4040, LifeAdd]
type = LifeAdd
trigger1 = Time = 0
value = var(33)
ignorehitpause = 1

[State 4040, Pause] 
type = Pause
trigger1 = Time = 0
time = 24
movetime = 24
ignorehitpause = 1
persistent = 1

[State 4040, CtrlSet]
type = CtrlSet
trigger1 = Time = 10
value = 1

[State 4040, 時間停止計測用ヘルパー]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Timer"
ID = 99999
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 0
stateno = 14020

[State 4040, 終了]
type = ChangeState
trigger1 = Time = 25
value = 132

;---------------------------------------------------------------------------
; アドバンシングガード（地上）

[Statedef 4050]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 130
sprpriority = 2

[State 4050, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4050, 押し戻し判定]
type = Helper
trigger1 = AnimElemTime(1) = 0
helpertype = normal
name = "Advancing_Guard"
ID = 60000
pos = ceil(P2Dist X - 20),0
ownpal = 1
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),3,0))
supermovetime = 0
stateno = 14050
size.xscale = 20
size.yscale = 1000

[State 4050, エフェクト]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 11030
postype = p1
pos = 15,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 4050, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s1,7

[State 4050, 終了]
type = ChangeState
trigger1 = Time = 20
value = 130

;---------------------------------------------------------------------------
; アドバンシングガード（しゃがみ）

[Statedef 4060]
type    = C
movetype= I
physics = C
velset = 0,0
ctrl = 0
anim = 131
sprpriority = 2

[State 4060, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4060, 押し戻し判定]
type = Helper
trigger1 = AnimElemTime(1) = 0
helpertype = normal
name = "Advancing_Guard"
ID = 60000
pos = ceil(P2Dist X - 20),0
ownpal = 1
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),3,0))
supermovetime = 0
stateno = 14050
size.xscale = 20
size.yscale = 1000

[State 4060, エフェクト]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 11030
postype = p1
pos = 20,-20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 4060, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s1,7

[State 4060, 終了]
type = ChangeState
trigger1 = Time = 20
value = 131

;---------------------------------------------------------------------------
; アドバンシングガード（空中）

[Statedef 4070]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 132
velset = 0,0
sprpriority = 2

[State 4070, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4070, 押し戻し判定]
type = Helper
trigger1 = AnimElemTime(1) = 0
helpertype = normal
name = "Advancing_Guard"
ID = 60000
pos = ceil(P2Dist X - 20),0
ownpal = 1
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),3,0))
supermovetime = 0
stateno = 14050
size.xscale = 20
size.yscale = 1000

[State 4070, エフェクト]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 11030
postype = p1
pos = 15,-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 4070, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s1,7

[State 4070, 終了]
type = ChangeState
trigger1 = Time = 20
value = 132

;---------------------------------------------------------------------------
; スーパージャンプ（ニュートラル）

[Statedef 4080]
type = A
movetype = I
physics = A
anim = 41
ctrl = 1
sprpriority = 2

[State 4080, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s2,5

[State 4080, 慣性と浮力]
type = VelSet
trigger1 = AnimElemTime(1) = 0
y = -17

[State 4080, 慣性]
type = VelSet
trigger1 = var(0) = 1
trigger1 = stateno = 50
trigger1 = command = "holdback"
x = -2

[State 4080, 慣性]
type = VelSet
trigger1 = var(0) = 0
trigger1 = stateno = 50
trigger1 = command = "holdfwd"
x = 2

[State 4080, 慣性]
type = VelAdd
trigger1 = command = "holdfwd"
x = 0.05

[State 4080, 慣性]
type = VelAdd
trigger1 = command = "holdback"
x = -0.05

[State 4080, 慣性フラグ]
type = VarSet
trigger1 = command = "holdback"
var(0) = 0

[State 4080, 慣性フラグ]
type = VarSet
trigger1 = command = "holdfwd"
var(0) = 1

;---------------------------------------------------------------------------
; スーパージャンプ（左）

[Statedef 4081]
type = A
movetype = I
physics = A
anim = 42
ctrl = 1
sprpriority = 2

[State 4081, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s2,5

[State 4081, 慣性と浮力]
type = VelSet
trigger1 = AnimElemTime(1) = 0
y = -17
x = 2

[State 4081, 慣性]
type = VelSet
trigger1 = var(0) = 1
trigger1 = stateno = 50
trigger1 = command = "holdback"
x = -2

[State 4081, 慣性]
type = VelSet
trigger1 = var(0) = 0
trigger1 = stateno = 50
trigger1 = command = "holdfwd"
x = 2

[State 4081, 慣性]
type = VelAdd
trigger1 = command = "holdfwd"
x = 0.05

[State 4081, 慣性]
type = VelAdd
trigger1 = command = "holdback"
x = -0.05

[State 4081, 慣性フラグ]
type = VarSet
trigger1 = command = "holdback"
var(0) = 0

[State 4081, 慣性フラグ]
type = VarSet
trigger1 = command = "holdfwd"
var(0) = 1

;---------------------------------------------------------------------------
; スーパージャンプ（右）

[Statedef 4082]
type = A
movetype = I
physics = A
anim = 41
ctrl = 1
sprpriority = 2

[State 4082, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s2,5

[State 4082, 慣性と浮力]
type = VelSet
trigger1 = AnimElemTime(1) = 0
y = -17
x = -2

[State 4082, 慣性]
type = VelSet
trigger1 = var(0) = 1
trigger1 = stateno = 50
trigger1 = command = "holdback"
x = -2

[State 4082, 慣性]
type = VelSet
trigger1 = var(0) = 0
trigger1 = stateno = 50
trigger1 = command = "holdfwd"
x = 2

[State 4082, 慣性]
type = VelAdd
trigger1 = command = "holdfwd"
x = 0.05

[State 4082, 慣性]
type = VelAdd
trigger1 = command = "holdback"
x = -0.05

[State 4082, 慣性フラグ]
type = VarSet
trigger1 = command = "holdback"
var(0) = 0

[State 4082, 慣性フラグ]
type = VarSet
trigger1 = command = "holdfwd"
var(0) = 1

;---------------------------------------------------------------------------
; 透明ダッシュ

[Statedef 4090]
type = S
physics = S
ctrl = 1
anim = 4090
sprpriority = 1

[State 4090, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4090, 接触判定]
type = PlayerPush
trigger1 = 1
value = 0

[State 4090, 速度指定]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 4090, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 4090, 透過処理]
type = PalFX
trigger1 = Time > 4
time = 1
mul = var(6),var(6),var(6)

[State 4090, 透過処理]
type = VarSet
trigger1 = Time = 0
var(6) = 250

[State 4090, 透過処理]
type = VarAdd
trigger1 = Time > 4
trigger1 = Time % 3 = 0
trigger1 = var(6) > 0
var(6) = -50

[State 4090, 終了へ]
type = ChangeState
trigger1 = Time > 30
value = 4091

[Statedef 4091]
type = S
physics = S
ctrl = 1
anim = 4091
sprpriority = 1

[State 4091, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 4091, 速度指定]
type = VelSet
trigger1 = Time < 20
x = const(velocity.run.fwd.x)

[State 4091, 透過処理]
type = PalFX
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(5) < 0
time = 1
mul = var(6),var(6),var(6)

[State 4091, 透過処理]
type = VarAdd
trigger1 = Time < 20
trigger1 = Time % 3 = 0
trigger1 = var(6) < 250
var(6) = 50

[State 4091, 終了処理]
type = VarSet
trigger1 = Time = 20
var(6) = 0

[State 4091, 無敵]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(5) <= 0
value = SCA
time = 1

[State 4091, 接触判定]
type = PlayerPush
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(5) <= 0
value = 0

[State 4091, 終了]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 透明ダッシュ（るてんのらせん使用時）

[Statedef 4095]
type = S
physics = S
ctrl = 1
anim = 4090
sprpriority = 1

[State 4095, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4095, 接触判定]
type = PlayerPush
trigger1 = 1
value = 0

[State 4095, 速度指定]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 4095, 透過処理]
type = VarRandom
trigger1 = Time = 0
v = 7
range = -40,30

[State 4095, ダミー生成]
type = Helper
trigger1 = Time = 1
helpertype = normal
name = "Mizuka_Dummy"
pos = var(7),0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 14095
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 4095, ダミー生成]
type = Helper
trigger1 = Time = 1
helpertype = normal
name = "Mizuka_Dummy"
pos = var(7),0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 14095
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 4095, ダミー生成]
type = Helper
trigger1 = Time = 1
helpertype = normal
name = "Mizuka_Dummy"
pos = var(7),0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 14095
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 4095, ダミー生成]
type = Helper
trigger1 = Time = 1
helpertype = normal
name = "Mizuka_Dummy"
pos = var(7),0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 14095
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 4095, ダミー生成]
type = Helper
trigger1 = Time = 1
helpertype = normal
name = "Mizuka_Dummy"
pos = var(7),0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 14095
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 4095, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 4095, 透過処理]
type = PalFX
trigger1 = Time > 4
time = 1
mul = var(6),var(6),var(6)

[State 4095, 透過処理]
type = VarSet
trigger1 = Time = 0
var(6) = 250

[State 4095, 透過処理]
type = VarAdd
trigger1 = Time > 4
trigger1 = Time % 3 = 0
trigger1 = var(6) > 0
var(6) = -50

[State 4095, 終了へ]
type = ChangeState
trigger1 = Time > 30
value = 4096

[Statedef 4096]
type = S
physics = S
ctrl = 1
anim = 4091
sprpriority = 1

[State 4096, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 4096, 速度指定]
type = VelSet
trigger1 = Time < 20
x = const(velocity.run.fwd.x)

[State 4096, 透過処理]
type = PalFX
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(5) < 0
time = 1
mul = var(6),var(6),var(6)

[State 4096, 透過処理]
type = VarAdd
trigger1 = Time < 20
trigger1 = Time % 3 = 0
trigger1 = var(6) < 250
var(6) = 50

[State 4096, 終了処理]
type = VarSet
trigger1 = Time = 20
var(6) = 0

[State 4096, 無敵]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(5) <= 0
value = SCA
time = 1

[State 4096, 接触判定]
type = PlayerPush
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(5) <= 0
value = 0

[State 4096, 終了]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 急降下

[Statedef 4100]
type = A
movetype = I
physics = A
anim = 46
ctrl = 1
sprpriority = 2

[State 4100, 慣性と浮力]
type = VelSet
trigger1 = Time = 0
x = 0
y = 7

[State 4100, 透過処理]
type = PalFX
trigger1 = Time = 0
time = 5
add = 255,255,255

[State 4100, ChangeState]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52
