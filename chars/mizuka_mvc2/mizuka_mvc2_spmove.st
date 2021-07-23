;---------------------------------------------------------------------------
; くずれるせかい

[Statedef 1000]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1000
poweradd = 100
sprpriority = 2

[State 1000, 無敵時間]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(17) <= 0
value = SCA
time = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s3,1

[State 1000, くずれるせかい生成]
type = Helper
trigger1 = AnimElemTime(5) = 0
helpertype = normal
name = "Collapse_World"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1000, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; あめのつるぎ

[Statedef 1001]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1100
poweradd = 100
sprpriority = 2

[State 1001, 無敵時間]
type = NotHitBy
trigger1 = AnimElemTime(6) <= 0
value = SCA
time = 1

[State 1001, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = s3,8

[State 1001, エフェクト]
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = 11050
postype = p1
pos = 0,30
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
sprpriority = 3

[State 1001, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = high
damage = 85,20
getpower = 80,20
givepower = 20,10
pausetime = 0,3
guard.pausetime = 0,3
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,8
guardsound = S1,3
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 20
airguard.ctrltime = 20
ground.velocity = 0,-10
guard.velocity = -5
air.velocity = 0,-6
airguard.velocity = -2,-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 12
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = var(54)/10000%10

[State 1001, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-35
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

[State 1001, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),ceil(P2Dist Y)-35
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

[State 1001, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),ceil(P2Dist Y)-35
ownpal = 1
pausemovetime = 9999
supermovetime = 0
stateno = 30000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1001, 補正用ヒットカウント]
type = VarAdd
trigger1 = movehit
fvar(1) = 1
persistent = 0
ignorehitpause = 1

[State 1001, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; こわれるせかい

[Statedef 1002]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1001
poweradd = 100
sprpriority = 2

[State 1002, 無敵時間]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(10) <= 0
value = SCA
time = 1

[State 1002, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(11) = 0
value = s3,1
channel = 5

[State 1002, くずれるせかい生成]
type = Helper
trigger1 = AnimElemTime(5) = 0
helpertype = normal
name = "Collapse_World"
ID = 10021
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11002
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1001, くずれるせかい生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Collapse_World"
ID = 10022
pos = -20,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11002
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1002, くずれるせかい生成]
type = Helper
trigger1 = AnimElemTime(11) = 0
helpertype = normal
name = "Collapse_World"
ID = 10023
pos = 20,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11002
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1002, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; おもちゃのないふ（弱）

[Statedef 1020]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1020
poweradd = 100
sprpriority = 2

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,2

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(12) = 0
value = s3,3

[State 1020, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Knife_G"
pos = 40,-65
ownpal = 1
ID = 10200
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1020, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Knife_R"
pos = 35,-40
ownpal = 1
ID = 10201
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1020, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Knife_Y"
pos = 30,-15
ownpal = 1
ID = 10202
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1020, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
name = "Knife_B"
pos = 30,-65
ownpal = 1
ID = 10203
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1020, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
name = "Knife_R"
pos = 35,-40
ownpal = 1
ID = 10201
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1020, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
name = "Knife_Y"
pos = 40,-15
ownpal = 1
ID = 10202
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1020, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; おもちゃのないふ（中）

[Statedef 1021]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1020
poweradd = 100
sprpriority = 2

[State 1021, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,2

[State 1021, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(12) = 0
value = s3,3

[State 1021, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Knife_G"
pos = 40,-65
ownpal = 1
ID = 10200
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1021, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Knife_R"
pos = 35,-40
ownpal = 1
ID = 10201
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1021, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Knife_Y"
pos = 30,-15
ownpal = 1
ID = 10202
pausemovetime = 0
supermovetime = 0
stateno = 11020
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1021, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
name = "Knife_Y"
pos = 5,-80
ownpal = 1
ID = 10202
pausemovetime = 0
supermovetime = 0
stateno = 11021
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1021, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
name = "Knife_B"
pos = 10,-70
ownpal = 1
ID = 10203
pausemovetime = 0
supermovetime = 0
stateno = 11021
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1021, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
name = "Knife_R"
pos = 15,-60
ownpal = 1
ID = 10201
pausemovetime = 0
supermovetime = 0
stateno = 11021
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1021, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; おもちゃのないふ（強）

[Statedef 1022]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1020
poweradd = 100
sprpriority = 2

[State 1022, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,2

[State 1022, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(12) = 0
value = s3,3

[State 1022, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Knife_G"
pos = 10,-70
ownpal = 1
ID = 10200
pausemovetime = 0
supermovetime = 0
stateno = 11021
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1022, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Knife_R"
pos = 15,-60
ownpal = 1
ID = 10201
pausemovetime = 0
supermovetime = 0
stateno = 11021
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1022, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Knife_Y"
pos = 5,-80
ownpal = 1
ID = 10202
pausemovetime = 0
supermovetime = 0
stateno = 11021
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1022, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
name = "Knife_Y"
pos = 5,-80
ownpal = 1
ID = 10202
pausemovetime = 0
supermovetime = 0
stateno = 11021
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1022, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
name = "Knife_B"
pos = 10,-70
ownpal = 1
ID = 10203
pausemovetime = 0
supermovetime = 0
stateno = 11021
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1022, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(12) = 0
helpertype = normal
name = "Knife_R"
pos = 15,-60
ownpal = 1
ID = 10201
pausemovetime = 0
supermovetime = 0
stateno = 11021
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1022, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; あるじ？　ぬし？（弱）

[Statedef 1030]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1030
poweradd = 100
sprpriority = 2

[State 1030, いたるさん生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Itaru"
pos = 60,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11030
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1030, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; あるじ？　ぬし？（中）

[Statedef 1031]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1030
poweradd = 100
sprpriority = 2

[State 1031, いたるさん生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Itaru"
pos = 120,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11030
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1031, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; あるじ？　ぬし？（強）

[Statedef 1032]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1031
poweradd = 100
sprpriority = 2

[State 1032, いたるさん生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Itaru"
pos = 60,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11031
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1032, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; かくれんぼ（前方）

[Statedef 1050]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 1050
poweradd = 100
sprpriority = 2

[State 1050, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s3,7

[State 1050, ワープ]
type = PosAdd
trigger1 = AnimElemTime(16) = 5
x = 320

[State 1050, ワープ]
type = PosSet
trigger1 = AnimElemTime(16) = 5
y = 0

[State 1050, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; かくれんぼ（後方）

[Statedef 1051]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 1050
poweradd = 100
sprpriority = 2

[State 1051, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1051, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s3,7

[State 1051, ワープ]
type = PosAdd
trigger1 = AnimElemTime(16) = 5
x = -320

[State 1051, ワープ]
type = PosSet
trigger1 = AnimElemTime(16) = 5
y = 0

[State 1051, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; かくれんぼ（頭上）

[Statedef 1052]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 1050
poweradd = 100
sprpriority = 2

[State 1052, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1052, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s3,7

[State 1052, ワープ]
type = PosAdd
trigger1 = AnimElemTime(16) = 5
x = ceil(P2Dist X) - 5

[State 1052, ワープ]
type = PosSet
trigger1 = AnimElemTime(16) = 5
y = ceil(P2Dist Y) - 100

[State 1052, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; かくれんぼ（背後）

[Statedef 1053]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
anim = 1050
poweradd = 100
sprpriority = 2

[State 1053, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1053, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s3,7

[State 1053, ワープ]
type = PosAdd
trigger1 = AnimElemTime(16) = 5
x = ceil(P2Dist X) + 20

[State 1053, ワープ]
type = PosSet
trigger1 = AnimElemTime(16) = 5
y = 0

[State 1053, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ゆらめくひかり

[Statedef 1080]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1080
poweradd = 100
sprpriority = 2

[State 1080, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,6

[State 1080, ゆらめくひかり生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Plasma_Beam"
pos = 60,-37
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11080
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1080, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; いてつくひかり

[Statedef 1081]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1081
poweradd = 100
sprpriority = 2

[State 1081, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s3,6

[State 1081, いてつくひかり生成]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Ice_Beam"
pos = 50,-37
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11081
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1081, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ぎんのや

[Statedef 1082]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1082
poweradd = 100
sprpriority = 2

[State 1082, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
trigger2 = AnimElemTime(3) = 5
trigger3 = AnimElemTime(3) = 10
trigger4 = AnimElemTime(3) = 15
value = s3,6
channel = 5

[State 1082, ゆらめくひかり生成]
type = Helper
trigger1 = AnimElemTime(2) = 4
helpertype = normal
name = "Plasma_Beam"
pos = 60,-27
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11082
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1082, ゆらめくひかり生成]
type = Helper
trigger1 = AnimElemTime(3) = 4
helpertype = normal
name = "Plasma_Beam"
pos = 58,-10
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11082
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1082, ゆらめくひかり生成]
type = Helper
trigger1 = AnimElemTime(3) = 9
helpertype = normal
name = "Plasma_Beam"
pos = 62,-35
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11082
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1082, ゆらめくひかり生成]
type = Helper
trigger1 = AnimElemTime(3) = 14
helpertype = normal
name = "Plasma_Beam"
pos = 63,-24
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11082
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1082, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ゆらめくひかり（空中）

[Statedef 1090]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1090
poweradd = 100
sprpriority = 2

[State 1090, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s3,6

[State 1090, ゆらめくひかり生成]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Plasma_Beam"
pos = 60,-37
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11080
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1090, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; いてつくひかり

[Statedef 1091]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1081
poweradd = 100
sprpriority = 2

[State 1091, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s3,6

[State 1091, いてつくひかり生成]
type = Helper
trigger1 = AnimElemTime(7) = 0
helpertype = normal
name = "Ice_Beam"
pos = 50,-37
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11081
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1091, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; まどのそと（弱）

[Statedef 1100]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1091
poweradd = 100
sprpriority = 2

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,5

[State 1100, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Ball"
pos = 70,-35
ID = 11001
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11100
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1100, エフェクト]
type = Explod
trigger1 = AnimElemTime(8) = 0
anim = 11040
postype = p1
pos = -30,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 1100, 終了]
type = ChangeState
triggerall = AnimElemTime(8) > 0
trigger1 = command = "まどのそと弱"
trigger2 = command = "まどのそと中"
value = 1102

[State 1100, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; まどのそと（中）

[Statedef 1101]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1091
poweradd = 100
sprpriority = 2

[State 1101, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,5

[State 1101, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Ball"
pos = 130,-35
ID = 11001
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11100
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1101, エフェクト]
type = Explod
trigger1 = AnimElemTime(8) = 0
anim = 11040
postype = p1
pos = -30,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 1101, 終了]
type = ChangeState
triggerall = AnimElemTime(8) > 0
trigger1 = command = "まどのそと弱"
trigger2 = command = "まどのそと中"
value = 1102

[State 1101, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; まどのそと（派生）

[Statedef 1102]
type = S
movetype = A
physics = S
ctrl = 0
anim = 215
poweradd = 100
sprpriority = 2

[State 1102, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; まどのそと（強）

[Statedef 1103]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1091
poweradd = 100
sprpriority = 2

[State 1103, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,5

[State 1103, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Ball"
pos = 60,-35
ID = 11001
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11103
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1103, エフェクト]
type = Explod
trigger1 = AnimElemTime(8) = 0
anim = 11040
postype = p1
pos = -30,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 1103, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; まどのそと（弱）

[Statedef 1104]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1091
poweradd = 100
sprpriority = 2

[State 1104, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,5

[State 1104, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Ball"
pos = 70,-35
ID = 11001
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11100
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1104, 終了]
type = ChangeState
triggerall = AnimElemTime(8) > 0
trigger1 = command = "まどのそと弱"
trigger2 = command = "まどのそと中"
value = 1106

[State 1104, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; まどのそと（中）

[Statedef 1105]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1091
poweradd = 100
sprpriority = 2

[State 1105, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,5

[State 1105, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Ball"
pos = 130,-35
ID = 11001
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11100
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1105, 終了]
type = ChangeState
triggerall = AnimElemTime(8) > 0
trigger1 = command = "まどのそと弱"
trigger2 = command = "まどのそと中"
value = 1106

[State 1105, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; まどのそと（派生）

[Statedef 1106]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 610
poweradd = 100
sprpriority = 2

[State 1106, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; まどのそと（強）

[Statedef 1107]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1091
poweradd = 100
sprpriority = 2

[State 1107, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,5

[State 1107, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Ball"
pos = 60,-35
ID = 11001
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11103
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1107, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; むげんのそら（弱）

[Statedef 1110]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1091
poweradd = 100
sprpriority = 2

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,5

[State 1110, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Ball"
pos = 60,-35
ID = 11101
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11110
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1110, エフェクト]
type = Explod
trigger1 = AnimElemTime(8) = 0
anim = 11040
postype = p1
pos = -30,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 1110, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; むげんのそら（中）

[Statedef 1111]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1091
poweradd = 100
sprpriority = 2

[State 1111, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,5

[State 1111, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Ball"
pos = 60,-35
ID = 11111
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11111
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1111, エフェクト]
type = Explod
trigger1 = AnimElemTime(8) = 0
anim = 11040
postype = p1
pos = -30,0
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 1111, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; むげんのそら（強）

[Statedef 1112]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1112
poweradd = 100
sprpriority = 2

[State 1112, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,5

[State 1112, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Ball"
pos = 70,-35
ID = 11121
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11112
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1112, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Ball"
pos = -70,-35
ID = 11121
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11112
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1112, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Ball"
pos = 40,-85
ID = 11121
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11112
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1112, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Ball"
pos = -40,-85
ID = 11121
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11112
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1112, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; むげんのそら（弱）

[Statedef 1113]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1091
poweradd = 100
sprpriority = 2

[State 1113, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,5

[State 1113, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Ball"
pos = 60,-35
ID = 11131
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11110
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1113, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; むげんのそら（中）

[Statedef 1114]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1091
poweradd = 100
sprpriority = 2

[State 1114, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,5

[State 1114, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Ball"
pos = 60,-35
ID = 11141
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11111
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1114, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; むげんのそら（強）

[Statedef 1115]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1115
poweradd = 100
sprpriority = 2

[State 1115, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,5

[State 1115, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Ball"
pos = 70,-35
ID = 11151
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11113
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1115, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Ball"
pos = -70,-35
ID = 11151
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11113
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1115, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Ball"
pos = 40,-85
ID = 11151
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11113
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1115, まどのそと生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Ball"
pos = -40,-85
ID = 11151
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11113
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1115, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; はじまりのき

[Statedef 1120]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1120
facep2 = 1
poweradd = 50
sprpriority = 2

[State 1120, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 0
ignorehitpause = 1

[State 1120, エフェクト]
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

[State 1120, エフェクト]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 2630
postype = p1
pos = 58,-35
ID = 11200
facing = 1
bindtime = -1
removetime = -1
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s0,1

[State 1120, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(8) = 5
trigger3 = AnimElemTime(8) = 10
trigger4 = AnimElemTime(8) = 15
trigger5 = AnimElemTime(8) = 20
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = low
air.type = low
damage = 30,14
getpower = 50,10
givepower = 20,5
pausetime = 8,6
guard.pausetime = 8,5
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
guard.velocity = -3
air.velocity = -3,-2
airguard.velocity = -2,-1
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = var(54)/10000%10

[State 1120, Projectile]
type = Projectile
trigger1 = AnimElemTime(6) = 0
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = medium
air.animtype = medium
fall.animtype = medium
ground.type = low
air.type = low
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
kill = 0
guard.kill = var(54)/10000%10
projID = 1120
projanim = 1121
projhitanim = -1
projremanim = -1
projcancelanim = -1
projscale = 1,1
projremove = 0
projremovetime = 25
velocity = 0,0
remvelocity = 0,0
projhits = 1
projpriority = 7
projsprpriority = -7
projedgebound = 10
projstagebound = 10
offset = 58,-35
postype = p1
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0

[State 1120, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),-30
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 1120, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),-30
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 1120, ガードエフェクト]
type = Helper
trigger1 = moveguarded
helpertype = normal
name = "GuardSpark"
pos = ceil(P2Dist X),-30
ownpal = 1
supermovetime = 0
pausemovetime = 9999
stateno = 30000
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = s1,2
ignorehitpause = 1
channel = 4

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = s1,3
ignorehitpause = 1
channel = 4

[State 1120, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 1120, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 1121

[Statedef 1121]
type = S
movetype = A
physics = S
ctrl = 0
anim = 631
poweradd = 50
sprpriority = 2

[State 1121, Explod消去]
type = RemoveExplod
trigger1 = AnimElemTime(1) = 0
ID = 11200
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 1121, エフェクト]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 2631
postype = p1
pos = 58,-35
ID = 11210
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 2
ignorehitpause = 1

[State 1121, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ちえのき

[Statedef 1122]
type = C
movetype = A
physics = C
ctrl = 0
anim = 420
poweradd = 50
sprpriority = 2

[State 1122, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 5
ignorehitpause = 1

[State 1122, 残像]
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
time = 25

[State 1122, エフェクト]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 11040
postype = p1
pos = -30,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 1122, 横移動]
type = VelSet
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(4) = 0
trigger3 = AnimElemTime(5) = 0
trigger4 = AnimElemTime(6) = 0
trigger5 = AnimElemTime(7) = 0
trigger6 = AnimElemTime(8) = 0
x = 12

[State 1122, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s0,1

[State 1122, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = C,SA
hitflag = MAFD
guardflag = LA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 60,0
getpower = 50,10
givepower = 20,5
pausetime = 10,6
guard.pausetime = 10,10
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 20
ground.slidetime = 18
guard.hittime = 20
air.hittime = 18
guard.ctrltime = 20
airguard.ctrltime = 15
ground.velocity = -4,0
guard.velocity = -4
air.velocity = -4,-4
airguard.velocity = -3,-2
fall.recover = 0
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = var(54)/10000%10

[State 1122, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; たいきのしょうけい

[Statedef 1130]
type = S
physics = S
ctrl = 0
anim = 4090
sprpriority = 1

[State 1130, 残像消去]
type = AfterImage
trigger1 = time = 0
time = 0

[State 1130, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1130, 接触判定]
type = PlayerPush
trigger1 = 1
value = 0

[State 1130, 速度指定]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 1130, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 1130, 透過処理]
type = PalFX
trigger1 = Time > 4
time = 1
mul = var(6),var(6),var(6)

[State 1130, 透過処理]
type = VarSet
trigger1 = Time = 0
var(6) = 250

[State 1130, 透過処理]
type = VarAdd
trigger1 = Time > 4
trigger1 = Time % 2 = 0
trigger1 = var(6) > 0
var(6) = -50

[State 1130, 終了へ]
type = ChangeState
trigger1 = Time > 20
value = 1131

[Statedef 1131]
type = S
physics = S
ctrl = 0
anim = 4091
sprpriority = 1

[State 1131, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 1131, 速度指定]
type = VelSet
trigger1 = Time < 15
x = const(velocity.run.fwd.x)

[State 1131, 透過処理]
type = PalFX
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(5) < 0
time = 1
mul = var(6),var(6),var(6)

[State 1131, 透過処理]
type = VarAdd
trigger1 = Time < 20
trigger1 = Time % 3 = 0
trigger1 = var(6) < 250
var(6) = 50

[State 1131, 終了処理]
type = VarSet
trigger1 = Time = 20
var(6) = 0

[State 1131, 無敵]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(5) <= 0
value = SCA
time = 1

[State 1131, 接触判定]
type = PlayerPush
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(5) <= 0
value = 0

[State 1131, 終了]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; だいいちのかぎ

[Statedef 1132]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1132
sprpriority = 1

[State 1132, 残像消去]
type = AfterImage
trigger1 = time = 0
time = 0

[State 1132, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1132, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 5
type = A
physics = A

[State 1132, 2]
type = VelSet
trigger1 = Time = 5
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 1132, 透過処理]
type = PalFX
trigger1 = Time > 4
time = 1
mul = var(6),var(6),var(6)

[State 1132, 透過処理]
type = VarSet
trigger1 = Time = 0
var(6) = 250

[State 1132, 透過処理]
type = VarAdd
trigger1 = Time > 4
trigger1 = Time < 10
trigger1 = var(6) > 0
var(6) = -50

[State 1132, 透過処理]
type = VarAdd
trigger1 = Time > 12
trigger1 = var(6) <= 200
var(6) = 50

[State 1132, 透過処理]
type = Trans
trigger1 = Time > 4
trigger1 = Time < 19
trans = add

;---------------------------------------------------------------------------
; ノアのきおく

[Statedef 1133]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1133
poweradd = 50
sprpriority = 2

[State 1133, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 3
ignorehitpause = 1

[State 1133, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,1

[State 1133, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 60,15
getpower = 50,10
givepower = 20,5
pausetime = 10,15
guard.pausetime = 10,8
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 12
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = -3.5,0
guard.velocity = -3.5
air.velocity = -3,-2
airguard.velocity = -2,-1
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = var(54)/10000%10
p2stateno = 50000
p2facing = 1
envshake.time = 15
envshake.ampl = 3
envshake.freq = 80

[State 1133, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; そらのあお

[Statedef 1134]
type = S
movetype = A
physics = S
juggle  = 1
ctrl = 0
anim = 1134
poweradd = 50
sprpriority = 2

[State 1134, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 3
ignorehitpause = 1

[State 1134, VarSet]
type = VarSet
trigger1 = movecontact
var(16) = 1
ignorehitpause = 1

[State 1134, 残像消去]
type = AfterImage
trigger1 = time = 0
time = 0

[State 1134, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,1

[State 1134, エフェクト]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 2210
postype = p1
pos = -20,-40
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 1134, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 50,0
getpower = 60,8
givepower = 15,4
pausetime = 10,8
guard.pausetime = 10,8
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 12
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = 0,-9
guard.velocity = -4
air.velocity = -0,-5
airguard.velocity = -2,-8
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = var(54)/10000%10

[State 1134, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; つきのぎん

[Statedef 1135]
type = S
movetype = A
physics = S
juggle  = 1
ctrl = 0
anim = 1135
poweradd = 50
sprpriority = 2

[State 1135, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 6
ignorehitpause = 1

[State 1135, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 2
statetype = A
physics = A

[State 1135, 速度指定]
type = VelSet
trigger1 = Time = 2
x = 5
y = -6

[State 1135, 残像]
type = AfterImage
trigger1 = Time = 2
timegap  = 1
framegap = 3
Trans = Add1
length = 12
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
palmul = 1,1,1
time = 30

[State 1135, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,8

[State 1135, エフェクト]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 11051
postype = p1
pos = 0,-150
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 1135, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SA
hitflag = MAFD
guardflag = HA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 90,20
getpower = 100,50
givepower = 30,15
pausetime = 12,12
guard.pausetime = 5,25
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,8
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 12
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = -4,-4
guard.velocity = -3
air.velocity = -3,-3
airguard.velocity = -2,-1
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = var(54)/10000%10

;---------------------------------------------------------------------------
; りんねのつるぎ

[Statedef 1140]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1140
poweradd = 100
sprpriority = 2

[State 1140, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s3,9

[State 1140, フラグをセット]
type = VarSet
trigger1 = AnimElemTime(5) = 0
var(4) = 1
persistent = 0
ignorehitpause = 1

[State 1140, フラグをセット]
type = VarSet
trigger1 = AnimElemTime(5) = 1
var(4) = 0
persistent = 0
ignorehitpause = 1

[State 1140, つるぎ生成]
type = Helper
trigger1 = AnimElemTime(5) = 1
helpertype = normal
name = "Sword_Root"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11140
ID = 111140
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1140, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; だいきょうそう

[Statedef 1141]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1141
poweradd = 100
sprpriority = 2

[State 1141, フラグをセット]
type = VarSet
trigger1 = AnimElemTime(2) = 0
var(4) = 0
persistent = 0
ignorehitpause = 1

[State 1141, フラグをセット]
type = VarSet
trigger1 = AnimElemTime(3) = 0
var(4) = 2
persistent = 0
ignorehitpause = 1

[State 1141, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; だいきょうそう（空中）

[Statedef 1142]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1142
poweradd = 100
sprpriority = 2

[State 1142, フラグをセット]
type = VarSet
trigger1 = AnimElemTime(3) = 0
var(4) = 0
persistent = 0
ignorehitpause = 1

[State 1142, フラグをセット]
type = VarSet
trigger1 = AnimElemTime(4) = 0
var(4) = 2
persistent = 0
ignorehitpause = 1

[State 1142, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; かいびゃく

[Statedef 1143]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1141
poweradd = 100
sprpriority = 2

[State 1143, フラグをセット]
type = VarSet
trigger1 = AnimElemTime(2) = 0
var(4) = 0
persistent = 0
ignorehitpause = 1

[State 1143, フラグをセット]
type = VarSet
trigger1 = AnimElemTime(3) = 0
var(4) = 3
persistent = 0
ignorehitpause = 1

[State 1143, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; かいびゃく（空中）

[Statedef 1144]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1142
poweradd = 100
sprpriority = 2

[State 1144, フラグをセット]
type = VarSet
trigger1 = AnimElemTime(3) = 0
var(4) = 0
persistent = 0
ignorehitpause = 1

[State 1144, フラグをセット]
type = VarSet
trigger1 = AnimElemTime(4) = 0
var(4) = 3
persistent = 0
ignorehitpause = 1

[State 1144, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; りんねのつるぎ（空中）

[Statedef 1150]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1150
poweradd = 100
sprpriority = 2
facep2 = 1

[State 1150, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s3,9

[State 1150, フラグをセット]
type = VarSet
trigger1 = AnimElemTime(5) = 0
var(4) = 1
persistent = 0
ignorehitpause = 1

[State 1150, フラグをセット]
type = VarSet
trigger1 = AnimElemTime(5) = 1
var(4) = 0
persistent = 0
ignorehitpause = 1

[State 1150, つるぎ生成]
type = Helper
trigger1 = AnimElemTime(5) = 1
helpertype = normal
name = "Sword_Root"
pos = 0,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11140
ID = 111140
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1150, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; ふゆのはなび（弱）

[Statedef 1160]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1160
poweradd = 100
sprpriority = 2

[State 1160, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s0,1

[State 1160, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Winter_Fireworks"
pos = 50,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11160
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1160, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ふゆのはなび（中）

[Statedef 1161]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1160
poweradd = 100
sprpriority = 2

[State 1161, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s0,1

[State 1161, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Winter_Fireworks"
pos = 140,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11160
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1161, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ふゆのはなび（強）

[Statedef 1162]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1160
poweradd = 100
sprpriority = 2

[State 1162, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s0,1

[State 1162, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Winter_Fireworks"
pos = 260,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11160
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1162, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ふゆのはなび（強）

[Statedef 1162]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1160
poweradd = 100
sprpriority = 2

[State 1162, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s0,1

[State 1162, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Winter_Fireworks"
pos = 260,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11160
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1162, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ふゆのそら

[Statedef 1163]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1160
poweradd = 100
sprpriority = 2

[State 1163, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s0,1

[State 1163, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Winter_Fireworks"
pos = 75,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11162
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1163, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Winter_Fireworks"
pos = 150,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11162
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1163, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Winter_Fireworks"
pos = 225,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11162
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1163, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ふゆのそら

[Statedef 1164]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1161
poweradd = 100
sprpriority = 2

[State 1163, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s0,1

[State 1164, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Winter_Fireworks"
pos = 80,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11163
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1164, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 5
helpertype = normal
name = "Winter_Fireworks"
pos = 250,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11163
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1164, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 10
helpertype = normal
name = "Winter_Fireworks"
pos = 170,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11163
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1164, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 15
helpertype = normal
name = "Winter_Fireworks"
pos = 65,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11163
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1164, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 20
helpertype = normal
name = "Winter_Fireworks"
pos = 75,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11163
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1164, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 25
helpertype = normal
name = "Winter_Fireworks"
pos = 250,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11163
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1164, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 30
helpertype = normal
name = "Winter_Fireworks"
pos = 65,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11163
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1164, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 35
helpertype = normal
name = "Winter_Fireworks"
pos = 180,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11163
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1164, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 40
helpertype = normal
name = "Winter_Fireworks"
pos = 80,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11163
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1164, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 45
helpertype = normal
name = "Winter_Fireworks"
pos = 165,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11163
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1164, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 50
helpertype = normal
name = "Winter_Fireworks"
pos = 30,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11163
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1164, ふゆのはなび生成]
type = Helper
trigger1 = AnimElemTime(8) = 55
helpertype = normal
name = "Winter_Fireworks"
pos = 70,-320
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11163
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1164, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ぬし？　あるじ？（弱）

[Statedef 1170]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1030
poweradd = 100
sprpriority = 2

[State 1170, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,0

[State 1170, 透明いたるさん生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Itaru"
pos = 60,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11170
ID = 11701
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1170, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ぬし？　あるじ？（中）

[Statedef 1171]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1030
poweradd = 100
sprpriority = 2

[State 1171, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,0

[State 1171, 透明いたるさん生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Itaru"
pos = 120,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11170
ID = 11711
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1171, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ぬし？　あるじ？（強）

[Statedef 1172]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1030
poweradd = 100
sprpriority = 2

[State 1172, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = s3,0

[State 1172, 透明いたるさん生成]
type = Helper
trigger1 = AnimElemTime(8) = 0
helpertype = normal
name = "Itaru"
pos = 180,0
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11170
ID = 11721
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1172, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; いましめ（弱）

[Statedef 1180]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1180
poweradd = 100
sprpriority = 2

[State 1180, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,2

[State 1180, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,3

[State 1180, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Knife_Large"
pos = 20,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11180
ID = 11801
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1180, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; いましめ（中）

[Statedef 1181]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1180
poweradd = 100
sprpriority = 2

[State 1181, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,2

[State 1181, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,3

[State 1181, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Knife_Large"
pos = 20,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11180
ID = 11802
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1181, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; いましめ（フェイント）

[Statedef 1182]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1180
poweradd = 100
sprpriority = 2

[State 1182, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,2

[State 1182, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s3,3

[State 1182, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(6) = 0
helpertype = normal
name = "Knife_Large"
pos = 20,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11180
ID = 11803
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1182, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; たいえん

[Statedef 1190]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1190
poweradd = 100
sprpriority = 2

[State 1190, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = s3,4

[State 1190, たいえん生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Fire"
pos = 20,5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11190
persistent = 0
ignorehitpause = 1

[State 1190, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; けんようじゅのもり

[Statedef 1200]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1200
poweradd = 100
sprpriority = 2

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = -2
y = -5

[State 1200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) = 1
physics = A

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 2
value = s3,8

[State 1200, エフェクト]
type = Explod
trigger1 = AnimElemTime(3) = 2
anim = 2610
postype = p1
pos = 0,-100
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 1200, 槍生成]
type = Helper
trigger1 = AnimElemTime(3) = 2
helpertype = normal
name = "Forest"
pos = 30,-70
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11200
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1200, 槍生成]
type = Helper
trigger1 = AnimElemTime(3) = 2
helpertype = normal
name = "Forest"
pos = 20,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11200
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1200, 槍生成]
type = Helper
trigger1 = AnimElemTime(3) = 2
helpertype = normal
name = "Forest"
pos = 10,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 11200
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 1200, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1
