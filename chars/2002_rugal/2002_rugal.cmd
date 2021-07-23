;-| CPU |--------------------------------------------------------
[Command]
name = "cpu"
command = F,F,F,F,F,F,F,F,F,F
time=0

[Command]
name = "cpu"
command = B,B,B,B,B,B,B,B,B,B
time=0

[Command]
name = "cpu"
command = U,U,U,U,U,U,U,U,U,U
time=0

[Command]
name = "cpu"
command = D,D,D,D,D,D,D,D,D,D
time=0

[Command]
name = "cpu"
command = DB,DB,DB,DB,DB,DB,DB,DB,DB,DB
time=0

[Command]
name = "cpu"
command = DF,DF,DF,DF,DF,DF,DF,DF,DF,DF
time=0

[Command]
name = "cpu"
command = D,D,D,s,D,D,D,s
time=0

[Command]
name = "cpu"
command = UB,UB,UB,UB,UB,UB,UB,UB,UB,UB
time=0

[Command]
name = "cpu"
command = UF,UF,UF,UF,UF,UF,UF,UF,UF,UF
time=0

[Command]
name = "cpu"
command = a,a,a,a,a,a,a,a,a,a
time=0

[Command]
name = "cpu"
command = b,b,b,b,b,b,b,b,b,b
time=0

[Command]
name = "cpu"
command = c,c,c,c,c,c,c,c,c,c
time=0

[Command]
name = "cpu"
command = x,x,x,x,x,x,x,x,x,x
time=0

[Command]
name = "cpu"
command = y,y,y,y,y,y,y,y,y,y
time=0

[Command]
name = "cpu"
command = z,z,z,z,z,z,z,z,z,z
time=0

[Command]
name = "cpu"
command = s,s,s,s,s,s,s,s,s,s
time=0

[Command]
name = "cpu"
command = z,z,x,z,z,z,z,z,z,z,z
time=0

[Command]
name = "cpu"
command = s,x,s,s,s,s,s,s,s,s,s
time=0

;-| Super Motions |--------------------------------------------------------
[Command]
name = "KF"
command = ~B,DB,D,DF,F,B,DB,D,DF,F,x+y
time = 50

[Command]
name = "�M�K���e�B�b�NMAX"
command = ~D,DB,B,D,DB,B,x+y
time = 45

[Command]
name = "�M�K���e�B�b�Nx"
command = ~D,DB,B,D,DB,B,x
time = 45

[Command]
name = "�M�K���e�B�b�Ny"
command = ~D,DB,B,D,DB,B,y
time = 45

[Command]
name = "�^��g��x+y"
command = ~D,DF,F,D,DF,F,x+y
time = 35

[Command]
name = "�^��g��x"
command = ~D,DF,F,D,DF,F,x
time = 35

[Command]
name = "�^��g��y"
command = ~D,DF,F,D,DF,F,y
time = 35

[Command]
name = "�^��g��a+b"
command = ~D,DF,F,D,DF,F,a+b
time = 35

[Command]
name = "�^��g��a"
command = ~D,DF,F,D,DF,F,a
time = 35

[Command]
name = "�^��g��b"
command = ~D,DF,F,D,DF,F,b
time = 35

[Command]
name = "�^�󗳊�a+b"
command = ~D,DB,B,D,DB,B,a+b
time = 35

[Command]
name = "�^�󗳊�a"
command = ~D,DB,B,D,DB,B,a
time = 35

[Command]
name = "�^�󗳊�b"
command = ~D,DB,B,D,DB,B,b
time = 35

[Command]
name = "�J�C�U�[x"
command = ~F,B,DB,D,DF,F,x
time = 35
[Command]
name = "�J�C�U�[y"
command = ~F,B,DB,D,DF,F,y
time = 35

[Command]
name = "�t���Kx"
command = ~D,DB,B,x
time = 20
[Command]
name = "�t���Ky"
command = ~D,DB,B,y
time = 20
[Command]
name = "�t���Ka"
command = ~D,DB,B,a
time = 20
[Command]
name = "�t���Kb"
command = ~D,DB,B,b
time = 20

