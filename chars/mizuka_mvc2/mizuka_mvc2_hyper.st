;---------------------------------------------------------------------------
; えいえんのへんりん

[Statedef 6000]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6000
poweradd = -2000
sprpriority = 2

[State 6000, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6000, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,9

[State 6000, VarSet]
type = VarSet
trigger1 = AnimElemTime(6) = 0
var(5) = 1200

[State 6000, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(3) = 1
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6000, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6000, 背景フラグの初期化]
type = VarSet
trigger1 = AnimTime = 0
var(8) = 0

[State 6000, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; るてんのらせん（派生・地上）

[Statedef 6001]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6001
facep2 = 1
poweradd = 0
sprpriority = 2

[State 6001, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 0
ignorehitpause = 1

[State 6001, 無敵時間]
type = NotHitBy
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(9) < 0
value = SCA
time = 1

[State 6001, エフェクト]
type = Explod
trigger1 = AnimElemTime(7) = 0
anim = 11040
postype = p1
pos = -30,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 6001, エフェクト]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 2630
postype = p1
pos = 58,-35
ID = 60010
facing = 1
bindtime = -1
removetime = -1
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1

[State 6001, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s0,1

[State 6001, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(8) = 0
attr = S,HA
hitflag = MAF
guardflag = 
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = low
air.type = low
damage = 0,0
getpower = 0,0
givepower = 0,0
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
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 0
guard.kill = var(54)/10000%10
p1stateno = 6003
p2stateno = 56000
p2facing = 1
hitonce = 1

[State 6001, Explod消去]
type = RemoveExplod
trigger1 = AnimElemTime(9) = 0
ID = 60010
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 6001, エフェクト]
type = Explod
trigger1 = AnimElemTime(9) = 0
anim = 2631
postype = p1
pos = 58,-35
ID = 60010
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 2
ignorehitpause = 1

[State 6001, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; るてんのらせん（派生・空中）

[Statedef 6002]
type = A
movetype = A
physics = A
ctrl = 0
anim = 6001
facep2 = 1
poweradd = 0
sprpriority = 2

[State 6002, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 0
ignorehitpause = 1

[State 6002, 無敵時間]
type = NotHitBy
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(9) < 0
value = SCA
time = 1

[State 6002, エフェクト]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 2630
postype = p1
pos = 58,-35
ID = 60010
facing = 1
bindtime = -1
removetime = -1
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1

[State 6002, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s0,1

[State 6002, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(8) = 0
attr = A,HA
hitflag = MAF
guardflag = 
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = low
air.type = low
damage = 0,0
getpower = 0,0
givepower = 0,0
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
guard.velocity = 0
air.velocity = 0,0
airguard.velocity = 0,0
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 0
guard.kill = var(54)/10000%10
p1stateno = 6004
p2stateno = 56000
p2facing = 1
hitonce = 1

[State 6002, Explod消去]
type = RemoveExplod
trigger1 = AnimElemTime(9) = 0
ID = 60010
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 6002, エフェクト]
type = Explod
trigger1 = AnimElemTime(9) = 0
anim = 2631
postype = p1
pos = 58,-35
ID = 60010
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 2
ignorehitpause = 1

[State 6002, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; るてんのらせん（乱舞・地上）

[Statedef 6003]
type = S
movetype = A
physics = S
ctrl = 0
anim = 11080
facep2 = 1
sprpriority = 2

[State 6003, VarSet]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(5) = 0

[State 6003, 背景設定]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(8) = 1

[State 6003, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(1) = 0
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6003, 画面固定]
type = ScreenBound
trigger1 = Time > 5
value = 0
movecamera = 0,0

[State 6003, VarSet]
type = VarRandom
trigger1 = 1
v = 6
range = -10,-60

[State 6003, VarSet]
type = VarRandom
trigger1 = 1
v = 7
range = 0,30

[State 6003, 位置固定]
type = TargetBind
trigger1 = Time = 0
pos = 10,0

[State 6003, 位置固定]
type = TargetBind
trigger1 = Time = 30
pos = 50,0

[State 6003, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 6 = 0
trigger2 = AnimElemTime(35) = 0
value = s1,2
channel = 5

[State 6003, ヒット数]
type = HitAdd
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 6 = 0
trigger2 = AnimElemTime(35) = 0
value = 1

[State 6003, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 6 = 0
value = -12
absolute = 1
kill = 0

[State 6003, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 6 = 0
value = 5

[State 6003, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(35) = 0
value = -20
absolute = 1
kill = 1

[State 6003, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElemTime(35) = 0
value = 10

[State 6003, ヒットエフェクト]
type = Explod
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 6 = 0
trigger2 = AnimElemTime(35) = 0
anim = 10000
postype = p1
pos = ceil(P2Dist X)+var(7),var(6)
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.4,0.4

[State 6003, ヒットエフェクト]
type = Explod
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 6 = 0
trigger2 = AnimElemTime(35) = 0
anim = 10010
postype = p1
pos = ceil(P2Dist X)+var(7),var(6)
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.4,0.4

[State 6003, 相手のアニメ変更]
type = TargetState
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 10 = 0
value = 56001

[State 6003, 相手のアニメ変更]
type = TargetState
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 10 = 5
value = 56002

[State 6003, 相手のアニメ変更]
type = TargetState
trigger1 = AnimElemTime(35) = 7
value = 56003

[State 6003, 背景消去]
type = VarSet
trigger1 = AnimElemTime(35) = 10
var(8) = 0

[State 6003, 終了]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2Stateno != [56003,56006]
value = 0
ctrl = 1

[State 6003, 終了]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2Stateno = [56003,56006]
value = 6005

;---------------------------------------------------------------------------
; るてんのらせん（乱舞・空中）

[Statedef 6004]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 11081
facep2 = 1
sprpriority = 2

[State 6004, VarSet]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(5) = 0

[State 6004, 背景設定]
type = VarSet
trigger1 = AnimElemTime(1) = 0
var(8) = 1

[State 6004, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(1) = 0
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6004, 画面固定]
type = ScreenBound
trigger1 = Time > 5
value = 0
movecamera = 0,0

[State 6004, 位置固定]
type = TargetBind
trigger1 = Time = 0
pos = 10,0

[State 6004, 位置固定]
type = TargetBind
trigger1 = Time = 30
pos = 50,0

[State 6004, VarSet]
type = VarRandom
trigger1 = 1
v = 6
range = -10,-60

[State 6004, VarSet]
type = VarRandom
trigger1 = 1
v = 7
range = 0,30

[State 6004, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 6 = 0
trigger2 = AnimElemTime(35) = 0
value = s1,2
channel = 5

[State 6004, ヒット数]
type = HitAdd
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 6 = 0
trigger2 = AnimElemTime(35) = 0
value = 1

[State 6004, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 6 = 0
value = -12
absolute = 1
kill = 0

[State 6004, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 6 = 0
value = 5

[State 6004, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(35) = 0
value = -20
absolute = 1
kill = 1

[State 6004, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElemTime(35) = 0
value = 10

[State 6004, ヒットエフェクト]
type = Explod
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 6 = 0
trigger2 = AnimElemTime(35) = 0
anim = 10000
postype = p1
pos = ceil(P2Dist X)+var(7),var(6)
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.4,0.4

[State 6004, ヒットエフェクト]
type = Explod
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 6 = 0
trigger2 = AnimElemTime(35) = 0
anim = 10010
postype = p1
pos = ceil(P2Dist X)+var(7),var(6)
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1
scale = 0.4,0.4

[State 6004, 相手のアニメ変更]
type = TargetState
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 10 = 0
value = 56001

[State 6004, 相手のアニメ変更]
type = TargetState
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(35) < 0
trigger1 = Time % 10 = 5
value = 56002

[State 6004, 相手のアニメ変更]
type = TargetState
trigger1 = AnimElemTime(35) = 7
value = 56003

[State 6004, 背景消去]
type = VarSet
trigger1 = AnimElemTime(35) = 10
var(8) = 0

[State 6004, 終了]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2Stateno != [56003,56005]
value = 700

[State 6004, 終了]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2Stateno = [56003,56005]
value = 6005

;---------------------------------------------------------------------------
; あおのほうだい

[Statedef 6010]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6010
sprpriority = 2

[State 6010, 無敵時間]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(8) < 0
value = SCA
time = 1

[State 6010, ゲージ減少]
type = PowerAdd
trigger1 = AnimElemTime(5) = 0
value = -1000

[State 6010, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6010, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(5) = 0
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6010, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(5) = 1
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6010, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,10
abspan = 1

[State 6010, エフェクト]
type = Explod
trigger1 = AnimElemTime(8) = 0
anim = 12020
ID = 60100
postype = p1
pos = 28,-40
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
ontop = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 6010, あおのほうだい生成]
type = Helper
trigger1 = AnimElemTime(8) = 6
helpertype = normal
name = "Gamma_Ray"
pos = 120,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16010
persistent = 0
ignorehitpause = 1
size.xscale = 2
size.yscale = 0.75

[State 6010, 終了]
type = ChangeState
trigger1 = Time > 150
value = 6011

[Statedef 6011]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6011
sprpriority = 2

[State 6011, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 5
var(8) = 0

[State 6011, Explod消去]
type = RemoveExplod
trigger1 = Time = 0
ID = 60100
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 6011, 画面固定]
type = ScreenBound
trigger1 = P2Stateno = [56003,56006]
value = 0
movecamera = 0,0

[State 6011, 終了]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2Stateno != [56003,56006]
trigger2 = roundstate != 2
value = 0
ctrl = 1

[State 6011, 終了]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2Stateno = [56003,56006]
value = 6005

;---------------------------------------------------------------------------
; あおのほうだい

[Statedef 6012]
type = A
movetype = A
physics = N
ctrl = 0
anim = 6010
velset = 0,0
poweradd = -1000
sprpriority = 2

[State 6012, 無敵時間]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(8) < 0
value = SCA
time = 1

[State 6012, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6012, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(5) = 0
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6012, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(5) = 1
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6012, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,10
abspan = 1

[State 6012, エフェクト]
type = Explod
trigger1 = AnimElemTime(8) = 0
anim = 12020
ID = 60100
postype = p1
pos = 28,-40
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
ontop = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
sprpriority = 3

[State 6012, あおのほうだい生成]
type = Helper
trigger1 = AnimElemTime(8) = 6
helpertype = normal
name = "Gamma_Ray"
pos = 120,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16010
persistent = 0
ignorehitpause = 1
size.xscale = 2
size.yscale = 0.75

[State 6012, 終了]
type = ChangeState
trigger1 = Time > 150
value = 6013

[Statedef 6013]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 6011
sprpriority = 2

[State 6013, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 5
var(8) = 0

[State 6013, Explod消去]
type = RemoveExplod
trigger1 = Time = 0
ID = 60100
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 6013, 画面固定]
type = ScreenBound
trigger1 = P2Stateno = [56003,56006]
value = 0
movecamera = 0,0

[State 6013, 終了]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2Stateno != [56003,56006]
trigger2 = roundstate != 2
value = 700
ctrl = 1

[State 6013, 終了]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2Stateno = [56003,56006]
value = 6005

;---------------------------------------------------------------------------
; イドのつるぎ

[Statedef 6020]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6020
velset = 0,0
sprpriority = 2

[State 6020, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6020, ゲージ減少]
type = PowerAdd
trigger1 = AnimElemTime(5) = 0
value = -1000

[State 6020, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6020, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30012
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6020, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(4) = 1
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6020, 画面停止]
type = Pause
trigger1 = AnimElemTime(3) = 0
time = 50
movetime = 50

[State 6020, 終了]
type = ChangeState
trigger1 = Time > 50
value = 6021

[Statedef 6021]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6021
sprpriority = 2

[State 6021, 無敵時間]
type = NotHitBy
trigger1 = AnimElemTime(5) < 20
value = SCA
time = 1

[State 6021, 背景フラグの初期化]
type = VarSet
trigger1 = Time > 80
var(8) = 0

[State 6021, 画面固定]
type = ScreenBound
trigger1 = P2Stateno = [56007,56021]
value = 0
movecamera = 0,1

[State 6021, イドのつるぎ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "ido"
pos = 60,10
ownpal = 1
ID = 16021
pausemovetime = 0
supermovetime = 0
stateno = 16021
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6021, 終了]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = P2Stateno != [56007,56021]
trigger2 = roundstate != 2
value = 0
ctrl = 1

[State 6021, 終了]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2Stateno = [56007,56021]
value = 6005

;---------------------------------------------------------------------------
; イドのつるぎ（Ver.β）

[Statedef 6022]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6022
velset = 0,0
poweradd = -1000
sprpriority = 2

[State 6022, 無敵時間]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 30

[State 6022, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6022, 画面固定]
type = ScreenBound
trigger1 = P2Stateno = [56007,56022]
value = 0
movecamera = 0,1

[State 6022, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6022, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(4) = 1
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6022, イドのつるぎ生成]
type = Helper
trigger1 = Time = 5
helpertype = normal
name = "ido"
pos = 30,10
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16022
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6022, イドのつるぎ生成]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "ido"
pos = -60,10
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16022
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6022, イドのつるぎ生成]
type = Helper
trigger1 = Time = 15
helpertype = normal
name = "ido"
pos = 0,10
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16022
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6022, イドのつるぎ生成]
type = Helper
trigger1 = Time = 20
helpertype = normal
name = "ido"
pos = 90,10
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16022
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6022, イドのつるぎ生成]
type = Helper
trigger1 = Time = 25
helpertype = normal
name = "ido"
pos = -30,10
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16022
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6022, イドのつるぎ生成]
type = Helper
trigger1 = Time = 30
helpertype = normal
name = "ido"
pos = 120,10
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16022
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6022, イドのつるぎ生成]
type = Helper
trigger1 = Time = 35
helpertype = normal
name = "ido"
pos = -90,10
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16022
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6022, イドのつるぎ生成]
type = Helper
trigger1 = Time = 40
helpertype = normal
name = "ido"
pos = 150,10
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16022
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6022, イドのつるぎ生成]
type = Helper
trigger1 = Time = 45
helpertype = normal
name = "ido"
pos = 180,10
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16022
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6022, イドのつるぎ生成]
type = Helper
trigger1 = Time = 50
helpertype = normal
name = "ido"
pos = 210,10
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16022
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6022, ChangeState]
type = ChangeState
trigger1 = Time > 65
value = 6023

[Statedef 6023]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6023
velset = 0,0
sprpriority = 2

[State 6023, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 0

[State 6023, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; わくせいのいのり

[Statedef 6024]
type = A
movetype = A
physics = N
ctrl = 0
anim = 6024
velset = 0,0
poweradd = -1000
sprpriority = 2

[State 6024, 無敵時間]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 30

[State 6024, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6024, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(5) = 0
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6024, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(5) = 1
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6024, 画面固定]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 6024, イドのつるぎ生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "ido"
pos = 0,10
postype = Front
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16023
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6024, 背景フラグの初期化]
type = VarSet
trigger1 = AnimTime = -10
var(8) = 0

[State 6024, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; ひょうがのあらし

[Statedef 6030]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6030
poweradd = -1000
sprpriority = 2

[State 6030, 背景フラグの初期化]
type = VarRandom
trigger1 = 1
v = 6
range = -30,30

[State 6030, 背景フラグの初期化]
type = VarRandom
trigger1 = 1
v = 7
range = -200,0

[State 6030, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6030, 無敵時間]
type = NotHitBy
trigger1 = AnimElemTime(13) < 0
value = SCA
time = 1

[State 6030, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(5) = 0
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6030, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(5) = 1
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6030, ひょうがのあらし生成（左）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = 1
trigger1 = Time % 10 = 0
trigger2 = Time % 10 = 7
helpertype = normal
name = "Ice_Storm"
pos = 0+var(6),-500+var(7)
postype = left
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6030, ひょうがのあらし生成（左）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = 1
trigger1 = Time % 10 = 1
trigger2 = Time % 10 = 6
helpertype = normal
name = "Ice_Storm"
pos = 80+var(6),-500+var(7)
postype = left
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6030, ひょうがのあらし生成（左）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = 1
trigger1 = Time % 10 = 3
trigger2 = Time % 10 = 5
helpertype = normal
name = "Ice_Storm"
pos = 160+var(6),-500+var(7)
postype = left
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6030, ひょうがのあらし生成（左）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = 1
trigger1 = Time % 10 = 2
trigger2 = Time % 10 = 8
helpertype = normal
name = "Ice_Storm"
pos = 240+var(6),-500+var(7)
postype = left
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6030, ひょうがのあらし生成（左）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = 1
trigger1 = Time % 10 = 4
trigger2 = Time % 10 = 9
helpertype = normal
name = "Ice_Storm"
pos = 320+var(6),-500+var(7)
postype = left
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6030, ひょうがのあらし生成（右）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = -1
trigger1 = Time % 10 = 0
trigger2 = Time % 10 = 7
helpertype = normal
name = "Ice_Storm"
pos = 0+var(6),-500+var(7)
postype = right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6030, ひょうがのあらし生成（右）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = -1
trigger1 = Time % 10 = 1
trigger2 = Time % 10 = 6
helpertype = normal
name = "Ice_Storm"
pos = -80+var(6),-500+var(7)
postype = right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6030, ひょうがのあらし生成（右）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = -1
trigger1 = Time % 10 = 3
trigger2 = Time % 10 = 5
helpertype = normal
name = "Ice_Storm"
pos = -160+var(6),-500+var(7)
postype = right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6030, ひょうがのあらし生成（右）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = -1
trigger1 = Time % 10 = 2
trigger2 = Time % 10 = 8
helpertype = normal
name = "Ice_Storm"
pos = -240+var(6),-500+var(7)
postype = right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6030, ひょうがのあらし生成（右）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = -1
trigger1 = Time % 10 = 4
trigger2 = Time % 10 = 9
helpertype = normal
name = "Ice_Storm"
pos = -320+var(6),-500+var(7)
postype = right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6030, 背景フラグの初期化]
type = VarSet
trigger1 = AnimTime = 0
var(8) = 0

[State 6030, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ひょうがのあらし

[Statedef 6031]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 6031
poweradd = -1000
sprpriority = 2

[State 6031, 背景フラグの初期化]
type = VarRandom
trigger1 = 1
v = 6
range = -30,30

[State 6031, 背景フラグの初期化]
type = VarRandom
trigger1 = 1
v = 7
range = -200,-100

[State 6031, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6031, 無敵時間]
type = NotHitBy
trigger1 = AnimElemTime(13) < 0
value = SCA
time = 1

[State 6031, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(5) = 0
helpertype = normal
name = "HyperCombo"
pos = -2,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6031, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(5) = 1
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6031, ひょうがのあらし生成（左）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = 1
trigger1 = Time % 10 = 0
trigger2 = Time % 10 = 7
helpertype = normal
name = "Ice_Storm"
pos = 0+var(6),ceil(Pos Y)-200+var(7)
postype = left
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6031, ひょうがのあらし生成（左）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = 1
trigger1 = Time % 10 = 1
trigger2 = Time % 10 = 6
helpertype = normal
name = "Ice_Storm"
pos = 80+var(6),ceil(Pos Y)-200+var(7)
postype = left
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6031, ひょうがのあらし生成（左）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = 1
trigger1 = Time % 10 = 3
trigger2 = Time % 10 = 5
helpertype = normal
name = "Ice_Storm"
pos = 160+var(6),ceil(Pos Y)-200+var(7)
postype = left
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6031, ひょうがのあらし生成（左）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = 1
trigger1 = Time % 10 = 2
trigger2 = Time % 10 = 8
helpertype = normal
name = "Ice_Storm"
pos = 240+var(6),ceil(Pos Y)-200+var(7)
postype = left
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6031, ひょうがのあらし生成（左）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = 1
trigger1 = Time % 10 = 4
trigger2 = Time % 10 = 9
helpertype = normal
name = "Ice_Storm"
pos = 320+var(6),ceil(Pos Y)-200+var(7)
postype = left
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6031, ひょうがのあらし生成（右）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = -1
trigger1 = Time % 10 = 0
trigger2 = Time % 10 = 7
helpertype = normal
name = "Ice_Storm"
pos = 0+var(6),ceil(Pos Y)-200+var(7)
postype = right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6031, ひょうがのあらし生成（右）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = -1
trigger1 = Time % 10 = 1
trigger2 = Time % 10 = 6
helpertype = normal
name = "Ice_Storm"
pos = -80+var(6),ceil(Pos Y)-200+var(7)
postype = right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6031, ひょうがのあらし生成（右）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = -1
trigger1 = Time % 10 = 3
trigger2 = Time % 10 = 5
helpertype = normal
name = "Ice_Storm"
pos = -160+var(6),ceil(Pos Y)-200+var(7)
postype = right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6031, ひょうがのあらし生成（右）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = -1
trigger1 = Time % 10 = 2
trigger2 = Time % 10 = 8
helpertype = normal
name = "Ice_Storm"
pos = -240+var(6),ceil(Pos Y)-200+var(7)
postype = right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6031, ひょうがのあらし生成（右）]
type = Helper
triggerall = AnimElemTime(6) > 1
triggerall = AnimElemTime(35) < 1
triggerall = Facing = -1
trigger1 = Time % 10 = 4
trigger2 = Time % 10 = 9
helpertype = normal
name = "Ice_Storm"
pos = -320+var(6),ceil(Pos Y)-200+var(7)
postype = right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16030
ignorehitpause = 1

[State 6031, 背景フラグの初期化]
type = VarSet
trigger1 = AnimTime = 0
var(8) = 0

[State 6031, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; ぎんのほうだい

[Statedef 6040]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6040
velset = 0,0
poweradd = -1000
sprpriority = 2

[State 6040, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6040, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6040, 時間停止]
type = SuperPause
trigger1 = AnimElemTime(1) = 0
time = 50
movetime = 50
anim = -1
sound = -1
darken = 0

[State 6040, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30012
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6040, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(2) = 1
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6040, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,14
persistent = 0

[State 6040, 発光体エフェクト（前方・下段）]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 3010
ID = 60400
postype = p1
pos = 45,-30
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
scale = 0.5,0.5

[State 6040, 発光体エフェクト（前方・上段）]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 3010
ID = 60400
postype = p1
pos = 65,-80
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
scale = 0.5,0.5

[State 6040, 発光体エフェクト（後方・下段）]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 3010
ID = 60400
postype = p1
pos = -45,-30
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
scale = 0.5,0.5

[State 6040, 発光体エフェクト（後方・上段）]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 3010
ID = 60400
postype = p1
pos = -65,-80
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
scale = 0.5,0.5

[State 6040, 発射ステートへ]
type = ChangeState
trigger1 = Time = 55
value = 6041

[Statedef 6041]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6041
sprpriority = 2

[State 6041, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 5
var(8) = 0

[State 6041, 無敵時間]
type = NotHitBy
trigger1 = AnimElemTime(4) < 5
value = SCA
time = 1

[State 6041, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,15

[State 6041, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(4) = 0
time = 10
freq = 80
ampl = 10

[State 6041, ぎんのほうだい生成（前方・下段）]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Chaos_Tide"
pos = 45,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16041
persistent = 0
ignorehitpause = 1

[State 6041, ぎんのほうだい生成（前方・上段）]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Chaos_Tide"
pos = 65,-80
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16041
persistent = 0
ignorehitpause = 1

[State 6041, ぎんのほうだい生成（後方・下段）]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Chaos_Tide"
pos = -45,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16041
persistent = 0
ignorehitpause = 1

[State 6041, ぎんのほうだい生成（後方・上段）]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Chaos_Tide"
pos = -65,-80
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16041
persistent = 0
ignorehitpause = 1

[State 6041, Explod消去]
type = RemoveExplod
trigger1 = AnimElemTime(4) = 1
ID = 60400
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 6041, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ぎんのほうだい

[Statedef 6042]
type = A
movetype = A
physics = N
ctrl = 0
anim = 6042
velset = 0,0
poweradd = -1000
sprpriority = 2

[State 6042, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6042, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6042, 時間停止]
type = SuperPause
trigger1 = AnimElemTime(1) = 0
time = 50
movetime = 50
anim = -1
sound = -1
darken = 0

[State 6042, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30012
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6042, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(2) = 1
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6042, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,14
persistent = 0

[State 6042, 発光体エフェクト（前方・下段）]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 3010
ID = 60420
postype = p1
pos = 45,-30
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
scale = 0.5,0.5

[State 6042, 発光体エフェクト（前方・上段）]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 3010
ID = 60420
postype = p1
pos = 65,-80
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
scale = 0.5,0.5

[State 6042, 発光体エフェクト（後方・下段）]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 3010
ID = 60420
postype = p1
pos = -45,-30
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
scale = 0.5,0.5

[State 6042, 発光体エフェクト（後方・上段）]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 3010
ID = 60420
postype = p1
pos = -65,-80
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
scale = 0.5,0.5

[State 6042, 発射ステートへ]
type = ChangeState
trigger1 = Time = 55
value = 6043

[Statedef 6043]
type = A
movetype = A
physics = N
ctrl = 0
anim = 6043
sprpriority = 2

[State 6043, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 5
var(8) = 0

[State 6043, 無敵時間]
type = NotHitBy
trigger1 = AnimElemTime(4) < 5
value = SCA
time = 1

[State 6043, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,15

[State 6043, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(4) = 0
time = 10
freq = 80
ampl = 10

[State 6043, ぎんのほうだい生成（前方・下段）]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Chaos_Tide"
pos = 45,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16041
persistent = 0
ignorehitpause = 1

[State 6043, ぎんのほうだい生成（前方・上段）]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Chaos_Tide"
pos = 65,-80
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16041
persistent = 0
ignorehitpause = 1

[State 6043, ぎんのほうだい生成（後方・下段）]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Chaos_Tide"
pos = -45,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16041
persistent = 0
ignorehitpause = 1

[State 6043, ぎんのほうだい生成（後方・上段）]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Chaos_Tide"
pos = -65,-80
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16041
persistent = 0
ignorehitpause = 1

[State 6043, Explod消去]
type = RemoveExplod
trigger1 = AnimElemTime(4) = 1
ID = 60420
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 6043, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; だんざいのとけい

[Statedef 6050]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6050
velset = 0,0
poweradd = -1000
sprpriority = 2

[State 6050, 無敵時間]
type = NotHitBy
trigger1 = Time < 10
trigger2 = NumHelper(60501) = 1
value = SCA
time = 1

[State 6050, ヒットフラグの初期化]
type = VarSet
trigger1 = Time = 0
var(7) = 0

[State 6050, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6050, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,19

[State 6050, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(1) = 0
helpertype = normal
name = "HyperCombo"
pos = 0,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6050, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(1) = 1
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6050, 光球呼び出し]
type = Helper
trigger1 = AnimElemTime(3) = 1
helpertype = normal
name = "WORLD21"
pos = -60,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 16050
ID = 60501
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6050, 背景フラグの初期化]
type = VarSet
trigger1 = AnimTime = 0
var(8) = 0

[State 6050, ヒット]
type = ChangeState
trigger1 = var(7) = 1
trigger1 = Time > 30
value = 6051

[State 6050, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; だんざいのとけい（ヒット）

[Statedef 6051]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6051
velset = 0,0
sprpriority = 2

[State 6051, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,2

[State 6051, ChangeState]
type = ChangeState
trigger1 = Time = 30
value = 6052

;---------------------------------------------------------------------------
; だんざいのとけい（フィニッシュ）

[Statedef 6052]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6052
velset = 0,0
sprpriority = 2

[State 6052, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 0

[State 6052, 消失]
type = AssertSpecial
trigger1 = Time < 20
flag = Invisible
flag2 = noshadow
pausemovetime = 9999

[State 6052, 画面停止]
type = Pause 
trigger1 = Time = 0
time = 20
movetime = 20

[State 6052, 画面暗転]
type = BGPalFX
trigger1 = Time < 20
time = 1
color = 0
invertall = 1
ignorehitpause = 1
pausemovetime = 9999

[State 6052, 移動]
type = PosAdd
trigger1 = Time = 5
x = -100

[State 6052, Helperに指示]
type = VarSet
trigger1 = Time = 20
var(7) = 2

[State 6052, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; しっこくのこころ

[Statedef 6060]
type = A
movetype = A
physics = N
ctrl = 0
anim = 71
velset = 0,0
poweradd = -1000
sprpriority = 2

[State 6060, 無敵時間]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 30

[State 6060, 速度指定]
type = VelSet
trigger1 = Time = 3
y = -1.8

[State 6060, ヒットフラグの初期化]
type = VarSet
trigger1 = Time = 0
var(7) = 0

[State 6060, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6060, エフェクト呼び出し]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6060, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = Time = 1
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6060, 魔方陣生成]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Heart_of_Darkness"
pos = ceil(P2Dist X),0
postype = p1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16060
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6060, 背景フラグの初期化]
type = VarSet
trigger1 = var(7) = 1
trigger2 = Time > 200
var(8) = 0

[State 6060, 終了]
type = ChangeState
trigger1 = var(7) = 1
trigger2 = Time > 200
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; ひかりのつばさ

[Statedef 6070]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 6070
poweradd = -1000
sprpriority = 2

[State 6070, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(7) = 0

[State 6070, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6070, 相手のチームモード取得]
type = VarSet
trigger1 = Time = 1
trigger1 = Enemy,TeamMode = simul
var(7) = 1

[State 6070, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6070, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,24

[State 6070, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,25

[State 6070, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(5) = 0
helpertype = normal
name = "HyperCombo"
pos = -2,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6070, ひかりのつばさ]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Selaphic_Wing"
pos = 0,0
postype = p1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16070
ignorehitpause = 1

[State 6070, 羽エフェクト]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 12050
postype = p1
pos = -5,-35
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 2
scale = 0.75,0.75
ID = 60701

[State 6070, 背景フラグの初期化]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 60701

[State 6070, 背景フラグの初期化]
type = VarSet
trigger1 = AnimTime = 0
var(8) = 0

[State 6070, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; てのひらのひかり

[Statedef 6080]
type = A
movetype = I
physics = A
ctrl = 0
anim = 43
velset = -8,-7

[State 6080, 背景消去]
type = BGPalFX
trigger1 = 1
time = 1
mul = 0,0,0

[State 6080, ヒットフラグの初期化]
type = VarSet
trigger1 = Time = 0
var(21) = 0

[State 6080, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6080, 残像]
type = AfterImage
trigger1 = Time = 0
timegap  = 1
framegap = 3
Trans = Add1
length = 12
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
palmul = 1,1,1
time = 80

[State 6080, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s2,8

[State 6080, StateTypeSet]
type = StateTypeSet
trigger1 = Time > 10
trigger1 = Pos Y = [-15,-1]
physics = N

[State 6080, ChangeState]
type = ChangeState
trigger1 = Time > 10
trigger1 = Pos Y >= 0
value = 6081

[Statedef 6081]
type = A
movetype = I
physics = N
ctrl = 0
anim = 71
velset = 0,0

[State 6081, 背景消去]
type = BGPalFX
trigger1 = 1
time = 1
mul = 0,0,0

[State 6081, 無敵]
type = PlayerPush
trigger1 = 1
value = 0

[State 6081, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6081, VarRandom]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 0,2

[State 6081, VarRandom]
type = VarRandom
trigger1 = 1
v = 7
range = 0,6

[State 6081, ゆっくり上昇]
type = VelSet
trigger1 = Time = 2
y = -2

[State 6081, 停止]
type = VelSet
trigger1 = Time = 10
y = 0

[State 6081, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = s3,25

[State 6081, 羽]
type = Explod
trigger1 = Time = 5
anim = 12053
postype = p1
pos = -5,-35
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = -7
ontop = 0
scale = 0.75,0.75
ID = 60810

[State 6081, 照準]
type = Helper
trigger1 = Time = 10
helpertype = normal
name = "Target"
pos = 40,-40
postype = p1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16081
ignorehitpause = 1

[State 6081, フラグオン]
type = VarSet
trigger1 = Time > 200
trigger1 = P2Dist X < 0
var(21) = 1

[State 6081, チャージ]
type = PlaySnd
trigger1 = Time = 170
value = s3,29

[State 6081, チャージ]
type = Explod
trigger1 = Time = 170
anim = 12061
postype = p1
pos = 40,-40
facing = 1
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 7
scale = 0.5,0.5
ID = 60811

[State 6081, StateTypeSet]
type = StateTypeSet
trigger1 = Time > 190
movetype = A

[State 6081, 発射]
type = PlaySnd
trigger1 = Time = 200
value = s3,30

[State 6081, 攻撃用ヘルパー]
type = helper
trigger1 = var(21) = 0
trigger1 = Time = [200,390]
trigger1 = Time % 4 = 0
helpertype = normal
name = "MegaloMania"
pos = 40,-40
postype = p1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16082
ignorehitpause = 1

[State 6081, 攻撃用ヘルパー]
type = helper
trigger1 = var(21) = 1
trigger1 = Time = [200,390]
trigger1 = Time % 2 = 0
helpertype = normal
name = "MegaloMania"
pos = 40,-40
postype = p1
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 16083
ignorehitpause = 1

[State 6081, 羽消去]
type = RemoveExplod
trigger1 = Time = 380
ID = 60810

[State 6081, 羽消去]
type = RemoveExplod
trigger1 = Time = 380
ID = 60811

[State 6081, 羽]
type = Explod
trigger1 = Time = 380
anim = 12054
postype = p1
pos = -5,-35
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = -7
scale = 0.75,0.75
ID = 60812

[State 6081, 終了]
type = ChangeState
trigger1 = Time = 400
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; ななつえだのほうけん

[Statedef 6090]
type = S
movetype = A
physics = S
ctrl = 0
anim = 6090
poweradd = -1000
sprpriority = 2

[State 6090, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 6090, 剣を消去]
type = VarSet
trigger1 = Time = 0
var(6) = 0

[State 6090, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6090, エフェクトフラグの初期化]
type = VarSet
trigger1 = Time = 0
var(15) = 0

[State 6090, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(3) = 1
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6090, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6090, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 2
value = s2,2

[State 6090, 剣生成]
type = Helper
trigger1 = AnimElemTime(4) = 2
helpertype = normal
name = "Raging_Storm"
pos = -70,0
ownpal = 1
facing = -1
pausemovetime = 0
supermovetime = 0
stateno = 16090
ID = 16090
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6090, 剣生成]
type = Helper
trigger1 = AnimElemTime(4) = 2
helpertype = normal
name = "Raging_Storm"
pos = 70,0
ownpal = 1
facing = 1
pausemovetime = 0
supermovetime = 0
stateno = 16090
ID = 16091
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6090, Hitdef]
type = Hitdef
trigger1 = Time % 3 = 0
trigger1 = AnimElemTime(38) < 0
attr = S,HA
hitflag = MAFD
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 50,5
getpower = 0,0
givepower = 30,20
pausetime = 2,12
guard.pausetime = 2,12
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
guard.velocity = 4
air.velocity = 0,-7
airguard.velocity = 2,-3
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
guard.kill = var(54)/10000%10

[State 6090, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(38) = 0
attr = S,HA
hitflag = MAFD
guardflag = M
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 120,5
getpower = 0,0
givepower = 30,20
pausetime = 2,12
guard.pausetime = 2,12
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
ground.velocity = 0,-20
guard.velocity = 4
air.velocity = 0,-20
airguard.velocity = 2,-3
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
guard.kill = var(54)/10000%10
p2stateno = 56062
p2facing = 1

[State 6090, ヒットエフェクト]
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

[State 6090, ヒットエフェクト]
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

[State 6090, ガードエフェクト]
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

[State 6090, PlaySnd]
type = PlaySnd
trigger1 = movehit
trigger1 = AnimElemTime(37) < 0
trigger1 = AnimElemTime(38) != 0
value = s1,2
ignorehitpause = 1
channel = 4

[State 6090, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(35) > 0
trigger1 = P2Stateno = 56062
value = s2,9
ignorehitpause = 1
persistent = 0
channel = 3

[State 6090, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 5

[State 6090, 補正用ヒットカウント]
type = VarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 6090, 初期化]
type = MoveHitReset
trigger1 = movecontact
ignorehitpause = 1

[State 6090, 剣を消去]
type = VarSet
trigger1 = AnimElemTime(38) = 0
var(6) = 1

[State 6090, 背景フラグの初期化]
type = VarSet
trigger1 = AnimTime = 0
var(8) = 0

[State 6090, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; あおぞらをとぶとり

[Statedef 6100]
type = A
movetype = A
physics = N
ctrl = 0
anim = 73
velset = -12,0
poweradd = -1000
sprpriority = 2

[State 6100, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6100, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 6100, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6100, ガードフラグの初期化]
type = VarSet
trigger1 = Time = 0
var(6) = 0

[State 6100, エフェクトフラグの初期化]
type = VarSet
trigger1 = Time = 0
var(15) = 0

[State 6100, エフェクト呼び出し]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6100, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = Time = 0
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6100, 画面停止]
type = SuperPause
trigger1 = Time = 1
time = 55
movetime = 55
anim = -1
sound = -1
darken = 0

[State 6100, 停止]
type = VelSet
trigger1 = BackEdgeBodyDist < -50
x = 0

[State 6100, 停止]
type = PosSet
trigger1 = BackEdgeBodyDist < -50
y = -60

[State 6100, 攻撃ステートへ]
type = ChangeState
trigger1 = Time = 60
value = 6101
ctrl = 0

;---------------------------------------------------------------------------
; あおぞらをとぶとり（攻撃）

[Statedef 6101]
type = A
movetype = A
physics = N
ctrl = 0
anim = 6101
velset = 20,0
sprpriority = 2

[State 6101, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 6101, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s3,31
abspan = 1

[State 6101, 判定消失]
type = PlayerPush
trigger1 = var(6) > 8
value = 0

[State 6101, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 6101, 鳥エフェクト呼び出し]
type = Helper
trigger1 = Time = 1
helpertype = normal
name = "Tori"
pos = -30,-40
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 16101
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6101, Hitdef]
type = Hitdef
trigger1 = HitCount < 10
trigger1 = var(6) < 10
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 60,20
getpower = 0,0
givepower = 50,20
pausetime = 3,0
guard.pausetime = 3,0
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
ground.velocity = -3,-5
guard.velocity = -6
air.velocity = -3,-6
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
guard.kill = var(54)/10000%10
p2facing = 1

[State 6101, TargetState]
type = TargetState
trigger1 = movehit
trigger1 = NumTarget > 0
trigger1 = Target,isHelper = 0
trigger1 = Target,stateno != [120,155]
value = 56101
ignorehitpause = 1

[State 6101, ヒットエフェクト]
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

[State 6101, ヒットエフェクト]
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

[State 6101, ガードエフェクト]
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

[State 6101, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,13
ignorehitpause = 1
channel = 4

[State 6101, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 5

[State 6101, 補正用ヒットカウント]
type = VarAdd
trigger1 = movehit
fvar(1) = 1
ignorehitpause = 1

[State 6101, ガードフラグ]
type = VarAdd
trigger1 = moveguarded
var(6) = 1
ignorehitpause = 1

[State 6101, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 6101, 戻りステートへ]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= -500
trigger2 = Time > 100
value = 6102
ctrl = 0

[Statedef 6102]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1050
poweradd = 0
sprpriority = 2

[State 6102, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 0

[State 6102, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6102, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6102, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s3,7
abspan = 1

[State 6102, ワープ]
type = PosSet
trigger1 = AnimElemTime(16) = 9
x = ifelse(facing = 1,160,-160)

[State 6102, ワープ]
type = PosSet
trigger1 = AnimElemTime(16) = 9
y = 0

[State 6102, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; きせきのうた

[Statedef 6110]
type = S
movetype = I
physics = S
ctrl = 0
anim = 6110
velset = 0,0
poweradd = -1000
sprpriority = 2

[State 6110, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6110, エフェクト呼び出し]
type = Helper
trigger1 = AnimElemTime(3) = 1
helpertype = normal
name = "HyperCombo"
pos = 4,-35
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 30010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 6110, 背景呼び出し]
type = Helper
triggerall = var(36)/10000%10 = 1
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "HyperCombo_BG"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 30020
persistent = 0
ignorehitpause = 1
size.xscale = 0.833
size.yscale = 1.075

[State 6110, 終了フラグ初期化]
type = VarSet
trigger1 = Time = 0
var(7) = 0
ignorehitpause = 1
supermovetime = 9999

[State 6110, 背景フラグの初期化]
type = VarSet
trigger1 = Time = 0
var(8) = 1

[State 6110, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s3,32

[State 6110, 羽根（小）]
type = Helper
triggerall = AnimElemTime(6) > 0
trigger1 = Time % 16 = 0
trigger2 = Time % 16 = 8
helpertype = normal
name = "Wing_Small"
ID = 61101
postype = p1
pos = -320,var(6)
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 16110

[State 6110, 羽根（大）]
type = Helper
triggerall = AnimElemTime(6) > 0
trigger1 = Time % 16 = 4
trigger2 = Time % 16 = 12
helpertype = normal
name = "Wing_Big"
ID = 61102
postype = p1
pos = -320,var(6)
ownpal = 1
pausemovetime = 9999
supermovetime = 9999
stateno = 16111

[State 6110, VarAdd]
type = VarAdd
triggerall = AnimElemTime(6) > 0
trigger1 = Time % 16 = 0
trigger2 = Time % 16 = 4
trigger3 = Time % 16 = 8
trigger4 = Time % 16 = 12
var(7) = 1

[State 6110, 終了]
type = ChangeState
trigger1 = var(7) > 80
value = 6111
ctrl = 0

[Statedef 6111]
type = S
movetype = A
physics = S
anim = 6111
sprpriority = 2

[State 61111, 背景フラグの初期化]
type = VarSet
trigger1 = AnimTime = 0
var(8) = 0

[State 6111, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
