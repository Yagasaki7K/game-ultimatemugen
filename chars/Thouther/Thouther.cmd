;-| ���K�E�Z |--------------------------------------------------------
[Command]
name = "�V�ď\���P"
command = ~D,DF,F,y+b
time = 35



[Command]
name = "����\����"
command = ~D,DF,F,D,DF,F,y
time = 35


[Command]
name = "�f�ď\���P"
command = ~D,DB,B,DB,D,DF,F,x
time = 35


[Command]
name = "�P���ē���V"
command = ~D,DB,B,D,DB,B,y
time = 35

;-| �K�E�Z |------------------------------------------------------

[Command]
name = "����"
command = ~F,D,DF,y

[Command]
name = "����"
command = ~F,D,DF,x


[Command]
name = "�Ȃ݂�"
command = ~D,DF,F,b


[Command]
name = "�Z�т�2"
command = ~D,DF,F,a


[Command]
name = "�Z�т�"
command = ~D,DF,F,y


[Command]
name = "�ނ���"
command = ~D,DF,F,x


[Command]
name = "�ɐ��\���Քj��"
command = ~D,DB,B,y

[Command]
name = "�ɐ��\���Քj��"
command = ~D,DB,B,x



[Command]
name = "�ً}���O"
command = x+a
time = 1

[Command]
name = "�ً}�����"
command = /$B,x+a
time = 1

;-| �Q�񉟂��Z |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| �Q�E�R�̓��������Z |-----------------------------------------------
[Command]
name = "�Q�[�W���ߔ���"
command = z+c
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "�O���C�u�V���[�g"
command = x+y
time = 1

[Command]
name = "�փ��B�[�X�g���C�N"
command = x+a
time = 1

[Command]
name = "�o�j�V���O�X�g���C�N"
command = y+b
time = 1

[Command]
name = "�͂ݓ���"
command = a+b
time = 1

[Command]
name = "����Z���̂P"
command = /$F,x
time = 1

[Command]
name = "����Z���̂Q"
command = /$F,a
time = 1


[Command]
name = "�_�b�V��"
command = F, F
time = 10

[Command]
name = "�_�b�V��"
command = UF,N, F
time = 18


[Command]
name = "�o�b�N�_�b�V��"
command = B, B
time = 10

[Command]
name = "�o�b�N�_�b�V��"
command = UB,N, B
time = 18




[Command]
name = "����"
command = y+b
time = 1

[Command]
name = "�ӂ���΂�"
command = c
time = 1

[Command]
name = "�������ςȂ�x"
command = /$x
time = 1

[Command]
name = "�������ςȂ�y"
command = /$y
time = 1

[Command]
name = "�������ςȂ�a"
command = /$a
time = 1

[Command]
name = "�������ςȂ�b"
command = /$b
time = 1

[Command]
name = "�������ςȂ�z"
command = /$z
time = 1

[Command]
name = "�������ςȂ�c"
command = /$c
time = 1

