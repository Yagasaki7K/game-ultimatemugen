[statedef -3]
;============================================================================
; [ AI ] ----- 人工知能
;============================================================================
;AI
[State -3, 1]
type = Varset
triggerall = var(20) != 1
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
var(20) = 1

[State -3, AIフラグ解除]
type = VarSet
trigger1 = RoundState = [3,4]
var(20) = 0

;---------------------------------------------------------------------------
;超必殺技
;---------------------------------------------------------------------------
;エデン
[State -3]
type = ChangeState
value = 4500
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl
trigger1 = enemyNear,movetype = A || enemyNear,movetype = I
trigger1 = enemyNear,Pos Y > -30
trigger1 = enemyNear,Vel Y >= 0
trigger1 = random = [700,1000]
trigger2 = stateno = 200 || stateno = 201
trigger2 = movehit
trigger2 = random = [900,1000]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movehit
trigger3 = random = [900,1000]
trigger4 = stateno = 220
trigger4 = movehit
trigger4 = random = [700,1000]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movehit
trigger5 = random = [700,1000]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movehit
trigger6 = random = [700,1000]
trigger7 = stateno = 605
trigger7 = movehit
trigger7 = random = [600,1000]
trigger8 = stateno = 410
trigger8 = movehit
trigger8 = random = [900,1000]
trigger9 = stateno = 411
trigger9 = movehit
trigger9 = random = [700,1000]
trigger10 = stateno = 430
trigger10 = movehit
trigger10 = random = [900,1000]
trigger11 = stateno = 440
trigger11 = movehit
trigger11 = random = [700,1000]

;---------------------------------------------------------------------------
;やおとめ_地上_MAX
[State -3, YAOTOME]
type = ChangeState
value = 3100
triggerall = var(20) = 1
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = enemyNear,movetype = A || enemyNear,movetype = I
trigger1 = enemyNear,Pos Y > -30
trigger1 = enemyNear,Vel Y >= 0
trigger1 = random = [800,1000]
trigger2 = stateno = 200 || stateno = 201
trigger2 = movehit
trigger2 = random = [900,1000]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movehit
trigger3 = random = [900,1000]
trigger4 = stateno = 220
trigger4 = movehit
trigger4 = random = [800,1000]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movehit
trigger5 = random = [800,1000]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movehit
trigger6 = random = [800,1000]
trigger7 = stateno = 605
trigger7 = movehit
trigger7 = random = [700,1000]
trigger8 = stateno = 410
trigger8 = movehit
trigger8 = random = [900,1000]
trigger9 = stateno = 411
trigger9 = movehit
trigger9 = random = [800,1000]
trigger10 = stateno = 430
trigger10 = movehit
trigger10 = random = [900,1000]
trigger11 = stateno = 440
trigger11 = movehit
trigger11 = random = [800,1000]

;---------------------------------------------------------------------------
;やおとめ_空中_MAX
[State -3, YAOTOME]
type = ChangeState
value = 3150
triggerall = var(20) = 1
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = enemyNear,Pos Y < -40
trigger1 = enemyNear,StateType = A
trigger1 = P2bodydist X = [50, 250]
trigger1 = random = [800,1000]
trigger2 = stateno = 200 || stateno = 201
trigger2 = enemyNear,StateType = A
trigger2 = movehit
trigger2 = random = [900,1000]
trigger3 = stateno = 210 || stateno = 211
trigger3 = enemyNear,StateType = A
trigger3 = movehit
trigger3 = random = [900,1000]
trigger4 = stateno = 220
trigger4 = enemyNear,StateType = A
trigger4 = movehit
trigger4 = random = [800,1000]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = enemyNear,StateType = A
trigger5 = movehit
trigger5 = random = [800,1000]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = enemyNear,StateType = A
trigger6 = movehit
trigger6 = random = [800,1000]
trigger7 = stateno = 605
trigger7 = enemyNear,StateType = A
trigger7 = movehit
trigger7 = random = [700,1000]
trigger8 = stateno = 410
trigger8 = enemyNear,StateType = A
trigger8 = movehit
trigger8 = random = [800,1000]
trigger9 = stateno = 411
trigger9 = enemyNear,StateType = A
trigger9 = movehit
trigger9 = random = [800,1000]
trigger10 = stateno = 430
trigger10 = enemyNear,StateType = A
trigger10 = movehit
trigger10 = random = [900,1000]
trigger11 = stateno = 440
trigger11 = enemyNear,StateType = A
trigger11 = movehit
trigger11 = random = [800,1000]

;-----------------------------------------
;やおとめ_A
[State -3, Yaotome]
type = ChangeState
value = 3000
triggerall = var(20) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = enemyNear,movetype = A || enemyNear,movetype = I
trigger1 = enemyNear,Pos Y > -30
trigger1 = enemyNear,Vel Y >= 0
trigger1 = P2bodydist X = [20,150]
trigger1 = random = [950,1000]
trigger2 = stateno = 200 || stateno = 201
trigger2 = movehit
trigger2 = random = [950,1000]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movehit
trigger3 = random = [950,1000]
trigger4 = stateno = 220
trigger4 = movehit
trigger4 = random = [900,1000]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movehit
trigger5 = random = [900,1000]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movehit
trigger6 = random = [900,1000]
trigger7 = stateno = 605
trigger7 = movehit
trigger7 = random = [850,1000]
trigger8 = stateno = 410
trigger8 = movehit
trigger8 = random = [950,1000]
trigger9 = stateno = 411
trigger9 = movehit
trigger9 = random = [900,1000]
trigger10 = stateno = 430
trigger10 = movehit
trigger10 = random = [950,1000]
trigger11 = stateno = 440
trigger11 = movehit
trigger11 = random = [900,1000]

