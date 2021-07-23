;---------------------------------------------------------------------------
; タイムオーバー

[Statedef 170]
type = S
ctrl = 0
anim = 0
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; 勝利ポーズ

[Statedef 180]
type = S

[State 180, 終了]
type = ChangeState
triggerall = Time = 0
trigger1 = MatchOver != 1
value = 181

[State 180, 終了]
type = ChangeState
trigger1 = MatchOver = 1
trigger1 = Time = 0
value = ifelse(var(36)/100%10!=0,182,181)

[Statedef 181]
type = S
anim = 0
ctrl = 0
velset = 0,0

[State 181, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[Statedef 182]
type = S

[State 182, アシスト関連のExplod削除]
type = RemoveExplod
trigger1 = 1
ID = 58610
supermovetime = 9999
pausemovetime = 9999

[State 182, アシスト関連のExplod削除]
type = RemoveExplod
trigger1 = 1
ID = 58611
supermovetime = 9999
pausemovetime = 9999

[State 182, アシスト関連のExplod削除]
type = RemoveExplod
trigger1 = 1
ID = 58612
supermovetime = 9999
pausemovetime = 9999

[State 182, アシスト関連のExplod削除]
type = RemoveExplod
trigger1 = 1
ID = 58613
supermovetime = 9999
pausemovetime = 9999

[State 182, アシスト関連のExplod削除]
type = RemoveExplod
trigger1 = 1
ID = 58614
supermovetime = 9999
pausemovetime = 9999

[State 182, アシスト関連のExplod削除]
type = RemoveExplod
trigger1 = 1
ID = 58615
supermovetime = 9999
pausemovetime = 9999

[State 182, 強制移行阻止]
type = AssertSpecial
trigger1 = Time = [0,400]
flag = RoundNotOver

[State 182, メッセージ準備]
type = AssertSpecial
trigger1 = 1
flag = GlobalNoshadow
flag2 = Invisible
flag3 = NoBarDisplay

[State 182, メッセージ準備]
type = AssertSpecial
trigger1 = 1
flag = NoMusic
flag2 = NoFG

[State 182, PlaySnd]
type = PlaySnd
trigger1 = var(36)/100%10 = 2
trigger1 = Time = 20
value = s5,2
persistent = 0
abspan = 0
volume = 255

[State 182, カットイン呼び出し]
type = Helper
trigger1 = Time = 120
name = "Cutin"
ID = 1821
stateno = 45000
pos = 0,-200
postype = right
sprpriority = 7
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

[State 182, メッセージ呼び出し]
type = Helper
trigger1 = Time = 180
name = "Message"
ID = 1822
stateno = 45010
pos = 0,-500
postype = left
sprpriority = 7
ownpal = 1
supermovetime = 9999
pausemovetime = 9999

;---------------------------------------------------------------------------
; イントロ

[Statedef 191]
type = S
ctrl = 0
anim = 0
velset = 0,0

[State 191, AssertSpecial] 
type = AssertSpecial
triggerall = var(37)/1000%10 = 0
trigger1 = Time < 400
trigger1 = var(7) = 0
flag = Intro

[State 191, システムディレクション]
type = LifeSet
trigger1 = time = 1
trigger1 = var(30) > 0
trigger1 = var(30) < 1001
value = var(30)
ignorehitpause = 1

[State 191, システムディレクション]
type = PowerSet
trigger1 = time = 1
trigger1 = var(31) > 0
trigger1 = var(31) < 5001
value = var(31)
ignorehitpause = 1

[State 191, ？？？？]
type = Helper
trigger1 = Time = 0
name = "System"
ID = 59001
stateno = 46000
pos = 0,0
postype = p1
sprpriority = -7
supermovetime = 9999
pausemovetime = 9999

[State 191, アシストタイプ選択ヘルパー呼び出し]
type = Helper
triggerall = var(37)/1000%10 = 0
trigger1 = Time = 5
name = "Select_Assist_Type"
stateno = 45020
pos = -20,-40
postype = p1
sprpriority = 7
ownpal = 1
ID = 450201
supermovetime = 9999
pausemovetime = 9999
size.xscale = 0.5
size.yscale = 0.5
persistent = 0

[State 191, アシストキャラクター選択ヘルパー呼び出し]
type = Helper
triggerall = var(37)/1000%10 = 0
trigger1 = Time = 5
name = "Select_Assist_Character"
stateno = 45030
pos = 10,-40
postype = p1
sprpriority = 7
ownpal = 1
ID = 450301
supermovetime = 9999
pausemovetime = 9999
size.xscale = 0.5
size.yscale = 0.5
persistent = 0

[State 191, アシストタイプ選択インターフェイス呼び出し]
type = Helper
triggerall = var(37)/1000%10 = 0
trigger1 = NumHelper(450201) = 0
trigger1 = Time > 5
name = "Select_Assist_Type"
stateno = 45020
pos = -20,-40
postype = p1
sprpriority = 7
ownpal = 1
ID = 450202
supermovetime = 9999
pausemovetime = 9999
persistent = 0

[State 191, アシストキャラクター選択ヘルパー呼び出し]
type = Helper
triggerall = var(37)/1000%10 = 0
trigger1 = NumHelper(450301) = 0
trigger1 = Time > 5
name = "Select_Assist_Character"
stateno = 45030
pos = 10,-40
postype = p1
sprpriority = 7
ownpal = 1
ID = 450302
supermovetime = 9999
pausemovetime = 9999
persistent = 0

[State 191, Xアシストの攻撃方法のランダム処理]
type = VarSet
trigger1 = Time = 2
trigger1 = var(50) = 3
var(50) = random%3
ignorehitpause = 1

[State 191, Yアシストの攻撃方法]
type = VarSet
trigger1 = Time = 2
trigger1 = var(51) = 3
var(51) = random%3
ignorehitpause = 1

[State 191, Xアシストのキャラクター]
type = VarSet
trigger1 = Time = 2
trigger1 = var(52) = 4
var(52) = random%4
ignorehitpause = 1

[State 191, Yアシストのキャラクター]
type = VarSet
trigger1 = Time = 2
trigger1 = var(53) = 4
var(53) = random%4
ignorehitpause = 1

[State 191, 終了] 
type = ChangeState
trigger1 = roundstate = 2
value = 0

;---------------------------------------------------------------------------
; 立ち弱攻撃

[Statedef 200]
type = S
movetype = A
physics = S
juggle  = 1
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

[State 200, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 1
ignorehitpause = 1

[State 200, VarSet]
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 200, VarSet]
type = VarSet
trigger1 = movecontact
var(16) = 1
ignorehitpause = 1

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0

[State 200, エフェクト]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 2200
postype = p1
pos = -10,-40
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 200, Hitdef]
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
damage = 15,0
getpower = 20,5
givepower = 10,2
pausetime = 5,3
guard.pausetime = 4,3
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,0
guardsound = S1,3
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 15
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = -3,0
guard.velocity = -3
air.velocity = -2,-1
airguard.velocity = -2,-1
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0