;-| �����ƃ{�^���ŏo���Z |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| �{�^���ݒ�i������Ȃ��j|---------------------------------------------------------
[Command]
name = "DF"
command = DF
time = 1

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "F"
command = F
time = 1



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
name = "start"
command = s
time = 1

;-| �������ςȂ��ݒ�i������Ȃ��j-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1


; ���̋L�q���͐�΂ɏ����Ȃ��ł��������B
[Statedef -1]

;===========================================================================
;��{�R�}���h
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;�V�ď\���P
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2500
triggerall = command = "�V�ď\���P"
triggerall = statetype != A
triggerall = var(4) = 7
trigger1 = ctrl

trigger2 = stateno = 500

;---------------------------------------------------------------------------
;�f�ď\���P
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2150
triggerall = command = "�f�ď\���P"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

trigger6 = stateno = 500

;---------------------------------------------------------------------------
;����\����
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2200
triggerall = command = "����\����"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500


;---------------------------------------------------------------------------
;�f�ď\���P
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "�f�ď\���P"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500


;---------------------------------------------------------------------------
;�P���ē���V
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "�P���ē���V"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;����
[State -1, a]
type = ChangeState
value = 1200
triggerall = command = "����"
triggerall = statetype != A
triggerall = numhelper(1210) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500

;---------------------------------------------------------------------------
;�Ȃ݂�
[State -1, a]
type = ChangeState
value = 1330
triggerall = command = "�Ȃ݂�"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 1300 && movecontact && animelem = 6,>= 0 && anim = 1300
trigger20= stateno = 1300 && movecontact && animelem = 10,>= 0 && anim = 1301

trigger21= stateno = 1310 && animelem = 7,>= 0 && anim = 1310
trigger22= stateno = 1310 && animelem = 8,>= 0 && anim = 1311

trigger23= stateno = 1320 && animelem = 5,>= 0 && anim = 1320
trigger24= stateno = 1320 && animelem = 7,>= 0 && anim = 1321


trigger25= stateno = 500

;---------------------------------------------------------------------------
;�Z�т�2
[State -1, a]
type = ChangeState
value = 1320
triggerall = command = "�Z�т�2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 1300 && movecontact && animelem = 6,>= 0 && anim = 1300
trigger20= stateno = 1300 && movecontact && animelem = 10,>= 0 && anim = 1301
trigger21= stateno = 500

;---------------------------------------------------------------------------
;�Z�т�
[State -1, a]
type = ChangeState
value = 1310
triggerall = command = "�Z�т�"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 1300 && movecontact && animelem = 6,>= 0 && anim = 1300
trigger20= stateno = 1300 && movecontact && animelem = 10,>= 0 && anim = 1301
trigger21= stateno = 500

;---------------------------------------------------------------------------
;�ނ���
[State -1, a]
type = ChangeState
value = 1300
triggerall = command = "�ނ���"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500
;---------------------------------------------------------------------------
;�o�N�Z�[
[State -1, a]
type = ChangeState
value = 1100
triggerall = command = "�ɐ��\���Քj��"
triggerall = statetype = A
triggerall = numhelper(1105) = 0
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

trigger6 = stateno = 500

;---------------------------------------------------------------------------
;�ɐ��\���Քj��
[State -1, a]
type = ChangeState
value = 1000
triggerall = command = "�ɐ��\���Քj��"
triggerall = statetype != A
triggerall = numhelper(1005) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;�O���C�u�V���[�g
[State -1, a]
type = ChangeState
value = 300
triggerall = command = "�O���C�u�V���[�g"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact
trigger19= stateno = 500

;---------------------------------------------------------------------------
;�փ��B�[�X�g���C�N
[State -1, a]
type = ChangeState
value = 310
triggerall = command = "�փ��B�[�X�g���C�N"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact
trigger19= stateno = 500

;---------------------------------------------------------------------------
;�o�j�V���O�X�g���C�N
[State -1, a]
type = ChangeState
value = 320
triggerall = command = "�o�j�V���O�X�g���C�N"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact
trigger19= stateno = 500

;---------------------------------------------------------------------------
;����Z���̂P
[State -1, a]
type = ChangeState
value = 250
triggerall = command = "����Z���̂P"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 400 && movecontact
trigger11= stateno = 410 && movecontact
trigger12= stateno = 430 && movecontact
trigger13= stateno = 440 && movecontact
trigger14= stateno = 500

;---------------------------------------------------------------------------
;����Z���̂Q
[State -1, a]
type = ChangeState
value = 260
triggerall = command = "����Z���̂Q"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact
trigger19= stateno = 500

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;�K�[�h�L�����Z���U��
[State -1, 290]
type = ChangeState
value = 290
triggerall = command = "�o�j�V���O�X�g���C�N"
triggerall = command = "holdfwd"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆃_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = stateno != 110
triggerall = stateno != 111
triggerall = stateno != 115
triggerall = command = "�_�b�V��"
triggerall = pos y <= -30
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1200 && movecontact
trigger3 = stateno = 1210

;---------------------------------------------------------------------------
;�󒆃o�b�N�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 115
triggerall = stateno != 110
triggerall = stateno != 111
triggerall = stateno != 115
triggerall = command = "�o�b�N�_�b�V��"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1200 && movecontact
trigger3 = stateno = 1210

;---------------------------------------------------------------------------
;����
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
trigger1 = ctrl
trigger1 = command = "holdfwd"|| command = "holdback"
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = enemy,movetype != H
trigger1 = p2bodydist X < 20
trugger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = enemy,stateno != [120,159]


;---------------------------------------------------------------------------
;�͂ݓ���
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
trigger1 = ctrl
trigger1 = command = "�͂ݓ���"
trigger1 = statetype != A

;===========================================================================
;---------------------------------------------------------------------------
;�u�[�X�g
[State -1, Stand Light Punch]
type = ChangeState
value = 500
triggerall = command = "z"
triggerall = var(16) >= 20
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 205 && animelem = 3,>=0
trigger4 = stateno = 210 && animelem = 3,>=0
trigger5 = stateno = 215 && animelem = 4,>=0
trigger6 = stateno = 230 && animelem = 2,>=0
trigger7 = stateno = 235 && animelem = 2,>=0
trigger8 = stateno = 240 && animelem = 4,>=0
trigger9 = stateno = 245 && animelem = 4,>=0
trigger10= stateno = 300 && animelem = 3,>=0
trigger11= stateno = 310 && animelem = 6,>=0
trigger12= stateno = 400 && animelem = 3,>=0
trigger13= stateno = 410 && animelem = 3,>=0
trigger14= stateno = 430 && animelem = 3,>=0
trigger15= stateno = 440 && animelem = 6,>=0
trigger16= stateno = 600 && animelem = 3,>=0
trigger17= stateno = 610 && animelem = 4,>=0
trigger18= stateno = 630 && animelem = 3,>=0
trigger19= stateno = 640 && animelem = 4,>=0

trigger20= stateno = 1000 && animelem = 5,>=0
trigger21= stateno = 1100 && animelem = 9,>=0
trigger22= stateno = 1200 && animelem = 12,>=0

trigger23= stateno = 1300 && animelem = 4,>=0
trigger24= stateno = 1310 && animelem = 5,>=0
trigger25= stateno = 1320 && animelem = 4,>=0
trigger26= stateno = 1330 && animelem = 6,>=0

trigger27= stateno = 250 && animelem = 5,>=0
trigger28= stateno = 260 && animelem = 5,>=0

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�p���`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact

trigger5 = stateno = 500

;---------------------------------------------------------------------------
;���Ⴊ�݋��p���`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 430 && movecontact

trigger11= stateno = 500

;---------------------------------------------------------------------------
;���Ⴊ�ݎ�L�b�N
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 430 && movecontact

trigger8 = stateno = 500

;---------------------------------------------------------------------------
;���Ⴊ�݋��L�b�N
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 430 && movecontact
trigger11= stateno = 240 && movecontact
trigger12= stateno = 245 && movecontact

trigger13= stateno = 500

;---------------------------------------------------------------------------
;������������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact

trigger5 = stateno = 500

;---------------------------------------------------------------------------
;�ߋ���������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 400 && movecontact

trigger4 = stateno = 500

;---------------------------------------------------------------------------
;�������������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 215 && movecontact
trigger9 = stateno = 410 && movecontact

trigger10= stateno = 500

;---------------------------------------------------------------------------
;�������������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 215 && movecontact


;---------------------------------------------------------------------------
;�ߋ����������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 430 && movecontact

trigger8 = stateno = 500

;---------------------------------------------------------------------------
;������������L�b�N
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 430 && movecontact

trigger7 = stateno = 500

;---------------------------------------------------------------------------
;�ߋ���������L�b�N
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 430 && movecontact

trigger6 = stateno = 500

;---------------------------------------------------------------------------
;�������������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 205 && animelem = 3,>=0
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 230 && animelem = 3,>=0
trigger7 = stateno = 235 && animelem = 3,>=0

trigger8 = stateno = 500

;---------------------------------------------------------------------------
;�������������L�b�N
[State -1, Stand Strong Punch]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 245 && movecontact

;---------------------------------------------------------------------------
;�ߋ����������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 410 && movecontact

trigger8 = stateno = 500

;---------------------------------------------------------------------------
;����
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl



;---------------------------------------------------------------------------
;�󒆎�p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

trigger2 = stateno = 500

;---------------------------------------------------------------------------
;�󒆋��p���`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

trigger4 = stateno = 500

;---------------------------------------------------------------------------
;�󒆎�L�b�N
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

trigger3 = stateno = 500
;---------------------------------------------------------------------------
;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact

trigger5 = stateno = 500