;-----------------------------------------
;やおとめ_B
[State -3, Yaotome]
type = ChangeState
value = 3010
triggerall = var(20) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = enemyNear,movetype = A || enemyNear,movetype = I
trigger1 = enemyNear,Pos Y > -30
trigger1 = enemyNear,Vel Y >= 0
trigger1 = P2bodydist X > 30
trigger1 = random = [950,1000]
trigger2 = stateno = 200 || stateno = 201
trigger2 = movehit
trigger2 = random = [950,1000]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movehit
trigger3 = random = [950,1000]
trigger4 = stateno = 220
trigger4 = movehit
trigger4 = random = [900,1000]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movehit
trigger5 = random = [900,1000]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movehit
trigger6 = random = [900,1000]
trigger7 = stateno = 605
trigger7 = movehit
trigger7 = random = [850,1000]
trigger8 = stateno = 410
trigger8 = movehit
trigger8 = random = [950,1000]
trigger9 = stateno = 411
trigger9 = movehit
trigger9 = random = [900,1000]
trigger10 = stateno = 430
trigger10 = movehit
trigger10 = random = [950,1000]
trigger11 = stateno = 440
trigger11 = movehit
trigger11 = random = [900,1000]

;-----------------------------------------
;やおとめ_X
[State -3, Yaotome]
type = ChangeState
value = 3050
triggerall = var(20) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = enemyNear,Pos Y < -40
trigger1 = P2bodydist X = [20, 150]
trigger1 = enemyNear,StateType = A
trigger1 = random = [950,1000]
trigger2 = stateno = 200 || stateno = 201
trigger2 = enemyNear,StateType = A
trigger2 = movehit
trigger2 = random = [950,1000]
trigger3 = stateno = 210 || stateno = 211
trigger3 = enemyNear,StateType = A
trigger3 = movehit
trigger3 = random = [950,1000]
trigger4 = stateno = 220
trigger4 = enemyNear,StateType = A
trigger4 = movehit
trigger4 = random = [900,1000]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = enemyNear,StateType = A
trigger5 = movehit
trigger5 = random = [900,1000]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = enemyNear,StateType = A
trigger6 = movehit
trigger6 = random = [900,1000]
trigger7 = stateno = 605
trigger7 = enemyNear,StateType = A
trigger7 = movehit
trigger7 = random = [850,1000]
trigger8 = stateno = 410
trigger8 = enemyNear,StateType = A
trigger8 = movehit
trigger8 = random = [950,1000]
trigger9 = stateno = 411
trigger9 = enemyNear,StateType = A
trigger9 = movehit
trigger9 = random = [900,1000]
trigger10 = stateno = 430
trigger10 = enemyNear,StateType = A
trigger10 = movehit
trigger10 = random = [900,1000]
trigger11 = stateno = 440
trigger11 = enemyNear,StateType = A
trigger11 = movehit
trigger11 = random = [900,1000]

;-----------------------------------------
;やおとめ_Y
[State -3, Yaotome]
type = ChangeState
value = 3060
triggerall = var(20) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = enemyNear,Pos Y < -40
trigger1 = P2bodydist X = [50, 250]
trigger1 = enemyNear,StateType = A
trigger1 = random = [950,1000]
trigger2 = stateno = 200 || stateno = 201
trigger2 = enemyNear,StateType = A
trigger2 = movehit
trigger2 = random = [950,1000]
trigger3 = stateno = 210 || stateno = 211
trigger3 = enemyNear,StateType = A
trigger3 = movehit
trigger3 = random = [950,1000]
trigger4 = stateno = 220
trigger4 = enemyNear,StateType = A
trigger4 = movehit
trigger4 = random = [900,1000]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = enemyNear,StateType = A
trigger5 = movehit
trigger5 = random = [900,1000]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = enemyNear,StateType = A
trigger6 = movehit
trigger6 = random = [900,1000]
trigger7 = stateno = 605
trigger7 = enemyNear,StateType = A
trigger7 = movehit
trigger7 = random = [850,1000]
trigger8 = stateno = 410
trigger8 = enemyNear,StateType = A
trigger8 = movehit
trigger8 = random = [950,1000]
trigger9 = stateno = 411
trigger9 = enemyNear,StateType = A
trigger9 = movehit
trigger9 = random = [900,1000]
trigger10 = stateno = 430
trigger10 = enemyNear,StateType = A
trigger10 = movehit
trigger10 = random = [900,1000]
trigger11 = stateno = 440
trigger11 = enemyNear,StateType = A
trigger11 = movehit
trigger11 = random = [900,1000]

;---------------------------------------------------------------------------
;やみどうこく_MAX
[State -3, Yamidoukoku]
type = ChangeState
value = 3250
triggerall = var(20) = 1
triggerall = power >= 2000
triggerall = statetype != A
triggerall = P2bodydist X = [0,20]
triggerall = enemyNear,StateType != L && enemyNear,StateType != A
triggerall = p2stateno != 150
triggerall = p2stateno != 152
triggerall = p2stateno != 154
trigger1 = ctrl
trigger1 = movetype != H
trigger1 = random = [700,1000]
trigger2 = stateno = 200 || stateno = 201
trigger2 = movehit
trigger2 = random = [800,1000]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movehit
trigger3 = random = [800,1000]
trigger4 = stateno = 220
trigger4 = movehit
trigger4 = random = [700,1000]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movehit
trigger5 = random = [700,1000]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movehit
trigger6 = random = [700,1000]
trigger7 = stateno = 605
trigger7 = movehit
trigger7 = random = [600,1000]
trigger8 = stateno = 410
trigger8 = movehit
trigger8 = random = [800,1000]
trigger9 = stateno = 411
trigger9 = movehit
trigger9 = random = [700,1000]
trigger10 = stateno = 430
trigger10 = movehit
trigger10 = random = [800,1000]
trigger11 = stateno = 440
trigger11 = movehit
trigger11 = random = [700,1000]

