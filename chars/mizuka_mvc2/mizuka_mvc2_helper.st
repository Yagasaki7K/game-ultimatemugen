
;---------------------------------------------------------------------------
; くずれるせかい（弱）

[Statedef 11000]
type = S
movetype = A
physics = S
anim = 3000
ctrl = 0
sprpriority = 3

[State 11000, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11000, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11000, 場所固定]
type = BindtoRoot
trigger1 = 1
time = -1
pos = 0,0

[State 11000, Hitdef]
type = Hitdef
trigger1 = HitCount = 0
trigger1 = AnimElemTime(1) = 0
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 70,10
getpower = 50,10
givepower = 20,5
pausetime = 0,0
guard.pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,6
guardsound = S1,3
ground.hittime = 13
ground.slidetime = 13
guard.hittime = 13
air.hittime = 18
guard.ctrltime = 18
airguard.ctrltime = 13
ground.velocity = -8,-9
guard.velocity = -6
air.velocity = -8,-8
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
yaccel = 0.5
sprpriority = 3

[State 11000, ヒットエフェクト]
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

[State 11000, ヒットエフェクト]
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

[State 11000, ガードエフェクト]
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

[State 11000, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11000, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11000, 終了]
type = DestroySelf
trigger1 = Animtime = 0

;---------------------------------------------------------------------------
; くずれるせかい（強）

[Statedef 11002]
type = S
movetype = A
physics = S
anim = 3000
ctrl = 0
sprpriority = 3

[State 11002, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11002, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11002, 場所固定]
type = BindtoRoot
trigger1 = ishelper(10021)
time = -1
pos = 0,0

[State 11002, 場所固定]
type = BindtoRoot
trigger1 = ishelper(10022)
time = -1
pos = -20,0

[State 11002, 場所固定]
type = BindtoRoot
trigger1 = ishelper(10023)
time = -1
pos = 20,0

[State 11002, Hitdef]
type = Hitdef
trigger1 = HitCount = 0
trigger1 = AnimElemTime(1) = 0
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 50,10
getpower = 50,10
givepower = 20,5
pausetime = 0,5
guard.pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,6
guardsound = S1,3
ground.hittime = 13
ground.slidetime = 13
guard.hittime = 13
air.hittime = 18
guard.ctrltime = 18
airguard.ctrltime = 13
ground.velocity = -8,-9
guard.velocity = -6
air.velocity = -8,-8
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
yaccel = 0.5
sprpriority = 3

[State 11002, ヒットエフェクト]
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

[State 11002, ヒットエフェクト]
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

[State 11002, ガードエフェクト]
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

[State 11002, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11002, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11002, 終了]
type = DestroySelf
trigger1 = Animtime = 0

;---------------------------------------------------------------------------
; おもちゃのないふ（平行）

[Statedef 11020]
type = S
movetype = A
physics = N
anim = 99999
ctrl = 0
sprpriority = 3