[Command]
name = "�S�b�h���[��x+y"
command = ~F,D,DF,x+y
time = 15

[Command]
name = "�S�b�h���[��a+b"
command = ~F,D,DF,a+b
time = 15

[Command]
name = "�t�S�b�h���[��x+y"
command = ~B,D,DB,x+y
time = 15

[Command]
name = "�t�S�b�h���[��a+b"
command = ~B,D,DB,a+b
time = 15

[Command]
name = "�J���~�e�B"
command = ~D,F,D,F, y
time = 35

[Command]
name = "�W�F�m�T�C�h�J�b�^�[��"
command = ~F,D,DF,a
time = 15

[Command]
name = "�W�F�m�T�C�h�J�b�^�[��"
command = ~F,D,DF,b
time = 15

[Command]
name = "�t����a"
command = ~B,D,DB,a
time = 15

[Command]
name = "�t����b"
command = ~B,D,DB,b
time = 15

[Command]
name = "�g��x"
command = ~D,DF,F,x
time = 10

[Command]
name = "�g��y"
command = ~D,DF,F,y
time = 10

[Command]
name = "�g��a"
command = ~D,DF,F,a
time = 10

[Command]
name = "�g��b"
command = ~D,DF,F,b
time = 10

[Command]
name = "�u���E"
command = x,x,F,a,y
time = 40

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = ~B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "�ӂ��Ƃ΂�"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down"
command = /D
time = 1

[Command]
name = "down"
command = /DF
time = 1

[Command]
name = "down"
command = /DB
time = 1

[Command]
name = "holddown2"
command = ~8$D
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "tomaho"
command = /F,a
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdx";Required (do not remove)
command = /x
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /y
time = 1
[Command]
name = "holdz" ;Required (do not remove)
command = /z
time = 1

[Command]
name = "holda" ;Required (do not remove)
command = /a
time = 1

[Command]
name = "holdb";Required (do not remove)
command = /b
time = 1
[Command]
name = "holdc";Required (do not remove)
command = /c
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
;----------------------------------------------
[Statedef -1]
[STate -1]
type=varSet
trigger1=command="cpu"
var(1)=1
[STate -1]
type=varSet
trigger1=roundstate!=2
var(2)=0
[State -1]
type = Helper
triggerall=(Stateno=[189,194])||(Stateno=[6000,6400])||(Stateno=7900)
trigger1=Var(1)=0
trigger1=NumHelper(5999)=0
;trigger1=Var(2)=0
name="AI"
id=5999
helpertype=normal
pos=0,-9999
postype=p1
stateno=5999
keyctrl=1