;やみどうこく
[State -3, Yamidoukoku]
type = ChangeState
value = 3200
triggerall = var(20) = 1
triggerall = power >= 1000
triggerall = statetype != A
triggerall = P2bodydist X = [0,20]
triggerall = enemyNear,StateType != L && enemyNear,StateType != A
triggerall = p2stateno != 150
triggerall = p2stateno != 152
triggerall = p2stateno != 154
trigger1 = ctrl
trigger1 = movetype != H
trigger1 = random = [700,900]
trigger2 = stateno = 200 || stateno = 201
trigger2 = movehit
trigger2 = random = [800,900]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movehit
trigger3 = random = [800,900]
trigger4 = stateno = 220
trigger4 = movehit
trigger4 = random = [700,900]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movehit
trigger5 = random = [700,900]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movehit
trigger6 = random = [700,900]
trigger7 = stateno = 605
trigger7 = movehit
trigger7 = random = [600,900]
trigger8 = stateno = 410
trigger8 = movehit
trigger8 = random = [900,900]
trigger9 = stateno = 411
trigger9 = movehit
trigger9 = random = [700,900]
trigger10 = stateno = 430
trigger10 = movehit
trigger10 = random = [800,900]
trigger11 = stateno = 440
trigger11 = movehit
trigger11 = random = [700,900]

;---------------------------------------------------------------------------
;シュトゥルム_MAX
[State -3, FlyingAttack]
type = ChangeState
value = 3350
triggerall = var(20) = 1
triggerall = power >= 2000
;triggerall = statetype != A
triggerall = random = [950,1000]
triggerall = enemyNear,StateType != L
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movehit
trigger3 = stateno = 210 || stateno = 211
trigger3 = movehit
trigger4 = stateno = 220
trigger4 = movehit
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movehit
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movehit
trigger7 = stateno = 605
trigger7 = movehit
trigger8 = stateno = 410
trigger8 = movehit
trigger9 = stateno = 411
trigger9 = movehit
trigger10 = stateno = 430
trigger10 = movehit
trigger11 = stateno = 440
trigger11 = movehit

[State -3, FlyingAttack]
type = ChangeState
value = 3300
triggerall = var(20) = 1
triggerall = power >= 1000
;triggerall = statetype != A
triggerall = random = [970,1000]
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = movehit
trigger3 = stateno = 210 || stateno = 211
trigger3 = movehit
trigger4 = stateno = 220
trigger4 = movehit
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movehit
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movehit
trigger7 = stateno = 605
trigger7 = movehit
trigger8 = stateno = 410
trigger8 = movehit
trigger9 = stateno = 411
trigger9 = movehit
trigger10 = stateno = 430
trigger10 = movehit
trigger11 = stateno = 440
trigger11 = movehit



;===========================================================================
;必殺技
;---------------------------------------------------------------------------
;わんひょう
[State -3, wanhyo]
type = ChangeState
value = 1400
triggerall = var(20) = 1
triggerall = statetype != A
triggerAll = enemyNear,movetype = A || enemy, numproj > 0 || (enemy, numhelper > 0 && enemynear,movetype = A)
triggerAll = enemyNear,StateType != A
triggerAll = P2bodyDist X = [0,50]
trigger1 = ctrl
trigger1 = random = [400,700]
trigger2 = stateno = 200 || stateno = 201
trigger2 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger2 = random = [500,700]
trigger3 = stateno = 210 || stateno = 211
trigger3 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger3 = random = [500,700]
trigger4 = stateno = 220
trigger4 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger4 = random = [500,700]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger5 = random = [500,700]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger6 = random = [500,700]
trigger7 = stateno = 605
trigger7 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger7 = random = [500,700]
trigger8 = stateno = 410
trigger8 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger8 = random = [500,700]
trigger9 = stateno = 411
trigger9 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger9 = random = [500,700]
trigger10 = stateno = 430
trigger10 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger10 = random = [500,700]
trigger11 = stateno = 440
trigger11 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger11 = random = [500,700]


[State -3, wanhyo]
type = ChangeState
value = 1410
triggerall = var(20) = 1
triggerall = statetype != A
triggerAll = enemyNear,movetype = A || enemy, numproj > 0 || (enemy, numhelper > 0 && enemynear,movetype = A)
triggerAll = enemyNear,StateType = A
triggerAll = P2bodyDist X = [0,50]
trigger1 = ctrl
trigger1 = random = [500,700]
trigger2 = stateno = 200 || stateno = 201
trigger2 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger2 = random = [500,700]
trigger3 = stateno = 210 || stateno = 211
trigger3 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger3 = random = [500,700]
trigger4 = stateno = 220
trigger4 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger4 = random = [500,700]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger5 = random = [500,700]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger6 = random = [500,700]
trigger7 = stateno = 605
trigger7 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger7 = random = [500,700]
trigger8 = stateno = 410
trigger8 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger8 = random = [500,700]
trigger9 = stateno = 411
trigger9 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger9 = random = [500,700]
trigger10 = stateno = 430
trigger10 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger10 = random = [500,700]
trigger11 = stateno = 440
trigger11 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger11 = random = [500,700]