[State 200, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 立ち中攻撃（近距離）

[Statedef 210]
type = S
movetype = A
physics = S
juggle  = 1
ctrl = 0
anim = 210
poweradd = 40
sprpriority = 2

[State 210, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 2
ignorehitpause = 1

[State 210, VarSet]
type = VarSet
trigger1 = movecontact
var(16) = 1
ignorehitpause = 1

[State 210, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,1

[State 210, エフェクト]
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

[State 210, Hitdef]
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
damage = 30,0
getpower = 30,8
givepower = 15,4
pausetime = 10,8
guard.pausetime = 10,8
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,1
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 12
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = -3.5,0
guard.velocity = -2
air.velocity = -3,-4
airguard.velocity = -2,-1
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = 0

[State 210, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 立ち中攻撃（遠距離）

[Statedef 215]
type = S
movetype = A
physics = S
juggle  = 1
ctrl = 0
anim = 215
poweradd = 40
sprpriority = 2

[State 215, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 2
ignorehitpause = 1

[State 200, VarSet]
type = VarSet
trigger1 = movecontact
var(16) = 1
ignorehitpause = 1

[State 215, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1

[State 215, エフェクト]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 2215
postype = p1
pos = -40,-40
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 215, Hitdef]
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
damage = 30,0
getpower = 20,5
givepower = 10,2
pausetime = 10,8
guard.pausetime = 10,8
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,1
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
guard.kill = 0

[State 215, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 立ち強攻撃

[Statedef 220]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 220
poweradd = 70
sprpriority = 2

[State 220, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 3
ignorehitpause = 1

[State 200, VarSet]
type = VarSet
trigger1 = movecontact
var(16) = 1
ignorehitpause = 1

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s0,2

[State 220, Effect]
type = Explod
trigger1 = AnimElemTime(7) = 0
anim = 11021
postype = p1
pos = 40,0
facing = 1
bindtime = 1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3

[State 220, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = S,NA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = low
air.type = low
damage = 50,0
getpower = 50,10
givepower = 20,5
pausetime = 10,10
guard.pausetime = 10,10
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 18
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = -4,0
guard.velocity = -4
air.velocity = -3,-2
airguard.velocity = -2,-1
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = 0

[State 220, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 屈み弱攻撃

[Statedef 400]
type = C
movetype = A
physics = C
juggle  = 1
ctrl = 0
anim = 400
poweradd = 20
sprpriority = 2

[State 400, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 1
ignorehitpause = 1

[State 400, VarSet]
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 400, VarSet]
type = VarSet
trigger1 = movecontact
var(16) = 1
ignorehitpause = 1

[State 400, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0

[State 400, エフェクト]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 2200
postype = p1
pos = -10,-15
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 400, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = C,NA
hitflag = MAF
guardflag = LA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 15,0
getpower = 20,5
givepower = 10,2
pausetime = 5,3
guard.pausetime = 4,3
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,0
guardsound = S1,3
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 15
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = -3,0
guard.velocity = -3
air.velocity = -2,-1
airguard.velocity = -2,-1
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = 0

[State 400, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; 屈み中攻撃

[Statedef 410]
type = C
movetype = A
physics = C
juggle  = 1
ctrl = 0
anim = 410
poweradd = 40
sprpriority = 2

[State 410, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 4
ignorehitpause = 1

[State 410, VarSet]
type = VarSet
trigger1 = movecontact
var(16) = 1
ignorehitpause = 1

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1

[State 410, エフェクト]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 2215
postype = p1
pos = -30,-15
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 410, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = C,NA
hitflag = MAFD
guardflag = LA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 30,0
getpower = 20,5
givepower = 10,2
pausetime = 8,8
guard.pausetime = 8,8
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,1
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 12
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = -4,0
guard.velocity = -4
air.velocity = -3,-3
airguard.velocity = -2,-1
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0

[State 410, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; 屈み強攻撃

[Statedef 420]
type = C
movetype = A
physics = C
juggle  = 15
ctrl = 0
anim = 420
poweradd = 70
sprpriority = 2

[State 420, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 5
ignorehitpause = 1

[State 420, VarSet]
type = VarSet
trigger1 = movecontact
var(16) = 1
ignorehitpause = 1

[State 420, 横移動]
type = VelSet
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(4) = 0
trigger3 = AnimElemTime(5) = 0
trigger4 = AnimElemTime(6) = 0
trigger5 = AnimElemTime(7) = 0
trigger6 = AnimElemTime(8) = 0
x = 10

[State 420, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s0,1

[State 420, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = C,NA
hitflag = MAFD
guardflag = LA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = high
air.type = high
damage = 50,0
getpower = 50,10
givepower = 20,5
pausetime = 10,4
guard.pausetime = 10,10
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 16
ground.slidetime = 12
guard.hittime = 16
air.hittime = 18
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = -4,-4
guard.velocity = -4
air.velocity = -4,-4
airguard.velocity = -3,-2
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0

[State 420, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 空中弱攻撃

[Statedef 600]
type = A
movetype = A
physics = A
juggle  = 1
ctrl = 0
anim = 600
poweradd = 20
sprpriority = 2

[State 600, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 6
ignorehitpause = 1

[State 600, VarSet]
type = VarSet
trigger1 = Time = 0
var(16) = 0
ignorehitpause = 1

[State 600, VarSet]
type = VarSet
trigger1 = movecontact
var(16) = 1
ignorehitpause = 1

[State 600, 残像消去]
type = AfterImage
trigger1 = time = 0
time = 0

[State 600, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s0,0

[State 600, エフェクト]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 2600
postype = p1
pos = -5,-27
facing = 1
bindtime = -1
removetime = -2
ownpal = 1
supermovetime = 0
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),9999,0))
sprpriority = 3

[State 600, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 15,0
getpower = 20,5
givepower = 10,2
pausetime = 9,8
guard.pausetime = 6,4
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,0
guardsound = S1,3
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 15
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = -3,0
guard.velocity = -3
air.velocity = -2,-3
airguard.velocity = -2,-2
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = 0

[State 600, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; 空中中攻撃

[Statedef 610]
type = A
movetype = A
physics = A
juggle  = 1
ctrl = 0
anim = 610
poweradd = 40
sprpriority = 2

[State 610, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 6
ignorehitpause = 1

[State 610, VarSet]
type = VarSet
trigger1 = movehit
var(16) = 1
ignorehitpause = 1

[State 610, 残像消去]
type = AfterImage
trigger1 = time = 0
time = 0

[State 610, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,1

[State 610, エフェクト]
type = Explod
trigger1 = AnimElemTime(3) = 0
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

[State 610, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,NA
hitflag = MAFD
guardflag = HA
animtype = light
air.animtype = light
fall.animtype = light
ground.type = high
air.type = high
damage = 30,0
getpower = 20,5
givepower = 10,2
pausetime = 12,12
guard.pausetime = 11,9
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,1
guardsound = S1,3
ground.hittime = 14
ground.slidetime = 12
guard.hittime = 14
air.hittime = 16
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = -4,0
guard.velocity = -3
air.velocity = -3,-3
airguard.velocity = -2,-1
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 1
kill = 1
guard.kill = 0

[State 610, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; 空中強攻撃

[Statedef 620]
type = A
movetype = A
physics = A
juggle  = 3
ctrl = 0
anim = 620
poweradd = 70
sprpriority = 2

[State 620, ヒットフラグリセット]
type = VarSet
trigger1 = Time = 0
var(15) = 0
ignorehitpause = 1

[State 620, VarSet]
type = VarSet
trigger1 = movehit
var(16) = 1
ignorehitpause = 1

[State 620, 残像消去]
type = AfterImage
trigger1 = time = 0
time = 0

[State 620, Explod消去]
type = RemoveExplod
trigger1 = AnimElemTime(1) = 0
ID = 6200
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 620, エフェクト]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 2620
postype = p1
pos = 5,33
ID = 6200
facing = 1
bindtime = -1
removetime = -1
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 2
ontop = 0
ignorehitpause = 1

[State 620, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = s0,1

[State 620, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(14) = 0
trigger3 = AnimElemTime(20) = 0
attr = S,NA
hitflag = MAF
guardflag = HA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = low
air.type = low
damage = 40,0
getpower = 50,10
givepower = 20,5
pausetime = 8,11
guard.pausetime = 8,11
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 20
ground.slidetime = 12
guard.hittime = 20
air.hittime = 20
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = -4,0
guard.velocity = -2
air.velocity = -3,-2
airguard.velocity = -2,-1
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = 0

[State 620, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10000
postype = p1
pos = ceil(P2Dist X),30
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

[State 620, ヒットエフェクト]
type = Explod
trigger1 = movehit
anim = 10010
postype = p1
pos = ceil(P2Dist X),30
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

[State 620, ガードエフェクト]
type = Helper
trigger1 = moveguarded
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

[State 620, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 620, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 621

[Statedef 621]
type = A
movetype = A
physics = A
ctrl = 0
anim = 621
poweradd = 70
sprpriority = 2

[State 621, Explod消去]
type = RemoveExplod
trigger1 = AnimElemTime(1) = 0
ID = 6200
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 621, エフェクト]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 2621
postype = p1
pos = 5,35
ID = 6201
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 2
ignorehitpause = 1

[State 621, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; とんでって

[Statedef 630]
type = A
movetype = A
physics = A
juggle  = 3
ctrl = 0
anim = 630
poweradd = 70
sprpriority = 2

[State 630, ヒットフラグリセット]
type = VarSet
trigger1 = Time = 0
var(15) = 0
ignorehitpause = 1

[State 630, VarSet]
type = VarSet
trigger1 = Time = 0
var(15) = 8
ignorehitpause = 1

[State 630, VarSet]
type = VarSet
trigger1 = movehit
var(16) = 1
ignorehitpause = 1

[State 630, 残像消去]
type = AfterImage
trigger1 = time = 0
time = 0

[State 630, Explod消去]
type = RemoveExplod
trigger1 = AnimElemTime(1) = 0
ID = 6200
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 630, エフェクト]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 2630
postype = p1
pos = 58,-35
ID = 6200
facing = 1
bindtime = -1
removetime = -1
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 3
ignorehitpause = 1

[State 630, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s0,1

[State 630, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(8) = 8
trigger3 = AnimElemTime(8) = 16
attr = S,NA
hitflag = MAF
guardflag = HA
animtype = hard
air.animtype = hard
fall.animtype = hard
ground.type = low
air.type = low
damage = 40,0
getpower = 50,10
givepower = 20,5
pausetime = 12,11
guard.pausetime = 10,10
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-40
hitsound = S1,2
guardsound = S1,3
ground.hittime = 18
ground.slidetime = 12
guard.hittime = 18
air.hittime = 18
guard.ctrltime = 12
airguard.ctrltime = 15
ground.velocity = -4,0
guard.velocity = -2
air.velocity = -3,-2
airguard.velocity = -2,-1
fall.recover = 1
fall.recovertime = 0
forcestand = 0
fall = 0
air.fall = 0
kill = 1
guard.kill = 0

[State 630, ヒットエフェクト]
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
pausemovetime = 9999
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 630, ヒットエフェクト]
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
pausemovetime = 9999
sprpriority = 4
ontop = 1
ignorehitpause = 1
scale = 0.5,0.5

[State 630, ガードエフェクト]
type = Helper
trigger1 = moveguarded
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

[State 630, 初期化]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1

[State 630, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 631

[Statedef 631]
type = A
movetype = A
physics = A
ctrl = 0
anim = 631
poweradd = 70
sprpriority = 2

[State 631, Explod消去]
type = RemoveExplod
trigger1 = AnimElemTime(1) = 0
ID = 6200
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 631, エフェクト]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 2631
postype = p1
pos = 58,-35
ID = 6201
facing = 1
bindtime = -1
removetime = -2
removeongethit = 1
ownpal = 1
supermovetime = 0
pausemovetime = 9999
sprpriority = 2
ignorehitpause = 1

[State 631, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; 空中技の終了処理

[Statedef 700]
type = A
movetype = I
physics  = A
ctrl = 1
anim = 46

[State 700, 画面固定]
type = ScreenBound
trigger1 = PrevStateno = 6024
trigger2 = PrevStateno = 6070
value = 1
movecamera = 1,0

[State 700, ChangeState]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;---------------------------------------------------------------------------
; ハイパーコンボの終了処理

[Statedef 6005]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 0
poweradd = 0
sprpriority = 2

[State 6005, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6005, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 6005, 相手がダウンしたことを確認]
type = ChangeState
trigger1 = P2StateNo = 56007
trigger2 = P2StateType = L
trigger3 = Time > 250
value = 6006

[Statedef 6006]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1050
poweradd = 0
sprpriority = 2

[State 6006, 無敵時間]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6006, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 6006, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s3,7
abspan = 1

[State 6006, ワープ]
type = PosAdd
trigger1 = AnimElemTime(16) = 9
x = ceil(P2Dist X) - 200

[State 6006, ワープ]
type = PosSet
trigger1 = AnimElemTime(16) = 9
y = 0

[State 6006, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
