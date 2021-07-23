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
name = "ギガンティックMAX"
command = ~D,DB,B,D,DB,B,x+y
time = 45

[Command]
name = "ギガンティックx"
command = ~D,DB,B,D,DB,B,x
time = 45

[Command]
name = "ギガンティックy"
command = ~D,DB,B,D,DB,B,y
time = 45

[Command]
name = "真空波動x+y"
command = ~D,DF,F,D,DF,F,x+y
time = 35

[Command]
name = "真空波動x"
command = ~D,DF,F,D,DF,F,x
time = 35

[Command]
name = "真空波動y"
command = ~D,DF,F,D,DF,F,y
time = 35

[Command]
name = "真空波動a+b"
command = ~D,DF,F,D,DF,F,a+b
time = 35

[Command]
name = "真空波動a"
command = ~D,DF,F,D,DF,F,a
time = 35

[Command]
name = "真空波動b"
command = ~D,DF,F,D,DF,F,b
time = 35

[Command]
name = "真空竜巻a+b"
command = ~D,DB,B,D,DB,B,a+b
time = 35

[Command]
name = "真空竜巻a"
command = ~D,DB,B,D,DB,B,a
time = 35

[Command]
name = "真空竜巻b"
command = ~D,DB,B,D,DB,B,b
time = 35

[Command]
name = "カイザーx"
command = ~F,B,DB,D,DF,F,x
time = 35
[Command]
name = "カイザーy"
command = ~F,B,DB,D,DF,F,y
time = 35

[Command]
name = "逆ヨガx"
command = ~D,DB,B,x
time = 20
[Command]
name = "逆ヨガy"
command = ~D,DB,B,y
time = 20
[Command]
name = "逆ヨガa"
command = ~D,DB,B,a
time = 20
[Command]
name = "逆ヨガb"
command = ~D,DB,B,b
time = 20

[Command]
name = "ゴッドレーンx+y"
command = ~F,D,DF,x+y
time = 15

[Command]
name = "ゴッドレーンa+b"
command = ~F,D,DF,a+b
time = 15

[Command]
name = "逆ゴッドレーンx+y"
command = ~B,D,DB,x+y
time = 15

[Command]
name = "逆ゴッドレーンa+b"
command = ~B,D,DB,a+b
time = 15

[Command]
name = "カラミティ"
command = ~D,F,D,F, y
time = 35

[Command]
name = "ジェノサイドカッター弱"
command = ~F,D,DF,a
time = 15

[Command]
name = "ジェノサイドカッター強"
command = ~F,D,DF,b
time = 15

[Command]
name = "逆昇竜a"
command = ~B,D,DB,a
time = 15

[Command]
name = "逆昇竜b"
command = ~B,D,DB,b
time = 15

[Command]
name = "波動x"
command = ~D,DF,F,x
time = 10

[Command]
name = "波動y"
command = ~D,DF,F,y
time = 10

[Command]
name = "波動a"
command = ~D,DF,F,a
time = 10

[Command]
name = "波動b"
command = ~D,DF,F,b
time = 10

[Command]
name = "瞬獄殺"
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
name = "ふっとばし"
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
[STate -1];カイザーフェニックス
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
[STate -1];ギガンティックプレッシャー・MAX・ノーマル状態
type=Changestate
triggerall=command="ギガンティックMAX"
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

[STate -1];ギガンティックプレッシャー・弱・ノーマル状態
type=Changestate
triggerall=command="ギガンティックx"
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

[STate -1];ギガンティックプレッシャー・強・ノーマル状態
type=Changestate
triggerall=command="ギガンティックy"
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
[STate -1];デストラクションオメガ・MAX・オメガ・2002オメガ状態
type=Changestate
triggerall=command="真空波動a+b"
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

[STate -1];デストラクションオメガ・弱・オメガ・2002オメガ状態
type=Changestate
triggerall=command="真空波動a"
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

[STate -1];デストラクションオメガ・強・オメガ・2002オメガ状態
type=Changestate
triggerall=command="真空波動b"
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
[STate -1];カラミティ・エンド
type=Changestate
triggerall=command="カラミティ"
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
[STate -1];カイザーウェイヴ・弱
type=Changestate
triggerall=command="カイザーx"
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