;------------------------------------------
;､よのかぜ
[State -3, YonoKaze]
type = ChangeState
value = 1000
triggerall = var(20) = 1
triggerall = P2BodyDist X = [20,60]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = random = [400,600]
trigger2 = stateno = 200 || stateno = 201
trigger2 = movehit
trigger2 = random = [500,600]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movehit
trigger3 = random = [500,600]
trigger4 = stateno = 220
trigger4 = movehit
trigger4 = random = [500,600]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movehit
trigger5 = random = [500,600]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movehit
trigger6 = random = [500,600]
trigger7 = stateno = 605
trigger7 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger7 = random = [500,600]
trigger8 = stateno = 410
trigger8 = movehit
trigger8 = random = [500,600]
trigger9 = stateno = 411
trigger9 = movehit
trigger9 = random = [500,600]
trigger10 = stateno = 430
trigger10 = movehit
trigger10 = random = [500,600]
trigger11 = stateno = 440
trigger11 = movehit
trigger11 = random = [500,600]

[State -3, YonoKaze]
type = ChangeState
value = 1010
triggerall = var(20) = 1
triggerall = P2BodyDist X = [80,120]
trigger1 = statetype != A
trigger1 = random = [400,800]
trigger1 = ctrl

[State -3, YonoKaze]
type = ChangeState
value = 1020
triggerall = var(20) = 1
triggerall = P2BodyDist X = [130,170]
trigger1 = statetype != A
trigger1 = random = [400,800]
trigger1 = ctrl

[State -3, YonoKaze]
type = ChangeState
value = 1030
triggerall = var(20) = 1
triggerall = P2BodyDist X = [180,220]
trigger1 = statetype != A
trigger1 = random = [400,800]
trigger1 = ctrl

;---------------------------------------------------------------------------
;ひょうか_A
[State -3, Warp]
type = ChangeState
value = 1500
triggerall = var(20) = 1
triggerAll = enemyNear,movetype = A || enemy, numproj > 0 || (enemy, numhelper > 0 && enemynear,movetype = A)
triggerAll = random = [700,750]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger3 = stateno = 210 || stateno = 211
trigger3 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger4 = stateno = 220
trigger4 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger7 = stateno = 605
trigger7 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger8 = stateno = 410
trigger8 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger9 = stateno = 411
trigger9 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger10 = stateno = 430
trigger10 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger11 = stateno = 440
trigger11 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded

;ひょうか_B
[State -3, Warp]
type = ChangeState
value = 1510
triggerall = var(20) = 1
triggerAll = enemyNear,movetype = A || enemy, numproj > 0 || (enemy, numhelper > 0 && enemynear,movetype = A)
triggerAll = random = [750,800]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger3 = stateno = 210 || stateno = 211
trigger3 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger4 = stateno = 220
trigger4 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger7 = stateno = 605
trigger7 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger8 = stateno = 410
trigger8 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger9 = stateno = 411
trigger9 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger10 = stateno = 430
trigger10 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger11 = stateno = 440
trigger11 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded

;ひょうか_X
[State -3, Warp]
type = ChangeState
value = 1550
triggerall = var(20) = 1
triggerAll = enemyNear,movetype = A || enemy, numproj > 0 || (enemy, numhelper > 0 && enemynear,movetype = A)
triggerAll = random = [700,750]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger3 = stateno = 210 || stateno = 211
trigger3 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger4 = stateno = 220
trigger4 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger7 = stateno = 605
trigger7 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger8 = stateno = 410
trigger8 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger9 = stateno = 411
trigger9 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger10 = stateno = 430
trigger10 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger11 = stateno = 440
trigger11 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded

;ひょうか_Y
[State -3, Warp]
type = ChangeState
value = 1560
triggerall = var(20) = 1
triggerAll = enemyNear,movetype = A || enemy, numproj > 0 || (enemy, numhelper > 0 && enemynear,movetype = A)
triggerAll = random = [750,800]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 201
trigger2 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger3 = stateno = 210 || stateno = 211
trigger3 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger4 = stateno = 220
trigger4 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger7 = stateno = 605
trigger7 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger8 = stateno = 410
trigger8 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger9 = stateno = 411
trigger9 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger10 = stateno = 430
trigger10 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger11 = stateno = 440
trigger11 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded

;----------------------------------------
;あおいばな
[State -3, Aoi]
type = ChangeState
value = 1300
triggerall = var(20) = 1
triggerAll = P2bodyDist X = [0,30]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = enemyNear,movetype = A || enemyNear,movetype = I
trigger1 = enemyNear,Pos Y > -30
trigger1 = enemyNear,Vel Y >= 0
trigger1 = random = [400,700]
trigger2 = stateno = 200 || stateno = 201
trigger2 = movehit
trigger2 = random = [500,700]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movehit
trigger3 = random = [500,700]
trigger4 = stateno = 220
trigger4 = movehit
trigger4 = random = [400,700]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movehit
trigger5 = random = [400,700]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movehit
trigger6 = random = [400,700]
trigger7 = stateno = 605
trigger7 = movehit
trigger7 = random = [400,800]
trigger8 = stateno = 410
trigger8 = movehit
trigger8 = random = [500,700]
trigger9 = stateno = 411
trigger9 = movehit
trigger9 = random = [400,700]
trigger10 = stateno = 430
trigger10 = movehit
trigger10 = random = [500,700]
trigger11 = stateno = 440
trigger11 = movehit
trigger11 = random = [400,700]

