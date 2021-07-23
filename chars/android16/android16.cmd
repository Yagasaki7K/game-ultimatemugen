[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Super Motions |--------------------------------------------------------

[Command]
name = "shinku"
command = ~D, F, D, F, y
time = 25

[Command]
name = "hellsattack"
command = ~D, F, D, F, b
time = 25

[Command]
name = "super"
command = ~D, B, F, b
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "dynamite"
command = ~D, B, F, y
time = 20

[Command]
name = "shoryuken"
command = ~F, D, DF, x
time = 15

[Command]
name = "shoryuken2"
command = ~F, D, DF, y
time = 15

[Command]
name = "hadouken"
command = ~D, F, x
time = 20

[Command]
name = "hadouken2"
command = ~D, F, y
time = 20

[Command]
name = "tatsumaki"
command = ~D, B, a
time = 20

[Command]
name = "tatsumaki2"
command = ~D, B, b
time = 20

[Command]
name = "shoulder"
command = ~D, F, a
time = 20

[Command]
name = "shoulder2"
command = ~D, F, b
time = 20

[Command]
name = "upper"
command = ~D, B, x
time = 25

[Command]
name = "upper2"
command = ~D, B, y
time = 25

[command]
name = "slashdown"
command = ~F, D, a
time = 20

[command]
name = "slashdown2"
command = ~F, D, b
time = 20

[Command]
name = "barrier"
command = ~D, D, x
time = 15

[Command]
name = "barrier2"
command = ~D, D, y
time = 15

[Command]
name = "dash_x"
command = ~F, F, x

[Command]
name = "dash_y"
command = ~F, F, y

[Command]
name = "dash_a"
command = ~F, F, a

[Command]
name = "dash_b"
command = ~F, F, b

[Command]
name = "counter"
command = x+a
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holddiagfwd";Required (do not remove)
command = /$F+D
time = 1

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /b

time = 1
[Command]
name = "hold_c";Required (do not remove)
command = /c
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /x
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /y
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /z
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

;---------------------------------------------------------------------------
; 2. State entry
; --------------
[Statedef -1]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;=============================�K�E�Z========================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

; �w���Y�A�^�b�N
[State -1,]
type = ChangeState
value = 3200
triggerall = command = "hellsattack"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

; �_�C�i�}�C�g�N���b�V���[
[State -1,]
type = ChangeState
value = 3100
triggerall = command = "super"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1

; �w���Y�t���b�V��MAX
[State -1,]
type = ChangeState
value = 3000
triggerall = command = "shinku"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

; �󒆃w���Y�t���b�V��MAX
[State -1,]
type = ChangeState
value = 3050
triggerall = command = "shinku"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)


;---------------------------------------------------------------------------