;===========================================================================
[STate -1];�J�C�U�[�t�F�j�b�N�X
type=Changestate
triggerall=command="KF"
triggerall=Statetype!=A&&Power>=2000
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=3300

;===========================================================================
[STate -1];�M�K���e�B�b�N�v���b�V���[�EMAX�E�m�[�}�����
type=Changestate
triggerall=command="�M�K���e�B�b�NMAX"
triggerall=Statetype!=A&&Power>=2000
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=3002

[STate -1];�M�K���e�B�b�N�v���b�V���[�E��E�m�[�}�����
type=Changestate
triggerall=command="�M�K���e�B�b�Nx"
triggerall=Statetype!=A&&Power>=1000
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=3000

[STate -1];�M�K���e�B�b�N�v���b�V���[�E���E�m�[�}�����
type=Changestate
triggerall=command="�M�K���e�B�b�Ny"
triggerall=Statetype!=A&&Power>=1000
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=3001

;===========================================================================
[STate -1];�f�X�g���N�V�����I���K�EMAX�E�I���K�E2002�I���K���
type=Changestate
triggerall=command="�^��g��a+b"
triggerall=Statetype!=A&&Power>=2000
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=3202

[STate -1];�f�X�g���N�V�����I���K�E��E�I���K�E2002�I���K���
type=Changestate
triggerall=command="�^��g��a"
triggerall=Statetype!=A&&Power>=1000
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=3200

[STate -1];�f�X�g���N�V�����I���K�E���E�I���K�E2002�I���K���
type=Changestate
triggerall=command="�^��g��b"
triggerall=Statetype!=A&&Power>=1000
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=3201
;//////////////////////////////////////////////////////////////////
[STate -1];�J���~�e�B�E�G���h
type=Changestate
triggerall=command="�J���~�e�B"
triggerall=Statetype!=A&&Power>=2000
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=3700

;===========================================================================
[STate -1];�J�C�U�[�E�F�C���E��
type=Changestate
triggerall=command="�J�C�U�[x"
triggerall=Statetype!=A&&numhelper(1700)=0
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236||Stateno=237
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=1700

[STate -1];�J�C�U�[�E�F�C���E��
type=Changestate
triggerall=command="�J�C�U�[y"
triggerall=Statetype!=A&&numhelper(1700)=0
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236||Stateno=237
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=1701
;===========================================================================
[STate -1];�S�b�h�v���X�E��E�m�[�}��GOD���
type=Changestate
triggerall=command="�t���Kx"
triggerall=Statetype!=A
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236||Stateno=237
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=1500

[STate -1];�S�b�h�v���X�E���E�m�[�}��GOD���
type=Changestate
triggerall=command="�t���Ky"
triggerall=Statetype!=A
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236||Stateno=237
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=1501
;===========================================================================
[STate -1];�r�[�X�E�f�B�X�g���N�V�����E��E2002���
type=Changestate
triggerall=command="�t���Ka"
triggerall=Statetype!=A
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236||Stateno=237
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=1150

[STate -1];�r�[�X�E�f�B�X�g���N�V�����E���E2002���
type=Changestate
triggerall=command="�t���Kb"
triggerall=Statetype!=A
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236||Stateno=237
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=1160
;===========================================================================
[STate -1];�W�F�m�T�C�h�J�b�^�[�E��E2002���
type=Changestate
triggerall=command="�W�F�m�T�C�h�J�b�^�[��"
triggerall=Statetype!=A
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236||Stateno=237
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=1030

[STate -1];�W�F�m�T�C�h�J�b�^�[�E���E2002���
type=Changestate
triggerall=command="�W�F�m�T�C�h�J�b�^�[��"
triggerall=Statetype!=A
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236||Stateno=237
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=1040
;===========================================================================
[STate -1];�󕗌��E��E2002���
type=Changestate
triggerall=command="�g��x"
triggerall=Statetype!=A&&numhelper(1400)=0
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236||Stateno=237
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=1420

[STate -1];�󕗌��E��2002���
type=Changestate
triggerall=command="�g��y"
triggerall=Statetype!=A&&numhelper(1400)=0
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236||Stateno=237
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=1421
;===========================================================================
[STate -1];�_�[�N�o���A�[�E��
type=Changestate
triggerall=command="�g��a"
triggerall=Statetype!=A&&numhelper(1600)=0
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236||Stateno=237
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=1600

[STate -1];�_�[�N�o���A�[�E��
type=Changestate
triggerall=command="�g��b"
triggerall=Statetype!=A&&numhelper(1600)=0
trigger1=Ctrl
trigger2=Movecontact
trigger2=stateno=205||stateno=225||stateno=235||stateno=250
trigger3=Movecontact
trigger3=stateno=400||stateno=410||stateno=440||stateno=300
trigger4=Movecontact
trigger4=Stateno=245
trigger4=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger5=Movecontact
trigger5=Stateno=215
trigger5=(Animelem=4,>=0)&&(animelem=7,<=0)
trigger6=Movecontact
trigger6=Stateno=236||Stateno=237
trigger6=(Animelem=4,>=0)&&(animelem=6,<=0)
value=1610
;---------------------------------------------------------------------------
;GC��ޔ���
[State -1,back]
type = ChangeState
value = 750
triggerall=Power>=1000
triggerall = stateno=150||stateno=152
triggerall=Statetype!=A
triggerall = command = "holdback"
trigger1 = command = "recovery"
trigger2 = command = "c"
;---------------------------------------------------------------------------
;GC�O�i����
[State -1,back]
type = ChangeState
value = 755
triggerall=Power>=1000
triggerall = stateno=150||stateno=152
triggerall=Statetype!=A
trigger1 = command = "recovery"
trigger2 = command = "c"

;---------------------------------------------------------------------------
;��ޔ���
[State -1,back]
type = ChangeState
value = 218
triggerall = statetype != A
triggerall = ctrl&&command = "holdback"
triggerall=Ctrl
trigger1 = command = "recovery"
trigger2 = command = "c"
;---------------------------------------------------------------------------
;�O�i����
[State -1,back]
type = ChangeState
value = 219
triggerall = statetype != A
triggerall=Ctrl
trigger1 = command = "recovery"
trigger2 = command = "c"

;===========================================================================
[STate -1];K����Z
type=Changestate
triggerall=command="a"&&command="holdfwd"
triggerall=Statetype!=A
trigger1=Ctrl
value=237
;===========================================================================
[STate -1];K����Z
type=Changestate
triggerall=command="a"&&command="holdfwd"
triggerall=Statetype!=A
trigger1=Movecontact
trigger1=stateno=205||stateno=225||stateno=235||stateno=250
trigger2=Movecontact
trigger2=stateno=400||stateno=410||stateno=440
trigger3=Movecontact
trigger3=Stateno=245
trigger3=(Animelem=5,>=0)&&(animelem=10,<=0)
trigger4=Movecontact
trigger4=Stateno=215
trigger4=(Animelem=4,>=0)&&(animelem=7,<=0)
value=236

;---------------------------------------------------------------------------
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;�o�b�N�_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
[STate -1];�W�F�m�T�C�h�J�b�^�[�EGC�E2002���
type=Changestate
triggerall=Power>=1000
triggerall = stateno=150||stateno=152
triggerall=Statetype!=A
trigger1=command="�W�F�m�T�C�h�J�b�^�[��"||command="�W�F�m�T�C�h�J�b�^�[��"
trigger2=var(1)&&var(3)&&random<=222
trigger2=p2bodydist X=[0,50]
value=350

;---------------------------------------------------------------------------
;GC�ӂ��Ƃ΂�
[State -1,A]
type = ChangeState
value = 300
triggerall=Power>=1000
triggerall = stateno=150||stateno=152
triggerall=Statetype!=A
trigger1 = command = "�ӂ��Ƃ΂�"
trigger2 = command = "z"
trigger3=var(1)&&var(3)&&random<=22
trigger3=p2bodydist X=[0,25]

;�ӂ��Ƃ΂�---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 250
triggerall=var(1)=0
triggerall = command = "�ӂ��Ƃ΂�"||command="z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 650
triggerall = command = "�ӂ��Ƃ΂�"||command="z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�X�R�[�s�I���f�X���b�N
[State -1]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;�X�R�[�s�I���u���E
[State -1]
type = ChangeState
value = 840
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;�ڋ�---------------------------------------------------------------------------
;������p���`
[State -1]
type = ChangeState
value = 205
triggerall = command = "x"&&P2bodydist X=[-5,5]
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;�������p���`
[State -1]
type = ChangeState
value = 215
triggerall = command = "y"&&P2bodydist X=[-25,25]
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;������L�b�N
[State -1]
type = ChangeState
value = 235
triggerall = command = "a"&&P2bodydist X=[-5,5]
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;�������L�b�N
[State -1]
type = ChangeState
value = 245
triggerall = command = "b"&&P2bodydist X=[-20,20]
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Strong Punch
;�������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Kick
;������L�b�N
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Standing Strong Kick
;�������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
;����
[State -1, Taunt]
type = ChangeState
value =195
triggerall = command = "start"&&Stateno!=195
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Punch
;���Ⴊ�ݎ�p���`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2=stateno=400||stateno=430
trigger2=movecontact
;---------------------------------------------------------------------------
;Crouching Strong Punch
;���Ⴊ�݋��p���`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Kick
;���Ⴊ�ݎ�L�b�N
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2=stateno=400||stateno=430
trigger2=movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
;���Ⴊ�݋��L�b�N
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Punch
;�󒆎�p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch����
[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = command = "y"&&Vel X=0
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Kick����
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = command = "a"&&Vel X=0
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Kick
;�󒆋��L�b�N����
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = command = "b"&&Vel X=0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Kick
;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