;あおいばな
[State -3, Aoi]
type = ChangeState
value = 1305
triggerall = var(20) = 1
triggerAll = P2bodyDist X = [30,60]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = enemyNear,movetype = A || enemyNear,movetype = I
trigger1 = enemyNear,Pos Y > -30
trigger1 = enemyNear,Vel Y >= 0
trigger1 = random = [400,700]
trigger2 = stateno = 200 || stateno = 201
trigger2 = movehit
trigger2 = random = [500,700]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movehit
trigger3 = random = [500,700]
trigger4 = stateno = 220
trigger4 = movehit
trigger4 = random = [400,700]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movehit
trigger5 = random = [400,700]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movehit
trigger6 = random = [400,700]
trigger7 = stateno = 605
trigger7 = movehit
trigger7 = random = [400,800]
trigger8 = stateno = 410
trigger8 = movehit
trigger8 = random = [500,700]
trigger9 = stateno = 411
trigger9 = movehit
trigger9 = random = [400,700]
trigger10 = stateno = 430
trigger10 = movehit
trigger10 = random = [500,700]
trigger11 = stateno = 440
trigger11 = movehit
trigger11 = random = [400,700]

[State -3, Aoi]
type = ChangeState
value = 1310
triggerall = var(20) = 1
trigger1 = stateno = 1300 || stateno = 1305
trigger1 = animelem = 6, >= 1
trigger1 = Random < 200

[State -3, Aoi]
type = ChangeState
value = 1320
triggerall = var(20) = 1
trigger1 = stateno = 1310
trigger1 = animelem = 5, >= 1

[State -3, Aoi]
type = ChangeState
value = 1330
triggerall = var(20) = 1
trigger1 = stateno = 1300 || stateno = 1305
trigger1 = animelem = 6, >= 1

[State -3, Aoi]
type = ChangeState
value = 1340
triggerall = var(20) = 1
trigger1 = stateno = 1330
trigger1 = Var(16) = 1;竜巻HIT
trigger1 = animelem = 9, > 1

;----------------------------------------
;よのかぜ
[State -3, YonoKaze]
type = ChangeState
value = 1600
triggerall = var(20) = 1
triggerall = statetype = A
triggerall = Pos Y < -50
triggerall = P2bodydist X = [10, 50]
triggerall = random = [400,700]
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 601
trigger2 = movehit
trigger3 = stateno = 610 || stateno = 611
trigger3 = movehit
trigger4 = stateno = 630
trigger4 = movehit
trigger5 = stateno = 631
trigger5 = movehit
trigger6 = stateno = 640 || stateno = 641
trigger6 = movehit

[State -3, YonoKaze]
type = ChangeState
value = 1610
triggerall = var(20) = 1
triggerall = statetype = A
triggerall = Pos Y < -50
triggerall = P2bodydist X = [60, 100]
triggerall = random = [400,700]
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 601
trigger2 = movehit
trigger3 = stateno = 610 || stateno = 611
trigger3 = movehit
trigger4 = stateno = 630
trigger4 = movehit
trigger5 = stateno = 631
trigger5 = movehit
trigger6 = stateno = 640 || stateno = 641
trigger6 = movehit

[State -3, YonoKaze]
type = ChangeState
value = 1620
triggerall = var(20) = 1
triggerall = statetype = A
triggerall = Pos Y < -50
triggerall = P2bodydist X = [110, 150]
triggerall = random = [400,700]
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 601
trigger2 = movehit
trigger3 = stateno = 610 || stateno = 611
trigger3 = movehit
trigger4 = stateno = 630
trigger4 = movehit
trigger5 = stateno = 631
trigger5 = movehit
trigger6 = stateno = 640 || stateno = 641
trigger6 = movehit

[State -3, YonoKaze]
type = ChangeState
value = 1630
triggerall = var(20) = 1
triggerall = statetype = A
triggerall = Pos Y < -50
triggerall = P2bodydist X = [160, 200]
triggerall = random = [400,700]
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 601
trigger2 = movehit
trigger3 = stateno = 610 || stateno = 611
trigger3 = movehit
trigger4 = stateno = 630
trigger4 = movehit
trigger5 = stateno = 631
trigger5 = movehit
trigger6 = stateno = 640 || stateno = 641
trigger6 = movehit

;----------------------------------------
;つむじ
[State -3, YonoKaze]
type = ChangeState
value = 1700
triggerall = var(20) = 1
;triggerall = statetype = A
;triggerall = Pos Y < -30
triggerall = P2bodyDist X > 50
trigger1 = ctrl
trigger1 = enemyNear,StateType = A || enemyNear,movetype = I
trigger1 = enemy, numproj = 0
trigger1 = random = [400,600]
trigger2 = stateno = 200 || stateno = 201
trigger2 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger2 = random = [500,600]
trigger3 = stateno = 210 || stateno = 211
trigger3 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger3 = random = [500,600]
trigger4 = stateno = 220
trigger4 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger4 = random = [500,600]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger5 = random = [500,600]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger6 = random = [500,600]
trigger7 = stateno = 605
trigger7 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger7 = random = [500,600]
trigger8 = stateno = 410
trigger8 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger8 = random = [500,600]
trigger9 = stateno = 411
trigger9 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger9 = random = [500,600]
trigger10 = stateno = 430
trigger10 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger10 = random = [500,600]
trigger11 = stateno = 440
trigger11 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger11 = random = [500,600]
trigger12 = stateno = 600 || stateno = 601
trigger12 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger12 = random = [400,600]
trigger13 = stateno = 610 || stateno = 611
trigger13 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger13 = random = [400,600]
trigger14 = stateno = 630
trigger14 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger14 = random = [400,600]
trigger15 = stateno = 631
trigger15 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger15 = random = [400,600]
trigger16 = stateno = 640 || stateno = 641
trigger16 = EnemyNear,stateno = 154 || EnemyNear,stateno = 155 ;moveguarded
trigger16 = random = [400,600]