; �n���P�[���N���b�V��
[State -1,]
type = ChangeState
value = 2300
triggerall = command = "dynamite" && (P2BodyDist X <= 50) && (P2Movetype != H) && (p2statetype != A)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1


;---------------------------------------------------------------------------

; ���P�b�g�p���`�i��j
[State -1]
type = ChangeState
value = 2010
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

; ���P�b�g�p���`�i���j
[State -1]
type = ChangeState
value = 2000
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1


;---------------------------------------------------------------------------

; �V�����_�[�^�b�N���i���j
[State -1]
type = ChangeState
value = 2105
triggerall = command = "shoulder2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 460 && movecontact

; �V�����_�[�^�b�N���i��j
[State -1]
type = ChangeState
value = 2100
triggerall = command = "shoulder"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger14 = stateno = 460 && movecontact


;---------------------------------------------------------------------------

; �w���Y�t���b�V���i��j
[State -1]
type = ChangeState
value = 2200
triggerall = command = "tatsumaki"
triggerall = power >= 150
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

; �w���Y�t���b�V���i���j
[State -1]
type = ChangeState
value = 2250
triggerall = command = "tatsumaki2"
triggerall = power >= 150
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1


;---------------------------------------------------------------------------

;���P�b�g�A�b�p�[�i���j
[State -1, ]
type = ChangeState
value = 2400
triggerall = (command = "upper2")
triggerall = power >= 150
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1


;���P�b�g�A�b�p�[�i��j
[State -1, ]
type = ChangeState
value = 2450
triggerall = (command = "upper")
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 211 && movecontact
trigger9 = stateno = 260 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger10 = stateno = 261 && movecontact
trigger11 = (stateno = 400 || stateno = 450) && (movecontact)
trigger12 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
trigger13 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1


;---------------------------------------------------------------------------

;�X�[�p�[�h���b�v�L�b�N(��)
[State -1, ]
type = ChangeState
value = 2500
triggerall = (command = "tatsumaki")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)

;�X�[�p�[�h���b�v�L�b�N(��)
[State -1, ]
type = ChangeState
value = 2550
triggerall = (command = "tatsumaki2")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
trigger5 = (stateno = 660 || stateno = 661) && (movecontact)


;---------------------------------------------------------------------------
;============================����Z=========================================
;---------------------------------------------------------------------------

;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�o�b�N�X�e�b�v
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (command = "BB") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;�󒆃_�b�V��
[State -1, Fwd]
type = ChangeState
value = 110
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
;�󒆃o�b�N�_�b�V��
[State -1, Back]
type = ChangeState
value = 112
triggerall = vel x <= 0
trigger1 = (command = "BB") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
; ����
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; �c�����i�J�E���^�[�j
[State -1]
type = ChangeState
value = 700
triggerall = command = "counter" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000

;---------------------------------------------------------------------------
; �����ړ� (���)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "counter" ^^ command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102

;---------------------------------------------------------------------------
; �����ړ� (�O��)
[State -1]
type = ChangeState
value = 1001
triggerall = command = "counter" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�_�b�V�������ړ� (�O��)
[State -1]
type = ChangeState
value = 1001
triggerall = stateno = 100 || stateno = 101 || stateno = 102
triggerall = ctrl = 0
trigger1 = command = "hold_x" && command = "hold_a" 
trigger2 = command = "hold_z"
trigger3 = command = "hold_c"

;---------------------------------------------------------------------------
; �C�͗���
[State -1]
type = ChangeState
value = 4500
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"

;---------------------------------------------------------------------------
;����
[State -1, ]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y") && (P2BodyDist X <= 10) && (P2Movetype != H) && (p2statetype != A)
trigger1 = (ctrl) && (p2statetype = C) || (ctrl) && (p2statetype = S)


;---------------------------------------------------------------------------
;=======================�_�b�V���U��========================================
;---------------------------------------------------------------------------

;�_�b�V����p���`
[State -1, ]
type = ChangeState
value = 900
triggerall = stateno = 101
trigger1 = command = "hold_x"

;�X���C�f�B���O�L�b�N
[State -1, ]
type = ChangeState
value = 910
triggerall = stateno = 101
trigger1 = command = "hold_a"

;�_�b�V���������U��
[State -1, ]
type = ChangeState
value = 920
triggerall = stateno = 101
trigger1 = command = "hold_y"

;�_�b�V�����L�b�N
[State -1, ]
type = ChangeState
value = 930
triggerall = stateno = 101
trigger1 = command = "hold_b"

;---------------------------------------------------------------------------
;============================�ʏ�Z=========================================
;---------------------------------------------------------------------------

;�������L�b�N�i�ߋ����j 
[State -1, ]
type = ChangeState
value = 261
triggerall = (command = "b") && (command != "holddown") && (P2BodyDist X <= 15) && (P2statetype != A)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 210 && movecontact
;trigger5 = stateno = 211 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------
;�������L�b�N
[State -1, ]
type = ChangeState
value = 260
triggerall = (command = "b") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------

;������L�b�N�i�ߋ����j
[State -1, ]
type = ChangeState
value = 251
triggerall = (command = "a") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 251 && movecontact
trigger5 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------
;������L�b�N
[State -1, ]
type = ChangeState
value = 250
triggerall = (command = "a") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------

;�������p���`�i�ߋ����j
[State -1, ]
type = ChangeState
value = 211
triggerall = (command = "y") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 251 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
;---------------------------------------------------------------------------
;�������p���`
[State -1, ]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 201 && MoveContact
trigger4 = stateno = 250 && movecontact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1
;trigger7 = stateno = 211 && movecontact

;---------------------------------------------------------------------------

;������p���`�i�ߋ����j
[State -1, ]
type = ChangeState
value = 201
triggerall = (command = "x") && (command != "holddown") && (P2BodyDist X <= 15)
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 201) && (AnimElem = 2,>3 || MoveContact)
trigger3 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------
;������p���`
[State -1, ]
type = ChangeState
value = 200
triggerall = (command = "x") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 200) && (AnimElem = 2,>4 || MoveContact)
trigger3 = stateno = 201 && MoveContact

;---------------------------------------------------------------------------
�������U��
[State -1, ]
type = ChangeState
value = 420
triggerall = (command = "y") && (command = "holddiagfwd")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 201 && MoveContact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1


;---------------------------------------------------------------------------
;============================���Ⴊ��=========================================
;---------------------------------------------------------------------------

;���݋��L�b�N
[State -1, ]
type = ChangeState
value = 460
triggerall = (command = "b") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = stateno = 410 && movecontact && AnimElem = 4, >= 1 && AnimElem = 6, <= 1
trigger4 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------
;���ݎ�L�b�N
[State -1, ]
type = ChangeState
value = 450
triggerall = (command = "a") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (MoveContact)
trigger3 = (stateno = 450) && (AnimElem = 2,>5 || MoveContact)
trigger4 = stateno = 200 && MoveContact
trigger5 = stateno = 201 && MoveContact
trigger6 = stateno = 250 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------
;���݋��p���`
[State -1, ]
type = ChangeState
value = 410
triggerall = (command = "y") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400 || stateno = 450) && (movecontact)
trigger3 = (stateno = 200 || stateno = 201) && (movecontact)
trigger4 = (stateno = 250 || stateno = 251) && (movecontact)
trigger5 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1

;---------------------------------------------------------------------------
;���ݎ�p���`
[State -1, ]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (AnimElem = 2,>5 || MoveContact)
trigger3 = stateno = 200 && MoveContact
trigger4 = stateno = 201 && MoveContact
trigger5 = stateno = 900 && movecontact && AnimElem = 4, >= 1 && AnimElem = 7, <= 1


;---------------------------------------------------------------------------
;============================�󒆋Z=========================================
;---------------------------------------------------------------------------

;�W�����v���L�b�N
[State -1, ]
type = ChangeState
value = 660
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 601) && (movecontact)
trigger3 = (stateno = 650 || stateno = 651) && (movecontact)
trigger4 = (stateno = 610 || stateno = 611) && (movecontact)
;---------------------------------------------------------------------------
;�W�����v��L�b�N
[State -1, ]
type = ChangeState
value = 651
triggerall = (command = "a") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601) && (movecontact)
;---------------------------------------------------------------------------
;�����W�����v��L�b�N
[State -1, ]
type = ChangeState
value = 650
triggerall = (command = "a") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)
;---------------------------------------------------------------------------
;�W�����v���p���`
[State -1, ]
type = ChangeState
value = 611
triggerall = (command = "y") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 601 || stateno = 651) && (movecontact)
;---------------------------------------------------------------------------
;�����W�����v���p���`
[State -1, ]
type = ChangeState
value = 610
triggerall = (command = "y") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 650) && (movecontact)
;---------------------------------------------------------------------------
;�����W�����v��p���`
[State -1, ]
type = ChangeState
value = 600
triggerall = (command = "x") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =600) && (AnimElem = 2,>4) && (movecontact)
;---------------------------------------------------------------------------
;�W�����v��p���`
[State -1, ]
type = ChangeState
value = 601
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =601) && (AnimElem = 2,>4) && (movecontact)