[State 11020, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 11029
ignorehitpause = 1

[State 11020, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10200)
value = 3021

[State 11020, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10201)
value = 3020

[State 11020, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10202)
value = 3022

[State 11020, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10203)
value = 3023

[State 11020, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10204)
value = 3028

[State 11020, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10205)
value = 3029

[State 11020, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11020, 横移動]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 13

[State 11021, 赤・斜め]
type = VelSet
trigger1 = Time = 0
trigger1 = isHelper(10204)
x = 12
y = 2

[State 11021, 黄・斜め]
type = VelSet
trigger1 = Time = 0
trigger1 = isHelper(10205)
x = 12
y = -2

[State 11020, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 25,10
getpower = 30,10
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,1
guardsound = S1,3
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,0
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
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

[State 11020, ヒットエフェクト]
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

[State 11020, ガードエフェクト]
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

[State 11020, 終了ステートへ]
type = ChangeState
trigger1 = movecontact
value = 11029

[State 11020, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11020, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -20

;---------------------------------------------------------------------------
; おもちゃのないふ（斜め）

[Statedef 11021]
type = S
movetype = A
physics = N
anim = 99999
ctrl = 0
sprpriority = 3

[State 11021, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 11029
ignorehitpause = 1

[State 11021, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11021, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10200)
value = 3025

[State 11021, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10201)
value = 3024

[State 11021, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10202)
value = 3026

[State 11021, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10203)
value = 3027

[State 11021, 移動（緑）]
type = VelSet
trigger1 = Time = 0
trigger1 = isHelper(10200)
x = 8
y = -8

[State 11021, 移動（赤）]
type = VelSet
trigger1 = Time = 0
trigger1 = isHelper(10201)
x = 10
y = -4

[State 11021, 移動（黄）]
type = VelSet
trigger1 = Time = 0
trigger1 = isHelper(10202)
x = 2
y = -10

[State 11021, 移動（青）]
type = VelSet
trigger1 = Time = 0
trigger1 = isHelper(10203)
x = 8
y = -8

[State 11021, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 25,10
getpower = 30,10
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,1
guardsound = S1,3
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,0
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
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

[State 11021, ヒットエフェクト]
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

[State 11021, ガードエフェクト]
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

[State 11021, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11021, 終了ステートへ]
type = ChangeState
trigger1 = movecontact
value = 11029

[State 11021, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11021, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -20
trigger2 = ScreenPos Y < -50

;---------------------------------------------------------------------------
; おもちゃのないふ（消失）

[Statedef 11029]
type = S
movetype = A
physics = S
anim = 99999
ctrl = 0
sprpriority = 3

[State 11020, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10200)
value = 113021

[State 11020, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10201)
value = 113020

[State 11020, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10202)
value = 113022

[State 11020, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10203)
value = 113023

[State 11020, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10204)
value = 113020

[State 11020, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = isHelper(10205)
value = 113022

[State 11029, 消失処理]
type = VelAdd
trigger1 = Time = 0
x = -5
y = -10

[State 11029, 消失処理]
type = VelAdd
trigger1 = ceil(Pos Y) < -4
x = -1
y = 1

[State 11029, 消失処理]
type = VelSet
trigger1 = ceil(Pos Y) > -5
y = 0

[State 11029, 消失処理]
type = VelSet
trigger1 = ceil(Pos Y) > -2
y = -10
persistent = 0

[State 11029, 消失処理]
type = VelAdd
trigger1 = ceil(Pos Y) > -5
x = -1

[State 11029, 透過処理]
type = PalFX
trigger1 = Time > 4
time = 1
mul = var(0),var(0),var(0)

[State 11029, 透過処理]
type = VarSet
trigger1 = Time = 0
var(0) = 250

[State 11029, 透過処理]
type = VarAdd
trigger1 = Time > 15
trigger1 = Time % 3 = 0
trigger1 = var(0) > 0
var(0) = -50

[State 11029, 消失処理]
type = Trans
trigger1 = Time > 15
trans = add

[State 11029, 終了]
type = DestroySelf
trigger1 = Time > 30

;---------------------------------------------------------------------------
; あるじ？　ぬし？（弱）

[Statedef 11030]
type = S
movetype = A
physics = S
anim = 3030
ctrl = 0
sprpriority = 3

[State 11030, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11030, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3,0

[State 11030, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 11030
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 11030, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = S,SA
hitflag = MAFD
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 100,10
getpower = 100,20
givepower = 20,10
pausetime = 3,5
guard.pausetime = 3,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 14
guard.hittime = 14
air.hittime = 20
guard.ctrltime = 14
airguard.ctrltime = 20
ground.velocity = -3,-8
guard.velocity = -4
air.velocity = -4,-6
airguard.velocity = -3,-4
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

[State 11030, ヒットエフェクト]
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

[State 11030, ヒットエフェクト]
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

[State 11030, ガードエフェクト]
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

[State 11030, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11030, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11030, 終了]
type = DestroySelf
trigger1 = Animtime = 0

;---------------------------------------------------------------------------
; あるじ？　ぬし？（強）

[Statedef 11031]
type = S
movetype = A
physics = S
anim = 3030
ctrl = 0
sprpriority = 3

[State 11031, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 11031
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 11031, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3,0

[State 11031, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = S,SA
hitflag = MAFD
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 20,8
getpower = 0,0
givepower = 20,10
pausetime = 0,5
guard.pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 14
guard.hittime = 14
air.hittime = 20
guard.ctrltime = 14
airguard.ctrltime = 20
ground.velocity = -4,-5
guard.velocity = -4
air.velocity = -4,-5.5
airguard.velocity = -3,-4
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
yaccel = 0.5

[State 11031, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 11031, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 11031, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11031, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11031, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11031, 次のいたるさん]
type = Helper
trigger1 = AnimElemTime(9) = 12
helpertype = normal
name = "Itaru"
pos = 60,0
ID = 110311
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11032
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11031, 終了]
type = DestroySelf
trigger1 = Animtime = 0
trigger2 = FrontEdgeBodyDist < -50

[Statedef 11032]
type = S
movetype = A
physics = S
anim = 3031
ctrl = 0
sprpriority = 3

[State 11032, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 11032
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 11032, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3,0

[State 11032, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = S,SA
hitflag = MAFD
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 20,8
getpower = 0,0
givepower = 20,10
pausetime = 0,5
guard.pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 14
guard.hittime = 14
air.hittime = 20
guard.ctrltime = 14
airguard.ctrltime = 20
ground.velocity = -4,-5
guard.velocity = -4
air.velocity = -4,-5.5
airguard.velocity = -3,-4
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
yaccel = 0.5

[State 11032, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 11032, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 11032, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11032, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11032, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11032, 次のいたるさん]
type = Helper
trigger1 = AnimElemTime(9) = 12
helpertype = normal
name = "Itaru"
pos = 60,0
ID = 110321
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11033
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11032, 終了]
type = DestroySelf
trigger1 = Animtime = 0
trigger2 = FrontEdgeBodyDist < -50

[Statedef 11033]
type = S
movetype = A
physics = S
anim = 3032
ctrl = 0
sprpriority = 3

[State 11033, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 100
attr = SCA, AA, AP, AT
stateno = 11033
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 11033, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3,0

[State 11033, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = S,SA
hitflag = MAFD
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 20,8
getpower = 0,0
givepower = 20,10
pausetime = 0,5
guard.pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 14
guard.hittime = 14
air.hittime = 20
guard.ctrltime = 14
airguard.ctrltime = 20
ground.velocity = -4,-5
guard.velocity = -4
air.velocity = -4,-5.5
airguard.velocity = -3,-4
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
yaccel = 0.5

[State 11033, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 11033, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 11033, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11033, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11033, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11033, 次のいたるさん]
type = Helper
trigger1 = AnimElemTime(9) = 12
helpertype = normal
name = "Itaru"
pos = 60,0
ID = 110331
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11031
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11033, 終了]
type = DestroySelf
trigger1 = Animtime = 0
trigger2 = FrontEdgeBodyDist < -50

;---------------------------------------------------------------------------
; ゆらめくひかり

[Statedef 11080]
type = S
movetype = A
physics = S
anim = 3040
ctrl = 0
sprpriority = 5

[State 11080, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11080, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11080, 場所固定]
type = BindtoRoot
trigger1 = 1
time = -1
pos = 60,-37

[State 11080, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(7) = 0
trigger4 = AnimElemTime(9) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 30,25
getpower = 20,5
givepower = 10,3
pausetime = 2,4
guard.pausetime = 1,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 18
guard.ctrltime = 16
airguard.ctrltime = 18
ground.velocity = -4,-3
guard.velocity = -3
air.velocity = -4,-3
airguard.velocity = -3,-2
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

[State 11080, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11080, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11080, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11080, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,5
ignorehitpause = 1
channel = 4

[State 11080, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 11080, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11080, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11080, 終了]
type = DestroySelf
trigger1 = Animtime = 0
trigger2 = root,stateno != [1080,1090]

;---------------------------------------------------------------------------
; いてつくひかり

[Statedef 11081]
type = S
movetype = A
physics = S
anim = 11060
ctrl = 0
sprpriority = 5

[State 11081, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11081, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11081, 場所固定]
type = BindtoRoot
trigger1 = 1
time = -1
pos = 50,-37

[State 11081, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(7) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 45,10
getpower = 20,5
givepower = 10,3
pausetime = 2,35
guard.pausetime = 1,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 18
guard.ctrltime = 16
airguard.ctrltime = 18
ground.velocity = -2,-6
guard.velocity = -7
air.velocity = -4,-6
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
palfx.time = 40
palfx.add = 120,110,180
palfx.mul = 180,205,235

[State 11081, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11081, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11081, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11081, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,5
ignorehitpause = 1
channel = 4

[State 11081, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s3,9
persistent = 0
ignorehitpause = 1
channel = 5
volume = 255

[State 11081, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 11081, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11081, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11081, 終了]
type = DestroySelf
trigger1 = Animtime = 0
trigger2 = root,stateno != [1080,1099]

;---------------------------------------------------------------------------
; ぎんのや

[Statedef 11082]
type = S
movetype = A
physics = S
anim = 3041
ctrl = 0
sprpriority = 5

[State 11082, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11082, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11082, 白黒に]
type = PalFX
trigger1 = 1
time = -1
color = 0

[State 11082, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(3) = 0
trigger1 = root,var(55)/1000%10 != 1
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 24,0
getpower = 20,5
givepower = 10,3
pausetime = 2,4
guard.pausetime = 1,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,5
guardsound = S1,3
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 18
guard.ctrltime = 16
airguard.ctrltime = 18
ground.velocity = -4,-3
guard.velocity = -3
air.velocity = -4,-3
airguard.velocity = -3,-2
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

[State 11082, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(3) = 0
trigger1 = root,var(55)/1000%10 = 1
attr = A,SP
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 24,10
getpower = 20,5
givepower = 10,3
pausetime = 2,4
guard.pausetime = 1,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,5
guardsound = S1,3
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 18
guard.ctrltime = 16
airguard.ctrltime = 18
ground.velocity = -4,-3
guard.velocity = -3
air.velocity = -4,-3
airguard.velocity = -3,-2
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

[State 11082, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11082, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11082, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11082, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11082, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11082, 終了]
type = DestroySelf
trigger1 = Animtime = 0
trigger2 = root,stateno != [1080,1090]

;---------------------------------------------------------------------------
; まどのそと（弱）

[Statedef 11100]
type = S
movetype = A
physics = S
anim = 3010
ctrl = 0
sprpriority = 5

[State 11100, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11100, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11100, Hitdef]
type = Hitdef
trigger1 = Time % 5 = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 15,6
getpower = 20,6
givepower = 10,6
pausetime = 2,4
guard.pausetime = 2,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 15
ground.slidetime = 15
guard.hittime = 15
air.hittime = 20
guard.ctrltime = 15
airguard.ctrltime = 20
ground.velocity = -3,0
guard.velocity = -3
air.velocity = -3,-2
airguard.velocity = -2,-1
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

[State 11100, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11100, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11100, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11100, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,2
ignorehitpause = 1
channel = 4

[State 11100, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 11100, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11100, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11100, 終了]
type = ChangeState
triggerall = Time < 60
trigger1 = root,stateno = 1102
trigger2 = root,stateno = 1106
value = 11101

[State 11100, 終了]
type = ChangeState
trigger1 = Time > 60
value = 11102

;---------------------------------------------------------------------------
; まどのそと（派生）

[Statedef 11101]
type = S
movetype = A
physics = S
anim = 3010
ctrl = 0
sprpriority = 5

[State 11101, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3012
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 11101, 横移動]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 20

[State 11101, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11101, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11101, Hitdef]
type = Hitdef
trigger1 = Time % 5 = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 15,6
getpower = 20,6
givepower = 10,6
pausetime = 2,2
guard.pausetime = 2,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1,
guardsound = -1,
ground.hittime = 15
ground.slidetime = 15
guard.hittime = 15
air.hittime = 20
guard.ctrltime = 15
airguard.ctrltime = 20
ground.velocity = -3,0
guard.velocity = -3
air.velocity = -3,-2
airguard.velocity = -2,-1
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

[State 11101, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11101, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11101, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11101, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,2
ignorehitpause = 1
channel = 4

[State 11101, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 11101, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11101, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11101, 終了]
type = ChangeState
trigger1 = Time > 60
value = 11102

;---------------------------------------------------------------------------
; まどのそと（通常消失）

[Statedef 11102]
type = S
movetype = A
physics = S
anim = 3011
ctrl = 0
sprpriority = 5

[State 11102, 終了]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; まどのそと（強）

[Statedef 11103]
type = S
movetype = A
physics = N
anim = 3010
ctrl = 0
sprpriority = 5

[State 11103, 横移動]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
x = 0.25

[State 11103, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11103, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11103, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 100,6
getpower = 0,0
givepower = 20,6
pausetime = 2,2
guard.pausetime = 2,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 15
ground.slidetime = 15
guard.hittime = 15
air.hittime = 20
guard.ctrltime = 15
airguard.ctrltime = 20
ground.velocity = -3,0
guard.velocity = -3
air.velocity = -3,-2
airguard.velocity = -2,-1
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
p2stateno = 51103

[State 11103, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11103, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11103, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11103, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,4
ignorehitpause = 1
channel = 4

[State 11103, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11103, 終了]
type = ChangeState
trigger1 = movecontact
value = 11104
ignorehitpause = 1

[State 11103, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11003, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -100

;---------------------------------------------------------------------------
; まどのそと（ヒット消失）

[Statedef 11104]
type = S
movetype = A
physics = S
anim = 3012
ctrl = 0
sprpriority = 5

[State 11104, 終了]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; むげんのそら（弱）

[Statedef 11110]
type = S
movetype = A
physics = N
anim = 3010
ctrl = 0
sprpriority = 5

[State 11110, 横移動]
type = VelSet
trigger1 = 1
x = 1.75

[State 11110, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11110, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11110, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 100,6
getpower = 30,6
givepower = 20,6
pausetime = 2,2
guard.pausetime = 2,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 15
ground.slidetime = 15
guard.hittime = 15
air.hittime = 20
guard.ctrltime = 15
airguard.ctrltime = 20
ground.velocity = -3,0
guard.velocity = -3
air.velocity = -3,-2
airguard.velocity = -2,-1
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
p2stateno = 51103

[State 11110, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11110, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11110, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11110, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,4
ignorehitpause = 1
channel = 4

[State 11110, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11110, 終了]
type = ChangeState
trigger1 = movecontact
value = 11104
ignorehitpause = 1

[State 11110, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11110, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -100

;---------------------------------------------------------------------------
; むげんのそら（中）

[Statedef 11111]
type = S
movetype = A
physics = N
anim = 3010
ctrl = 0
sprpriority = 5

[State 11111, 横移動]
type = VelSet
trigger1 = 1
x = 1
y = -1.5

[State 11111, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11111, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11111, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 100,6
getpower = 30,6
givepower = 20,6
pausetime = 2,2
guard.pausetime = 2,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 15
ground.slidetime = 15
guard.hittime = 15
air.hittime = 20
guard.ctrltime = 15
airguard.ctrltime = 20
ground.velocity = -3,0
guard.velocity = -3
air.velocity = -3,-2
airguard.velocity = -2,-1
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
p2stateno = 51103

[State 11111, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11111, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11111, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11111, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,4
ignorehitpause = 1
channel = 4

[State 11111, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11111, 終了]
type = ChangeState
trigger1 = movecontact
value = 11104
ignorehitpause = 1

[State 11111, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11111, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -100
trigger2 = ScreenPos Y < -100

;---------------------------------------------------------------------------
; むげんのそら（強・地上）

[Statedef 11112]
type = S
movetype = A
physics = N
anim = 3010
ctrl = 0
sprpriority = 5

[State 11112, 追跡]
type = VelSet
trigger1 = P2BodyDist X > 0
trigger1 = Time > 5
x = 4.5

[State 11112, 追跡]
type = VelSet
trigger1 = P2BodyDist X < 0
trigger1 = Time > 5
x = -4.5

[State 11112, 追跡]
type = VelSet
trigger1 = P2BodyDist Y > 50
trigger1 = Time > 5
y = 1

[State 11112, 追跡]
type = VelSet
trigger1 = P2BodyDist Y < 20
trigger1 = Time > 5
y = -2

[State 11112, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11112, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11112, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
trigger1 = p2stateno != 51103
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 40,6
getpower = 30,6
givepower = 20,6
pausetime = 2,2
guard.pausetime = 2,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 15
ground.slidetime = 15
guard.hittime = 15
air.hittime = 20
guard.ctrltime = 15
airguard.ctrltime = 20
ground.velocity = -3,0
guard.velocity = -3
air.velocity = -3,-2
airguard.velocity = -2,-1
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
p2stateno = 51103

[State 11112, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11112, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11112, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11112, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,4
ignorehitpause = 1
channel = 4

[State 11112, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11112, 終了]
type = ChangeState
trigger1 = movecontact
trigger2 = p2stateno = 51103
trigger3 = Time > 200
value = 11104
ignorehitpause = 1

[State 11112, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11112, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -100

;---------------------------------------------------------------------------
; むげんのそら（強・空中）

[Statedef 11113]
type = S
movetype = A
physics = N
anim = 3010
ctrl = 0
sprpriority = 5

[State 11113, 追跡]
type = VelSet
trigger1 = P2BodyDist X > 0
trigger1 = Time > 5
x = 4.5

[State 11113, 追跡]
type = VelSet
trigger1 = P2BodyDist X < 0
trigger1 = Time > 5
x = -4.5

[State 11113, 追跡]
type = VelSet
trigger1 = P2BodyDist Y > 50
trigger1 = Time > 5
y = 3.5

[State 11113, 追跡]
type = VelSet
trigger1 = P2BodyDist Y < 20
trigger1 = Time > 5
y = -3.5

[State 11113, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11113, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11113, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
trigger1 = p2stateno != 51103
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 40,6
getpower = 30,6
givepower = 20,6
pausetime = 2,2
guard.pausetime = 2,5
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 15
ground.slidetime = 15
guard.hittime = 15
air.hittime = 20
guard.ctrltime = 15
airguard.ctrltime = 20
ground.velocity = -3,0
guard.velocity = -3
air.velocity = -3,-2
airguard.velocity = -2,-1
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
p2stateno = 51103

[State 11113, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11113, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
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

[State 11113, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11113, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,4
ignorehitpause = 1
channel = 4

[State 11113, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11113, 終了]
type = ChangeState
trigger1 = movecontact
trigger2 = p2stateno = 51103
trigger3 = Time > 200
value = 11104
ignorehitpause = 1

[State 11113, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11113, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -100

;---------------------------------------------------------------------------
; りんねのつるぎ

[Statedef 11140]
type = S
movetype = A
physics = S
anim = 99999
ctrl = 0
sprpriority = 3

[State 11140, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11140, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11140, 場所固定]
type = BindtoRoot
trigger1 = 1
time = -1
pos = 0,0
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11140, ナイフ残数セット]
type = VarSet
trigger1 = Time = 0
var(0) = 6

[State 11140, フラグセット]
type = VarSet
trigger1 = Time = 0
var(1) = 0

[State 11140, 親の状況フラグ]
type = VarSet
triggerall = root,MoveType = H
triggerall = root,var(37)/10%10 = 1
trigger1 = (root,stateno != [20,155]) && (root,stateno != [4020,4040])
var(1) = 1
ignorehitpause = 0

[State 11140, 方向転換フラグ]
type = VarSet
trigger1 = Time = 0
var(2) = root,facing
persistent = 0

[State 11140, 方向転換]
type = Turn
trigger1 = facing != root,facing

[State 11140, ナイフ発射制御]
type = VarAdd
triggerall = Time > 20
triggerall = (root,stateno != [1120,1139])
triggerall = root,command = "a"
triggerall = root,command != "おもちゃのないふ弱"
triggerall = root,command != "まどのそと弱"
triggerall = root,command != "むげんのそら弱"
triggerall = root,command != "あるじ？　ぬし？弱"
triggerall = root,command != "ふゆのはなび弱"
triggerall = root,command != "かくれんぼ弱"
triggerall = root,command != "ゆらめくひかり"
triggerall = root,command != "くずれるせかい"
trigger1 = root,ctrl = 1
trigger2 = (root,stateno = [200,630])
trigger3 = (root,stateno = [7000,7500])
var(0) = -1

[State 11140, だいきょうそう検出]
type = VarSet
trigger1 = Time > 20
trigger1 = root,var(4) = 2
var(3) = 1

[State 11140, かいびゃく検出]
type = VarSet
trigger1 = Time > 20
trigger1 = root,var(4) = 3
var(3) = 2

[State 11140, ナイフ発射音]
type = PlaySnd
triggerall = Time > 20
triggerall = (root,stateno != [1120,1139])
triggerall = root,command = "a"
triggerall = root,command != "おもちゃのないふ弱"
triggerall = root,command != "まどのそと弱"
triggerall = root,command != "むげんのそら弱"
triggerall = root,command != "あるじ？　ぬし？弱"
triggerall = root,command != "かくれんぼ弱"
triggerall = root,command != "ふゆのはなび弱"
triggerall = root,command != "ゆらめくひかり"
triggerall = root,command != "くずれるせかい"
trigger1 = root,ctrl = 1
trigger2 = (root,stateno = [200,630])
value = S3,3
channel = 3

[State 11140, ナイフ発射音]
type = PlaySnd
triggerall = Time > 20
trigger1 = root,var(4) = 2
trigger2 = root,var(4) = 3
value = S3,3
channel = 3

[State 11140, ナイフ消去]
type = RemoveExplod
trigger1 = var(1) = 1
trigger2 = root,var(4) = 1
trigger3 = var(3) > 0
ignorehitpause = 1

[State 11140, ナイフ（上段右）]
type = Explod
trigger1 = Time = 1
anim = 123022
postype = p1
pos = 25,-75
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
ID = 111400
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3

[State 11140, ナイフ（中段右）]
type = Explod
trigger1 = Time = 1
anim = 123021
postype = p1
pos = 45,-40
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
ID = 111401
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3

[State 11140, ナイフ（下段右）]
type = Explod
trigger1 = Time = 1
anim = 123020
postype = p1
pos = 25,-5
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
ID = 111402
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3

[State 11140, ナイフ（上段左）]
type = Explod
trigger1 = Time = 1
anim = 123022
postype = p1
pos = -25,-75
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
ID = 111403
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3

[State 11140, ナイフ（中段左）]
type = Explod
trigger1 = Time = 1
anim = 123023
postype = p1
pos = -45,-40
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
ID = 111404
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3

[State 11140, ナイフ（下段左）]
type = Explod
trigger1 = Time = 1
anim = 123020
postype = p1
pos = -25,-5
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
ID = 111405
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3

[State 11140, ナイフ発射（黄）]
type = Helper
triggerall = Time > 20
trigger1 = var(0) = 5
trigger2 = var(0) > 5
trigger2 = var(3) > 0
helpertype = normal
name = "Knife"
pos = ifelse(var(2) = root,facing,25,-25),-75
ownpal = 1
ID = ifelse(var(3) = 2,10205,10202)
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11140, ナイフ発射（緑）]
type = Helper
triggerall = Time > 20
trigger1 = var(0) = 4
trigger2 = var(0) > 4
trigger2 = var(3) > 0
helpertype = normal
name = "Knife"
pos = ifelse(var(2) = root,facing,45,-45),-40
ownpal = 1
ID = 10200
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11140, ナイフ発射（赤）]
type = Helper
triggerall = Time > 20
trigger1 = var(0) = 3
trigger2 = var(0) > 3
trigger2 = var(3) > 0
helpertype = normal
name = "Knife"
pos = ifelse(var(2) = root,facing,25,-25),-5
ownpal = 1
ID = ifelse(var(3) = 2,10204,10201)
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11140, ナイフ発射（赤）]
type = Helper
triggerall = Time > 20
trigger1 = var(0) = 2
trigger2 = var(0) > 2
trigger2 = var(3) > 0
helpertype = normal
name = "Knife"
pos = ifelse(var(2) = root,facing,-25,25),-5
ownpal = 1
ID = ifelse(var(3) = 2,10204,10201)
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11140, ナイフ発射（青）]
type = Helper
triggerall = Time > 20
trigger1 = var(0) = 1
trigger2 = var(0) > 1
trigger2 = var(3) > 0
helpertype = normal
name = "Knife"
pos = ifelse(var(2) = root,facing,-45,45),-40
ownpal = 1
ID = 10203
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11140, ナイフ発射（黄）]
type = Helper
triggerall = Time > 20
trigger1 = var(0) = 0
trigger2 = var(0) > 0
trigger2 = var(3) > 0
helpertype = normal
name = "Knife"
pos = ifelse(var(2) = root,facing,-25,25),-75
ownpal = 1
ID = ifelse(var(3) = 2,10205,10202)
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11140, ナイフ消去]
type = RemoveExplod
trigger1 = var(0) = 5
ID = 111400
ignorehitpause = 1

[State 11140, ナイフ消去]
type = RemoveExplod
trigger1 = var(0) = 4
ID = 111401
ignorehitpause = 1

[State 11140, ナイフ消去]
type = RemoveExplod
trigger1 = var(0) = 3
ID = 111402
ignorehitpause = 1

[State 11140, ナイフ消去]
type = RemoveExplod
trigger1 = var(0) = 2
ID = 111405
ignorehitpause = 1

[State 11140, ナイフ消去]
type = RemoveExplod
trigger1 = var(0) = 1
ID = 111404
ignorehitpause = 1

[State 11140, ナイフ消去]
type = RemoveExplod
trigger1 = var(0) = 0
ID = 111403
ignorehitpause = 1

[State 11140, 消失処理]
type = Helper
trigger1 = var(1) = 1
trigger1 = var(0) >= 6
helpertype = normal
name = "Knife_Destroy"
pos = 25,-75
ownpal = 1
ID = 10202
pausemovetime = 0
supermovetime = 0
stateno = 11029
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11140, 消失処理]
type = Helper
trigger1 = var(1) = 1
trigger1 = var(0) >= 5
helpertype = normal
name = "Knife_Destroy"
pos = 45,-40
ownpal = 1
ID = 10200
pausemovetime = 0
supermovetime = 0
stateno = 11029
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11140, 消失処理]
type = Helper
trigger1 = var(1) = 1
trigger1 = var(0) >= 4
helpertype = normal
name = "Knife_Destroy"
pos = 25,-5
ownpal = 1
ID = 10201
pausemovetime = 0
supermovetime = 0
stateno = 11029
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11140, 消失処理]
type = Helper
trigger1 = var(1) = 1
trigger1 = var(0) >= 3
helpertype = normal
name = "Knife_Destroy"
pos = -25,-5
ownpal = 1
ID = 10201
pausemovetime = 0
supermovetime = 0
stateno = 11029
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11140, 消失処理]
type = Helper
trigger1 = var(1) = 1
trigger1 = var(0) >= 2
helpertype = normal
name = "Knife_Destroy"
pos = -45,-40
ownpal = 1
ID = 10203
pausemovetime = 0
supermovetime = 0
stateno = 11029
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11140, 消失処理]
type = Helper
trigger1 = var(1) = 1
trigger1 = var(0) >= 1
helpertype = normal
name = "Knife_Destroy"
pos = -25,-75
ownpal = 1
ID = 10202
pausemovetime = 0
supermovetime = 0
stateno = 11029
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11140, 終了]
type = DestroySelf
trigger1 = Time > 2
trigger1 = NumExplod = 0
trigger2 = var(1) = 1
trigger3 = root,var(4) = 1
trigger4 = parent,Name != "Unknown"

;---------------------------------------------------------------------------
; ふゆのはなび

[Statedef 11160]
type = S
movetype = A
physics = N
anim = 11070
ctrl = 0
sprpriority = 3

[State 11160, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11160, 落下]
type = VelSet
trigger1 = AnimElemTime(11) = 0
y = 18

[State 11160, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAFD
guardflag = HA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 100,30
getpower = 60,15
givepower = 30,8
pausetime = 10,15
guard.pausetime = 10,15
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
ground.velocity = -4,-7
guard.velocity = -5
air.velocity = -4,-7
airguard.velocity = -3,-6
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

[State 11160, ヒットエフェクト]
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

[State 11160, ヒットエフェクト]
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

[State 11160, ガードエフェクト]
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

[State 11160, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11160, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11160, 終了]
type = ChangeState
trigger1 = Pos Y >= 0
value = 11161

[Statedef 11161]
type = S
movetype = A
physics = N
velset = 0,0
anim = 11071
ctrl = 0
sprpriority = 3

[State 11161, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s1,10

[State 11161, 振動]
type = EnvShake
trigger1 = Time = 0
time = 10
ampl = -10

[State 11161, 終了]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; ふゆのそら

[Statedef 11162]
type = S
movetype = A
physics = N
anim = 11070
ctrl = 0
sprpriority = 3

[State 11162, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11162, 落下]
type = VelSet
trigger1 = AnimElemTime(11) = 0
y = 18

[State 11162, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAFD
guardflag = HA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 80,30
getpower = 60,15
givepower = 30,8
pausetime = 10,15
guard.pausetime = 10,15
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
ground.velocity = -4,-7
guard.velocity = -5
air.velocity = -4,-7
airguard.velocity = -3,-6
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

[State 11162, ヒットエフェクト]
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

[State 11162, ヒットエフェクト]
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

[State 11162, ガードエフェクト]
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

[State 11162, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11162, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11162, 終了]
type = ChangeState
trigger1 = Pos Y >= 0
value = 11161

;---------------------------------------------------------------------------
; ふゆのそら（RF）

[Statedef 11163]
type = S
movetype = A
physics = N
anim = 11070
ctrl = 0
sprpriority = 3

[State 11163, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11163, 落下]
type = VelSet
trigger1 = AnimElemTime(11) = 0
y = 18

[State 11163, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAFD
guardflag = HA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 30,10
getpower = 60,15
givepower = 30,8
pausetime = 10,15
guard.pausetime = 10,15
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
ground.velocity = -4,-7
guard.velocity = -5
air.velocity = -4,-7
airguard.velocity = -3,-6
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

[State 11163, ヒットエフェクト]
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

[State 11163, ヒットエフェクト]
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

[State 11163, ガードエフェクト]
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

[State 11163, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11163, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11163, 終了]
type = ChangeState
trigger1 = Pos Y >= 0
value = 11161

;---------------------------------------------------------------------------
; ぬし？　あるじ？

[Statedef 11170]
type = S
movetype = A
physics = N
anim = 99999
ctrl = 0
sprpriority = 3

[State 11170, ChangeState]
type = ChangeState
trigger1 = ceil(P2Dist X) < 60
trigger1 = ceil(P2Dist X) > -20
trigger1 = Time > 40
value = 11030

[State 11170, 終了]
type = DestroySelf
trigger1 = root,MoveType = H && (root,stateno != [0,155]) && (root,var(37)/10%10 = 1)

;---------------------------------------------------------------------------
; いましめ

[Statedef 11180]
type = A
movetype = I
physics = N
anim = 3080
ctrl = 0
velset = 12,0
sprpriority = 3

[State 11180, Trans]
type = Trans
trigger1 = Time > 1
trans = AddAlpha
alpha = 255-var(0),256

[State 11180, 初期化]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 11180, 透過処理]
type = VarAdd
trigger1 = Time > 1
trigger1 = var(0) < 250
var(0) = 25
ignorehitpause = 1

[State 11180, 透過処理]
type = VarAdd
trigger1 = var(0) = 250
var(0) = 5
ignorehitpause = 1

[State 11180, ブレーキ]
type = VelAdd
trigger1 = Time > 1
trigger1 = Vel X > 0
x = -1

[State 11180, 終了]
type = ChangeState
trigger1 = Time = 100
trigger1 = isHelper(11801)
value = 11181

[State 11180, 終了]
type = ChangeState
trigger1 = Time > 20
trigger1 = isHelper(11802)
value = 11182

[State 11180, 終了]
type = DestroySelf
trigger1 = isHelper(11803)
trigger1 = Time > 30

;---------------------------------------------------------------------------
; いましめ（直進）

[Statedef 11181]
type = A
movetype = A
physics = N
anim = 3080
ctrl = 0
sprpriority = 3

[State 11181, フラッシュ]
type = PalFX
trigger1 = Time = 0
time = 2
add = 256,256,256

[State 11181, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,2

[State 11181, PlaySnd]
type = PlaySnd
trigger1 = Time = 12
value = s3,3

[State 11181, PlaySnd]
type = VelSet
trigger1 = Time = 12
x = 14

[State 11181, Hitdef]
type = Hitdef
trigger1 = Time = 12
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 80,20
getpower = 100,0
givepower = 50,10
pausetime = 0,6
guard.pausetime = 0,7
sparkno = -1
guard.sparkno = S-1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -4,0
guard.velocity = -4
air.velocity = -4,-3
airguard.velocity = -2,-1
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

[State 11181, エフェクト]
type = Explod
trigger1 = movehit
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
persistent = 0
ignorehitpause = 1
scale = 0.5,0.5

[State 11181, ヒットエフェクト]
type = Explod
trigger1 = movehit
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
persistent = 0
ignorehitpause = 1
scale = 0.5,0.5

[State 11181, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-20
ownpal = 1
pausemovetime = 9999
supermovetime = 0
stateno = 30000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11181, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
persistent = 0
ignorehitpause = 1

[State 11181, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -60

;---------------------------------------------------------------------------
; いましめ（背後・待機中）

[Statedef 11182]
type = A
movetype = I
physics = N
anim = 3080
ctrl = 0
sprpriority = 3

[State 11182, 透明化]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 11182, 振り向き]
type = Turn
trigger1 = facing = root,facing

[State 11182, 移動]
type = Posadd
trigger1 = Time = 99
x = ((P2dist X)-160)

[State 11182, 発射]
type = ChangeState
trigger1 = Time = 100
value = 11183

;---------------------------------------------------------------------------
; いましめ（背後）

[Statedef 11183]
type = A
movetype = A
physics = N
anim = 3080
ctrl = 0
sprpriority = 3

[State 11183, フラッシュ]
type = PalFX
trigger1 = Time = 0
time = 2
add = 256,256,256

[State 11183, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,2

[State 11183, PlaySnd]
type = PlaySnd
trigger1 = Time = 12
value = s3,3

[State 11183, PlaySnd]
type = VelSet
trigger1 = Time = 12
x = 14

[State 11183, Hitdef]
type = Hitdef
trigger1 = Time = 12
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 80,20
getpower = 100,0
givepower = 50,10
pausetime = 0,6
guard.pausetime = 0,7
sparkno = -1
guard.sparkno = S-1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -4,0
guard.velocity = -4
air.velocity = -4,-3
airguard.velocity = -2,-1
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

[State 11183, エフェクト]
type = Explod
trigger1 = movehit
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
persistent = 0
ignorehitpause = 1
scale = 0.5,0.5

[State 11183, ヒットエフェクト]
type = Explod
trigger1 = movehit
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
persistent = 0
ignorehitpause = 1
scale = 0.5,0.5

[State 11183, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-20
ownpal = 1
pausemovetime = 9999
supermovetime = 0
stateno = 30000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 11183, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
persistent = 0
ignorehitpause = 1

[State 11183, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -60

;---------------------------------------------------------------------------
; たいえん

[Statedef 11190]
type = S
movetype = A
physics = N
anim = 11090
velset = 8,0
ctrl = 0
sprpriority = 3

[State 11190, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11190, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11090, Hitdef]
type = Hitdef
trigger1 = Time % 7 = 0
trigger1 = HitCount < 1
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 80,15
getpower = 50,30
givepower = 30,10
pausetime = 0,5
guard.pausetime = 0,5
sparkno = -1
guard.sparkno = S-1
sparkxy = 30,-40
hitsound = -1,
guardsound = -1,
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 18
air.hittime = 20
guard.ctrltime = 18
airguard.ctrltime = 20
ground.velocity = -4,-6
guard.velocity = -5
air.velocity = -4,-2
airguard.velocity = -2,-1
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
sprpriority = 3
palfx.mul = 200,0,0
palfx.sinadd = 50,0,0,10
palfx.time = 50

[State 11190, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-10
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

[State 11190, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-10
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

[State 11190, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s3,4
ignorehitpause = 1
channel = 4

[State 11190, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 11190, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 11190, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 11190, 終了]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; けんようじゅのもり

[Statedef 11200]
type = A
movetype = A
physics = N
anim = 11072
ctrl = 0
sprpriority = 3

[State 11200, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 11200, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 11200, 移動]
type = VelSet
trigger1 = Time > 0
x = 10
y = 10

[State 11200, 残像]
type = AfterImage
trigger1 = Time = 0
Trans = Add1
length = 12
palcolor = 0
palmul = 1,1,1
palbright = 0,0,0
palcontrast = 90,90,90
time = -1

[State 11200, PalFX]
type = PalFX
trigger1 = 1
time = -1
color = 0

[State 11200, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = A,SP
hitflag = MAFD
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 30,10
getpower = 50,20
givepower = 30,10
pausetime = 0,3
guard.pausetime = 0,3
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 18
air.hittime = 20
guard.ctrltime = 18
airguard.ctrltime = 18
ground.velocity = 0,-9
guard.velocity = -4
air.velocity = 0,-9
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 20
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 11200, ヒットエフェクト]
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
persistent = 0
scale = 0.5,0.5

[State 11200, ヒットエフェクト]
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
persistent = 0
scale = 0.5,0.5

[State 11200, ガードエフェクト]
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
persistent = 0
size.xscale = 1
size.yscale = 1

[State 11200, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1
persistent = 0

[State 11200, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 11200, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 3
ignorehitpause = 1
persistent = 0

[State 11200, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 11200, 終了]
type = DestroySelf
trigger1 = Pos Y > 10

;---------------------------------------------------------------------------
; リコイルガード（時間停止用）

[Statedef 14020]
type = S
movetype = A
physics = N
anim = 99999
ctrl = 0
sprpriority = 3

[State 14020, 終了]
type = DestroySelf
trigger1 = time = 24

;---------------------------------------------------------------------------
; アドバンシングガード（見えない壁）

[Statedef 14050]
type = S
movetype = A
physics = N
anim = 99998
ctrl = 0
sprpriority = 3

[State 14050, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 14050, 接触判定]
type = PlayerPush
trigger1 = 1
value = 1

[State 14050, p2stateno付き攻撃の無効化]
type = HitOverRide
trigger1 = 1
time = 9999
attr = SCA, AA, AP, AT
stateno = 0
ignorehitpause = 1

[State 14050, 押し戻し]
type = VelSet
trigger1 = Time = 1
x = 20

[State 14050, 終了]
type = DestroySelf
trigger1 = Time = 20

;---------------------------------------------------------------------------
; 透明ダッシュ（ヘルパー）

[Statedef 14095]
type = S
physics = S
ctrl = 0
anim = 100
sprpriority = 1

[State 14095, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 14095, 接触判定]
type = PlayerPush
trigger1 = 1
value = 0

[State 14095, 速度指定]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)+fvar(0)

[State 14095, 透過処理]
type = VarSet
trigger1 = Time = 0
var(0) = 250

[State 14095, 透過処理]
type = VarRandom
trigger1 = Time = 0
v = 1
range = -400,200

[State 14095, 透過処理]
type = VarSet
trigger1 = Time = 1
fvar(0) = var(1)/100

[State 14095, 透過処理]
type = VarAdd
trigger1 = Time > 4
trigger1 = Time % 3 = 0
trigger1 = var(0) > 0
var(0) = -10

[State 14095, 透過処理]
type = PalFX
trigger1 = Time > 4
time = 1
mul = var(0),var(0),var(0)

[State 14095, 透過指定]
type = Trans
trigger1 = Time > 4
trans = add

[State 14095, 終了]
type = DestroySelf
trigger1 = var(0) <= 0

;---------------------------------------------------------------------------
; あおのほうだい

[Statedef 16010]
type = S
movetype = A
physics = S
anim = 12021
ctrl = 0
sprpriority = -7

[State 16010, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 16010, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 16010, 場所固定]
type = BindtoRoot
trigger1 = 1
time = -1
pos = 120,-40

[State 16010, Hitdef]
type = Hitdef
trigger1 = Time % 2 = 0
trigger1 = Time < 80
attr = A,HP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 25,4
getpower = 20,5
givepower = 10,3
pausetime = 2,4
guard.pausetime = 2,2
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 18
guard.ctrltime = 16
airguard.ctrltime = 18
ground.velocity = -4,0
guard.velocity = -5
air.velocity = -4,0
airguard.velocity = -3,-2
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
p2facing = 1

[State 16010, Hitdef]
type = Hitdef
trigger1 = Time = 80
attr = A,HP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 50,5
getpower = 0,0
givepower = 10,3
pausetime = 2,4
guard.pausetime = 1,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 18
guard.ctrltime = 16
airguard.ctrltime = 18
ground.velocity = -4,0
guard.velocity = -3
air.velocity = -4,0
airguard.velocity = -3,-2
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
p2stateno = 56003

[State 16010, ヒットエフェクト]
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

[State 16010, ヒットエフェクト]
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

[State 16010, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 16010, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,5
ignorehitpause = 1
channel = 4

[State 16010, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 16010, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 16010, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16010, 終了]
type = DestroySelf
trigger1 = parent,stateno != 6010 && parent,stateno != 6012

;---------------------------------------------------------------------------
; イドのつるぎ

[Statedef 16021]
type = S
movetype = A
physics = S
anim = 3050
ctrl = 0
sprpriority = 3

[State 16021, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 16021, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,4

[State 16021, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
trigger1 = root,var(55)/1000%10 != 1
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 25,5
getpower = 0,0
givepower = 50,10
pausetime = 0,6
guard.pausetime = 0,6
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 14
guard.hittime = 14
air.hittime = 20
guard.ctrltime = 14
airguard.ctrltime = 20
ground.velocity = -4,-5
guard.velocity = -4
air.velocity = -4,-5.5
airguard.velocity = -3,-4
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
yaccel = 0.5
p2stateno = 56020
p2facing = 1

[State 16021, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
trigger1 = root,var(55)/1000%10 = 1
attr = S,HP
hitflag = MAFD
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 50,10
getpower = 0,0
givepower = 50,10
pausetime = 0,6
guard.pausetime = 0,6
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 14
guard.hittime = 14
air.hittime = 20
guard.ctrltime = 14
airguard.ctrltime = 20
ground.velocity = -4,-5
guard.velocity = -4
air.velocity = -4,-5.5
airguard.velocity = -3,-4
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
yaccel = 0.5
p2stateno = 56020
p2facing = 1

[State 16021, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16021, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16021, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 16021, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 16021, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16021, 次の衝撃波]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Ido"
pos = 60,0
ID = 16021
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16021
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 16021, 終了]
type = DestroySelf
trigger1 = Animtime = 0
trigger2 = FrontEdgeBodyDist < -100

;---------------------------------------------------------------------------
; イドのつるぎ

[Statedef 16023]
type = S
movetype = A
physics = S
anim = 3050
ctrl = 0
sprpriority = 3

[State 16023, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 16023, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,4

[State 16023, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
trigger1 = root,var(55)/1000%10 != 1
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 30,5
getpower = 0,0
givepower = 50,10
pausetime = 0,6
guard.pausetime = 0,6
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 14
guard.hittime = 14
air.hittime = 20
guard.ctrltime = 14
airguard.ctrltime = 20
ground.velocity = -4,-5
guard.velocity = -4
air.velocity = -4,-5.5
airguard.velocity = -3,-4
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
yaccel = 0.5
p2stateno = 56020
p2facing = -1

[State 16023, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
trigger1 = root,var(55)/1000%10 = 1
attr = S,HP
hitflag = MAFD
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 60,5
getpower = 0,0
givepower = 50,10
pausetime = 0,6
guard.pausetime = 0,6
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 14
guard.hittime = 14
air.hittime = 20
guard.ctrltime = 14
airguard.ctrltime = 20
ground.velocity = -4,-5
guard.velocity = -4
air.velocity = -4,-5.5
airguard.velocity = -3,-4
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
yaccel = 0.5
p2stateno = 56020
p2facing = -1

[State 16023, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16023, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16023, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 16023, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 16023, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16023, 次の衝撃波]
type = Helper
trigger1 = AnimElemTime(5) = 0
helpertype = normal
name = "Ido"
pos = -60,0
ID = 160231
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16023
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 16023, 終了]
type = DestroySelf
trigger1 = Animtime = 0
trigger2 = BackEdgeBodyDist < -100

;---------------------------------------------------------------------------
; イドのつるぎ

[Statedef 16022]
type = S
movetype = A
physics = S
anim = 3051
ctrl = 0
sprpriority = 3

[State 16022, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 16022, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 16022, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
trigger1 = root,var(55)/1000%10 != 1
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 40,5
getpower = 0,0
givepower = 50,10
pausetime = 0,6
guard.pausetime = 0,6
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 14
ground.slidetime = 14
guard.hittime = 14
air.hittime = 20
guard.ctrltime = 14
airguard.ctrltime = 20
ground.velocity = -4,-5
guard.velocity = -4
air.velocity = -4,-5.5
airguard.velocity = -3,-4
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
yaccel = 0.5
p2stateno = 56023
p2facing = 1

[State 16022, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
trigger1 = root,var(55)/1000%10 = 1
attr = S,HP
hitflag = MAFD
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 60,5
getpower = 0,0
givepower = 50,10
pausetime = 0,6
guard.pausetime = 0,6
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 14
ground.slidetime = 14
guard.hittime = 14
air.hittime = 20
guard.ctrltime = 14
airguard.ctrltime = 20
ground.velocity = -4,-5
guard.velocity = -4
air.velocity = -4,-5.5
airguard.velocity = -3,-4
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
yaccel = 0.5
p2stateno = 56023
p2facing = 1

[State 16022, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16022, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16022, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 16022, PlaySnd]
type = ParentVarSet
trigger1 = AnimElemTime(2) = 0
var(10) = 5

[State 16022, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
trigger2 = AnimElemTime(2) = 0
var(9) = 2
ignorehitpause = 1

[State 16022, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 4
ignorehitpause = 1

[State 16022, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1

[State 16022, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 16022, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16022, 終了]
type = DestroySelf
trigger1 = Animtime = 0

;---------------------------------------------------------------------------
; ひょうがのあらし

[Statedef 16030]
type = S
movetype = A
physics = N
anim = 12040
velset = 6,30
ctrl = 0
sprpriority = 3

[State 16030, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 16030, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 16030, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = A,HP
hitflag = MAFD
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 14,2
getpower = 0,0
givepower = 10,5
pausetime = 0,4
guard.pausetime = 0,2
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 16
guard.ctrltime = 16
airguard.ctrltime = 16
ground.velocity = -4,-3
guard.velocity = -5
air.velocity = -2,-1
airguard.velocity = -2,-1
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
palfx.time = 40
palfx.add = 120,110,180
palfx.mul = 180,205,235

[State 16030, エフェクト]
type = Explod
trigger1 = Time = 0
anim = ifelse(random%2 = 1,12041,12042)
postype = p1
pos = -80,-20
random = 80,60
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
ID = 160301
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 16030, エフェクト]
type = Explod
trigger1 = Time = 0
anim = ifelse(random%2 = 1,12042,12041)
postype = p1
pos = 80,20
random = 80,60
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
ID = 160302
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 16030, ヒットスパーク位置]
type = VarRandom
trigger1 = 1
v = 0
range = -40,40

[State 16030, ヒットスパーク位置]
type = VarRandom
trigger1 = 1
v = 1
range = -80,-20

[State 16030, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X)+var(0),ceil(P2Dist Y)+var(1)
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

[State 16030, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X)+var(0),ceil(P2Dist Y)+var(1)
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

[State 16030, ヒットエフェクト]
type = Explod
trigger1 = moveguarded
anim = F40
postype = p1
pos = ceil(P2Dist X)-20,ceil(P2Dist Y)+var(1)
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1

[State 16030, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1

[State 16030, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 1
ignorehitpause = 1

[State 16030, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1

[State 16030, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 16030, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16030, 終了]
type = RemoveExplod
trigger1 = Pos Y >= 50
ID = 160301

[State 16030, 終了]
type = RemoveExplod
trigger1 = Pos Y >= 50
ID = 160302

[State 16030, 終了]
type = DestroySelf
trigger1 = Pos Y >= 50

;---------------------------------------------------------------------------
; ぎんのほうだい

[Statedef 16041]
type = S
movetype = A
physics = S
anim = 3041
ctrl = 0
sprpriority = 5

[State 16041, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 16041, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 16041, 白黒に]
type = PalFX
trigger1 = 1
time = -1
color = 0

[State 16041, Hitdef]
type = Hitdef
triggerall = root,var(55)/1000%10 != 1
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(6) = 0
trigger3 = AnimElemTime(9) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 25,10
getpower = 0,0
givepower = 20,10
pausetime = 0,0
guard.pausetime = 1,8
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 18
guard.ctrltime = 16
airguard.ctrltime = 18
ground.velocity = -4,-6
guard.velocity = -3
air.velocity = -4,-6
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
sprpriority = 3

[State 16041, Hitdef]
type = Hitdef
triggerall = root,var(55)/1000%10 = 1
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(6) = 0
trigger3 = AnimElemTime(9) = 0
attr = A,SP
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 60,10
getpower = 0,0
givepower = 20,10
pausetime = 0,0
guard.pausetime = 1,8
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 18
guard.ctrltime = 16
airguard.ctrltime = 18
ground.velocity = -4,-6
guard.velocity = -3
air.velocity = -4,-6
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
sprpriority = 3

[State 16041, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 0
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 16041, ガードエフェクト]
type = Helper
trigger1 = moveguarded
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

[State 16041, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 16041, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 6
ignorehitpause = 1
persistent = 0

[State 16041, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 16041, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 3110, 8]
type = VarSet
trigger1 = movehit
var(0) = 1
ignorehitpause = 1

[State 16041, Pause]
type = Pause
trigger1 = var(0) = 1
trigger1 = GameTime % 2 = 1
trigger1 = AnimTime < -7
trigger1 = roundstate = 2
time = 1
movetime = 0
ignorehitpause = 1

[State 16041, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16041, 終了]
type = DestroySelf
trigger1 = Animtime = 0

;---------------------------------------------------------------------------
; だんざいのとけい（ヘルパー）

[Statedef 16050]
type = A
movetype = A
physics = N
anim = 16050
ctrl = 0
sprpriority = 5

[State 16050, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 16050, 横移動]
type = VelSet
trigger1 = Time = 0
x = 30

[State 16050, 横移動]
type = VelSet
trigger1 = Time = 7
x = 0

[State 16050, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3012
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 16050, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 10,0
getpower = 0,0
givepower = 50,20
pausetime = 0,0
guard.pausetime = 0,0
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
ground.velocity = 0,0
guard.velocity = -5
air.velocity = 0,0
airguard.velocity = -4,-3
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
kill = 0
guard.kill = root,var(54)/10000%10
numhits = 1
hitonce = 1
p1stateno = 16051
p2stateno = 56050
p2facing = 1
envshake.time = 14
envshake.ampl = -6
envshake.freq = 90
envshake.phase = 90

[State 16050, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 16050, 終了]
type = ChangeState
trigger1 = Time > 10
trigger2 = root,MoveType = H
trigger3 = moveguarded
value = 11102

;---------------------------------------------------------------------------
; だんざいのとけい（ヒット）

[Statedef 16051]
type = A
movetype = A
physics = N
anim = 99999
velset = 0,0
ctrl = 0
sprpriority = 5

[State 16051, 位置固定]
type = PosAdd
trigger1 = root,var(7) = 2
x = ceil(P2Dist X)+5

[State 16051, 位置固定]
type = PosSet
trigger1 = root,var(7) = 2
;y = ceil(Enemy,Pos Y)-40
y = ceil(Enemy,Pos Y) - ceil((Enemy,const(size.height)/1.3)+5)

[State 16051, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3012
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 16051, ヒットエフェクト]
type = Explod
trigger1 = Time = 0
anim = 10000
postype = p1
pos = ceil(P2Dist X),-5
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

[State 16051, ヒットエフェクト]
type = Explod
trigger1 = Time = 0
anim = 10010
postype = p1
pos = ceil(P2Dist X),-5
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

[State 16051, 親に状態を伝える]
type = ParentVarSet
trigger1 = Time = 0
var(7) = 1

[State 16051, 親の状況を取得]
type = ChangeState
trigger1 = root,var(7) = 2
value = 16052

;---------------------------------------------------------------------------
; だんざいのとけい（フィニッシュ）

[Statedef 16052]
type = A
movetype = A
physics = N
anim = 99999
ctrl = 0
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133020
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133021
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133022
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133023
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133024
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133025
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133026
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133027
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133028
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133029
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133030
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133030
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 0
anim = 133031
ID = 160521
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1

[State 16052, アニメの入れ替え]
type = RemoveExplod
trigger1 = Time = 20
ID = 160521

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143020
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143021
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143022
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143023
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143024
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143025
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143026
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143027
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143028
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143029
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143030
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143030
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ]
type = Explod
trigger1 = Time = 20
anim = 143031
ID = 160522
postype = p1
pos = 0,0
facing = 1
bindtime = 1
removetime = -1
ownpal = 1
sprpriority = 5

[State 16052, ナイフ消去]
type = RemoveExplod
trigger1 = time = 40
ID = 160522

[State 16052, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = s3,2

[State 16052, PlaySnd]
type = PlaySnd
trigger1 = Time = 21
value = s3,3

[State 16052, PlaySnd]
type = PlaySnd
trigger1 = Time = [25,30]
trigger1 = Time % 2 = 0
value = s1,2
channel = 5
volume = 255

[State 16052, ヒットエフェクト]
type = Explod
trigger1 = Time = [25,30]
trigger1 = Time % 2 = 0
anim = 10000
postype = p1
pos = ceil(P2Dist X),0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 7
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 16052, ヒットエフェクト]
type = Explod
trigger1 = Time = [25,30]
trigger1 = Time % 2 = 0
anim = 10010
postype = p1
pos = ceil(P2Dist X),0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 7
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 16052, ヒット数]
type = HitAdd
trigger1 = Time = 26
value = 12

[State 16052, ダメージ]
type = TargetLifeAdd
trigger1 = Time = 26
value = -180
absolute = 1

[State 16052, ダメージ]
type = TargetState
trigger1 = Time = 50
value = 56052

[State 16052, 終了]
type = DestroySelf
trigger1 = Time = 55

;---------------------------------------------------------------------------
; しっこくのこころ（ルート）

[Statedef 16060]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 11101

[State 16060, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 16060, 透過指定]
type = Trans
trigger1 = 1
trans = add

[State 16060, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1,0.25

[State 16060, 乱数生成]
type = VarRandom
trigger1 = 1
v = 0
range = -50,50

[State 16060, 剣生成]
type = Helper
trigger1 = Time % 6 = 0
trigger1 = Time < 170
helpertype = normal
name = "Blade"
pos = var(0),0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 16061
ID = 160601
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 16060, 火柱生成]
type = Helper
trigger1 = Time = 180
helpertype = normal
name = "Pillar"
pos = 0,30
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 16062
ID = 160602
ignorehitpause = 1
size.xscale = 2
size.yscale = 2.5

[State 16060, ヒット数処理]
type = VarAdd
trigger1 = var(1) > 0
var(1) = -1

[State 16060, ヒット数処理]
type = ParentVarAdd
trigger1 = var(1) = 1
fvar(1) = 1

[State 16060, 音声フラグ]
type = VarAdd
trigger1 = var(2) > 0
var(2) = -1

[State 16060, PlaySnd]
type = PlaySnd
trigger1 = var(2) > 0
trigger1 = var(3) = 1
value = s1,2
channel = 5
ignorehitpause = 1

[State 16060, PlaySnd]
type = PlaySnd
trigger1 = var(2) > 0
trigger1 = var(3) = 2
value = s1,3
channel = 5
ignorehitpause = 1

[State 16060, 親に状況を伝える]
type = ParentVarSet
trigger1 = Time = 185
var(7) = 1

[State 16060, 終了]
type = DestroySelf
trigger1 = Time > 20
trigger1 = NumHelper(160601) = 0
trigger1 = NumHelper(160602) = 0
trigger2 = root,MoveType = H

;---------------------------------------------------------------------------
; しっこくのこころ（剣）

[Statedef 16061]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 11100

[State 16061, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 16061, 速度]
type = VelSet
trigger1 = AnimElemTime(15) = 0
y = -25

[State 16061, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = A,HP
hitflag = MAFD
guardflag = MA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = 20,6
getpower = 0,0
givepower = 30,10
pausetime = 0,4
guard.pausetime = 0,4
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
ground.velocity = 0,-6
guard.velocity = -2
air.velocity = 0,-6
airguard.velocity = 0,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 0
guard.kill = root,var(54)/10000%10

[State 16061, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-20
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

[State 16061, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-20
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

[State 16061, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-20
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 16061, ヒット数処理]
type = ParentVarSet
trigger1 = movehit
var(1) = 2
persistent = 0
ignorehitpause = 1

[State 11200, サウンドをルートで処理]
type = ParentVarSet
trigger1 = movecontact
var(2) = 2
ignorehitpause = 1
persistent = 0

[State 11200, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(3) = 1
ignorehitpause = 1
persistent = 0

[State 11200, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(3) = 2
ignorehitpause = 1
persistent = 0

[State 16061, 初期化]
type = MoveHitReset
trigger1 = movecontact
ignorehitpause = 1

[State 16061, 消滅]
type = DestroySelf
trigger1 = ceil(ScreenPos Y) < -400

;---------------------------------------------------------------------------
; しっこくのこころ（火柱）

[Statedef 16062]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 11111

[State 16062, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 16062, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 16062, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = A,HP
hitflag = MAFD
guardflag = MA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = 50,20
getpower = 0,0
givepower = 30,10
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
ground.velocity = 0,-6
guard.velocity = -2
air.velocity = 0,-6
airguard.velocity = 0,-6
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
p2stateno = 56062
p2facing = 1

[State 16062, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-20
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

[State 16062, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-20
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

[State 16062, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-20
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1
persistent = 0

[State 16062, ヒット数処理]
type = ParentVarSet
trigger1 = movehit
var(1) = 2
persistent = 0
ignorehitpause = 1

[State 16062, サウンドをルートで処理]
type = ParentVarSet
trigger1 = movecontact
var(2) = 2
ignorehitpause = 1
persistent = 0

[State 16062, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(3) = 1
ignorehitpause = 1
persistent = 0

[State 16062, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(3) = 2
ignorehitpause = 1
persistent = 0

[State 16062, 振動]
type = EnvShake
trigger1 = AnimElemTime(2) = 0
time = 20
ampl = -30
persistent = 0

[State 16062, 振動]
type = EnvShake
trigger1 = roundstate != 2
time = 1
ampl = 0
persistent = 0

[State 16062, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,4

[State 16062, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,23

[State 16062, 色変更]
type = PalFX
trigger1 = 1
time = -1
color = 0

[State 16062, 消滅]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; ひかりのつばさ（攻撃判定）

[Statedef 16070]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 16070

[State 16070, 補正の適用]
type = VarSet
trigger1 = 1
fvar(1) = root,fvar(3)*(root,fvar(4))*fvar(0)
ignorehitpause = 1

[State -2, デバッグ表示]
type = DisplayToClipboard
trigger1 = 1
text = "NumHit=%f"
params = fvar(0)
ignorehitpause = 1

[State 16070, 初期攻撃力]
type = VarSet
trigger1 = Time = 0
fvar(0) = 1
ignorehitpause = 1

[State 16070, 発光エフェクト]
type = BGPalFX
trigger1 = 1
mul = 0,0,0
time = 1
ignorehitpause = 1

[State 16070, 発光エフェクト]
type = Explod
trigger1 = Time = 0
anim = 12051
postype = left
pos = -15,-15
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = -7
scale = 1,1
persistent = 0
ID = 160701

[State 16070, 円形エフェクト]
type = Helper
triggerall = root,var(37)/100%10 = 1
trigger1 = Time = 0
trigger2 = Time % 10 = 0
trigger3 = Time % 10 = 5
helpertype = normal
name = "Selaphic_Wing_ring"
pos = ceil((320-ScreenPos X)-160)*facing,ceil((240-ScreenPos Y)-120)
postype = p1
ownpal = 1
facing = ifelse(Time % 10 = 0,1,-1)
pausemovetime = 0
supermovetime = 0
stateno = 16071
ignorehitpause = 1

[State 16070, 背景フラグの初期化]
type = RemoveExplod
trigger1 = Time = 80
ID = 160701

[State 16070, 発光エフェクト]
type = Explod
trigger1 = Time = 80
anim = 12052
postype = left
pos = -15,-15
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 1
scale = 1,1
persistent = 0

[State 16070, Hitdef]
type = Hitdef
trigger1 = Time % 4 = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = ifelse(root,var(7) = 0,ceil(15*fvar(1)),ceil(20*fvar(1))),8
getpower = 0,0
givepower = 30,20
pausetime = 0,6
guard.pausetime = 0,6
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
ground.velocity = -10,-14
guard.velocity = -5
air.velocity = -10,-14
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
p2facing = 1

[State 16070, TargetState]
type = TargetState
trigger1 = movehit
trigger1 = NumTarget > 0
trigger1 = Target,isHelper = 0
trigger1 = Target,stateno != [120,155]
value = 56070
ignorehitpause = 1

[State 16070, VarAdd]
type = VarAdd
trigger1 = movehit
trigger1 = P2Stateno != [120,155]
trigger1 = P2Stateno != [56070,56079]
fvar(0) = 0.5
ignorehitpause = 1

[State 16070, 振動]
type = envshake
trigger1 = Time % 4 = 0
time = 15
ampl = 3
freq = 80

[State 16070, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16070, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16070, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 16070, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,13
ignorehitpause = 1
channel = 4

[State 16070, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 5

[State 16070, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 16070, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16070, 消滅]
type = DestroySelf
trigger1 = Time > 80

;---------------------------------------------------------------------------
; ひかりのつばさ（虹の輪）

[Statedef 16071]
type = A
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 12001
sprpriority = 7

[State 16071, 補正の適用]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 16071, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(0),fvar(0)

[State 16071, AngleSet]
type = AngleSet
trigger1 = 1
value = 30*Time

[State 16071, VarAdd]
type = VarAdd
trigger1 = 1
fvar(0) = 0.25

[State 16071, VarAdd]
type = VarAdd
trigger1 = 1
var(0) = 10

[State 16071, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-var(0),256

[State 16071, PosAdd]
type = PosAdd
trigger1 = time > 0
x = -ceil(ScreenPos X-fvar(1))
y = -ceil(ScreenPos Y-fvar(2))

[State 16071, VarSet]
type = VarSet
trigger1 = 1
fvar(1) = ScreenPos X

[State 16071, VarSet]
type = VarSet
trigger1 = 1
fvar(2) = ScreenPos Y

[State 16071, DestroySelf]
type = DestroySelf
trigger1 = Time > 20
trigger2 = root,stateno != 6070

;---------------------------------------------------------------------------
; てのひらのひかり・照準

[Statedef 16081]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 99999

[State 16082, VarSet]
type = VarSet
trigger1 = Time = [1,6]
trigger2 = Time = [19,30]
trigger3 = Time = [43,54]
var(5) = 0

[State 16082, VarSet]
type = VarSet
trigger1 = Time = [7,18]
trigger2 = Time = [31,42]
var(5) = 1

[State 16082, VarAdd]
type = VarAdd
trigger1 = Time > 0
trigger1 = var(5) = 0
var(0) = 15

[State 16082, VarAdd]
type = VarAdd
trigger1 = Time > 0
trigger1 = var(5) = 1
var(0) = -15

[State 16081, 速度]
type = PosAdd
trigger1 = 1
x = 12*(Cos(abs(var(0))*Pi/180))

[State 16081, 速度]
type = PosAdd
trigger1 = 1
y = -1*12*(Sin(var(0)*Pi/180))

[State 16081, 照準エフェクト]
type = Explod
trigger1 = Time % 4 = 0
anim = 12060
postype = p1
pos = 0,0
facing = ifelse(root,facing = 1,1,-1)
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2
scale = 0.5,0.5
ID = 60811

[State 16081, 消失]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -30

;---------------------------------------------------------------------------
; てのひらのひかり・攻撃

[Statedef 16082]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 12062+root,var(7)

[State 16082, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 16082, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 16082, ヒットスパーク位置]
type = VarRandom
trigger1 = 1
v = 1
range = -40,40

[State 16082, ヒットスパーク位置]
type = VarRandom
trigger1 = 1
v = 2
range = -80,-20

[State 16082, VarSet]
type = VarSet
trigger1 = 1
var(7) = anim

[State 16082, VarSet]
type = VarSet
trigger1 = Time = [1,6]
trigger2 = Time = [19,30]
trigger3 = Time = [43,54]
var(5) = 0

[State 16082, VarSet]
type = VarSet
trigger1 = Time = [7,18]
trigger2 = Time = [31,42]
var(5) = 1

[State 16082, VarAdd]
type = VarAdd
trigger1 = Time > 0
trigger1 = var(5) = 0
var(0) = 15

[State 16082, VarAdd]
type = VarAdd
trigger1 = Time > 0
trigger1 = var(5) = 1
var(0) = -15

[State 16082, 速度]
type = PosAdd
trigger1 = 1
x = 14*(Cos(abs(var(0))*Pi/180))

[State 16082, 速度]
type = PosAdd
trigger1 = 1
y = -1*14*(Sin(var(0)*Pi/180))

[State 16082, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = A,HP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 25,4
getpower = 0,0
givepower = 20,5
pausetime = 0,10
guard.pausetime = 0,10
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1,
guardsound = -1,
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = -5,-4
guard.velocity = -5
air.velocity = -5,-5
airguard.velocity = 2,-2
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
p2stateno = 56025

[State 16082, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X)+var(1),ceil(P2Dist Y)+var(2)
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

[State 16082, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X)+var(1),ceil(P2Dist Y)+var(2)
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

[State 16082, ガードエフェクト]
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

[State 16082, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 16082, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 9
ignorehitpause = 1
persistent = 0

[State 16082, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 16082, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 16082, 暴走スイッチオン]
type = ParentVarSet
trigger1 = movecontact
var(21) = 1
ignorehitpause = 1
persistent = 0

[State 16082, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16082, 消失]
type = ChangeState
trigger1 = root,var(21) = 1
value = 16083

[State 16082, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -30

;---------------------------------------------------------------------------
; てのひらのひかり・暴走

[Statedef 16083]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = ifelse(PrevStateno = 16082,var(7),12062+root,var(7))

[State 16083, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 16083, ヒットスパーク位置]
type = VarRandom
trigger1 = 1
v = 1
range = -40,40

[State 16083, ヒットスパーク位置]
type = VarRandom
trigger1 = 1
v = 2
range = -80,-20

[State 16083, 一度目の角度]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 0,360
persistent = 0

[State 16083, 一度目の角度]
type = VarRandom
trigger1 = 1
v = 6
range = 60,120
persistent = 0

[State 16083, 透過処理]
type = Trans
trigger1 = 1
trans = add

[State 16083, 角度]
type = Null;AngleDraw
trigger1 = 1

[State 16083, 角度]
type = AngleSet
trigger1 = 1
value = var(0)

[State 16083, 跳ね返り検出]
type = VarAdd
triggerall = var(5) < 3
trigger1 = Pos Y >= 0
trigger2 = ScreenPos Y <= 20
trigger3 = FrontEdgeBodyDist <= -20
trigger4 = BackEdgeBodyDist <= -20
var(5) = 1

[State 16083, 追跡モード時の角度を算出]
type = VarAdd
trigger1 = var(5) = 1
var(0) = 90
persistent = 0

[State 16083, 追跡モード時の角度を算出]
type = VarAdd
trigger1 = var(5) = 2
var(0) = 90
persistent = 0

[State 16083, 追跡モード時の角度を算出]
type = VarAdd
trigger1 = var(5) = 3
var(0) = 90
persistent = 0

[State 16083, 速度]
type = VelSet
trigger1 = 1
x = 24*(Cos(abs(var(0))*Pi/180))

[State 16083, 速度]
type = VelSet
trigger1 = 1
y = -1*24*(Sin(var(0)*Pi/180))

[State 16083, Hitdef]
type = Hitdef
trigger1 = Time % 5 = 0
attr = A,HP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 10,5
getpower = 0,0
givepower = 20,5
pausetime = 0,20
guard.pausetime = 0,10
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
ground.velocity = -2,-5
guard.velocity = -2
air.velocity = -2,-5
airguard.velocity = -2,-2
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
p2stateno = 56025

[State 16083, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16083, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16083, ガードエフェクト]
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

[State 16083, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1

[State 16083, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 9
ignorehitpause = 1

[State 16083, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1

[State 16083, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 16083, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16083, 終了]
type = DestroySelf
triggerall = var(5) = 3
trigger1 = Pos Y >= 30
trigger2 = ScreenPos Y <= -30
trigger3 = FrontEdgeBodyDist <= -30
trigger4 = BackEdgeBodyDist <= -30

;---------------------------------------------------------------------------
; ななつえだのほうけん（剣）

[Statedef 16090]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 16090
sprpriority = 5

[State 16090, 場所固定]
type = BindtoRoot
trigger1 = isHelper(16090)
time = -1
pos = -70,0

[State 16090, 場所固定]
type = BindtoRoot
trigger1 = isHelper(16091)
time = -1
pos = 70,0

[State 16090, 消滅]
type = ChangeState
trigger1 = root,var(6) = 1
value = 16091

[State 16090, 終了]
type = DestroySelf
trigger1 = root,MoveType = H

[Statedef 16091]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 16091
sprpriority = 5

[State 16091, 終了]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; あおぞらをとぶとり（鳥）

[Statedef 16101]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 16100
sprpriority = 2

[State 16101, 場所固定]
type = BindtoRoot
trigger1 = 1
time = -1
pos = -30,-25

[State 16101, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 16101, 透過]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 200,256
ignorehitpause = 1

[State 16101, 角度]
type = AngleDraw
trigger1 = 1

[State 16101, 角度]
type = AngleSet
trigger1 = 1
value = 270

[State 16101, 終了]
type = DestroySelf
trigger1 = root,stateno != 6101

;---------------------------------------------------------------------------
; きせきのうた（羽根・小）

[Statedef 16110]
type = A
movetype = A
physics = N
anim = 16110
ctrl = 0

[State 16110, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)

[State 16110, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 16110, 速度指定]
type = VelSet
trigger1 = 1
x = 9
y = var(0)

[State 16110, 乱数生成]
type = VarRandom
trigger1 = Time = 0
v = 0
range = -5,0

[State 16110, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = A,HP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = high
air.type = high
damage = 30,7
getpower = 0,0
givepower = 20,10
pausetime = 0,10
guard.pausetime = 0,10
sparkno = -1
guard.sparkno = -1
sparkxy = 0,-20
hitsound = -1
guardsound = -1
ground.hittime = 13
ground.slidetime = 13
guard.hittime = 13
air.hittime = 15
guard.ctrltime = 13
airguard.ctrltime = 13
ground.velocity = -2,-7
guard.velocity = -5
air.velocity = -2,-6
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
guard.kill = 0
palfx.time = 40
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
persistent = 0

[State 16110, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16110, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16110, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 16110, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1

[State 16110, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 4
ignorehitpause = 1

[State 16110, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1

[State 16110, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 16110, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16110, 消滅]
type = DestroySelf
trigger1 = time >= 100
trigger2 = FrontEdgeBodyDist <= -50

;---------------------------------------------------------------------------
; きせきのうた（羽根・大）

[Statedef 16111]
type = A
movetype = A
physics = N
anim = 16111
ctrl = 0

[State 16111, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)

[State 16111, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 16111, 速度指定]
type = VelSet
trigger1 = 1
x = 9
y = var(0)

[State 16111, 乱数生成]
type = VarRandom
trigger1 = Time = 0
v = 0
range = -5,0

[State 16111, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = A,HP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = high
air.type = high
damage = 30,7
getpower = 0,0
givepower = 20,10
pausetime = 0,10
guard.pausetime = 0,10
sparkno =-1
guard.sparkno = -1
sparkxy = 0,-20
hitsound = -1
guardsound = -1
ground.hittime = 13
ground.slidetime = 13
guard.hittime = 13
air.hittime = 15
guard.ctrltime = 13
airguard.ctrltime = 13
ground.velocity = -2,-7
guard.velocity = -5
air.velocity = -2,-6
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
guard.kill = 0
palfx.time = 40
palfx.add = 1,1,1
palfx.mul = 200,200,256
palfx.sinadd = 75,75,120,4
palfx.color = 30
palfx.invertall = 1
persistent = 0

[State 16111, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16111, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
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

[State 16111, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 16111, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1

[State 16111, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 4
ignorehitpause = 1

[State 16111, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1

[State 16111, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 16111, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 16111, 消滅]
type = DestroySelf
trigger1 = time >= 100
trigger2 = FrontEdgeBodyDist <= -50

;---------------------------------------------------------------------------
; 射撃（X・ニュートラル）

[Statedef 17000]
type = A
movetype = A
physics = N
anim = 3920
ctrl = 0
velset = 11,0
sprpriority = 3

[State 17000, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17000, 残像]
type = AfterImage
trigger1 = Time = 5
Trans = Add1
timegap = 1
framegap = 1
length = 5
palcolor = 128
palbright = 30,30,30
palcontrast = 255,255,255
paladd = 10,10,10
palmul = 0.75,0.75,0.75
time = -1

[State 17000, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 17000, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3920
ID = 3920
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 17000, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 3920
scale = 1+fvar(1),0.75
ignorehitpause = 1

[State 17000, VarAdd]
type = VarAdd
trigger1 = 1
fvar(1) = 0.2
ignorehitpause = 1

[State 17000, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 25,8
getpower = 10,5
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,-3
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 1
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 17000, ヒットエフェクト]
type = Helper
triggerall = NumHelper(30001) = 0
trigger1 = movehit
helpertype = normal
name = "HitSpark"
pos = ceil(P2Dist X),0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30001
ID = 30001
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 17000, ガードエフェクト]
type = Helper
triggerall = NumHelper(30000) = 0
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30000
ID = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 17000, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17000, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 7
ignorehitpause = 1
persistent = 0

[State 17000, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 17000, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 17000, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17000, 終了]
type = RemoveExplod
trigger1 = FrontEdgeBodyDist < -50
ID = 3920

[State 17000, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -50

;---------------------------------------------------------------------------
; 射撃（X・レバー後ろ）

[Statedef 17001]
type = A
movetype = A
physics = N
anim = 3920
ctrl = 0
velset = 9,0
sprpriority = 3

[State 17001, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17001, 残像]
type = AfterImage
trigger1 = Time = 5
Trans = Add1
timegap = 1
framegap = 1
length = 5
palcolor = 128
palbright = 30,30,30
palcontrast = 255,255,255
paladd = 10,10,10
palmul = 0.75,0.75,0.75
time = -1

[State 17001, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 17001, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3920
ID = 3920
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 17001, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 3920
scale = 1+fvar(1),0.75
ignorehitpause = 1

[State 17001, VarAdd]
type = VarAdd
trigger1 = 1
fvar(1) = 0.2
ignorehitpause = 1

[State 17001, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 25,8
getpower = 10,5
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,-3
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 1
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 17001, ヒットエフェクト]
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

[State 17001, ガードエフェクト]
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

[State 17001, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17001, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 7
ignorehitpause = 1
persistent = 0

[State 17001, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 17001, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 17001, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17001, 終了]
type = RemoveExplod
trigger1 = FrontEdgeBodyDist < -50
ID = 3920

[State 17001, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

;---------------------------------------------------------------------------
; 射撃（X・レバー前）

[Statedef 17002]
type = A
movetype = A
physics = N
anim = 3920
ctrl = 0
velset = 15,0
sprpriority = 3

[State 17002, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17002, 残像]
type = AfterImage
trigger1 = Time = 5
Trans = Add1
timegap = 1
framegap = 1
length = 5
palcolor = 128
palbright = 30,30,30
palcontrast = 255,255,255
paladd = 10,10,10
palmul = 0.75,0.75,0.75
time = -1

[State 17002, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 17002, エフェクト]
type = Explod
trigger1 = Time = 0
anim = 3920
ID = 3920
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 17002, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 3920
scale = 1+fvar(1),0.75
ignorehitpause = 1

[State 17002, VarAdd]
type = VarAdd
trigger1 = 1
fvar(1) = 0.2
ignorehitpause = 1

[State 17002, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 25,8
getpower = 10,5
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,-3
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 1
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 17002, ヒットエフェクト]
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

[State 17002, ガードエフェクト]
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

[State 17002, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17002, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 7
ignorehitpause = 1
persistent = 0

[State 17002, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 17002, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 17002, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17002, 終了]
type = RemoveExplod
trigger1 = FrontEdgeBodyDist < -50
ID = 3920

[State 17002, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -50

;---------------------------------------------------------------------------
; 射撃（X・レバー前）

[Statedef 17003]
type = A
movetype = A
physics = N
anim = 3920
ctrl = 0
sprpriority = 3

[State 17003, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17003, 残像]
type = AfterImage
trigger1 = Time = 0
Trans = Add1
timegap = 1
framegap = 1
length = 5
palcolor = 128
palbright = 30,30,30
palcontrast = 255,255,255
paladd = 10,10,10
palmul = 0.75,0.75,0.75
time = -1

[State 17003, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 17003, 透過処理]
type = Trans
trigger1 = 1
trans = addalpha
alpha = ceil(fvar(0)),256

[State 17003, 角度]
type = AngleDraw
trigger1 = 1
scale = fvar(1),1

[State 17003, 角度設定]
type = VarSet
trigger1 = Time = 0
var(0) = 30

[State 17003, 角度]
type = AngleSet
trigger1 = 1
value = var(0)

[State 17003, 速度]
type = PosAdd
trigger1 = 1
x = 10*(Cos(abs(var(0))*Pi/180))

[State 17003, 速度]
type = PosAdd
trigger1 = 1
y = -1*10*(Sin(var(0)*Pi/180))

[State 17003, 透過用変数]
type = VarAdd
trigger1 = 1
trigger1 = fvar(0) < 250
fvar(0) = 50

[State 17003, 角度用変数]
type = VarSet
trigger1 = Time = 0
fvar(1) = 1

[State 17003, 角度用変数]
type = VarAdd
trigger1 = Time > 0
trigger1 = Time % 2 = 0
fvar(1) = 0.25

[State 17003, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 25,8
getpower = 10,5
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,-3
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 1
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 17003, ヒットエフェクト]
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

[State 17003, ガードエフェクト]
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

[State 17003, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17003, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 7
ignorehitpause = 1
persistent = 0

[State 17003, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 17003, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 17003, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17003, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

;---------------------------------------------------------------------------
; 射撃（X・レバー後）

[Statedef 17004]
type = A
movetype = A
physics = N
anim = 3920
ctrl = 0
sprpriority = 3

[State 17004, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17004, 残像]
type = AfterImage
trigger1 = Time = 0
Trans = Add1
timegap = 1
framegap = 1
length = 5
palcolor = 128
palbright = 30,30,30
palcontrast = 255,255,255
paladd = 10,10,10
palmul = 0.75,0.75,0.75
time = -1

[State 17004, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 17004, 透過処理]
type = Trans
trigger1 = 1
trans = addalpha
alpha = ceil(fvar(0)),256

[State 17004, 角度]
type = AngleDraw
trigger1 = 1
scale = fvar(1),1

[State 17004, 角度設定]
type = VarSet
trigger1 = isHelper(70010) = 1
var(0) = 20

[State 17004, 角度設定]
type = VarSet
trigger1 = isHelper(70011) = 1
var(0) = 10

[State 17004, 角度設定]
type = VarSet
trigger1 = isHelper(70012) = 1
var(0) = 0

[State 17004, 角度設定]
type = VarSet
trigger1 = isHelper(70013) = 1
var(0) = 350

[State 17004, 角度設定]
type = VarSet
trigger1 = isHelper(70014) = 1
var(0) = 340

[State 17004, 角度]
type = AngleSet
trigger1 = 1
value = var(0)

[State 17004, 速度]
type = PosAdd
trigger1 = 1
x = 10*(Cos(abs(var(0))*Pi/180))

[State 17004, 速度]
type = PosAdd
trigger1 = 1
y = -1*10*(Sin(var(0)*Pi/180))

[State 17004, 透過用変数]
type = VarAdd
trigger1 = 1
trigger1 = fvar(0) < 250
fvar(0) = 50

[State 17004, 角度用変数]
type = VarSet
trigger1 = Time = 0
fvar(1) = 1

[State 17004, 角度用変数]
type = VarAdd
trigger1 = Time > 0
trigger1 = Time % 2 = 0
fvar(1) = 0.25

[State 17004, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 25,8
getpower = 10,5
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,-3
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 1
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 17004, ヒットエフェクト]
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

[State 17004, ガードエフェクト]
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

[State 17004, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17004, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 7
ignorehitpause = 1
persistent = 0

[State 17004, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 17004, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 17004, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17004, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

;---------------------------------------------------------------------------
; 射撃（XY同時・プログラミング）

;0	:多重入力防止用
;1	:コマンドと値の定義
;2～11	:記憶領域
;14	:入力回数

[Statedef 17005]
type = A
movetype = A
physics = N
anim = 3924
ctrl = 0
velset = 0,0
sprpriority = 3

[State 17005, 透過用変数]
type = VarAdd
trigger1 = 1
trigger1 = fvar(0) < 250
fvar(0) = 50

[State 17005, 透過処理]
type = Trans
trigger1 = 1
trans = add

[State 17005, デフォルトではありえない値に]
type = VarRangeSet
trigger1 = Time = 0
first = 2
last = 11
value = -1

[State 17005, インデックス記憶]
type = VarSet
triggerall = Time > 5
trigger1 = root,command = "fwd"
trigger2 = root,command = "dfwd"
trigger3 = root,command = "ufwd"
trigger4 = root,command = "back"
trigger5 = root,command = "dback"
trigger6 = root,command = "uback"
trigger7 = root,command = "down"
trigger8 = root,command = "up"
var(0) = 2

[State 17005, インデックス記憶]
type = VarAdd
triggerall = Time > 5
trigger1 = root,command = "fwd"
trigger2 = root,command = "dfwd"
trigger3 = root,command = "ufwd"
trigger4 = root,command = "back"
trigger5 = root,command = "dback"
trigger6 = root,command = "uback"
trigger7 = root,command = "down"
trigger8 = root,command = "up"
var(14) = 1

[State 17005, 時間制限]
type = VarAdd
trigger1 = var(0) > 0
var(0) = -1

[State 17005, 代入する値を指定]
type = VarSet
triggerall = Time > 5
trigger1 = root,command = "fwd"
var(1) = 0

[State 17005, 代入する値を指定]
type = VarSet
triggerall = Time > 5
trigger1 = root,command = "dfwd"
var(1) = 315

[State 17005, 代入する値を指定]
type = VarSet
triggerall = Time > 5
trigger1 = root,command = "ufwd"
var(1) = 45

[State 17005, 代入する値を指定]
type = VarSet
triggerall = Time > 5
trigger1 = root,command = "back"
var(1) = 180

[State 17005, 代入する値を指定]
type = VarSet
triggerall = Time > 5
trigger1 = root,command = "dback"
var(1) = 225

[State 17005, 代入する値を指定]
type = VarSet
triggerall = Time > 5
trigger1 = root,command = "uback"
var(1) = 135

[State 17005, 代入する値を指定]
type = VarSet
triggerall = Time > 5
trigger1 = root,command = "up"
var(1) = 90

[State 17005, 代入する値を指定]
type = VarSet
triggerall = Time > 5
trigger1 = root,command = "down"
var(1) = 270

[State 17005, 方向セット]
type = VarSet
triggerall = Time > 5
trigger1 = var(0) = 1
trigger1 = var(14) = 1
trigger1 = var(2) = -1
var(2) = var(1)

[State 17005, 方向セット]
type = VarSet
triggerall = Time > 5
trigger1 = var(0) = 1
trigger1 = var(14) = 2
trigger1 = var(2) != -1
trigger1 = var(3) = -1
var(3) = var(1)

[State 17005, 方向セット]
type = VarSet
triggerall = Time > 5
trigger1 = var(0) = 1
trigger1 = var(14) = 3
trigger1 = var(3) != -1
trigger1 = var(4) = -1
var(4) = var(1)

[State 17005, 方向セット]
type = VarSet
triggerall = Time > 5
trigger1 = var(0) = 1
trigger1 = var(14) = 4
trigger1 = var(4) != -1
trigger1 = var(5) = -1
var(5) = var(1)

[State 17005, 方向セット]
type = VarSet
triggerall = Time > 5
trigger1 = var(0) = 1
trigger1 = var(14) = 5
trigger1 = var(5) != -1
trigger1 = var(6) = -1
var(6) = var(1)

[State 17005, 方向セット]
type = VarSet
triggerall = Time > 5
trigger1 = var(0) = 1
trigger1 = var(14) = 6
trigger1 = var(6) != -1
trigger1 = var(7) = -1
var(7) = var(1)

[State 17005, 方向セット]
type = VarSet
triggerall = Time > 5
trigger1 = var(0) = 1
trigger1 = var(14) = 7
trigger1 = var(7) != -1
trigger1 = var(8) = -1
var(8) = var(1)

[State 17005, 方向セット]
type = VarSet
triggerall = Time > 5
trigger1 = var(0) = 1
trigger1 = var(14) = 8
trigger1 = var(8) != -1
trigger1 = var(9) = -1
var(9) = var(1)

[State 17005, 方向セット]
type = VarSet
triggerall = Time > 5
trigger1 = var(0) = 1
trigger1 = var(14) = 9
trigger1 = var(9) != -1
trigger1 = var(10) = -1
var(10) = var(1)

[State 17005, 方向セット]
type = VarSet
triggerall = Time > 5
trigger1 = var(0) = 1
trigger1 = var(14) = 10
trigger1 = var(10) != -1
trigger1 = var(11) = -1
var(11) = var(1)

[State 17005, 攻撃へ]
type = ChangeState
trigger1 = Time > 36
value = 17006

;---------------------------------------------------------------------------
; 射撃（XY同時・攻撃）

[Statedef 17006]
type = A
movetype = A
physics = N
anim = 3924
ctrl = 0
velset = 10,0
sprpriority = 3

[State 17006, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17006, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,26
channel = 3

[State 17006, 残像]
type = Null;AfterImage
trigger1 = Time = 0
Trans = Add1
timegap = 1
framegap = 1
length = 5
palcolor = 128
palbright = 30,30,30
palcontrast = 255,255,255
paladd = 10,10,10
palmul = 0.75,0.75,0.75
time = -1

[State 17006, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 17006, 透過処理]
type = Trans
trigger1 = 1
trans = add

[State 17006, 角度設定]
type = VelSet
trigger1 = Time = 5
x = 0

[State 17006, 角度設定]
type = VarSet
trigger1 = Time = 5
trigger1 = var(2) != -1
var(12) = var(2)

[State 17006, 角度設定]
type = VarSet
trigger1 = Time = 7
trigger1 = var(3) != -1
var(12) = var(3)

[State 17006, 角度設定]
type = VarSet
trigger1 = Time = 9
trigger1 = var(4) != -1
var(12) = var(4)

[State 17006, 角度設定]
type = VarSet
trigger1 = Time = 11
trigger1 = var(5) != -1
var(12) = var(5)

[State 17006, 角度設定]
type = VarSet
trigger1 = Time = 13
trigger1 = var(6) != -1
var(12) = var(6)

[State 17006, 角度設定]
type = VarSet
trigger1 = Time = 15
trigger1 = var(7) != -1
var(12) = var(7)

[State 17006, 角度設定]
type = VarSet
trigger1 = Time = 17
trigger1 = var(8) != -1
var(12) = var(8)

[State 17006, 角度設定]
type = VarSet
trigger1 = Time = 19
trigger1 = var(9) != -1
var(12) = var(9)

[State 17006, 角度設定]
type = VarSet
trigger1 = Time = 21
trigger1 = var(10) != -1
var(12) = var(10)

[State 17006, 角度設定]
type = VarSet
trigger1 = Time = 23
trigger1 = var(11) != -1
var(12) = var(11)

[State 17006, 角度]
type = AngleDraw
trigger1 = 1

[State 17006, 角度]
type = AngleSet
trigger1 = 1
value = var(12)

[State 17006, 速度]
type = PosAdd
trigger1 = 1
x = 10*(Cos(abs(var(12))*Pi/180))

[State 17006, 速度]
type = PosAdd
trigger1 = 1
y = -1*10*(Sin(var(12)*Pi/180))

[State 17006, Hitdef]
type = Hitdef
trigger1 = Time % 2 = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 15,5
getpower = 10,5
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,0
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 1
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = root,var(54)/10000%10

[State 17006, ヒットエフェクト]
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

[State 17006, ガードエフェクト]
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

[State 17006, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1

[State 17006, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 7
ignorehitpause = 1

[State 17006, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1

[State 17006, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 17006, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17006, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70
trigger2 = BackEdgeBodyDist < -70
trigger3 = ScreenPos Y <= 0
trigger4 = Pos Y >= 20

;---------------------------------------------------------------------------
; 射撃（Y・ニュートラル）

[Statedef 17030]
type = A
movetype = A
physics = N
anim = 3922
ctrl = 0
sprpriority = 3

[State 17030, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17030, 残像]
type = AfterImage
trigger1 = Time = 5
Trans = Add1
timegap = 1
framegap = 1
length = 5
palcolor = 128
palbright = 30,30,30
palcontrast = 255,255,255
paladd = 10,10,10
palmul = 0.75,0.75,0.75
time = -1

[State 17030, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 17030, 角度]
type = AngleDraw
trigger1 = 1

[State 17030, 角度設定]
type = VarSet
trigger1 = isHelper(70300) = 1
trigger1 = Time = 0
var(0) = 335

[State 17030, 角度設定]
type = VarSet
trigger1 = isHelper(70301) = 1
trigger1 = Time = 0
var(0) = 330

[State 17030, 角度設定]
type = VarSet
trigger1 = isHelper(70302) = 1
trigger1 = Time = 0
var(0) = 325

[State 17030, 角度設定]
type = VarSet
trigger1 = isHelper(70303) = 1
trigger1 = Time = 0
var(0) = 320

[State 17030, 角度設定]
type = VarSet
trigger1 = isHelper(70304) = 1
trigger1 = Time = 0
var(0) = 315

[State 17030, 角度設定]
type = VarSet
trigger1 = Pos Y >= 0
var(0) = 0
persistent = 0

[State 17030, 角度設定]
type = VarSet
trigger1 = isHelper(70300) = 1
trigger1 = Time > 0
trigger1 = var(0) = 0
var(0) = 35

[State 17030, 角度設定]
type = VarSet
trigger1 = isHelper(70301) = 1
trigger1 = Time > 0
trigger1 = var(0) = 0
var(0) = 40

[State 17030, 角度設定]
type = VarSet
trigger1 = isHelper(70302) = 1
trigger1 = Time > 0
trigger1 = var(0) = 0
var(0) = 45

[State 17030, 角度設定]
type = VarSet
trigger1 = isHelper(70303) = 1
trigger1 = Time > 0
trigger1 = var(0) = 0
var(0) = 50

[State 17030, 角度設定]
type = VarSet
trigger1 = isHelper(70304) = 1
trigger1 = Time > 0
trigger1 = var(0) = 0
var(0) = 55

[State 17030, 角度]
type = AngleSet
trigger1 = 1
value = var(0)

[State 17030, 速度]
type = PosAdd
trigger1 = 1
x = 8*(Cos(abs(var(0))*Pi/180))

[State 17030, 速度]
type = PosAdd
trigger1 = 1
y = -1*8*(Sin(var(0)*Pi/180))

[State 17030, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 25,8
getpower = 10,5
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,-3
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 1
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 17030, ヒットエフェクト]
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

[State 17030, ガードエフェクト]
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

[State 17030, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17030, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 7
ignorehitpause = 1
persistent = 0

[State 17030, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 17030, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = Pos Y >= 0
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17030, サウンドの種類]
type = ParentVarSet
trigger1 = Pos Y >= 0
var(10) = 8
ignorehitpause = 1
persistent = 0

[State 17030, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 17030, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17030, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -20

;---------------------------------------------------------------------------
; 射撃（Y・レバー前）

[Statedef 17031]
type = A
movetype = A
physics = N
anim = 3922
ctrl = 0
sprpriority = 3

[State 17031, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17031, 残像]
type = AfterImage
trigger1 = Time = 5
Trans = Add1
timegap = 1
framegap = 1
length = 5
palcolor = 128
palbright = 30,30,30
palcontrast = 255,255,255
paladd = 10,10,10
palmul = 0.75,0.75,0.75
time = -1

[State 17031, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 17031, 角度]
type = AngleDraw
trigger1 = 1

[State 17031, 角度設定]
type = VarSet
trigger1 = isHelper(70310) = 1
trigger1 = var(1) = 0
var(0) = 20

[State 17031, 角度設定]
type = VarSet
trigger1 = isHelper(70311) = 1
trigger1 = var(1) = 0
var(0) = 10

[State 17031, 角度設定]
type = VarSet
trigger1 = isHelper(70312) = 1
trigger1 = var(1) = 0
var(0) = 0

[State 17031, 角度設定]
type = VarSet
trigger1 = isHelper(70313) = 1
trigger1 = var(1) = 0
var(0) = 350

[State 17031, 角度設定]
type = VarSet
trigger1 = isHelper(70314) = 1
trigger1 = var(1) = 0
var(0) = 340

[State 17031, 角度設定]
type = VarSet
trigger1 = Time = 0
var(1) = 0
persistent = 0

[State 17031, 角度設定]
type = VarSet
trigger1 = FrontEdgeBodyDist <= -10
var(1) = 1
persistent = 0

[State 17031, 角度設定]
type = VarSet
trigger1 = isHelper(70310) = 1
trigger1 = Time > 0
trigger1 = var(1) = 1
var(0) = 160

[State 17031, 角度設定]
type = VarSet
trigger1 = isHelper(70311) = 1
trigger1 = Time > 0
trigger1 = var(1) = 1
var(0) = 170

[State 17031, 角度設定]
type = VarSet
trigger1 = isHelper(70312) = 1
trigger1 = Time > 0
trigger1 = var(1) = 1
var(0) = 180

[State 17031, 角度設定]
type = VarSet
trigger1 = isHelper(70313) = 1
trigger1 = Time > 0
trigger1 = var(1) = 1
var(0) = 190

[State 17031, 角度設定]
type = VarSet
trigger1 = isHelper(70314) = 1
trigger1 = Time > 0
trigger1 = var(1) = 1
var(0) = 200

[State 17031, 角度]
type = AngleSet
trigger1 = 1
value = var(0)

[State 17031, 速度]
type = PosAdd
trigger1 = var(1) = 0
x = 8*(Cos(abs(var(0))*Pi/180))

[State 17031, 速度]
type = PosAdd
trigger1 = var(1) = 1
x = 8*(Cos(abs(var(0))*Pi/180))

[State 17031, 速度]
type = PosAdd
trigger1 = 1
y = -1*8*(Sin(var(0)*Pi/180))

[State 17031, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 25,8
getpower = 10,5
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,-3
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 1
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 17031, ヒットエフェクト]
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

[State 17031, ガードエフェクト]
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

[State 17031, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17031, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 7
ignorehitpause = 1
persistent = 0

[State 17031, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 17031, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = FrontEdgeBodyDist <= -10
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17031, サウンドの種類]
type = ParentVarSet
trigger1 = FrontEdgeBodyDist <= -10
var(10) = 8
ignorehitpause = 1
persistent = 0

[State 17031, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 17031, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17031, 終了]
type = DestroySelf
trigger1 = BackEdgeBodyDist < -20

;---------------------------------------------------------------------------
; 射撃（Y・レバー前）

[Statedef 17032]
type = A
movetype = A
physics = N
anim = 3922
ctrl = 0
sprpriority = 3

[State 17032, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17032, 残像]
type = AfterImage
trigger1 = Time = 5
Trans = Add1
timegap = 1
framegap = 1
length = 5
palcolor = 128
palbright = 30,30,30
palcontrast = 255,255,255
paladd = 10,10,10
palmul = 0.75,0.75,0.75
time = -1

[State 17032, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 17032, 角度]
type = AngleDraw
trigger1 = 1

[State 17032, 角度設定]
type = VarSet
trigger1 = isHelper(70320) = 1
trigger1 = Time = 0
var(0) = 35

[State 17032, 角度設定]
type = VarSet
trigger1 = isHelper(70321) = 1
trigger1 = Time = 0
var(0) = 40

[State 17032, 角度設定]
type = VarSet
trigger1 = isHelper(70322) = 1
trigger1 = Time = 0
var(0) = 45

[State 17032, 角度設定]
type = VarSet
trigger1 = isHelper(70323) = 1
trigger1 = Time = 0
var(0) = 50

[State 17032, 角度設定]
type = VarSet
trigger1 = isHelper(70324) = 1
trigger1 = Time = 0
var(0) = 55

[State 17032, 角度設定]
type = VarSet
trigger1 = ScreenPos Y <= 10
var(0) = 0
persistent = 0

[State 17032, 角度設定]
type = VarSet
trigger1 = isHelper(70320) = 1
trigger1 = Time > 0
trigger1 = var(0) = 0
var(0) = 335

[State 17032, 角度設定]
type = VarSet
trigger1 = isHelper(70321) = 1
trigger1 = Time > 0
trigger1 = var(0) = 0
var(0) = 330

[State 17032, 角度設定]
type = VarSet
trigger1 = isHelper(70322) = 1
trigger1 = Time > 0
trigger1 = var(0) = 0
var(0) = 325

[State 17032, 角度設定]
type = VarSet
trigger1 = isHelper(70323) = 1
trigger1 = Time > 0
trigger1 = var(0) = 0
var(0) = 320

[State 17032, 角度設定]
type = VarSet
trigger1 = isHelper(70324) = 1
trigger1 = Time > 0
trigger1 = var(0) = 0
var(0) = 315

[State 17032, 角度]
type = AngleSet
trigger1 = 1
value = var(0)

[State 17032, 速度]
type = PosAdd
trigger1 = 1
x = 8*(Cos(abs(var(0))*Pi/180))

[State 17032, 速度]
type = PosAdd
trigger1 = 1
y = -1*8*(Sin(var(0)*Pi/180))

[State 17032, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 25,8
getpower = 10,5
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,-3
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 1
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 17032, ヒットエフェクト]
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

[State 17032, ガードエフェクト]
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

[State 17032, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17032, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 7
ignorehitpause = 1
persistent = 0

[State 17032, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 17032, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = ScreenPos Y <= 10
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17032, サウンドの種類]
type = ParentVarSet
trigger1 = ScreenPos Y <= 10
var(10) = 8
ignorehitpause = 1
persistent = 0

[State 17032, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 17032, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17032, 終了]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -20

;---------------------------------------------------------------------------
; しろのつるぎルート（X）

[Statedef 17100]
type = A
movetype = A
physics = N
anim = 3923
ctrl = 0
velset = 10,0
sprpriority = 3

[State 17100, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17100, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = -7,-3

[State 17100, ナイフ生成音]
type = PlaySnd
trigger1 = Time % 7 = 0
value = s3,26
channel = 4

[State 17100, ナイフ生成]
type = Helper
trigger1 = Time % 7 = 0
helpertype = normal
name = "Knife"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17101
ID = 17101
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 17100, 終了]
type = ChangeState
trigger1 = FrontEdgeBodyDist < -20
value = 17105

;---------------------------------------------------------------------------
; しろのつるぎルート（X・待機状態）

[Statedef 17105]
type = A
movetype = I
physics = N
anim = 99999
ctrl = 0
velset = 0,0
sprpriority = 3

[State 17105, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17105, 音声フラグ]
type = VarAdd
trigger1 = var(9) > 0
var(9) = -1

[State 17105, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 2
value = s1,3
channel = 5
ignorehitpause = 1

[State 17105, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 7
value = s1,14
channel = 5
ignorehitpause = 1

[State 17105, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 8
value = s3,27
channel = 7
ignorehitpause = 1

[State 17105, ルートの状況をチェック]
type = VarSet
trigger1 = root,stateno = [7000,7069]
trigger1 = Time > 10
var(0) = 1

[State 17105, 終了]
type = DestroySelf
trigger1 = NumHelper(17101) = 0

;---------------------------------------------------------------------------
; しろのつるぎ（停滞）

[Statedef 17101]
type = A
movetype = I
physics = N
anim = 3921
ctrl = 0
sprpriority = 3

[State 17101, 角度]
type = AngleDraw
trigger1 = 1

[State 17101, 角度]
type = AngleSet
trigger1 = 1
value = (Time*30)%360

[State 17101, 高さ]
type = VelSet
trigger1 = Time = 0
y = parent,var(0)

[State 17101, 固定]
type = VelSet
trigger1 = Time > 20
y = 0

[State 17101, 攻撃へ]
type = ChangeState
trigger1 = Time > 300
trigger2 = parent,var(0) = 1
value = 17102

;---------------------------------------------------------------------------
; しろのつるぎ（落下）

[Statedef 17102]
type = A
movetype = A
physics = N
anim = 3921
ctrl = 0
velset = 0,6
sprpriority = 3

[State 17102, 角度]
type = AngleDraw
trigger1 = 1

[State 17102, 角度]
type = AngleSet
trigger1 = 1
value = 270

[State 17102, 加速]
type = VelAdd
trigger1 = 1
y = 0.5

[State 17102, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = A,SP
hitflag = MAFD
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 25,10
getpower = 50,25
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,-3
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 1
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 17102, ヒットエフェクト]
type = Helper
trigger1 = movehit
helpertype = normal
name = "HitSpark"
pos = ceil(P2Dist X),-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30001
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 17102, ガードエフェクト]
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

[State 17102, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17102, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 7
ignorehitpause = 1
persistent = 0

[State 17102, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 17102, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = Pos Y >= 0
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17102, サウンドの種類]
type = ParentVarSet
trigger1 = Pos Y >= 0
var(10) = 8
ignorehitpause = 1
persistent = 0

[State 17102, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17102, 攻撃へ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 17103

;---------------------------------------------------------------------------
; しろのつるぎ（消滅）

[Statedef 17103]
type = A
movetype = A
physics = N
anim = 3921
ctrl = 0
sprpriority = 3

[State 17103, 速度]
type = VelSet
trigger1 = Time = 0
y = -5

[State 17103, 速度]
type = VelSet
trigger1 = Time = 5
y = 0

[State 17103, 角度]
type = AngleDraw
trigger1 = 1

[State 17103, 角度]
type = AngleSet
trigger1 = 1
value = (Time*30)%360

[State 17103, 透過]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-var(0),256

[State 17103, 透過処理]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 17103, 透過処理]
type = VarAdd
trigger1 = Time > 0
trigger1 = var(0) < 240
var(0) = 20

[State 17103, 消滅]
type = DestroySelf
trigger1 = Time > 20

;---------------------------------------------------------------------------
; しろのつるぎルート（Y）

[Statedef 17110]
type = A
movetype = A
physics = N
anim = 3923
ctrl = 0
velset = 0,0
sprpriority = 3

[State 17110, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17110, 角度変数]
type = VarSet
trigger1 = Time = 0
var(0) = 45

[State 17110, 角度変数]
type = VarSet
trigger1 = var(0) = 45
trigger1 = ScreenPos Y <= 10
var(0) = 315

[State 17110, 角度変数]
type = VarSet
trigger1 = var(0) = 315
trigger1 = Pos Y >= 0
var(0) = 45

[State 17110, 角度]
type = AngleSet
trigger1 = 1
value = var(0)

[State 17110, 角度]
type = AngleDraw
trigger1 = 1

[State 17110, 透過]
type = Trans
trigger1 = 1
trans = Add

[State 17110, 速度]
type = PosAdd
trigger1 = 1
x = 10*(Cos(abs(var(0))*Pi/180))

[State 17110, 速度]
type = PosAdd
trigger1 = 1
y = -1*10*(Sin(var(0)*Pi/180))

[State 17110, ナイフ生成音]
type = PlaySnd
trigger1 = Time % 7 = 0
value = s3,26
channel = 4

[State 17110, ナイフ生成]
type = Helper
trigger1 = Time % 7 = 0
helpertype = normal
name = "Knife"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17111
ID = 17111
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 17110, 終了]
type = ChangeState
trigger1 = FrontEdgeBodyDist < -20
value = 17115

;---------------------------------------------------------------------------
; しろのつるぎルート（X・待機状態）

[Statedef 17115]
type = A
movetype = I
physics = N
anim = 99999
ctrl = 0
velset = 0,0
sprpriority = 3

[State 17115, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 17115, 音声フラグ]
type = VarAdd
trigger1 = var(9) > 0
var(9) = -1

[State 17115, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 2
value = s1,3
channel = 5
ignorehitpause = 1

[State 17115, PlaySnd]
type = PlaySnd
trigger1 = var(9) > 0
trigger1 = var(10) = 7
value = s1,14
channel = 5
ignorehitpause = 1

[State 17115, ルートの状況をチェック]
type = VarSet
trigger1 = root,stateno = [7000,7069]
trigger1 = Time > 10
var(1) = 1

[State 17115, 終了]
type = DestroySelf
trigger1 = NumHelper(17111) = 0

;---------------------------------------------------------------------------
; しろのつるぎ（停滞）

[Statedef 17111]
type = A
movetype = I
physics = N
anim = 3921
ctrl = 0
velset = 0,0
sprpriority = 3

[State 17111, 角度]
type = AngleDraw
trigger1 = 1

[State 17111, 角度]
type = AngleSet
trigger1 = 1
value = (Time*30)%360

[State 17111, 攻撃へ]
type = ChangeState
trigger1 = Time > 300
trigger2 = parent,var(1) = 1
value = 17112

;---------------------------------------------------------------------------
; しろのつるぎ（落下）

[Statedef 17112]
type = A
movetype = A
physics = N
anim = 3921
ctrl = 0
velset = 10,0
sprpriority = 3

[State 17112, 角度]
type = AngleDraw
trigger1 = 1

[State 17112, 角度]
type = AngleSet
trigger1 = 1
value = 0

[State 17112, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = A,SP
hitflag = MAFD
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 25,10
getpower = 50,25
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = -4,-3
guard.velocity = -5
air.velocity = -3,-2
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 1
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 17112, ヒットエフェクト]
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

[State 17112, ガードエフェクト]
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

[State 17112, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17112, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 7
ignorehitpause = 1
persistent = 0

[State 17112, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 17112, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17112, 攻撃へ]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -50

;---------------------------------------------------------------------------
; かげのつるぎ（停滞）

[Statedef 17120]
type = A
movetype = I
physics = N
anim = 3921
ctrl = 0
sprpriority = 3

[State 17120, 透過]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = var(0),256

[State 17120, 透過]
type = VarAdd
trigger1 = var(0) < 250
var(0) = 10

[State 17120, 角度]
type = AngleDraw
trigger1 = 1

[State 17120, 角度]
type = AngleSet
trigger1 = 1
value = (Time*30)%360

[State 17120, 高さ]
type = VelSet
trigger1 = Time = 0
y = parent,var(7)

[State 17120, 固定]
type = VelSet
trigger1 = Time > 20
y = 0

[State 17120, 攻撃へ]
type = ChangeState
trigger1 = Time > 60
value = 17121

;---------------------------------------------------------------------------
; かげのつるぎ（落下）

[Statedef 17121]
type = A
movetype = A
physics = N
anim = 3921
ctrl = 0
velset = 0,6
sprpriority = 3

[State 17121, 補正の適用]
type = AttackMulSet
trigger1 = 1
value = root,fvar(0)
ignorehitpause = 1

[State 17121, 角度]
type = AngleDraw
trigger1 = 1

[State 17121, 角度]
type = AngleSet
trigger1 = 1
value = 270

[State 17121, 加速]
type = VelAdd
trigger1 = 1
y = 0.5

[State 17121, Hitdef]
type = Hitdef
trigger1 = Time = 0
attr = A,SP
hitflag = MAFD
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 20,8
getpower = 50,25
givepower = 20,5
pausetime = 0,4
guard.pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = -1
guardsound = -1
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 20
ground.velocity = 0,-3
guard.velocity = -5
air.velocity = 0,-3
airguard.velocity = -2,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 1
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = root,var(54)/10000%10

[State 17121, ヒットエフェクト]
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

[State 17121, ガードエフェクト]
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

[State 17121, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = movecontact
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17121, サウンドの種類]
type = ParentVarSet
trigger1 = movehit
var(10) = 7
ignorehitpause = 1
persistent = 0

[State 17121, サウンドの種類]
type = ParentVarSet
trigger1 = moveguarded
var(10) = 2
ignorehitpause = 1
persistent = 0

[State 17121, サウンドを-2/-3で処理]
type = ParentVarSet
trigger1 = Pos Y >= 0
var(9) = 2
ignorehitpause = 1
persistent = 0

[State 17121, サウンドの種類]
type = ParentVarSet
trigger1 = Pos Y >= 0
var(10) = 8
ignorehitpause = 1
persistent = 0

[State 17121, 補正用ヒットカウント]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 17121, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 17121, 攻撃へ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 17122

;---------------------------------------------------------------------------
; かげのつるぎ（消滅）

[Statedef 17122]
type = A
movetype = A
physics = N
anim = 3921
ctrl = 0
sprpriority = 3

[State 17122, 速度]
type = VelSet
trigger1 = Time = 0
y = -5

[State 17122, 速度]
type = VelSet
trigger1 = Time = 5
y = 0

[State 17122, 角度]
type = AngleDraw
trigger1 = 1

[State 17122, 角度]
type = AngleSet
trigger1 = 1
value = (Time*30)%360

[State 17122, 透過]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-var(0),256

[State 17122, 透過処理]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 17122, 透過処理]
type = VarAdd
trigger1 = Time > 0
trigger1 = var(0) < 240
var(0) = 20

[State 17122, 消滅]
type = DestroySelf
trigger1 = Time > 20

;---------------------------------------------------------------------------
; ガードスパーク

[Statedef 30000]
type = S
movetype = A
physics = S
anim = 12000
ctrl = 0
sprpriority = 5

[State 30000, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30000, 透過処理]
type = Trans
trigger1 = 1
trans = add

[State 30000, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(0),fvar(1)

[State 30000, 透過処理用変数]
type = VarAdd
trigger1 = Time = [1,10]
fvar(0) = 0.035

[State 30000, 透過処理用変数]
type = VarAdd
trigger1 = Time = [1,10]
fvar(1) = 0.06

[State 30000, 透過処理用変数]
type = VarAdd
trigger1 = Time = [6,10]
var(0) = -50

[State 30000, 透過処理用変数]
type = VarAdd
trigger1 = Time = 11
var(0) = -5

[State 30000, 透過処理用変数]
type = VarSet
trigger1 = Time = 0
fvar(0) = 0

[State 30000, 透過処理用変数]
type = VarSet
trigger1 = Time = 0
fvar(1) = 0.1

[State 30000, 透過処理用変数]
type = VarSet
trigger1 = Time = 0
var(0) = 255

[State 30000, 透過処理]
type = PalFX
trigger1 = 1
time = 1
mul = var(0),var(0),var(0)

[State 30000, 終了]
type = DestroySelf
trigger1 = time = 12

;---------------------------------------------------------------------------
; 東方ヒットスパーク

[Statedef 30001]
type = A
movetype = I
physics = N
anim = 12003
ctrl = 0
sprpriority = 5

[State 30001, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 30001, 透過処理]
type = Trans
trigger1 = 1
trans = add

[State 30001, 角度]
type = AngleDraw
trigger1 = 1
scale = fvar(0),fvar(1)

[State 30001, 角度]
type = AngleSet
trigger1 = 1
value = var(0)

[State 30001, VarSet]
type = VarRandom
trigger1 = Time = 1
v = 0
range = 0,360

[State 30001, VarSet]
type = VarSet
trigger1 = Time = 1
fvar(0) = 0.5

[State 30001, VarSet]
type = VarSet
trigger1 = Time = 1
fvar(1) = 0.5

[State 30001, VarSet]
type = VarSet
trigger1 = Time = 1
fvar(2) = 0.25

[State 30001, VarAdd]
type = VarAdd
trigger1 = Time > 1
fvar(0) = 0.15

[State 30001, VarAdd]
type = VarAdd
trigger1 = Time > 1
trigger1 = fvar(1) >= 0.05
fvar(1) = -0.05

[State 30001, VarSet]
type = VarAdd
trigger1 = Time > 1
fvar(2) = 0.05

[State 30001, 塵エフェクト]
type = Explod
trigger1 = Time = 1
anim = 12002
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ID = 30001
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 30001, 塵エフェクト制御]
type = ModifyExplod
trigger1 = 1
ID = 30001
scale = fvar(2),fvar(2)
ignorehitpause = 1

[State 30001, 消滅]
type = DestroySelf
trigger1 = Time > 11

;---------------------------------------------------------------------------
; ハイパーコンボエフェクト（Lv.1・PauseMoveTime = 0）

[Statedef 30010]
type = S
movetype = I
physics = N
anim = 99999
ctrl = 0
sprpriority = 7

[State 30010, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30010, 画面停止]
type = SuperPause
trigger1 = Time = 1
time = 55
movetime = 55
anim = -1
sound = -1
darken = 0

[State 30010, 画面暗転]
type = BGPalFX
trigger1 = 1
time = 1
mul = 0,0,0
color = 0

[State 30010, 小さな円の拡大用変数]
type = VarAdd
trigger1 = Time >= 12
fvar(0) = 0.04
ignorehitpause = 1

[State 30010, 大きな円の拡大用変数]
type = VarAdd
trigger1 = Time >= 12
fvar(1) = 0.25
ignorehitpause = 1

[State 30010, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = s4,0
volume = 255

[State 30010, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = s4,3

[State 30010, カットイン]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(36)/10%10 != 0
anim = ifelse(root,var(36)/10%10 = 1,9003,9000)
ID = 300100
postype = back
pos = 0,20
facing = 1
bindtime = -1
removetime = 16
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -7

[State 30010, カットイン処理]
type = ModifyExplod
trigger1 = Time >= 1
trigger1 = Time < 17
ID = 300100
scale = 2-((Time-11)*0.2),2-((Time-11)*0.2)
supermovetime = 9999

[State 30010, カットイン]
type = Explod
trigger1 = Time = 17
trigger1 = root,var(36)/10%10 != 0
anim = ifelse(root,var(36)/10%10 = 1,9002,9001)
ID = 300100
postype = back
pos = 0,20
vel = -0.5,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -7

[State 30010, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130010
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30010, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130011
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30010, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130012
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30010, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130013
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30010, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130014
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30010, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130015
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30010, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130016
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30010, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130017
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30010, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130018
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30010, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130019
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30010, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130020
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30010, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130021
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30010, 小さな円]
type = Explod
trigger1 = Time = 12
anim = 12012
postype = p1
ID = 300101
pos = 0,0
facing = 1
bindtime = -1
removetime = 35
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
scale = fvar(0),fvar(0)

[State 30010, 小さな円の拡大]
type = ModifyExplod
trigger1 = Time >= 12
ID = 300101
scale = fvar(0),fvar(0)
supermovetime = 9999

[State 30010, 大きな円]
type = Explod
trigger1 = Time = 12
anim = 12013
postype = p1
ID = 300102
pos = 0,0
facing = 1
bindtime = -1
removetime = 35
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
scale = fvar(1),fvar(1)

[State 30010, 大きな円の拡大]
type = ModifyExplod
trigger1 = Time >= 12
ID = 300102
scale = fvar(1),fvar(1)
supermovetime = 9999

[State 30010, 終了]
type = DestroySelf
trigger1 = Time > 55

;---------------------------------------------------------------------------
; ハイパーコンボエフェクト（収束する光）

[Statedef 30011]
type = S
movetype = I
physics = N
anim = 12010
ctrl = 0
sprpriority = 7

[State 30011, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30011, 角度変更]
type = AngleDraw
trigger1 = isHelper(130010)
trigger2 = isHelper(130015)
trigger3 = isHelper(130018)
scale = 0.7,fvar(0)

[State 30011, 角度変更]
type = AngleDraw
trigger1 = isHelper(130012)
trigger2 = isHelper(130014)
trigger3 = isHelper(130020)
scale = 0.1,fvar(0)

[State 30011, 角度変更]
type = AngleDraw
trigger1 = isHelper(130013)
trigger2 = isHelper(130016)
trigger3 = isHelper(130017)
scale = 0.5,fvar(0)

[State 30011, 角度変更]
type = AngleDraw
trigger1 = isHelper(130011)
trigger2 = isHelper(130019)
trigger3 = isHelper(130021)
scale = 0.25,fvar(0)

[State 30011, 角度決定]
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(130010)
v = 0
range = 0,20

[State 30011, 角度決定]
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(130011)
v = 0
range = 30,50

[State 30011, 角度決定]
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(130012)
v = 0
range = 60,80

[State 30011, 角度決定]
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(130013)
v = 0
range = 90,110

[State 30011, 角度決定]
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(130014)
v = 0
range = 120,140

[State 30011, 角度決定]
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(130015)
v = 0
range = 150,170

[State 30011, 角度決定]
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(130016)
v = 0
range = 180,200

[State 30011, 角度決定]
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(130017)
v = 0
range = 210,230

[State 30011, 角度決定]
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(130018)
v = 0
range = 240,260

[State 30011, 角度決定]
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(130019)
v = 0
range = 270,290

[State 30011, 角度決定]
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(130020)
v = 0
range = 300,320

[State 30011, 角度決定]
type = VarRandom
trigger1 = Time = 0
trigger1 = isHelper(130021)
v = 0
range = 330,350

[State 30011, 透過処理]
type = Trans
trigger1 = 1
trans = add

[State 30011, 角度変更]
type = AngleSet
trigger1 = Time > 0
value = var(0)

[State 30011, Scale_Y]
type = VarSet
trigger1 = Time = 0
fvar(0) = 11

[State 30011, Scale_Y]
type = VarAdd
trigger1 = Time = [1,11]
fvar(0) = -1

[State 30011, 終了]
type = DestroySelf
trigger1 = Time > 15

;---------------------------------------------------------------------------
; ハイパーコンボエフェクト（Lv.1・PauseMoveTime != 0）

[Statedef 30012]
type = S
movetype = I
physics = N
anim = 99999
ctrl = 0
sprpriority = 7

[State 30012, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30012, 画面暗転]
type = BGPalFX
trigger1 = 1
time = 1
mul = 0,0,0
color = 0

[State 30012, 小さな円の拡大用変数]
type = VarAdd
trigger1 = Time >= 12
fvar(0) = 0.04
ignorehitpause = 1

[State 30012, 大きな円の拡大用変数]
type = VarAdd
trigger1 = Time >= 12
fvar(1) = 0.25
ignorehitpause = 1

[State 30012, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = s4,0
volume = 255

[State 30012, PlaySnd]
type = Null;PlaySnd
trigger1 = Time = 1
value = s4,3

[State 30012, カットイン]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(36)/10%10 != 0
anim = ifelse(root,var(36)/10%10 = 1,9003,9000)
ID = 300100
postype = back
pos = 0,20
facing = 1
bindtime = -1
removetime = 16
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -7

[State 30012, カットイン処理]
type = ModifyExplod
trigger1 = Time >= 1
trigger1 = Time < 17
ID = 300100
scale = 2-((Time-11)*0.2),2-((Time-11)*0.2)
supermovetime = 9999

[State 30012, カットイン]
type = Explod
trigger1 = Time = 17
trigger1 = root,var(36)/10%10 != 0
anim = ifelse(root,var(36)/10%10 = 1,9002,9001)
ID = 300100
postype = back
pos = 0,20
vel = -0.5,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -7

[State 30012, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130010
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30012, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130011
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30012, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130012
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30012, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130013
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30012, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130014
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30012, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130015
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30012, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130016
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30012, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130017
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30012, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130018
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30012, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130019
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30012, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130020
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30012, 収束する光]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Beam"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30011
ID = 130021
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 30012, 小さな円]
type = Explod
trigger1 = Time = 12
anim = 12012
postype = p1
ID = 300101
pos = 0,0
facing = 1
bindtime = -1
removetime = 35
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
scale = fvar(0),fvar(0)

[State 30012, 小さな円の拡大]
type = ModifyExplod
trigger1 = Time >= 12
ID = 300101
scale = fvar(0),fvar(0)
supermovetime = 9999

[State 30012, 大きな円]
type = Explod
trigger1 = Time = 12
anim = 12013
postype = p1
ID = 300102
pos = 0,0
facing = 1
bindtime = -1
removetime = 35
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
scale = fvar(1),fvar(1)

[State 30012, 大きな円の拡大]
type = ModifyExplod
trigger1 = Time >= 12
ID = 300102
scale = fvar(1),fvar(1)
supermovetime = 9999

[State 30012, 終了]
type = DestroySelf
trigger1 = Time > 55

;---------------------------------------------------------------------------
;ハイパーコンボ背景

[StateDef 30020]
type = A
movetype= I
physics = N
ctrl = 0
anim = 99999
sprpriority = -7

[State 30020, 背景]
type = Explod
trigger1 = Time = 1
anim = 13000
postype = left
facing = 1
bindtime = -1
removetime = -1
ownpal = 0
ontop = 0
ID = 300201
trans = add
supermovetime = 0
pausemovetime = 0
sprpriority = -7
scale = 0.833,1.075

[State 30020, 色変化]
type = BGPalFX
trigger1 = 1
time = -1
color = 0
mul = 0,0,0
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30020, 色変化]
type = PalFX
trigger1 = Time = 0
time = -1
invertall = 1
color = 0
mul = 0,0,150
sinadd = 0,0,100,50
supermovetime = 9999
pausemovetime = 9999

[State 30020, 色変化]
type = BGPalFX
trigger1 = parent,var(8) = 0
trigger2 = roundstate > 3
time = 1
color = 256
mul = 256,256,256
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 30020, 終了処理]
type = RemoveExplod
trigger1 = parent,var(8) = 0
trigger2 = roundstate > 3

[State 30020, 終了]
type = DestroySelf
trigger1 = parent,var(8) = 0
trigger2 = roundstate > 3

;---------------------------------------------------------------------------
;フィニッシュエフェクト

[StateDef 40000]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 99999

[State 40000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s5,1
ignorehitpause = 1
abspan = 1

[State 40000, PlaySnd]
type = PlaySnd
trigger1 = Time = 7
value = s6,4
ignorehitpause = 1
volume = 255
abspan = 1

[State 40000, PlaySnd]
type = PlaySnd
trigger1 = root,stateno = 181
value = s6,6
ignorehitpause = 1
persistent = 0
abspan = 1

[State 40000, 画面停止]
type = Pause
trigger1 = Time = 1
time = 7
movetime = 7
ignorehitpause = 1

[State 40000, フラッシュ]
type = BGPalFX
trigger1 = Time = 1
trigger2 = Time = 3
trigger3 = Time = 5
add = 200, 200, 200
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 40000, フラッシュ]
type = BGPalFX
trigger1 = Time = 2
trigger2 = Time = 4
trigger3 = Time = 6
add = 40, 40, 40
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

;---------------------------------------------------------------------------
;ハイパーコンボフィニッシュエフェクト

[StateDef 40001]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 99999

[State 40001, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s4,3
ignorehitpause = 1
abspan = 1

[State 40001, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s5,0
ignorehitpause = 1
abspan = 1

[State 40001, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s5,1
ignorehitpause = 1
abspan = 1

[State 40001, PlaySnd]
type = PlaySnd
trigger1 = Time = 6
value = s6,5
ignorehitpause = 1
volume = 255
abspan = 1

[State 40001, PlaySnd]
type = PlaySnd
trigger1 = root,stateno = 181
value = s6,6
ignorehitpause = 1
persistent = 0
abspan = 1

[State 40001, 背景]
type = Explod
trigger1 = Time = 0
trigger1 = root,stateno != 6070
anim = 13001
postype = left
facing = 1
bindtime = -1
removetime = 120
ownpal = 0
ontop = 0
ID = 400001
supermovetime = 9999
pausemovetime = 9999
sprpriority = -7
scale = 0.833,1.075

[State 40001, 消失処理]
type = VarSet
trigger1 = Time = 0
var(1) = 250

[State 40001, 消失処理]
type = VarAdd
trigger1 = Time = [0,25]
var(1) = -10

[State 40001, 色変化]
type = PalFX
trigger1 = Time < 26
time = 1
invertall = 1
color = 0
add = var(1),var(1),var(1)
supermovetime = 9999
pausemovetime = 9999

[State 40001, 色変化]
type = PalFX
trigger1 = Time = 26
time = -1
invertall = 1
color = 0
sinadd = (random%256),(random%256),(random%256),40
supermovetime = 9999
pausemovetime = 9999

[State 40001, 画面停止]
type = Pause
trigger1 = Time = 1
time = 5
movetime = 5
ignorehitpause = 1

[State 40001, フラッシュ]
type = EnvColor
triggerall = root,stateno = 6070
trigger1 = Time = 1
trigger2 = Time = 3
trigger3 = Time = 5
value = 255, 255, 255
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

;---------------------------------------------------------------------------
;勝利カットイン

[StateDef 45000]
type = A
movetype = I
physics = N
ctrl = 0
velset = -10,0
anim = 99999;ifelse(root,var(36)/10%10 = 1,9003,9000)
sprpriority = 7

[State 45000, エフェクト]
type = Explod
trigger1 = Time = 1
anim = ifelse(root,var(36)/10%10 = 1,9003,9000)
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45000, ブレーキ]
type = VelSet
trigger1 = Time = 32
x = 0

[State 45000, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

;---------------------------------------------------------------------------
;勝利メッセージ

[StateDef 45010]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,10
anim = 99999
sprpriority = 7

[State 45010, ブレーキ]
type = VelSet
trigger1 = Time = 29
y = 0

[State 45010, 影消去]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 45010, メッセージ選択処理（汎用）]
type = VarRandom
trigger1 = Time = 0
v = 0
range = 0,6

[State 45010, メッセージ選択処理（ランダム）]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,1

[State 45010, メッセージ（汎用）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 0
trigger1 = var(0) = 0
anim = 30001
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（汎用）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 0
trigger1 = var(0) = 1
anim = 30002
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（汎用）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 0
trigger1 = var(0) = 2
anim = 30005
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（汎用）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 0
trigger1 = var(0) = 3
anim = 30008
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（汎用）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 0
trigger1 = var(0) = 4
anim = 30009
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（汎用）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 0
trigger1 = var(0) = 5
anim = 30016
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（汎用）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 0
trigger1 = var(0) = 6
anim = 30021
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（みちる）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 0
trigger1 = var(1) = 0
anim = 30000
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（みちる）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 0
trigger1 = var(1) = 1
anim = 30019
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（あゆ）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 2
anim = 30003
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（ちびみずか）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 3
anim = 30004
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（真琴）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 4
anim = 30006
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（神奈）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 5
anim = 30007
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（美凪）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 6
anim = 30010
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（ワラキアの夜）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 7
anim = 30011
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（闇アルク＆ワルクェイド）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 8
anim = 30012
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（香里）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 9
anim = 30013
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（観鈴）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 10
anim = 30014
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（志貴）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 11
anim = 30015
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（舞）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 12
anim = 30017
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（七夜）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 13
anim = 30018
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（栞）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 14
anim = 30020
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（秋子さん＆琥珀さん）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 15
anim = 30022
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

[State 45010, メッセージ（長門）]
type = Explod
trigger1 = Time = 1
trigger1 = root,var(18) = 16
anim = 30023
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ontop = 1

;---------------------------------------------------------------------------
; アシストタイプセレクト（初期分岐）

[Statedef 45020]
type = S
movetype = I
physics = N
velset = 0,0
anim = 99999
ctrl = 1

[State 45020, アシストタイプ取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450201)
trigger1 = root,var(50) = 0
value = 45021

[State 45020, アシストタイプ取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450201)
trigger1 = root,var(50) = 1
value = 45022

[State 45020, アシストタイプ取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450201)
trigger1 = root,var(50) = 2
value = 45023

[State 45020, アシストタイプ取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450202)
trigger1 = root,var(51) = 0
value = 45021

[State 45020, アシストタイプ取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450202)
trigger1 = root,var(51) = 1
value = 45022

[State 45020, アシストタイプ取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450202)
trigger1 = root,var(51) = 2
value = 45023

;---------------------------------------------------------------------------
; アシストタイプセレクト（α）

[Statedef 45021]
type = S
movetype = I
physics = N
velset = 0,0
anim = 99999
ctrl = 1

[State 45021, PalFX]
type = Null;PalFX
trigger1 = 1
invertall = 1
time = 1

[State 45021, Type-α]
type = Explod
trigger1 = NumExplod(5010) = 0
anim = 29100
postype = p1
pos = 0,0
facing = ifelse(root,facing = 1,1,-1)
bindtime = -1
removetime = -2
ownpal = 0
ontop = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ID = 5010
scale = 0.5,0.5

[State 45021, 消去処理]
type = RemoveExplod
trigger1 = Time = 0
ID = 5011

[State 45021, 消去処理]
type = RemoveExplod
trigger1 = Time = 0
ID = 5012

[State 45021, βに移行]
type = ChangeState
trigger1 = Time > 7
trigger1 = root,command = "down"
value = 45022

[State 45021, γに移行]
type = ChangeState
trigger1 = Time > 7
trigger1 = root,command = "up"
value = 45023

[State 45021, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
trigger1 = PrevStateno != 45020
value = s7,0

[State 45021, PlaySnd]
type = PlaySnd
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
value = s7,1

[State 45021, アシストタイプセット]
type = ParentVarSet
triggerall = isHelper(450201)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(50) = 0

[State 45021, アシストタイプセット]
type = ParentVarSet
triggerall = isHelper(450202)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(51) = 0

[State 45021, アシストタイプセット]
type = ParentVarSet
triggerall = isHelper(450202)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(7) = 1
ignorehitpause = 1

[State 45021, 消去処理]
type = RemoveExplod
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

[State 45021, 消去]
type = DestroySelf
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

;---------------------------------------------------------------------------
; アシストタイプセレクト（β）

[Statedef 45022]
type = S
movetype = I
physics = N
velset = 0,0
anim = 99999
ctrl = 1

[State 45022, PalFX]
type = Null;PalFX
trigger1 = 1
invertall = 1
time = 1

[State 45022, Type-β]
type = Explod
trigger1 = NumExplod(5011) = 0
anim = 29101
postype = p1
pos = 0,0
facing = ifelse(root,facing = 1,1,-1)
bindtime = -1
removetime = -2
ownpal = 0
ontop = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ID = 5011
scale = 0.5,0.5

[State 45022, 消去処理]
type = RemoveExplod
trigger1 = Time = 0
ID = 5010

[State 45022, 消去処理]
type = RemoveExplod
trigger1 = Time = 0
ID = 5012

[State 45022, γに移行]
type = ChangeState
trigger1 = Time > 7
trigger1 = root,command = "down"
value = 45023

[State 45022, αに移行]
type = ChangeState
trigger1 = Time > 7
trigger1 = root,command = "up"
value = 45021

[State 45022, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
trigger1 = PrevStateno != 45020
value = s7,0

[State 45022, PlaySnd]
type = PlaySnd
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
value = s7,1

[State 45022, アシストタイプセット]
type = ParentVarSet
triggerall = isHelper(450201)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(50) = 1

[State 45022, アシストタイプセット]
type = ParentVarSet
triggerall = isHelper(450202)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(51) = 1

[State 45022, アシストタイプセット]
type = ParentVarSet
triggerall = isHelper(450202)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(7) = 1
ignorehitpause = 1

[State 45022, 消去処理]
type = RemoveExplod
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

[State 45022, 消去]
type = DestroySelf
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

;---------------------------------------------------------------------------
; アシストタイプセレクト（γ）

[Statedef 45023]
type = S
movetype = I
physics = N
velset = 0,0
anim = 99999
ctrl = 1

[State 45023, PalFX]
type = Null;PalFX
trigger1 = 1
invertall = 1
time = 1

[State 45023, Type-γ]
type = Explod
trigger1 = NumExplod(5012) = 0
anim = 29102
postype = p1
pos = 0,0
facing = ifelse(root,facing = 1,1,-1)
bindtime = -1
removetime = -2
ownpal = 0
ontop = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ID = 5012
scale = 0.5,0.5

[State 45023, 消去処理]
type = RemoveExplod
trigger1 = Time = 0
ID = 5010

[State 45023, 消去処理]
type = RemoveExplod
trigger1 = Time = 0
ID = 5011

[State 45023, αに移行]
type = ChangeState
trigger1 = Time > 7
trigger1 = root,command = "down"
value = 45021

[State 45023, βに移行]
type = ChangeState
trigger1 = Time > 7
trigger1 = root,command = "up"
value = 45022

[State 45023, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
trigger1 = PrevStateno != 45020
value = s7,0

[State 45023, PlaySnd]
type = PlaySnd
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
value = s7,1

[State 45023, アシストタイプセット]
type = ParentVarSet
triggerall = isHelper(450201)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(50) = 2

[State 45023, アシストタイプセット]
type = ParentVarSet
triggerall = isHelper(450202)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(51) = 2

[State 45023, アシストタイプセット]
type = ParentVarSet
triggerall = isHelper(450202)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(7) = 1
ignorehitpause = 1

[State 45023, 消去処理]
type = RemoveExplod
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

[State 45023, 消去]
type = DestroySelf
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

;---------------------------------------------------------------------------
; アシストキャラクターセレクト（初期分岐）

[Statedef 45030]
type = S
movetype = I
physics = N
velset = 0,0
anim = 99999
ctrl = 1

[State 45030, エラー処理]
type = ChangeState
trigger1 = Time = 1
trigger1 = root,var(52) != [0,3]
value = 45031

;一人目

[State 45030, アシストキャラクター取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450301)
trigger1 = root,var(52) = 0
value = 45031

[State 45030, アシストキャラクター取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450301)
trigger1 = root,var(52) = 1
value = 45032

[State 45030, アシストキャラクター取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450301)
trigger1 = root,var(52) = 2
value = 45033

[State 45030, アシストキャラクター取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450301)
trigger1 = root,var(52) = 3
value = 45034

;二人目

[State 45030, アシストキャラクター取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450302)
trigger1 = root,var(53) = 0
value = 45031

[State 45030, アシストキャラクター取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450302)
trigger1 = root,var(53) = 1
value = 45032

[State 45030, アシストキャラクター取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450302)
trigger1 = root,var(53) = 2
value = 45033

[State 45030, アシストキャラクター取得]
type = ChangeState
trigger1 = Time = 1
trigger1 = isHelper(450302)
trigger1 = root,var(53) = 3
value = 45034

;---------------------------------------------------------------------------
; アシストキャラクターセレクト（あゆ）

[Statedef 45031]
type = S
movetype = I
physics = N
velset = 0,0
anim = 99999
ctrl = 1

[State 45031, あゆフェイス]
type = Explod
trigger1 = NumExplod(5020) = 0
anim = 20500
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
ontop = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ID = 5020

[State 45031, 観鈴消去]
type = RemoveExplod
trigger1 = Time = 0
ID = 5021

[State 45031, 瑞佳消去]
type = RemoveExplod
trigger1 = Time = 0
ID = 5023

[State 45031, 観鈴に移行]
type = ChangeState
triggerall = Time > 7
trigger1 = root,teamside = 1
trigger1 = root,command = "fwd"
trigger2 = root,teamside = 2
trigger2 = root,command = "back"
value = 45032

[State 45031, 瑞佳に移行]
type = ChangeState
triggerall = Time > 7
trigger1 = root,teamside = 1
trigger1 = root,command = "back"
trigger2 = root,teamside = 2
trigger2 = root,command = "fwd"
value = 45034

[State 45031, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
trigger1 = PrevStateno != 45030
value = s7,0

[State 45031, アシストキャラクターセット]
type = ParentVarSet
triggerall = isHelper(450301)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(52) = 0

[State 45031, アシストキャラクターセット]
type = ParentVarSet
triggerall = isHelper(450302)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(53) = 0

[State 45031, 消去処理]
type = RemoveExplod
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

[State 45031, 消去]
type = DestroySelf
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

;---------------------------------------------------------------------------
; アシストキャラクターセレクト（観鈴）

[Statedef 45032]
type = S
movetype = I
physics = N
velset = 0,0
anim = 99999
ctrl = 1

[State 45032, 観鈴フェイス]
type = Explod
trigger1 = NumExplod(5021) = 0
anim = 21500
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
ontop = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ID = 5021

[State 45032, あゆ消去]
type = RemoveExplod
trigger1 = Time = 0
ID = 5020

[State 45032, 神奈消去]
type = RemoveExplod
trigger1 = Time = 0
ID = 5022

[State 45032, 神奈に移行]
type = ChangeState
triggerall = Time > 7
trigger1 = root,teamside = 1
trigger1 = root,command = "fwd"
trigger2 = root,teamside = 2
trigger2 = root,command = "back"
value = 45033

[State 45032, あゆに移行]
type = ChangeState
triggerall = Time > 7
trigger1 = root,teamside = 1
trigger1 = root,command = "back"
trigger2 = root,teamside = 2
trigger2 = root,command = "fwd"
value = 45031

[State 45032, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
trigger1 = PrevStateno != 45030
value = s7,0

[State 45032, アシストキャラクターセット]
type = ParentVarSet
triggerall = isHelper(450301)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(52) = 1

[State 45032, アシストキャラクターセット]
type = ParentVarSet
triggerall = isHelper(450302)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(53) = 1

[State 45032, 消去処理]
type = RemoveExplod
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

[State 45032, 消去]
type = DestroySelf
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

;---------------------------------------------------------------------------
; アシストキャラクターセレクト（神奈）

[Statedef 45033]
type = S
movetype = I
physics = N
velset = 0,0
anim = 99999
ctrl = 1

[State 45033, 神奈フェイス]
type = Explod
trigger1 = NumExplod(5022) = 0
anim = 22500
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
ontop = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ID = 5022

[State 45033, 観鈴消去]
type = RemoveExplod
trigger1 = Time = 0
ID = 5021

[State 45033, 瑞佳消去]
type = RemoveExplod
trigger1 = Time = 0
ID = 5023

[State 45033, 瑞佳に移行]
type = ChangeState
triggerall = Time > 7
trigger1 = root,teamside = 1
trigger1 = root,command = "fwd"
trigger2 = root,teamside = 2
trigger2 = root,command = "back"
value = 45034

[State 45033, 観鈴に移行]
type = ChangeState
triggerall = Time > 7
trigger1 = root,teamside = 1
trigger1 = root,command = "back"
trigger2 = root,teamside = 2
trigger2 = root,command = "fwd"
value = 45032

[State 45033, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
trigger1 = PrevStateno != 45030
value = s7,0

[State 45033, アシストキャラクターセット]
type = ParentVarSet
triggerall = isHelper(450301)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(52) = 2

[State 45033, アシストキャラクターセット]
type = ParentVarSet
triggerall = isHelper(450302)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(53) = 2

[State 45033, 消去処理]
type = RemoveExplod
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

[State 45033, 消去]
type = DestroySelf
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

;---------------------------------------------------------------------------
; アシストキャラクターセレクト（瑞佳）

[Statedef 45034]
type = S
movetype = I
physics = N
velset = 0,0
anim = 99999
ctrl = 1

[State 45034, 瑞佳フェイス]
type = Explod
trigger1 = NumExplod(5023) = 0
anim = 23500
postype = p1
pos = 0,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
ontop = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 7
ID = 5023

[State 45034, 神奈消去]
type = RemoveExplod
trigger1 = Time = 0
ID = 5022

[State 45034, あゆ消去]
type = RemoveExplod
trigger1 = Time = 0
ID = 5020

[State 45034, あゆに移行]
type = ChangeState
triggerall = Time > 7
trigger1 = root,teamside = 1
trigger1 = root,command = "fwd"
trigger2 = root,teamside = 2
trigger2 = root,command = "back"
value = 45031

[State 45034, 神奈に移行]
type = ChangeState
triggerall = Time > 7
trigger1 = root,teamside = 1
trigger1 = root,command = "back"
trigger2 = root,teamside = 2
trigger2 = root,command = "fwd"
value = 45033

[State 45034, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
trigger1 = PrevStateno != 45030
value = s7,0

[State 45034, アシストキャラクターセット]
type = ParentVarSet
triggerall = isHelper(450301)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(52) = 3

[State 45034, アシストキャラクターセット]
type = ParentVarSet
triggerall = isHelper(450302)
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
var(53) = 3

[State 45034, 消去処理]
type = RemoveExplod
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2

[State 45034, 消去]
type = DestroySelf
trigger1 = Time > 400
trigger2 = root,command = "start"
trigger3 = root,command = "x"
trigger4 = root,command = "y"
trigger5 = root,command = "z"
trigger6 = root,command = "a"
trigger7 = root,command = "b"
trigger8 = root,command = "c"
trigger9 = roundstate = 2