;つむじ
[State -3, YonoKaze]
type = ChangeState
value = 1750
triggerall = var(20) = 1
;triggerall = statetype = A
;triggerall = Pos Y < -30
triggerall = P2bodyDist X < 150
trigger1 = ctrl
trigger1 = enemyNear,StateType = A || enemyNear,movetype = I
trigger1 = enemy, numproj = 0
trigger1 = random = [400,650]
trigger2 = stateno = 200 || stateno = 201
trigger2 = movehit
trigger2 = random = [500,650]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movehit
trigger3 = random = [500,650]
trigger4 = stateno = 220
trigger4 = movehit
trigger4 = random = [400,650]
trigger5 = stateno = 221 && animelem = 11, > 0
trigger5 = movehit
trigger5 = random = [400,650]
trigger6 = stateno = 240 && animelem = 7, > 0
trigger6 = movehit
trigger6 = random = [400,650]
trigger7 = stateno = 605
trigger7 = movehit
trigger7 = random = [300,550]
trigger8 = stateno = 410
trigger8 = movehit
trigger8 = random = [500,650]
trigger9 = stateno = 411
trigger9 = movehit
trigger9 = random = [400,650]
trigger10 = stateno = 430
trigger10 = movehit
trigger10 = random = [500,650]
trigger11 = stateno = 440
trigger11 = movehit
trigger11 = random = [400,650]
trigger12 = stateno = 600 || stateno = 601
trigger12 = movehit
trigger12 = random = [400,650]
trigger13 = stateno = 610 || stateno = 611
trigger13 = movehit
trigger13 = random = [400,650]
trigger14 = stateno = 630
trigger14 = movehit
trigger14 = random = [500,650]
trigger15 = stateno = 631
trigger15 = movehit
trigger15 = random = [400,650]
trigger16 = stateno = 640 || stateno = 641
trigger16 = movehit
trigger16 = random = [400,650]

;-------------------------------------------------------------------------------
;通常技
;-------------------------------------------------------------------------------
;-----------------------------------------------------------
; 立ちガード
[State -3]
type = ChangeState
value = 130
triggerall = var(20) = 1;only AI can access
triggerall = EnemyNear,movetype = A;access only when opponent attack
Triggerall = EnemyNear,HitDefAttr != SCA,NT,ST,HT
triggerall = P2bodydist X <= 100;access only when near
triggerall = statetype != A;perform when not in air
triggerall = ctrl;make sure AI had control
;triggerall = stateno != 130
;triggerall = random <= 850;high percent
;trigger1 = EnemyNear,statetype != C
triggerall = InGuardDist
trigger1 = enemynear, HitDefAttr != C
;persistent = 0

;しゃがみガード
[State -3]
type = ChangeState
value = 131
triggerall = var(20) = 1;only AI can access
triggerall = statetype != A;perform when not in air
Triggerall = EnemyNear,HitDefAttr != SCA,NT,ST,HT
triggerall = ctrl;make sure AI had control
;triggerall = stateno != 131 
triggerall = InGuardDist
trigger1 = P2bodydist X <= 100;access only when near
trigger1 = EnemyNear,movetype = A;access only when opponent attack
;trigger1 = EnemyNear,statetype = C
trigger1 = enemy, HitDefAttr = C
;trigger1 = random <= 850;high percent
trigger2 = enemy, numhelper > 0 || enemy, numproj > 0
trigger2 = enemynear, movetype = A
;trigger2 = random <= 900;high percent

; 空中ガード
[State -3]
type = ChangeState
value = 132
triggerall = var(20) = 1;only AI can access
triggerall = EnemyNear,movetype = A;access only when opponent attack
Triggerall = EnemyNear,HitDefAttr != SCA,NT,ST,HT
triggerall = P2life > 0;don't player when opponent had die
triggerall = statetype = A;perform when in air
triggerall = random <= 850;high percent
triggerall = ctrl;make sure AI had control
;triggerall = stateno != 132
trigger1 = P2bodydist X <= 100;access only when near
trigger1 = EnemyNear,statetype = A
trigger2 = enemy, numproj > 0
trigger3 = enemy, numhelper > 0 && enemynear, movetype = A

;---------------------------------------------------------------------------

;Throw Y
[State -3, Throw]
type = ChangeState
value = 810
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = random = [0,300]
trigger1 = p2bodydist x  < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist x  < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;Throw B
[State -3, Throw]
type = ChangeState
value = 815
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = random = [0,300]
trigger1 = p2bodydist x  < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist x  < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Run Fwd
[State -3, Run Fwd]
type = ChangeState
value = 100
triggerall = var(20) = 1
triggerall = EnemyNear,movetype != A
triggerall = frontedgebodydist >= 150
triggerall = P2bodydist X >= 130
triggerall = statetype != A
triggerall = ctrl 
trigger1 = random <= 100
trigger1 = enemy, numproj = 0