[STate -1];カイザーウェイヴ・強
type=Changestate
triggerall=command="カイザーy"
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
[STate -1];ゴッドプレス・弱・ノーマルGOD状態
type=Changestate
triggerall=command="逆ヨガx"
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

[STate -1];ゴッドプレス・強・ノーマルGOD状態
type=Changestate
triggerall=command="逆ヨガy"
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
[STate -1];ビース・ディストラクション・弱・2002状態
type=Changestate
triggerall=command="逆ヨガa"
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

[STate -1];ビース・ディストラクション・強・2002状態
type=Changestate
triggerall=command="逆ヨガb"
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
[STate -1];ジェノサイドカッター・弱・2002状態
type=Changestate
triggerall=command="ジェノサイドカッター弱"
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

[STate -1];ジェノサイドカッター・強・2002状態
type=Changestate
triggerall=command="ジェノサイドカッター強"
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
[STate -1];烈風拳・弱・2002状態
type=Changestate
triggerall=command="波動x"
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

[STate -1];烈風拳・強2002状態
type=Changestate
triggerall=command="波動y"
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
[STate -1];ダークバリアー・弱
type=Changestate
triggerall=command="波動a"
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

[STate -1];ダークバリアー・強
type=Changestate
triggerall=command="波動b"
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
;GC後退避け
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
;GC前進避け
[State -1,back]
type = ChangeState
value = 755
triggerall=Power>=1000
triggerall = stateno=150||stateno=152
triggerall=Statetype!=A
trigger1 = command = "recovery"
trigger2 = command = "c"

;---------------------------------------------------------------------------
;後退避け
[State -1,back]
type = ChangeState
value = 218
triggerall = statetype != A
triggerall = ctrl&&command = "holdback"
triggerall=Ctrl
trigger1 = command = "recovery"
trigger2 = command = "c"
;---------------------------------------------------------------------------
;前進避け
[State -1,back]
type = ChangeState
value = 219
triggerall = statetype != A
triggerall=Ctrl
trigger1 = command = "recovery"
trigger2 = command = "c"

;===========================================================================
[STate -1];K特殊技
type=Changestate
triggerall=command="a"&&command="holdfwd"
triggerall=Statetype!=A
trigger1=Ctrl
value=237
;===========================================================================
[STate -1];K特殊技
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
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;バックダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
[STate -1];ジェノサイドカッター・GC・2002状態
type=Changestate
triggerall=Power>=1000
triggerall = stateno=150||stateno=152
triggerall=Statetype!=A
trigger1=command="ジェノサイドカッター弱"||command="ジェノサイドカッター強"
trigger2=var(1)&&var(3)&&random<=222
trigger2=p2bodydist X=[0,50]
value=350

;---------------------------------------------------------------------------
;GCふっとばし
[State -1,A]
type = ChangeState
value = 300
triggerall=Power>=1000
triggerall = stateno=150||stateno=152
triggerall=Statetype!=A
trigger1 = command = "ふっとばし"
trigger2 = command = "z"
trigger3=var(1)&&var(3)&&random<=22
trigger3=p2bodydist X=[0,25]

;ふっとばし---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 250
triggerall=var(1)=0
triggerall = command = "ふっとばし"||command="z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 650
triggerall = command = "ふっとばし"||command="z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;スコーピオンデスロック
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
;スコーピオンブロウ
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
;接近---------------------------------------------------------------------------
;立ち弱パンチ
[State -1]
type = ChangeState
value = 205
triggerall = command = "x"&&P2bodydist X=[-5,5]
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;立ち強パンチ
[State -1]
type = ChangeState
value = 215
triggerall = command = "y"&&P2bodydist X=[-25,25]
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;立ち弱キック
[State -1]
type = ChangeState
value = 235
triggerall = command = "a"&&P2bodydist X=[-5,5]
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;立ち強キック
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
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value =195
triggerall = command = "start"&&Stateno!=195
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
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
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
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
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch垂直
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
;Jump Light Kick垂直
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = command = "a"&&Vel X=0
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック垂直
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
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
