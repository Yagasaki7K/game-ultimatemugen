;---------------------------------------------------------------------------
; 射撃（X・ニュートラル）

[Statedef 7000]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 80
anim = 201

[State 7000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,26
channel = 3

[State 7000, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
ID = 17000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7000, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
ID = 17000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7000, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
ID = 17000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7000, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（X・レバー後ろ）

[Statedef 7001]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 80
anim = 201

[State 7001, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,26
channel = 3

[State 7001, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7001, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70011
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7001, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70012
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7001, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70013
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7001, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70014
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7001, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（X・レバー前）

[Statedef 7002]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 80
anim = 211

[State 7002, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,26
channel = 3

[State 7002, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17003
ID = 17002
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7002, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-45
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17003
ID = 17002
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7002, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-60
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17003
ID = 17002
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7002, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（XY同時）

[Statedef 7005]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 80
anim = 202

[State 7005, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,2

[State 7005, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 20,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17005
ID = 17005
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7005, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（X・ニュートラル）

[Statedef 7010]
type = C
movetype = A
physics = C
ctrl = 0
poweradd = 80
anim = 401

[State 7010, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,26
channel = 3

[State 7010, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
ID = 17000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7010, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
ID = 17000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7010, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-25
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
ID = 17000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7010, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（X・レバー後ろ）

[Statedef 7011]
type = C
movetype = A
physics = C
ctrl = 0
poweradd = 80
anim = 401

[State 7011, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,26
channel = 3

[State 7011, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7011, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70011
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7011, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70012
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7011, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70013
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7011, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70014
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7011, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（X・レバー前）

[Statedef 7012]
type = C
movetype = A
physics = C
ctrl = 0
poweradd = 80
anim = 401

[State 7012, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,26
channel = 3

[State 7012, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-5
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17002
ID = 17002
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7012, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17002
ID = 17002
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7012, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-25
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17002
ID = 17002
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7012, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（X・ニュートラル）

[Statedef 7020]
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 80
anim = 601

[State 7020, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,26
channel = 3

[State 7020, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-20
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
ID = 17000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7020, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
ID = 17000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7020, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17000
ID = 17000
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7020, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（X・レバー後ろ）

[Statedef 7021]
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 80
anim = 601

[State 7021, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,26
channel = 3

[State 7021, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70010
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7021, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70011
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7021, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70012
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7021, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70013
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7021, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17004
ID = 70014
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7021, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（X・レバー前）

[Statedef 7022]
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 80
anim = 601

[State 7022, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,26
channel = 3

[State 7022, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-20
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17002
ID = 17002
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7022, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17002
ID = 17002
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7022, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 5,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17002
ID = 17002
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7022, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（Y）

[Statedef 7030]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 80
anim = 216

[State 7030, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,26
channel = 3

[State 7030, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70300
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7030, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70301
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7030, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70302
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7030, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70303
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7030, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70304
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7030, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（Y・レバー前）

[Statedef 7031]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 80
anim = 216

[State 7031, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,26
channel = 3

[State 7031, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70310
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7031, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70311
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7031, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70312
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7031, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70313
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7031, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70314
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7031, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（Y・レバー前）

[Statedef 7032]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 80
anim = 216

[State 7032, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,26
channel = 3

[State 7032, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70320
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7032, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70321
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7032, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70322
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7032, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70323
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7032, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70324
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7032, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（Y・ニュートラル）

[Statedef 7040]
type = C
movetype = A
physics = C
ctrl = 0
poweradd = 80
anim = 401

[State 7040, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,26
channel = 3

[State 7040, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70300
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7040, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70301
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7040, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70302
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7040, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70303
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7040, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70304
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7040, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（Y・レバー後ろ）

[Statedef 7041]
type = C
movetype = A
physics = C
ctrl = 0
poweradd = 80
anim = 401

[State 7041, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,26
channel = 3

[State 7041, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70310
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7041, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70311
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7041, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70312
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7041, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（Y・レバー前）

[Statedef 7042]
type = C
movetype = A
physics = C
ctrl = 0
poweradd = 80
anim = 401

[State 7042, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,26
channel = 3

[State 7042, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70320
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7042, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70321
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7042, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70322
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7042, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70323
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7042, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 10,-15
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70324
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7042, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（X・ニュートラル）

[Statedef 7050]
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 80
anim = 611

[State 7050, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,26
channel = 3

[State 7050, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70300
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7050, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70301
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7050, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70302
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7050, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70303
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7050, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17030
ID = 70304
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7050, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（X・レバー後ろ）

[Statedef 7051]
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 80
anim = 611

[State 7051, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,26
channel = 3

[State 7051, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70310
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7051, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70311
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7051, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70312
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7051, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70313
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7051, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17031
ID = 70314
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7051, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; 射撃（X・レバー前）

[Statedef 7052]
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 80
anim = 611

[State 7052, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s3,26
channel = 3

[State 7052, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70320
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7052, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70321
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7052, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70322
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7052, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70323
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7052, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(4) = 0
helpertype = normal
name = "Knife"
pos = 10,-50
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17032
ID = 70324
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7052, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; しろのつるぎ（X）

[Statedef 7100]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 160
anim = 201

[State 7100, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,26
channel = 3

[State 7100, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17100
ID = 17100
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7100, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; しろのつるぎ（X）

[Statedef 7101]
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 160
anim = 601

[State 7101, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,26
channel = 3

[State 7101, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17100
ID = 17100
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7101, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; しろのつるぎ（Y）

[Statedef 7110]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 160
anim = 201

[State 7110, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,26
channel = 3

[State 7110, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17110
ID = 17110
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7110, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; しろのつるぎ（Y）

[Statedef 7111]
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 160
anim = 601

[State 7111, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,26
channel = 3

[State 7111, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Knife"
pos = 5,-40
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17110
ID = 17110
persistent = 0
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7111, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; つちのつるぎ（X）

[Statedef 7120]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 160
anim = 212

[State 7120, VarRandom]
type = VarRandom
trigger1 = 1
v = 6
range = -40,40

[State 7120, VarRandom]
type = VarRandom
trigger1 = 1
v = 7
range = -12,-8

[State 7120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(3) = 7
trigger3 = AnimElemTime(3) = 14
trigger4 = AnimElemTime(3) = 21
trigger5 = AnimElemTime(3) = 28
trigger6 = AnimElemTime(3) = 35
value = s3,26
channel = 3

[State 7120, ナイフ生成]
type = Helper
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(3) = 7
trigger3 = AnimElemTime(3) = 14
trigger4 = AnimElemTime(3) = 21
trigger5 = AnimElemTime(3) = 28
trigger6 = AnimElemTime(3) = 35
helpertype = normal
name = "Knife"
pos = ceil(P2Dist X)+var(6),30
ownpal = 1
pausemovetime = 0
supermovetime = 0
stateno = 17120
ID = 17120
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 7120, 終了]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