;---------------------------------------------------------------------------
;Run Back
[State -3, Run Back]
type = ChangeState
value = 105
triggerall = var(20) = 1
triggerall = EnemyNear,movetype = A
triggerall = Backedgebodydist >= 150
triggerall = statetype != A
triggerall = ctrl 
trigger1 = random <= 100
trigger1 = enemy, numproj = 0
Trigger2 = EnemyNear,HitDefAttr = SCA,NT,ST,HT

;---------------------------------------------------------------------------
;特殊ジャンプ
[State -3,8]
type = ChangeState
value = 2041
triggerall = var(20) = 1
triggerall = stateno != 40
triggerall = stateno != 2041
triggerall = P2life != 0;don't player when opponent had die
triggerall = statetype != A;perform when not in air
triggerall = EnemyNear,statetype != A
triggerall = frontedgebodydist >= 20
triggerall = EnemyNear,movetype != H && EnemyNear,statetype != A
trigger1 = p2stateno = 5120;player is in getup state
trigger1 = P2bodydist X >= 60
trigger1 = random <= 40
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = P2bodydist X >= 55
trigger2 = EnemyNear,statetype = L
trigger2 = random <= 30;high percent
trigger2 = statetype != A
trigger2 = ctrl
trigger3 = p2bodydist x = [40,100]
trigger3 = random <= 35
trigger3 = EnemyNear,movetype != H
trigger3 = ctrl
trigger4 = p2bodydist x = [0,70]
trigger4 = random <= 45
trigger4 = EnemyNear,statetype = C
trigger4 = EnemyNear,movetype != H
trigger4 = ctrl
trigger5 = P2bodydist X >= 100
trigger5 = random <= 20
trigger5 = ctrl

;ジャンプ
[State -3,8]
type = ChangeState
value = 40
triggerall = var(20) = 1
triggerall = stateno != 40
triggerall = stateno != 2041
triggerall = P2life != 0;don't player when opponent had die
triggerall = statetype != A;perform when not in air
triggerall = frontedgebodydist >= 20
triggerall = EnemyNear,movetype != H && EnemyNear,statetype != A
trigger1 = P2bodydist X >= 0
trigger1 = random <= 50
trigger1 = ctrl
trigger2 = P2bodydist X >= 50
trigger2 = EnemyNear,movetype != A && EnemyNear,statetype = A
trigger2 = random <= 550
trigger2 = ctrl

;---------------------------------------------------------------------------
;緊急回避_前方
[State -3]
type = ChangeState
value = 905
triggerall = var(20) = 1
triggerall = FrontEdgeDist > 100
triggerall = statetype != A;perform when not in air
triggerall = power >= 500
triggerall = random < 50
trigger1 = stateno = stateno = 150 || stateno = 151 
trigger2 = stateno = stateno = 152 || stateno = 153

;緊急回避_後方
[State -3]
type = ChangeState
value = 915
triggerall = var(20) = 1
triggerall = BackEdgeDist > 100
triggerall = statetype != A;perform when not in air
triggerall = power >= 500
triggerall = random < 50
trigger1 = stateno = stateno = 150 || stateno = 151 
trigger2 = stateno = stateno = 152 || stateno = 153

;---------------------------------------------------------------------------
;ふっとばし
[State -3, KO]
type = ChangeState
value = 250
triggerall = var(20) = 1
triggerall = p2bodydist x < 60
triggerall = statetype != A
trigger1 = enemyNear,movetype = I
trigger1 = ctrl
trigger1 = random < 200 

;ガードキャンセル_ふっとばし
[State -3, KO]
type = ChangeState
value = 252
triggerall = var(20) = 1
triggerall = power >= 500
triggerall = p2bodydist x < 60
triggerall = statetype != A
trigger1 = stateno = 150 || stateno = 151 
trigger1 = random < 100 
trigger2 = stateno = 152 || stateno = 153 
trigger2 = random < 100 

;空中ふっとばし
[State -3]
type = ChangeState
value = 255
triggerall = var(20) = 1
triggerall = p2bodydist x < 60
triggerall = statetype = A
trigger1 = enemyNear,movetype = I
trigger1 = p2bodydist y = [-100,50]
trigger1 = ctrl
trigger1 = random < 200 

;ガードキャンセル_空中ふっとばし
[State -3]
type = ChangeState
value = 257
triggerall = var(20) = 1
triggerall = command = "ko" ||  command = "c"
triggerall = power >= 500
triggerall = statetype = A
triggerall = p2bodydist x < 60
trigger1 = stateno = 154
trigger1 = random < 100

;---------------------------------------------------------------------------
;Standing A
[State -3, A-S]
type = ChangeState
value = 200
triggerall = var(20) = 1
triggerall = p2bodydist x <= 20
triggerall = statetype = S
triggerall = ctrl
trigger1 = EnemyNear,statetype != L
trigger1 = EnemyNear,statetype != A
trigger1 = random < 250 

;-------------------------------------------------------------------
;Fw+A
[State -3, Command Attack 1]
type = ChangeState
value = 607
triggerall = var(20) = 1
triggerAll = statetype = S
triggerall = p2bodydist x <= 60
trigger1 = ctrl
trigger1 = random < 150

