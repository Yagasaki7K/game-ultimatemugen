;===========================================================================
;===========================================================================
; アシスト（月宮あゆ）
;===========================================================================
;===========================================================================

;---------------------------------------------------------------------------
; アシストあゆ（立ち）

[Statedef 20000]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 20000

[State 20000, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 20000, 勝利時消去]
type = AssertSpecial
trigger1 = root,stateno = 182
flag = Invisible

[State 20000, 無敵]
type = NotHitBy
trigger1 = root,var(54)%10 = 0
trigger1 = var(0) = 2
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20000, 無敵]
type = NotHitBy
trigger1 = root,var(54)%10 = 1
value = SCA
time = -1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20000, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 20100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20000, 接地]
type = PosSet
trigger1 = Time = 0
y = 0

[State 20000, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 20000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(20000)
trigger1 = var(0) = 0
trigger1 = root,var(50) = 0
value = 20005

[State 20000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(20000)
trigger1 = var(0) = 0
trigger1 = root,var(50) = 1
value = 20006

[State 20000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(20000)
trigger1 = var(0) = 0
trigger1 = root,var(50) = 2
value = 20007

[State 20000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(21000)
trigger1 = var(0) = 0
trigger1 = root,var(51) = 0
value = 20005

[State 20000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(21000)
trigger1 = var(0) = 0
trigger1 = root,var(51) = 1
value = 20006

[State 20000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(21000)
trigger1 = var(0) = 0
trigger1 = root,var(51) = 2
value = 20007

[State 20000, ChangeState]
type = ChangeState
trigger1 = Time > 5
trigger1 = var(0) = 1
value = 20003

[State 20000, ChangeState]
type = ChangeState
trigger1 = Time > 10
trigger1 = var(0) = 2
value = 20002

;---------------------------------------------------------------------------
; アシストあゆ（登場）

[Statedef 20001]
type = A
movetype = I
physics = N
ctrl = 0
velset = 12,-5.5
anim = 20001

[State 20001, 重力]
type = PosSet
trigger1 = Time = 0
y = 0

[State 20001, 重力]
type = VelAdd
trigger1 = time > 1
y = 0.45

[State 20001, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,3
abspan = 1

[State 20001, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20001, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 20001, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 20100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20001, 着地成功]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -5
value = 20000

;---------------------------------------------------------------------------
; アシストあゆ（退場）

[Statedef 20002]
type = A
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 20002

[State 20002, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20002, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 20002, 退場]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = -14
y = -3

[State 20002, 「ASSIST OK!」フラグ]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = isHelper(20000)
var(11) = 100

[State 20002, 「ASSIST OK!」フラグ]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = isHelper(21000)
var(12) = 100

[State 20002, 消滅]
type = DestroySelf
trigger1 = BackEdgeBodyDist < -50

;---------------------------------------------------------------------------
; アシストあゆ（挑発）

[Statedef 20003]
type = A
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 20003

[State 20003, 挑発フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 2

[State 20003, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 20003, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 20003, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 20100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20003, 無敵]
type = NotHitBy
trigger1 = root,var(54)%10 = 1
value = SCA
time = -1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20003, アシストリミッター]
type = ParentVarSet
trigger1 = var(2) != 0
var(19) = 1
ignorehitpause = 1

[State 20003, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 20000

;---------------------------------------------------------------------------
; アシストあゆ（α - しゃいにんアロー）

[Statedef 20005]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 20005
poweradd = 150

[State 20005, 攻撃フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 1

[State 20005, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 20005, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 20005, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 20005, 無敵]
type = NotHitBy
trigger1 = root,var(54)%10 = 0
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(5) <= 0
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20005, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 20100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20005, 上昇]
type = VelSet
trigger1 = AnimElemTime(5) = 0
x = 1.5
y = -10

[State 20005, 重力]
type = VelAdd
trigger1 = Time > 10
y = 0.5

[State 20005, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(5) = 0
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 20,8
getpower = 50,20
givepower = 25,10
pausetime = 15,15
guard.pausetime = 15,15
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -5,-7
guard.velocity = -3
air.velocity = -2,-7
airguard.velocity = -2,-3
fall.recover = 1
fall.recovertime = 0
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
down.cornerpush.veloff = 0
guard.cornerpush.veloff = -5
airguard.cornerpush.veloff = -5
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = root,var(54)/10000%10

[State 20005, しゃいにんアロー生成]
type = Helper
trigger1 = AnimElemTime(5) = 0
helpertype = normal
name = "Arrow"
pos = 20,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 20055
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 20005, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 20005, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 20005, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 20005, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,2
ignorehitpause = 1
channel = 4

[State 20005, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 20005, アシストリミッター]
type = ParentVarSet
trigger1 = movehit
trigger2 = var(2) = 1
var(19) = 1
ignorehitpause = 1

[State 20005, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 20005, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 20005, 着地成功]
type = ChangeState
trigger1 = Time > 40
trigger1 = Vel Y > 0 && Pos Y >= -5
value = 20000

;---------------------------------------------------------------------------
; アシストあゆ（α - しゃいにんアロー・羽）

[Statedef 20055]
type = S
movetype = A
physics = N
anim = 20009
velset = 4,-12
ctrl = 0
sprpriority = 5

[State 20055, 補正の適用]
type = AttackMulSet
trigger1 = Time = 0
value = root,fvar(0)
ignorehitpause = 1

[State 20055, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 20055, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,11

[State 20055, Hitdef]
type = Hitdef
trigger1 = Time % 3 = 0
trigger1 = HitCount < 8
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 10,4
getpower = 30,10
givepower = 10,5
pausetime = 3,0
guard.pausetime = 3,0
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -3,-13
guard.velocity = -3
air.velocity = -3,-12.5
airguard.velocity = -3,-13
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = 1

[State 20055, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-5
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 20055, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-5
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 20055, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 20055, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,2
ignorehitpause = 1
channel = 4

[State 20055, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 20055, アシストリミッター]
type = ParentVarSet
trigger1 = movehit
var(2) = 1
ignorehitpause = 1

[State 20055, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 20055, 終了]
type = DestroySelf
trigger1 = ScreenPos Y <= -300
trigger2 = Time > 100

;---------------------------------------------------------------------------
; アシストあゆ（β - そこの人どいて～）

[Statedef 20006]
type = S
movetype = A
physics = N
poweradd = 150
anim = 20006
ctrl = 0

[State 20006, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 20100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20006, 攻撃フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 1

[State 20006, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 20006, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 20006, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 20006, 突進]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = 6

[State 20006, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 70,20
getpower = 100,50
givepower = 50,25
pausetime = 3,6
guard.pausetime = 3,6
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -6,-3
guard.velocity = -6
air.velocity = -6,-4
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 20006, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 20006, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 20006, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 20006, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,2
ignorehitpause = 1
channel = 4

[State 20006, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 20006, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 20006, アシストリミッター]
type = ParentVarSet
trigger1 = movehit
var(19) = 1
ignorehitpause = 1

[State 20006, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 20006, 地面に激突]
type = ChangeState
trigger1 = movecontact
trigger2 = AnimTime = 0
value = 20056

;---------------------------------------------------------------------------
; アシストあゆ（β -そこの人どいて～・激突）

[Statedef 20056]
type = S
movetype = A
physics = N
anim = 20056
ctrl = 0

[State 20056, ブレーキ]
type = VelAdd
trigger1 = Vel X > 0
x = -0.2

[State 20056, 停止]
type = VelSet
trigger1 = Vel X <= 0
x = 0

[State 20056, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s2,4
abspan = 1

[State 20056, Effect]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 11020
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 20056, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(4) = 0
time = 10
freq = 80
ampl = 4

[State 20056, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = S,SA
hitflag = MAFD
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 70,20
getpower = 100,50
givepower = 50,25
pausetime = 3,6
guard.pausetime = 3,6
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -6,-3
guard.velocity = -6
air.velocity = -6,-4
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 20056, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 20056, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 20056, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 20056, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,2
ignorehitpause = 1
channel = 4

[State 20056, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 20056, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 20056, アシストリミッター]
type = ParentVarSet
trigger1 = movehit
var(19) = 1
ignorehitpause = 1

[State 20056, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 20056, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 20000

;---------------------------------------------------------------------------
; アシストあゆ（γ - えいえんのこうりん）

[Statedef 20007]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 20007
poweradd = 150

[State 20007, 攻撃フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 1

[State 20007, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 20007, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 20007, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 20007, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 20100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20007, えいえんのこうりん生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Ring"
pos = 20,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 20057
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 20007, アシストリミッター]
type = ParentVarSet
trigger1 = var(2) != 0
var(19) = 1
ignorehitpause = 1

[State 20007, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 20000

;---------------------------------------------------------------------------
; アシストあゆ（γ - えいえんのこうりん・光の輪）

[Statedef 20057]
type = A
movetype = A
physics = N
ctrl = 0
velset = 8,0
anim = 20020

[State 20057, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 20010
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = 50
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 20057, 減速]
type = VelAdd
trigger1 = Vel X > 0
x = -0.25

[State 20057, Hitdef]
type = Hitdef
trigger1 = Time % 6 = 0
trigger1 = HitCount < 8
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 12,5
getpower = 30,10
givepower = 10,5
pausetime = 0,0
guard.pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -3,0
guard.velocity = -2
air.velocity = -1,-1
airguard.velocity = -1,-2
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = root,var(54)/10000%10

[State 20057, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.4,0.4

[State 20057, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.4,0.4

[State 20057, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-20
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 20057, アシストリミッター]
type = ParentVarSet
trigger1 = movehit
var(2) = 1
ignorehitpause = 1

[State 20057, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,2
ignorehitpause = 1
channel = 4

[State 20057, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 20057, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 20057, 終了]
type = DestroySelf
trigger1 = Time > 50

;---------------------------------------------------------------------------
; アシストあゆ（ダメージ）

[Statedef 20100]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 20100

[State 20100, ダメージフラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 2

[State 20100, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 20100, カメラ固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 20100, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 20100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20100, ポーズフラグ]
type = VarSet
trigger1 = Time = 0
var(1) = GetHitVar(hitshaketime)

[State 20100, 重力]
type = VarAdd
trigger1 = var(1) > 0
var(1) = -1

[State 20100, 固定]
type = PosFreeze
trigger1 = var(1) > 0
value = 1

[State 20100, アニメ変更]
type = ChangeState
trigger1 = var(1) = 0
value = 20101

[Statedef 20101]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 20101

[State 20101, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 20101, カメラ固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 20101, 重力]
type = VelSet
trigger1 = Time = 0
x = Facing*GetHitVar(xvel)
y = GetHitVar(fall.yvel)

[State 20101, 重力]
type = VelAdd
trigger1 = 1
y = 0.45

[State 20101, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 20100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20101, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 20101, 地面に激突]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 20
value = 20102

[Statedef 20102]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 20102

[State 20102, 接地]
type = PosSet
trigger1 = Time = 0
y = 0

[State 20102, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 20102, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,4
abspan = 1

[State 20102, Effect]
type = Explod
trigger1 = Time = 0
anim = 11020
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 20102, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 10
freq = 80
ampl = 4

[State 20102, 起き上がりへ]
type = ChangeState
trigger1 = Time >= 10
value = 20103

[Statedef 20103]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 20103

[State 20103, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 20103, 立ち上がりへ]
type = ChangeState
trigger1 = AnimTime = 0
value = 20000

;===========================================================================
;===========================================================================
; アシスト（神尾観鈴）
;===========================================================================
;===========================================================================

;---------------------------------------------------------------------------
; アシスト観鈴（立ち）

[Statedef 21000]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 21000

[State 21000, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 21000, 勝利時消去]
type = AssertSpecial
trigger1 = root,stateno = 182
flag = Invisible

[State 21000, 無敵]
type = NotHitBy
triggerall = root,var(54)%10 = 0
trigger1 = var(0) = 0
trigger2 = var(0) = 2
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21000, 無敵]
type = NotHitBy
trigger1 = root,var(54)%10 = 1
value = SCA
time = -1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21000, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 21100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21000, 接地]
type = PosSet
trigger1 = Time = 0
y = 0

[State 21000, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 21000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(20000)
trigger1 = var(0) = 0
trigger1 = root,var(50) = 0
value = 21005

[State 21000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(20000)
trigger1 = var(0) = 0
trigger1 = root,var(50) = 1
value = 21006

[State 21000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(20000)
trigger1 = var(0) = 0
trigger1 = root,var(50) = 2
value = 21007

[State 21000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(21000)
trigger1 = var(0) = 0
trigger1 = root,var(51) = 0
value = 21005

[State 21000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(21000)
trigger1 = var(0) = 0
trigger1 = root,var(51) = 1
value = 21006

[State 21000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(21000)
trigger1 = var(0) = 0
trigger1 = root,var(51) = 2
value = 21007

[State 21000, ChangeState]
type = ChangeState
trigger1 = Time > 5
trigger1 = var(0) = 1
value = 21003

[State 21000, ChangeState]
type = ChangeState
trigger1 = Time > 10
trigger1 = var(0) = 2
value = 21002

;---------------------------------------------------------------------------
; アシスト観鈴（登場）

[Statedef 21001]
type = A
movetype = I
physics = N
ctrl = 0
velset = 12,-5.5
anim = 21001

[State 21001, そら]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "sora"
pos = -50,-100
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 21060
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 21001, 重力]
type = PosSet
trigger1 = Time = 0
y = 0

[State 21001, 重力]
type = VelAdd
trigger1 = time > 1
y = 0.45

[State 21001, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,3
abspan = 1

[State 21001, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21001, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 21001, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 21100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21001, 着地成功]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -5
value = 21000

;---------------------------------------------------------------------------
; アシスト観鈴（退場）

[Statedef 21002]
type = A
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 21002

[State 21002, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21002, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 21002, 退場]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = -14
y = -3

[State 21002, 消滅]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = isHelper(20000)
var(11) = 100

[State 21002, 「ASSIST OK!」フラグ]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = isHelper(21000)
var(12) = 100

[State 21002, 消滅]
type = DestroySelf
trigger1 = BackEdgeBodyDist < -50

;---------------------------------------------------------------------------
; アシスト観鈴（挑発）

[Statedef 21003]
type = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 21003

[State 21003, 挑発フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 2

[State 21003, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 21003, アシストリミッター]
type = ParentVarSet
trigger1 = var(2) != 0
var(19) = 1
ignorehitpause = 1

[State 21003, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 21003, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 21100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21003, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 21000

;---------------------------------------------------------------------------
; アシスト観鈴（α - どろり濃厚）

[Statedef 21005]
type = S
movetype = A
physics = S
ctrl = 0
anim = 21005
poweradd = 150
sprpriority = 2

[State 21005, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 21100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21005, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 21005, 攻撃フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 1

[State 21005, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 21005, 補正の適用]
type = AttackMulSet
trigger1 = Time = 0
value = root,fvar(0)
ignorehitpause = 1

[State 21005, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,13

[State 21005, どろり濃厚生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Misuzu_Net"
pos = 30,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 21055
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 21005, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 21000

;---------------------------------------------------------------------------
; アシスト観鈴（β - そらアタック）

[Statedef 21006]
type = S
movetype = A
physics = S
ctrl = 0
anim = 21006
poweradd = 150
sprpriority = 2

[State 21006, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 21100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21006, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 21006, 攻撃フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 1

[State 21006, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 21006, そら始動]
type = VarSet
trigger1 = AnimElemTime(6) = 0
var(10) = 1
ignorehitpause = 1

[State 21006, アシストリミッター]
type = ParentVarSet
trigger1 = var(2) != 0
var(19) = 1
ignorehitpause = 1

[State 21006, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 21000

;---------------------------------------------------------------------------
; アシスト観鈴（γ - 翼）

[Statedef 21007]
type = S
movetype = A
physics = N
poweradd = 150
anim = 21007
ctrl = 0

[State 21007, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 21100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21007, 攻撃フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 1

[State 21007, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 21007, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 21007, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 21007, 突進]
type = VelSet
trigger1 = AnimElemTime(9) = 0
x = 5
y = -6

[State 21007, 突進]
type = VelAdd
trigger1 = AnimElemTime(9) > 0
y = 0.45

[State 21007, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(11) = 0
value = s3,12

[State 21007, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SA
hitflag = MAF
guardflag = HA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 100,20
getpower = 100,50
givepower = 20,10
pausetime = 8,10
guard.pausetime = 8,10
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-60
hitsound = -1
guardsound = -1
ground.hittime = 15
ground.slidetime = 15
guard.hittime = 15
air.hittime = 15
guard.ctrltime = 15
airguard.ctrltime = 15
ground.velocity = -4,-2
guard.velocity = -4
air.velocity = -4,-2
airguard.velocity = -1,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 21007, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 21007, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 21007, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 21007, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,8
ignorehitpause = 1
channel = 4

[State 21007, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 21007, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 21007, アシストリミッター]
type = ParentVarSet
trigger1 = movehit
var(19) = 1
ignorehitpause = 1

[State 21007, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 21007, 着地成功]
type = ChangeState
trigger1 = Time > 30
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 21000

;---------------------------------------------------------------------------
; アシスト観鈴（どろり濃厚・潜伏中）

[Statedef 21055]
type = A
movetype = I
physics = N
velset = 0,0
anim = 21019
ctrl = 0
sprpriority = 5

[State 21055, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 21057
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 20000, 無敵]
type = NotHitBy
trigger1 = Time < 40
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21055, 終了]
type = ChangeState
trigger1 = Time > 60
trigger1 = (ceil(P2Dist X) = [-50,50]) && (ceil(P2Dist Y) = [-50,50])
trigger2 = Time > 480
value = 21056

;---------------------------------------------------------------------------
; アシスト観鈴（どろり濃厚・出現）

[Statedef 21056]
type = A
movetype = A
physics = N
velset = 0,0
anim = 21009
ctrl = 0
sprpriority = 5

[State 21056, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 21056, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 21056, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 50,10
getpower = 200,100
givepower = 50,20
pausetime = 20,60
guard.pausetime = 20,60
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 30
ground.slidetime = 30
guard.hittime = 30
air.hittime = 30
guard.ctrltime = 30
airguard.ctrltime = 30
ground.velocity = 0,-5
guard.velocity = 0
air.velocity = 0,-4
airguard.velocity = 0,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 21056, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5
persistent = 0

[State 21056, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-20
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5
persistent = 0

[State 21056, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-20
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1
persistent = 0

[State 21056, 終了]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; アシスト観鈴（どろり濃厚・破壊）

[Statedef 21057]
type = A
movetype = I
physics = N
velset = 0,0
anim = 99999
ctrl = 0
sprpriority = 5

[State 21057, 終了]
type = DestroySelf
trigger1 = Time = 1

;---------------------------------------------------------------------------
; アシスト観鈴（そら・待機中）

[Statedef 21060]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21010
sprpriority = 2

[State 21060, 位置固定]
type = BindtoParent
trigger1 = Time < 30
time = 1
pos = -40,-80

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist X = 40
x = 0

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist X = [41,45]
x = 0.5

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist X = [46,60]
x = 1.0

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist X = [61,75]
x = 1.6

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist X = [76,90]
x = 2.2

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist X > 90
x = 2.8

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist X = [34,39]
x = -0.5

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist X = [20,34]
x = -1.0

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist X = [5,19]
x = -1.6

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist X = [-10,5]
x = -2.2

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist X < -10
x = -12

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist Y = 80
y = 0

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist Y = [81,85]
y = 0.5

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist Y = [86,95]
y = 1.0

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist Y = [96,110]
y = 1.5

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist Y > 110
y = 2.0

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist Y = [75,79]
y = -0.5

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist Y = [65,74]
y = -1.0

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist Y = [50,64]
y = -1.5

[State 21060, 速度指定]
type = VelSet
trigger1 = ParentDist Y < 50
y = -2.0

[State 21060, 攻撃ステートへ]
type = ChangeState
trigger1 = parent,var(10) = 1
value = 21061

[State 21060, 消去]
type = DestroySelf
trigger1 = Time > 50
trigger1 = BackEdgeBodyDist < -60

;---------------------------------------------------------------------------
; アシスト観鈴（そら・下降）

[Statedef 21061]
type = A
movetype = I
physics = N
ctrl = 0
anim = 21011
velset = 0,0
sprpriority = 2

[State 21061, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,18
persistent = 0

[State 21061, 下降]
type = VelAdd
trigger1 = 1
y = 0.5

[State 21061, 攻撃ステートへ]
type = ChangeState
trigger1 = Pos Y >= -10
value = 21062

;---------------------------------------------------------------------------
; アシスト観鈴（そら・攻撃）

[Statedef 21062]
type = A
movetype = A
physics = N
ctrl = 0
anim = 21012
velset = 0,0
sprpriority = 2

[State 21062, 補正の適用]
type = AttackMulSet
trigger1 = Time = 0
value = root,fvar(0)
ignorehitpause = 1

[State 21062, 速度指定]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 13

[State 21062, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,19
persistent = 0

[State 21062, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(2) = 0
attr = A,SP
hitflag = MAFD
guardflag = LA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 100,20
getpower = 100,30
givepower = 50,20
pausetime = 0,3
guard.pausetime = 0,3
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -4,-3
guard.velocity = -4
air.velocity = -4,-5
airguard.velocity = -3,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 22005, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5
persistent = 0

[State 22005, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5
persistent = 0

[State 22005, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1
persistent = 0

[State 21062, アシストリミッター]
type = ParentVarSet
trigger1 = movehit
var(2) = 1
ignorehitpause = 1
persistent = 0

[State 21062, 消去]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -100

;---------------------------------------------------------------------------
; アシスト観鈴（ダメージ）

[Statedef 21100]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 21100

[State 21100, ダメージフラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 2

[State 21100, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 21100, カメラ固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 21100, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 21100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21100, ポーズフラグ]
type = VarSet
trigger1 = Time = 0
var(1) = GetHitVar(hitshaketime)

[State 21100, 重力]
type = VarAdd
trigger1 = var(1) > 0
var(1) = -1

[State 21100, 固定]
type = PosFreeze
trigger1 = var(1) > 0
value = 1

[State 21100, アニメ変更]
type = ChangeState
trigger1 = var(1) = 0
value = 21101

[Statedef 21101]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 21101

[State 21101, カメラ固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 21101, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 21101, 重力]
type = VelSet
trigger1 = Time = 0
x = Facing*GetHitVar(xvel)
y = GetHitVar(fall.yvel)

[State 21101, 重力]
type = VelAdd
trigger1 = 1
y = 0.45

[State 21101, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 21100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 21101, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 21101, 地面に激突]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 25
value = 21102

[Statedef 21102]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 21102

[State 21102, 着地処理]
type = PosSet
trigger1 = Time = 0
y = 0

[State 21102, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 21102, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,4
abspan = 1

[State 21102, Effect]
type = Explod
trigger1 = Time = 0
anim = 11020
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 21102, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 10
freq = 80
ampl = 4

[State 21102, 起き上がりへ]
type = ChangeState
trigger1 = Time >= 14
value = 21103

[Statedef 21103]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 21103

[State 21103, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 21103, 立ち上がりへ]
type = ChangeState
trigger1 = AnimTime = 0
value = 21000

;===========================================================================
;===========================================================================
; アシスト（神奈備命）
;===========================================================================
;===========================================================================

;---------------------------------------------------------------------------
; アシスト神奈（立ち）

[Statedef 22000]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 22000

[State 22000, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 22000, 勝利時消去]
type = AssertSpecial
trigger1 = root,stateno = 182
flag = Invisible

[State 22000, 無敵]
type = NotHitBy
triggerall = root,var(54)%10 = 0
trigger1 = var(0) = 0
trigger2 = var(0) = 2
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22000, 無敵]
type = NotHitBy
trigger1 = root,var(54)%10 = 1
value = SCA
time = -1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22000, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 22100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22000, 接地]
type = PosSet
trigger1 = Time = 0
y = 0

[State 22000, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 22000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(20000)
trigger1 = var(0) = 0
trigger1 = root,var(50) = 0
value = 22005

[State 22000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(20000)
trigger1 = var(0) = 0
trigger1 = root,var(50) = 1
value = 22006

[State 22000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(20000)
trigger1 = var(0) = 0
trigger1 = root,var(50) = 2
value = 22007

[State 22000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(21000)
trigger1 = var(0) = 0
trigger1 = root,var(51) = 0
value = 22005

[State 22000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(21000)
trigger1 = var(0) = 0
trigger1 = root,var(51) = 1
value = 22006

[State 22000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(21000)
trigger1 = var(0) = 0
trigger1 = root,var(51) = 2
value = 22007

[State 22000, ChangeState]
type = ChangeState
trigger1 = Time > 5
trigger1 = var(0) = 1
value = 22003

[State 22000, ChangeState]
type = ChangeState
trigger1 = Time > 10
trigger1 = var(0) = 2
value = 22002

;---------------------------------------------------------------------------
; アシスト神奈（登場）

[Statedef 22001]
type = A
movetype = I
physics = N
ctrl = 0
velset = 12,-5.5
anim = 22001

[State 22001, 重力]
type = PosSet
trigger1 = Time = 0
y = 0

[State 22001, 重力]
type = VelAdd
trigger1 = time > 1
y = 0.45

[State 22001, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,3
abspan = 1

[State 22001, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22001, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 22001, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 22100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22001, 着地成功]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -5
value = 22000

;---------------------------------------------------------------------------
; アシスト神奈（退場）

[Statedef 22002]
type = A
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 22002

[State 22002, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22002, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 22002, 退場]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = -16
y = -3

[State 22002, 「ASSIST OK!」フラグ]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = isHelper(20000)
var(11) = 100

[State 22002, 「ASSIST OK!」フラグ]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = isHelper(21000)
var(12) = 100

[State 22002, 消滅]
type = DestroySelf
trigger1 = BackEdgeBodyDist < -50

;---------------------------------------------------------------------------
; アシスト神奈（挑発）

[Statedef 22003]
type = A
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 22003

[State 22003, 挑発フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 2

[State 22003, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 22003, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 22003, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 22100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22003, アシストリミッター]
type = ParentVarSet
trigger1 = var(2) != 0
var(19) = 1
ignorehitpause = 1

[State 22003, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 22000

;---------------------------------------------------------------------------
; アシスト神奈（α - 空翔ケル二重ノ螺旋）

[Statedef 22005]
type = S
movetype = A
physics = N
ctrl = 0
anim = 22005
poweradd = 150
sprpriority = 2

[State 22005, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 22005, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 22100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22005, 無敵]
type = NotHitBy
trigger1 = root,var(54)%10 = 0
trigger1 = Time < 12
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22005, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 22005, 攻撃フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 1

[State 22005, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 22005, 上昇]
type = VelSet
trigger1 = AnimElemTime(2) = 0
y = -5

[State 22005, 重力]
type = VelAdd
trigger1 = Time > 10
y = 0.5

[State 22005, エフェクト]
type = Explod
trigger1 = AnimElemTime(3) = 1
anim = 11050
postype = p1
pos = 0,30
facing = 1
bindtime = 1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 22005, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(4) = 0
trigger3 = AnimElemTime(5) = 0
attr = A,SA
hitflag = MAFD
guardflag = MA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = 35,10
getpower = 50,20
givepower = 20,10
pausetime = 3,5
guard.pausetime = 3,5
sparkno = S-1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = 0,-8
guard.velocity = -5
air.velocity = 0,-7
airguard.velocity = -3,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 30
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 22005, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 22005, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 22005, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 22005, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,2
ignorehitpause = 1
channel = 4

[State 22005, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 22005, アシストリミッター]
type = ParentVarSet
trigger1 = movehit
var(19) = 1
ignorehitpause = 1

[State 22005, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 22005, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 22005, 着地成功]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0 && Pos Y >= -5
value = 22000

;---------------------------------------------------------------------------
; アシスト神奈（β - 草薙シ光ノ刃）

[Statedef 22006]
type = S
movetype = A
physics = S
ctrl = 0
anim = 22006
poweradd = 150
sprpriority = 2

[State 22006, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 22100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22006, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 22006, 攻撃フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 1

[State 22006, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 22006, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,17

[State 22006, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 70,20
getpower = 50,25
givepower = 20,15
pausetime = 3,5
guard.pausetime = 3,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
guard.ctrltime = 18
airguard.ctrltime = 18
ground.velocity = -4,-5
guard.velocity = -4
air.velocity = -4,-5
airguard.velocity = -3,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = root,var(54)/10000%10

[State 22006, エフェクト]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 22012
postype = p1
pos = -10,-40
facing = 1
vel = 40,0
bindtime = 1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 22006, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 22006, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 22006, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 22006, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 22006, アシストリミッター]
type = ParentVarSet
trigger1 = movehit
var(19) = 1
ignorehitpause = 1

[State 20006, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 22006, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 22003

;---------------------------------------------------------------------------
; アシスト神奈（γ - 天ヲ仰グ月ノ石）

[Statedef 22007]
type = S
movetype = A
physics = S
ctrl = 0
anim = 22007
poweradd = 150
sprpriority = 2

[State 22007, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 22100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22007, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 22007, 攻撃フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 1

[State 22007, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 22007, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,16

[State 22007, 月の石生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Moon_Stone"
pos = ceil(P2Dist X),0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 22057
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 22007, アシストリミッター]
type = ParentVarSet
trigger1 = var(2) != 0
var(19) = 1
ignorehitpause = 1

[State 22007, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 22003

;---------------------------------------------------------------------------
; アシスト神奈（月の石）

[Statedef 22057]
type = S
movetype = A
physics = N
velset = 0,0
anim = 22009
ctrl = 0
sprpriority = 5

[State 22057, 補正の適用]
type = AttackMulSet
trigger1 = Time = 0
value = root,fvar(0)
ignorehitpause = 1

[State 22057, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(7) = 6
attr = S,SA
hitflag = MAFD
guardflag = MA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = 50,15
getpower = 75,50
givepower = 50,20
pausetime = 0,3
guard.pausetime = 0,3
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = 0,-9
guard.velocity = -4
air.velocity = 0,-10.5
airguard.velocity = -3,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 20
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = root,var(54)/10000%10
sprpriority = 3

[State 22057, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-5
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 22057, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-5
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 22057, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 22057, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,2
ignorehitpause = 1
channel = 4

[State 22057, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 22057, アシストリミッター]
type = ParentVarSet
trigger1 = movehit
var(2) = 1
ignorehitpause = 1

[State 20057, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 22057, 終了]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; アシスト神奈（ダメージ）

[Statedef 22100]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 22100

[State 22100, ダメージフラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 2

[State 22100, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 22100, カメラ固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 22100, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 22100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22100, ポーズフラグ]
type = VarSet
trigger1 = Time = 0
var(1) = GetHitVar(hitshaketime)

[State 22100, 重力]
type = VarAdd
trigger1 = var(1) > 0
var(1) = -1

[State 22100, 固定]
type = PosFreeze
trigger1 = var(1) > 0
value = 1

[State 22100, アニメ変更]
type = ChangeState
trigger1 = var(1) = 0
value = 22101

[Statedef 22101]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 22101

[State 22101, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 22101, カメラ固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 22101, 重力]
type = VelSet
trigger1 = Time = 0
x = Facing*GetHitVar(xvel)
y = GetHitVar(fall.yvel)

[State 22101, 重力]
type = VelAdd
trigger1 = 1
y = 0.45

[State 22101, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 22100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 22101, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 22101, 地面に激突]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 25
value = 22102

[Statedef 22102]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 22102

[State 22102, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 22102, 着地処理]
type = PosSet
trigger1 = Time = 0
y = 0

[State 22102, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,4
abspan = 1

[State 22102, Effect]
type = Explod
trigger1 = Time = 0
anim = 11020
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 22102, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 10
freq = 80
ampl = 4

[State 22102, 起き上がりへ]
type = ChangeState
trigger1 = Time >= 20
value = 22103

[Statedef 22103]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 22103

[State 22103, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 22103, 立ち上がりへ]
type = ChangeState
trigger1 = AnimTime = 0
value = 22000

;===========================================================================
;===========================================================================
; アシスト（長森瑞佳）
;===========================================================================
;===========================================================================

;---------------------------------------------------------------------------
; アシスト瑞佳（立ち）

[Statedef 23000]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0
anim = 23000

[State 23000, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 23000, 勝利時消去]
type = AssertSpecial
trigger1 = root,stateno = 182
flag = Invisible

[State 23000, 無敵]
type = NotHitBy
triggerall = root,var(54)%10 = 0
trigger1 = var(0) = 0
trigger2 = var(0) = 2
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23000, 無敵]
type = NotHitBy
trigger1 = root,var(54)%10 = 1
value = SCA
time = -1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23000, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 23100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23000, 接地]
type = PosSet
trigger1 = Time = 0
y = 0

[State 23000, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 23000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(20000)
trigger1 = var(0) = 0
trigger1 = root,var(50) = 0
value = 23005

[State 23000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(20000)
trigger1 = var(0) = 0
trigger1 = root,var(50) = 1
value = 23006

[State 23000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(20000)
trigger1 = var(0) = 0
trigger1 = root,var(50) = 2
value = 23007

[State 23000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(21000)
trigger1 = var(0) = 0
trigger1 = root,var(51) = 0
value = 23005

[State 23000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(21000)
trigger1 = var(0) = 0
trigger1 = root,var(51) = 1
value = 23006

[State 23000, ChangeState]
type = ChangeState
trigger1 = Time > 1
trigger1 = isHelper(21000)
trigger1 = var(0) = 0
trigger1 = root,var(51) = 2
value = 23007

[State 23000, ChangeState]
type = ChangeState
trigger1 = Time > 5
trigger1 = var(0) = 1
value = 23003

[State 23000, ChangeState]
type = ChangeState
trigger1 = Time > 10
trigger1 = var(0) = 2
value = 23002

;---------------------------------------------------------------------------
; アシスト瑞佳（登場）

[Statedef 23001]
type = A
movetype = I
physics = N
ctrl = 0
velset = 12,-5.5
anim = 23001

[State 23001, 重力]
type = PosSet
trigger1 = Time = 0
y = 0

[State 23001, 重力]
type = VelAdd
trigger1 = time > 1
y = 0.45

[State 23001, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,3
abspan = 1

[State 23001, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23001, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 23001, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 23100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23001, 着地成功]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -5
value = 23000

;---------------------------------------------------------------------------
; アシスト瑞佳（退場）

[Statedef 23002]
type = A
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 23002

[State 23002, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23002, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 23002, 退場]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = -14
y = -3

[State 23002,「ASSIST OK!」フラグ]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = isHelper(20000)
var(11) = 100

[State 23002,「ASSIST OK!」フラグ]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = isHelper(21000)
var(12) = 100

[State 23002, 消滅]
type = DestroySelf
trigger1 = BackEdgeBodyDist < -50

;---------------------------------------------------------------------------
; アシスト瑞佳（挑発）

[Statedef 23003]
type = A
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 23003

[State 23003, 挑発フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 2

[State 23003, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 23003, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 23003, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 23100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23003, アシストリミッター]
type = ParentVarSet
trigger1 = var(2) != 0
var(19) = 1
ignorehitpause = 1

[State 23003, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 23000

;---------------------------------------------------------------------------
; アシスト瑞佳（α - スロウ＆キーイング）

[Statedef 23005]
type = S
movetype = A
physics = S
ctrl = 0
anim = 23005
poweradd = 150
sprpriority = 2

[State 23005, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 23100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23005, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 23005, カメラ固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 23005, 攻撃フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 1

[State 23005, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 23005, 補正の適用]
type = AttackMulSet
trigger1 = Time = 0
value = root,fvar(0)
ignorehitpause = 1

[State 23005, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s3,22

[State 23005, 弓生成]
type = Helper
trigger1 = AnimElemTime(5) = 0
helpertype = normal
name = "Arrow"
pos = 30,-60
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 23055
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 23005, 終了]
type = ChangeState
trigger1 = var(5) = 1
value = 23000

;---------------------------------------------------------------------------
; アシスト瑞佳（α - スロウ＆キーイング（弓））

[Statedef 23055]
type = A
movetype = A
physics = N
ctrl = 0
anim = 23012
poweradd = 150
velset = 14,0
sprpriority = 2

[State 23055, 補正の適用]
type = AttackMulSet
trigger1 = Time = 0
value = root,fvar(0)
ignorehitpause = 1

[State 23055, 速度指定]
type = VelAdd
trigger1 = 1
x = -0.35

[State 23055, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = medium
fall.animtype = medium
ground.type = high
air.type = high
damage = 50,20
getpower = 50,20
givepower = 30,10
pausetime = 0,6
guard.pausetime = 0,6
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -3,0
guard.velocity = -4
air.velocity = -4,-2
airguard.velocity = -3,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = root,var(54)/10000%10

[State 23055, Projectile]
type = Projectile
trigger1 = 1
attr = C,HP
hitflag = A
guardflag = MA
animtype = medium
air.animtype = medium
fall.animtype = medium
ground.type = high
air.type = high
damage = 0,0
getpower = 0,0
givepower = 0,0
pausetime = 0,0
guard.pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.hittime = 0
ground.slidetime = 0
guard.hittime = 0
air.hittime = 0
guard.ctrltime = 0
airguard.ctrltime = 0
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = root,var(54)/10000%10
affectteam = F
projanim = 23052
projhitanim = -1
projremanim = -1
projcancelanim = -1
velocity = 0,0
remvelocity = 0,0
bindtime = -1
projhits = 1
projpriority = 0
projsprpriority = -7
projedgebound = 0
projstagebound = 0
offset = 0,0
postype = p1
projshadow = 0,0,0
projremovetime = 1

[State 23055, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5
persistent = 0

[State 23055, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5
persistent = 0

[State 23055, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1
persistent = 0

[State 23055, ChangeState]
type = ChangeState
trigger1 = Time > 0
trigger1 = Vel X <= 0
value = 23056

;---------------------------------------------------------------------------
; アシスト瑞佳（α - スロウ＆キーイング（弓・帰り））

[Statedef 23056]
type = A
movetype = A
physics = N
ctrl = 0
anim = 23012
poweradd = 150
velset = 0,0
sprpriority = 2

[State 23056, 速度指定]
type = VelAdd
trigger1 = 1
x = -0.35

[State 23056, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = medium
fall.animtype = medium
ground.type = high
air.type = high
damage = 50,20
getpower = 50,20
givepower = 30,10
pausetime = 0,6
guard.pausetime = 0,6
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -3,0
guard.velocity = -4
air.velocity = -4,-2
airguard.velocity = -3,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = root,var(54)/10000%10

[State 23056, Projectile]
type = Projectile
trigger1 = 1
attr = C,HP
hitflag = A
guardflag = MA
animtype = medium
air.animtype = medium
fall.animtype = medium
ground.type = high
air.type = high
damage = 0,0
getpower = 0,0
givepower = 0,0
pausetime = 0,0
guard.pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.hittime = 0
ground.slidetime = 0
guard.hittime = 0
air.hittime = 0
guard.ctrltime = 0
airguard.ctrltime = 0
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = root,var(54)/10000%10
affectteam = F
projanim = 23052
projhitanim = -1
projremanim = -1
projcancelanim = -1
velocity = 0,0
remvelocity = 0,0
bindtime = -1
projhits = 1
projpriority = 0
projsprpriority = -7
projedgebound = 0
projstagebound = 0
offset = 0,0
postype = p1
projshadow = 0,0,0
projremovetime = 1

[State 23056, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5
persistent = 0

[State 23056, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5
persistent = 0

[State 23056, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1
persistent = 0

[State 23056, PlaySnd]
type = PlaySnd
trigger1 = ParentDist X > -15
trigger1 = ParentDist Y = [25,60]
value = s1,12

[State 23056, キャッチフラグを立てる]
type = ParentVarSet
trigger1 = ParentDist X > -15
trigger1 = ParentDist Y = [25,60]
var(5) = 1

[State 23056, 消滅]
type = DestroySelf
trigger1 = ParentDist X > -15
trigger1 = ParentDist Y = [25,60]
trigger2 = BackEdgeBodyDist < -60

;---------------------------------------------------------------------------
; アシスト瑞佳（β - スマッシュ＆シンパティー）

[Statedef 23006]
type = S
movetype = A
physics = N
poweradd = 150
anim = 23006
ctrl = 0

[State 23006, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 23100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23006, 攻撃フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 1

[State 23006, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 23006, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 23006, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 23006, 突進]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = 1.5
y = -9

[State 23006, 突進]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.6

[State 23006, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 23006, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 23006, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 23006, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,8
ignorehitpause = 1
channel = 4

[State 23006, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 23006, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 23006, アシストリミッター]
type = ParentVarSet
trigger1 = movehit
var(19) = 1
ignorehitpause = 1

[State 23006, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 23006, 着地成功]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 23066

;---------------------------------------------------------------------------
; アシスト瑞佳（β - スマッシュ＆シンパティー）

[Statedef 23066]
type = S
movetype = A
physics = S
velset = 0,0
anim = 230061
ctrl = 0

[State 23066, 地上に移動]
type = PosSet
trigger1 = Time = 0
y = 0

[State 23066, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = s3,12
ignorehitpause = 1

[State 23066, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = S,SA
hitflag = MAFD
guardflag = HA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 80,20
getpower = 150,75
givepower = 100,65
pausetime = 4,5
guard.pausetime = 4,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -6,-4
guard.velocity = -5
air.velocity = -6,-4
airguard.velocity = -6,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 23066, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 23066, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 23066, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 23066, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,8
ignorehitpause = 1
channel = 4

[State 23066, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 23066, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 23066, アシストリミッター]
type = ParentVarSet
trigger1 = movehit
var(19) = 1
ignorehitpause = 1

[State 23066, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 23066, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 23000

;---------------------------------------------------------------------------
; アシスト瑞佳（γ - リバーヴ＆アウェイキング）

[Statedef 23007]
type = S
movetype = A
physics = S
ctrl = 0
anim = 23007
poweradd = 150
sprpriority = 2

[State 23007, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 23100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23007, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 23007, 攻撃フラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 1

[State 23007, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 23007, 補正の適用]
type = AttackMulSet
trigger1 = Time = 0
value = root,fvar(0)
ignorehitpause = 1

[State 23007, 無敵]
type = NotHitBy
trigger1 = root,var(54)%10 = 1
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23007, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s3,21

[State 23007, エフェクト]
type = Explod
trigger1 = AnimElemTime(7) = 0
anim = 23013
postype = p1
pos = 2,-40
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 23007, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 80,20
getpower = 70,30
givepower = 50,20
pausetime = 0,5
guard.pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -6,-8
guard.velocity = -5
air.velocity = -6,-8
airguard.velocity = -3,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = root,var(54)/10000%10

[State 23007, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5
persistent = 0

[State 23007, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-40
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5
persistent = 0

[State 23007, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1
persistent = 0

[State 23007, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 23000

;---------------------------------------------------------------------------
; アシスト瑞佳（ダメージ）

[Statedef 23100]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 23100

[State 23100, ダメージフラグ]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(0) = 2

[State 23100, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 23100, カメラ固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 23100, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 23100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23100, ポーズフラグ]
type = VarSet
trigger1 = Time = 0
var(1) = GetHitVar(hitshaketime)

[State 23100, 重力]
type = VarAdd
trigger1 = var(1) > 0
var(1) = -1

[State 23100, 固定]
type = PosFreeze
trigger1 = var(1) > 0
value = 1

[State 23100, アニメ変更]
type = ChangeState
trigger1 = var(1) = 0
value = 23101

[Statedef 23101]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 23101

[State 23101, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 23101, カメラ固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 23101, 重力]
type = VelSet
trigger1 = Time = 0
x = Facing*GetHitVar(xvel)
y = GetHitVar(fall.yvel)

[State 23101, 重力]
type = VelAdd
trigger1 = 1
y = 0.45

[State 23101, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 23100
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 23101, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 23101, 地面に激突]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 20
value = 23102

[Statedef 23102]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 23102

[State 23102, 接地]
type = PosSet
trigger1 = Time = 0
y = 0

[State 23102, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 23102, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,4
abspan = 1

[State 23102, Effect]
type = Explod
trigger1 = Time = 0
anim = 11020
postype = p1
pos = -10,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 23102, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 10
freq = 80
ampl = 4

[State 23102, 起き上がりへ]
type = ChangeState
trigger1 = Time >= 15
value = 23103

[Statedef 23103]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
anim = 23103

[State 23103, 終了フラグ]
type = VarSet
trigger1 = root,Win
var(0) = 9

[State 23103, 立ち上がりへ]
type = ChangeState
trigger1 = AnimTime = 0
value = 23000