;-------------------------------------------------------------------
;Fw+A(Cancel)
[State -3, Command Attack 1]
type = ChangeState
value = 605
triggerall = var(20) = 1
triggerAll = statetype = S
triggerall = p2bodydist x <= 60
trigger1 = hitdefattr = SC,NA
trigger1 = movehit
trigger1 = stateno !=605
trigger1 = stateno !=607
trigger1 = stateno !=1600
trigger1 = stateno !=1601
trigger1 = stateno !=250
trigger1 = stateno !=252

;Jump Down Y
[State -3, Jump Strong Punch]
type = ChangeState
value = 630
triggerall = var(20) = 1
triggerall = p2bodydist x <= 60
trigger1 = random < 150
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = A,NA
trigger2 = stateno = 600 || stateno = 601
trigger2 = movehit
trigger3 = hitdefattr = A,NA
trigger3 = stateno = 610
trigger3 = movehit
trigger4 = hitdefattr = A,NA
trigger4 = stateno = 611
trigger4 = movehit
trigger5 = hitdefattr = A,NA
trigger5 = stateno = 631
trigger5 = movehit
trigger6 = hitdefattr = A,NA
trigger6 = stateno = 640 || stateno = 641
trigger6 = movehit

;---------------------------------------------------------------------------
;Standing A - Close
[State -3, A-S]
type = ChangeState
value = 210
triggerall = var(20) = 1
trigger1 = random < 300
trigger1 = statetype = S
trigger1 = P2BodyDist X <= 10
trigger1 = ctrl

;Standing A - Normal
[State -3, A-L]
type = ChangeState
value = 211
triggerall = var(20) = 1
trigger1 = random < 300
trigger1 = statetype = S
trigger1 = P2BodyDist X = [10,30]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Y - Close
[State -3, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(20) = 1
trigger1 = random < 400
trigger1 = statetype = S
trigger1 = P2BodyDist X <= 10
trigger1 = statetype = S
trigger1 = ctrl

;Stand Y
[State -3, A-S]
type = ChangeState
value = 221
triggerall = var(20) = 1
trigger1 = random < 400
trigger1 = statetype = S
trigger1 = P2BodyDist X = [10,30]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand B
[State -3, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(20) = 1
trigger1 = random < 400
trigger1 = statetype = S
trigger1 = P2BodyDist X = [0,40]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch X
[State -3, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = var(20) = 1
triggerAll = statetype != A
trigger1 = random < 300
trigger1 = statetype = C
trigger1 = P2BodyDist X = [0,30]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch Y
[State -3, Crouching Strong Punch]
type = ChangeState
value = 411
triggerall = var(20) = 1
triggerAll = statetype != A
trigger1 = random < 400
trigger1 = statetype = C
trigger1 = P2BodyDist X = [0,30]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch A
[State -3, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(20) = 1
triggerAll = statetype != A
trigger1 = random < 300
trigger1 = EnemyNear,StateType = S
trigger1 = P2BodyDist X = [0,50]
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 14) || (moveContact && time > 10)


;---------------------------------------------------------------------------
;Crouch B
[State -3, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(20) = 1
triggerAll = statetype != A
trigger1 = random < 400
trigger1 = EnemyNear,StateType = S
trigger1 = P2BodyDist X = [0,50]
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 14) || (movehit && time > 10)

;---------------------------------------------------------------------------
;Jump X
[State -3, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(20) = 1
trigger1 = random < 300
trigger1 = P2BodyDist X = [0,50]
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X != 0

;NeuJump X
[State -3, Jump Light Punch]
type = ChangeState
value = 601
triggerall = var(20) = 1
trigger1 = random < 300
trigger1 = P2BodyDist X = [0,50]
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;Jump Y
[State -3, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(20) = 1
trigger1 = random < 400
trigger1 = statetype = A
trigger1 = P2BodyDist X = [0,50]
trigger1 = ctrl
trigger1 = Vel X != 0

;NeuJump Y
[State -3, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = var(20) = 1
trigger1 = random < 400
trigger1 = statetype = A
trigger1 = P2BodyDist X = [0,50]
trigger1 = ctrl
trigger1 = Vel X = 0

;Jump A
[State -3, Jump Light Kick]
type = ChangeState
value = 631
triggerall = var(20) = 1
trigger1 = random < 300
trigger1 = statetype = A
trigger1 = P2BodyDist X = [0,50]
trigger1 = ctrl

;Jump B
[State -3, Jump Strong Kick]
type = ChangeState
value = 641
triggerall = var(20) = 1
trigger1 = random < 400
trigger1 = statetype = A
trigger1 = P2BodyDist X = [0,50]
trigger1 = ctrl
trigger1 = Vel X != 0

;Neu Jump B
[State -3, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(20) = 1
trigger1 = random < 400
trigger1 = statetype = A
trigger1 = P2BodyDist X = [0,50]
trigger1 = ctrl
trigger1 = Vel X = 0

;---------------------------------------------------------------------------
;Charge
[State -3, charge]
type = ChangeState
value = 280
triggerall = var(20) = 1
triggerAll = statetype != A
triggerAll = power != 3000
triggerAll = ctrl
trigger1 = p2bodydist x > 170 
trigger1 = enemy, numproj = 0
trigger1 = random < 250
trigger2 = p2bodydist x > 100 
trigger2 = P2statetype = L
trigger2 = random < 250

;s
[State -3, Book]
type = ChangeState
value = 290
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = ctrl 
trigger1 = p2bodydist x > 150
trigger1 = enemy, numproj = 0
trigger1 = random < 300
trigger2 = p2bodydist x > 100
trigger2 = P2statetype = L
trigger2 = random < 300
ctrl = 0
