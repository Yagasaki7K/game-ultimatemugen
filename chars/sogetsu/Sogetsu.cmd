;                                                                         ;
;                             SOGETSU KAZAMA                              ;
;                                                                         ;
;                                                                         ;
;-| Desperation Moves |---------------------------------------------------;
[Command]
name = "QCFQCF_x"
command = ~a,a
time = 30

[Command]
name = "QCFQCF_y"
command = ~b,b
time = 30

[Command]
name = "QCFQCF_z"
command = ~c,c
time = 30

[Command]
name = "QCFQCF_a"
command = ~x,x
time = 30

[Command]
name = "QCFQCF_b"
command = ~y,y
time = 30

[Command]
name = "QCFB_start"
command = ~D, DF, F, B, start
time = 15


;-| Special Moves |-------------------------------------------------------;
[Command]
name = "QCBF_x"
command = ~D, B, F, x
time = 15

[Command]
name = "QCBF_y"
command = ~D, B, F, y
time = 15

[Command]
name = "QCBF_z"
command = ~D, B, F, z
time = 15

[Command]
name = "QCBF_a"
command = ~D, B, F, a
time = 15

[Command]
name = "QCBF_b"
command = ~D, B, F, b
time = 15

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 15

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 15

[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 15

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 15

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 15

[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 15

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 15

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 15

[Command]
name = "DP_x"
command = ~F, D, DF, x
time = 15

[Command]
name = "DP_y"
command = ~F, D, DF, y
time = 15

[Command]
name = "DP_z"
command = ~F, D, DF, z
time = 15

[Command]
name = "DP_a"
command = ~F, D, DF, a
time = 15

[Command]
name = "DP_b"
command = ~F, D, DF, b
time = 15

[Command]
name = "RDP_x"
command = ~B, D, DB, x
time = 15

[Command]
name = "RDP_y"
command = ~B, D, DB, y
time = 15

[Command]
name = "RDP_z"	
command = ~B, D, DB, z
time = 15

[Command]
name = "RDP_a"
command = ~B, D, DB, a
time = 15

[Command]
name = "RDP_b"
command = ~B, D, DB, b
time = 15

[Command]
name = "pounce"
command = U, x
time = 10

[Command]
name = "pounce"
command = U, y
time = 10

[Command]
name = "pounce"
command = U, z
time = 10

[Command]
name = "pounce"
command = ~F,F, x
time = 10

[Command]
name = "pounce"
command = ~F,F, y
time = 10

[Command]
name = "pounce"
command = ~F,F, z
time = 10

;-| AI |------------------------------------------------------------------;
[Command] 
name = "CPU1"
command = U, D, F, B, U, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command]
name = "CPU2"
command = U, D, F, B, U, F, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command]
name = "CPU3"
command = U, D, D, B, U, F, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU4"
command = D, U, D, U, F, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU5"
command = D, U, B, U, U, F, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command]
name = "CPU6"
command = U, D, D, F, F, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU7"
command = D, D, U, U, D, D, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU8"
command = F, U, D, D, U, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU9"
command = B, F, U, U, U, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command]
name = "CPU10"
command = B, F, U, U, F, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU11"
command = B, F, U, D, U, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

[Command] 
name = "CPU12"
command = B, D, U, B, B, U, B, U, F, D, B, U, F, a+b+c+x+y+z
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "za"
command = z+a

[Command]
name = "yz"
command = y+z

[Command]
name = "ab"
command = a+b

[Command]
name = "xa"
command = x+a

[Command]
name = "ya"
command = y+a

[Command]
name = "yb"
command = y+b

[Command]
name = "xyz"
command = x+y+z

[Command]
name = "xya"
command = x+y+a


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_xy"
command = /$F,x+y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "bck_z"
command = /$B,z
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
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "df_a"
command = /DF,a
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
name = "hold_x";Required (do not remove)
command = /$x
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /$y
time = 1

[Command]
name = "hold_a";Required (do not remove)
command = /$a
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /$b
time = 1

[Command]
name = "holdfwdx";Required (do not remove)
command = /$F+x
time = 1

;===========================================================================
[Statedef -1]
;===========================================================================
;AI Controlled
;---------------------------------------------------------------------------
; AI Activate Command version
[State -1] 
type = VarSet
trigger1 = command = "CPU1" 
trigger2 = command = "CPU2" 
trigger3 = command = "CPU3"
trigger4 = command = "CPU4" 
trigger5 = command = "CPU5" 
trigger6 = command = "CPU6" 
trigger7 = command = "CPU7" 
trigger8 = command = "CPU8" 
trigger9 = command = "CPU9"
trigger10 = command = "CPU10" 
trigger11 = command = "CPU11" 
trigger12 = command = "CPU12"
var(35) = 1

;---------------------------------------------------------------------------
; AI Standing Guard
[State -1]
type = ChangeState
triggerall = var(35) = 1
triggerall = P2statetype != C
triggerall = P2Movetype = A
triggerall = Statetype = S 
triggerall = Pos Y != [-1,-999]
triggerall = ctrl
triggerall = P2bodydist X <= 40
trigger1 = random <= 700
value = 130 

;---------------------------------------------------------------------------
; AI Crouching Guard
[State -1]
type = ChangeState
triggerall = var(35) = 1
triggerall = P2bodydist X <= 40
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl
trigger1 = random <= 700
value = 131

;---------------------------------------------------------------------------
; AI Aerial Guard
[State -1]
type = ChangeState
triggerall = var(35) = 1
triggerall = P2bodydist X <= 40
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl
trigger1 = random <= 700
value = 132

;---------------------------------------------------------------------------
; AI Stand to Crouch Guard Transition
[State -1]
type = ChangeState
triggerall = var(35) = 1
triggerall = P2bodydist X <= 40
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

;---------------------------------------------------------------------------
; AI Crouch to Stand Guard Transition
[State -1]
type = ChangeState
triggerall = var(35) = 1
triggerall = P2bodydist X <= 40
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

;---------------------------------------------------------------------------
;Command Roll Forward
[State -1]
type = ChangeState
value = 111
triggerall = var(35) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = life > 0
trigger1 = p2movetype = A && P2bodydist X >= 100 && random <= 400 && (p2stateno != [120,152])
trigger2 = p2movetype = A && (p2bodydist x = [40,70]) && random <= 400 

;---------------------------------------------------------------------------
;Command Roll Backwards
[State -1]
type = ChangeState
value = 116
triggerall = var(35) = 1
triggerall = statetype != A
triggerall = stateno != 110
triggerall = stateno != 115
triggerall = ctrl
triggerall = life > 0
trigger1 = p2bodydist x <= 40 && p2statetype = L && backedgebodydist > 60 && random <= 300

;---------------------------------------------------------------------------
;Master Arts Slash Starter
[State -1]
type = ChangeState
value = 900
triggerall = var(35) = 1
triggerall = Statetype = S
triggerall = P2Statetype = S
triggerall = stateno != 900
triggerall = life > 0
trigger1 = ((statetype = S) && (random <= 600) && (ctrl) && (P2Movetype != H) && (P2BodyDist X = [0,20]))
trigger2 = ((stateno = 805) && (random <= 400) && (P2Movetype = A) && (P2BodyDist X = [0,20]))
trigger3 = ((prevstateno = 810) && (random <= 800) && (P2BodyDist X = [0,20]))
trigger4 = ((stateno = 100) && (p2bodydist X = [0,30]))
trigger5 = ((stateno = 820) && (random <= 800) && (p2bodydist X = [0,30]) && ctrl) 
trigger6 = ((stateno = 830) && (random <= 800) && (p2bodydist X = [0,30]) && ctrl)

;---------------------------------------------------------------------------
;Master Arts 2nd Hit
[State -1]
type = ChangeState
value = 901
triggerall = var(35) = 1
trigger1 = stateno = 900 && MoveHit

;---------------------------------------------------------------------------
;Master Arts 3rd Hit
[State -1]
type = ChangeState
value = 902
triggerall = var(35) = 1
trigger1 = stateno = 901

;---------------------------------------------------------------------------
;Master Arts 4th Hit
[State -1]
type = ChangeState
value = 903
triggerall = var(35) = 1
triggerall = random <= 500
trigger1 = stateno = 902 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 4th Hit B
[State -1]
type = ChangeState
value = 914
triggerall = var(35) = 1
triggerall = random <= 500
trigger1 = stateno = 902 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 5th Hit
[State -1]
type = ChangeState
value = 904
triggerall = var(35) = 1
trigger1 = stateno = 903 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 6th Hit
[State -1]
type = ChangeState
value = 905
triggerall = var(35) = 1
triggerall = random <= 500
trigger1 = stateno = 904 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 6th Hit B
[State -1]
type = ChangeState
value = 917
triggerall = var(35) = 1
triggerall = random <= 500
trigger1 = stateno = 904 && MoveContact


;---------------------------------------------------------------------------
;Master Arts 7th Hit
[State -1]
type = ChangeState
value = 906
triggerall = var(35) = 1
trigger1 = stateno = 905 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 8th Hit
[State -1]
type = ChangeState
value = 907
triggerall = var(35) = 1
trigger1 = stateno = 906 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 9th Hit
[State -1]
type = ChangeState
value = 908
triggerall = var(35) = 1
trigger1 = stateno = 907 && projhit907 = 1, <= 8

;---------------------------------------------------------------------------
;Master Arts 10th Hit
[State -1]
type = ChangeState
value = 909
triggerall = var(35) = 1
trigger1 = stateno = 908 && projhit908 = 1, <= 8

;---------------------------------------------------------------------------
;Master Arts 11th Hit
[State -1]
type = ChangeState
value = 910
triggerall = var(35) = 1
trigger1 = stateno = 909 && projhit909 = 1, <= 8

;---------------------------------------------------------------------------
;Master Arts 12th Hit
[State -1]
type = ChangeState
value = 911
triggerall = var(35) = 1
trigger1 = stateno = 910 && projhit910 = 1, <= 8

;---------------------------------------------------------------------------
;Master Arts 13th Hit
[State -1]
type = ChangeState
value = 912
triggerall = var(35) = 1
trigger1 = stateno = 911 && projhit911 = 1, <= 8

;---------------------------------------------------------------------------
;Master Arts 14th Hit
[State -1]
type = ChangeState
value = 913
triggerall = var(35) = 1
trigger1 = stateno = 912 && projhit912 = 1, <= 8

;---------------------------------------------------------------------------
;Run
[State -1]
type = ChangeState
value = 100
triggerall = var(35) = 1
triggerall = life > 0
trigger1 = p2bodydist x > 30 && p2movetype != A && random < 400
trigger1 = stateno != 100 && statetype = S && ctrl
trigger2 = prevstateno = 820 && statetype = S && ctrl && p2bodydist x > 30
trigger3 = prevstateno = 830 && statetype = S && ctrl && p2bodydist x > 30

;---------------------------------------------------------------------------
;Jump
[State -1]
type = ChangeState
value = 40
triggerall = var(35) = 1
triggerall = life > 0
triggerall = statetype != A && ctrl && p2movetype != A
trigger1 = (p2bodydist x = [150,999]) && random <= 200

;---------------------------------------------------------------------------
;Dodge
[State -1]
type = ChangeState
value = 805
triggerall = var(35) = 1
triggerall = statetype != A 
triggerall = stateno != 805
triggerall = ctrl
triggerall = life > 0
trigger1 = p2movetype = A && (P2BodyDist X = [0,30]) && random <= 300 
                         
;---------------------------------------------------------------------------
;Switch Sides
[State -1]
type = ChangeState
value= 810
triggerall = var(35) = 1
triggerall = statetype != A && ctrl
triggerall = stateno != 810
triggerall = life > 0
trigger1 = p2movetype = A && (P2bodydist X = [0,30]) && random <= 500 && (p2stateno != [120,152])
trigger2 = (p2stateno = [120,152]) && random <= 800 && (P2bodydist X = [0,30])

;---------------------------------------------------------------------------
;Throw Push Forward
[State -1]
type = ChangeState
value = 820
triggerall = var(35) = 1
triggerall = life > 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
trigger1 = (p2bodydist x = [0,15]) && p2statetype != L && ctrl && random <= 400

;---------------------------------------------------------------------------
;Throw Push Backward
[State -1]
type = ChangeState
value = 830
triggerall = var(35) = 1
triggerall = life > 0
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
trigger1   = (p2bodydist x = [0,15]) && p2statetype != L && ctrl && random <= 400

;---------------------------------------------------------------------------
;Wall Jump
[State -1]
type = ChangeState
value = 47
triggerall = var(35) = 1
triggerall = life > 0
triggerall = statetype = A && BackEdgeDist < 1 && Vel X <= 0 && stateno !=105 
trigger1 = stateno != 47 && ctrl

;---------------------------------------------------------------------------
;Walljump
[State -1]
type = ChangeState
value = 48
triggerall = var(35) = 1
triggerall = life > 0
triggerall = statetype = A && FrontEdgeDist < 3  && stateno !=105 
trigger1 =  stateno != 47 && ctrl

;---------------------------------------------------------------------------
;Rage Explosion
[State -1]
type = ChangeState
value = 7000
triggerall = var(30) = 0 && var(35) = 1 && p2life >= 0 && roundno > 1 && ctrl
triggerall = life > 0
trigger1 = statetype = S || statetype = C

;---------------------------------------------------------------------------
;Rage Attack
[State -1]
type = ChangeState
value = 7100
triggerall = var(30) = 1 && var(35) = 1 && p2life >= 0
triggerall = p2movetype != H && p2statetype != A && p2bodydist X < 200 && random < 700
triggerall = life > 0
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Honorable Death
[State -1]
type = ChangeState
value = 850
triggerall = var(35) = 1
trigger1 = statetype = S && ctrl && roundsexisted < 3 

;---------------------------------------------------------------------------
;Water Spout Close
[State -1]
type = ChangeState
value = 1300
triggerall = var(35) = 1
triggerall = p2statetype != L
triggerall = p2stateno != 5120
trigger1 = p2bodydist x = [30,75]
trigger1 = p2statetype =A
trigger1 = statetype = S && ctrl && random <= 400
trigger2 = p2bodydist x = [76,130]
trigger2 = (enemy, Vel X > 0)
trigger2 = statetype = S && ctrl &&  random <= 400
trigger3 = prevstateno = 917 && projhit917 = 1 < 15 && random <= 500

;---------------------------------------------------------------------------
;Water Spout Middle
[State -1]
type = ChangeState
value = 1301
triggerall = var(35) = 1
triggerall = p2statetype != L
triggerall = p2stateno != 5120
trigger1 = p2bodydist x = [76,130]
trigger1 = statetype = S && ctrl &&  random <= 400
trigger2 = p2bodydist x = [131,185]
trigger2 = enemy, Vel X > 0
trigger2 = statetype = S && ctrl && random <= 400

;---------------------------------------------------------------------------
;Water Spout Far
[State -1]
type = ChangeState
value = 1302
triggerall = var(35) = 1
triggerall = p2statetype != L
triggerall = p2stateno != 5120
trigger1 = p2bodydist x = [131,185]
trigger1 = statetype = S && ctrl && random <= 400
trigger2 = p2bodydist x = [186,225]
trigger2 = enemy, Vel X > 0
trigger2 = statetype = S && ctrl && random <= 400

;---------------------------------------------------------------------------
;Water Spout Far 2
[State -1]
type = ChangeState
value = 1303
triggerall = var(35) = 1
triggerall = p2statetype != L
triggerall = p2stateno != 5120
trigger1 = p2bodydist x = [186,225]
trigger1 = statetype = S && ctrl && random <= 400


;---------------------------------------------------------------------------
;Air Throw 1
[State -1]
type = ChangeState
value = 1400
triggerall = var(35) = 1
triggerall = p2bodydist x = [0,75]
triggerall = random <= 400
triggerall = p2statetype != A
trigger1 = statetype = A && ctrl && Pos Y < -80


;---------------------------------------------------------------------------
;Air Throw  2
[State -1]
type = ChangeState
value = 1404
triggerall = var(35) = 1
triggerall = p2bodydist x = [76,130]
triggerall = random <= 400
triggerall = p2statetype != A
trigger1 = statetype = A && ctrl && Pos Y < -80

;---------------------------------------------------------------------------
;Air Throw 3
[State -1]
type = ChangeState
value = 1405
triggerall = var(35) = 1
triggerall = p2bodydist x = [131,185]
triggerall = random <= 400
triggerall = p2statetype != A
trigger1 = statetype = A && ctrl && Pos Y < -80


;---------------------------------------------------------------------------
;Air Throw 4
[State -1]
type = ChangeState
value = 1408
triggerall = var(35) = 1
triggerall = p2bodydist x = [186,225]
triggerall = random <= 400
triggerall = p2statetype != A
trigger1 = statetype = A && ctrl && Pos Y < -80

;---------------------------------------------------------------------------
;Bubble Shield 1
[State -1]
type = ChangeState
value = 1500
triggerall = var(35) = 1
triggerall = stateno != 1505
triggerall = random <= 400
triggerall = p2movetype = A
trigger1 = statetype = A && ctrl && Pos Y < -80

;---------------------------------------------------------------------------
;Bubble Shield 2
[State -1]
type = ChangeState
value = 1501
triggerall = var(35) = 1
triggerall = stateno != 1505
triggerall = random <= 400
triggerall = p2movetype = A
trigger1 = statetype = A && ctrl && Pos Y < -80

;---------------------------------------------------------------------------
;Bubble Shield 3
[State -1]
type = ChangeState
value = 1502
triggerall = var(35) = 1
triggerall = stateno != 1505
triggerall = random <= 400
triggerall = p2movetype = A
trigger1 = statetype = A && ctrl && Pos Y < -80

;---------------------------------------------------------------------------
;Bubble Shield 4
[State -1]
type = ChangeState
value = 1503
triggerall = var(35) = 1
triggerall = stateno != 1505
triggerall = random <= 400
triggerall = p2movetype = A
trigger1 = statetype = A && ctrl && Pos Y < -80

;---------------------------------------------------------------------------
;Reversal A
[State -1]
type = ChangeState
value = 1700
triggerall = var(35) = 1
trigger1 = statetype = S && ctrl
trigger1 = p2movetype = A && (P2BodyDist X = [0,70]) && random <= 250 

;---------------------------------------------------------------------------
;Reversal B
[State -1]
type = ChangeState
value = 1702
triggerall = var(35) = 1
trigger1 = statetype = S && ctrl
trigger1 = p2movetype = A && (P2BodyDist X = [0,70]) && random <= 250 

;---------------------------------------------------------------------------
;Reversal C
[State -1]
type = ChangeState
value = 1704
triggerall = var(35) = 1
trigger1 = statetype = S && ctrl
trigger1 = p2movetype = A && (P2BodyDist X = [0,70]) && random <= 250 

;---------------------------------------------------------------------------
;Reversal D
[State -1]
type = ChangeState
value = 1706
triggerall = var(35) = 1
trigger1 = statetype = S && ctrl
trigger1 = p2movetype = A && (P2BodyDist X = [0,70]) && random <= 250 

;---------------------------------------------------------------------------
;Water Ball 1
[State -1]
type = ChangeState
value = 1600
triggerall = var(35) = 1
trigger1 = statetype = S && ctrl
trigger1 = p2movetype != A && (P2BodyDist X = [200,999]) && random <= 200 
trigger1 = numhelper(1605) = 0

;---------------------------------------------------------------------------
;Water Ball 2
[State -1]
type = ChangeState
value = 1601
triggerall = var(35) = 1
trigger1 = statetype = S && ctrl
trigger1 = p2movetype != A && (P2BodyDist X = [200,999]) && random <= 200
trigger1 = numhelper(1605) = 0

;---------------------------------------------------------------------------
;Water Ball 3
[State -1]
type = ChangeState
value = 1602
triggerall = var(35) = 1
trigger1 = statetype = S && ctrl
trigger1 = p2movetype != A && (P2BodyDist X = [200,999]) && random <= 200 
trigger1 = numhelper(1605) = 0

;---------------------------------------------------------------------------
;Water Ball 4
[State -1]
type = ChangeState
value = 1603
triggerall = var(35) = 1
trigger1 = statetype = S && ctrl
trigger1 = p2movetype != A && (P2BodyDist X = [200,999]) && random <= 200 
trigger1 = numhelper(1605) = 0

;---------------------------------------------------------------------------
;Fireball 1
[State -1]
type = ChangeState
value = 1000
triggerall = var(35) = 1
triggerall = numprojID(1006) = 0
triggerall = numprojID(1007) = 0
triggerall = numprojID(1008) = 0
triggerall = numprojID(1013) = 0
triggerall = numprojID(1014) = 0
triggerall = numprojID(1015) = 0
triggerall = p2statetype != L
triggerall = p2stateno != 5120
triggerall = p2bodydist x = [40,999]
triggerall = random <= 200
trigger1 = statetype = S && ctrl


;---------------------------------------------------------------------------
;Fireball 2
[State -1]
type = ChangeState
value = 1010
triggerall = var(35) = 1
triggerall = numprojID(1006) = 0
triggerall = numprojID(1007) = 0
triggerall = numprojID(1008) = 0
triggerall = numprojID(1013) = 0
triggerall = numprojID(1014) = 0
triggerall = numprojID(1015) = 0
triggerall = p2statetype != L
triggerall = p2stateno != 5120
triggerall = p2bodydist x = [80,999]
triggerall = random <= 200
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Fireball 3
[State -1]
type = ChangeState
value = 1020
triggerall = var(35) = 1
triggerall = numprojID(1006) = 0
triggerall = numprojID(1007) = 0
triggerall = numprojID(1008) = 0
triggerall = numprojID(1013) = 0
triggerall = numprojID(1014) = 0
triggerall = numprojID(1015) = 0
triggerall = p2statetype != L
triggerall = p2stateno != 5120
triggerall = p2bodydist x = [120,999]
triggerall = random <= 200
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Air Fireball 1
[State -1]
type = ChangeState
value = 1100
triggerall = var(35) = 1
triggerall = (p2bodydist x = [40,999]) && random <= 200
triggerall = p2statetype != L
triggerall = p2stateno != 5120
trigger1 = statetype = A && ctrl && Pos Y < -100

;---------------------------------------------------------------------------
;Air Fireball 2
[State -1]
type = ChangeState
value = 1101
triggerall = var(35) = 1
triggerall = (p2bodydist x = [40,999]) && random <= 200
triggerall = p2statetype != L
triggerall = p2stateno != 5120
trigger1 = statetype = A && ctrl && Pos Y < -100        

;---------------------------------------------------------------------------
;Air Fireball 3
[State -1]
type = ChangeState
value = 1102
triggerall = var(35) = 1
triggerall = (p2bodydist x = [40,999]) && random <= 200
triggerall = p2statetype != L
triggerall = p2stateno != 5120
trigger1 = statetype = A && ctrl && Pos Y < -100     

;---------------------------------------------------------------------------
;Slash Super
[State -1]
type = ChangeState
value = 6000
triggerall = var(35) = 1
triggerall = power >= 1000  || var(30) = 1 
triggerall = statetype = S && ctrl
triggerall = p2statetype != L && p2movetype != H
trigger1 = P2BodyDist X < 30 && random <= 350
trigger2 = prevstateno = 914 && MoveHit

;---------------------------------------------------------------------------
;Bust Super
[State -1]
type = ChangeState
value = 6100
triggerall = var(35) = 1
triggerall = power >= 1000  || var(30) = 1 
triggerall = statetype = S && ctrl
triggerall = p2statetype != L
trigger1 = ((statetype = S) && (ctrl = 1) && (P2BodyDist X = [0,30]) && (P2statetype != L) && (P2movetype != H))
trigger2 = ((stateno = 52) && (P2movetype != A) && (P2BodyDist X = [0,30]) && (random <= 500))
trigger3 = ((stateno = 805) && (P2BodyDist X = [0,30]) && (p2movetype = A))
trigger4 = prevstateno = 917 && projhit917 = 1, < 15 && random <= 500

;---------------------------------------------------------------------------
;No Contest Super
[State -1]
type = ChangeState
value = 6200
triggerall = var(35) = 1
triggerall = power >= 1000  || var(30) = 1 
triggerall = statetype = S && ctrl
triggerall = p2statetype != L
trigger1 = p2movetype = H && P2statetype != A && random <= 950 && p2bodydist X > 50
trigger2 = (p2bodydist x = [120,999]) && random <= 200 && P2statetype != A

;---------------------------------------------------------------------------
;Air MultiFireball Super
[State -1]
type = ChangeState
value = 6300
triggerall = var(35) = 1
triggerall = power >= 1000  || var(30) = 1 
triggerall = (p2bodydist x = [40,999]) 
triggerall = p2statetype != L
triggerall = p2stateno != 5120
triggerall = Pos Y < -100
triggerall = ctrl
trigger1 = random <= 100
trigger2 = p2movetype = H && p2statetype = A && random <= 500 && enemy, Pos Y < -100

;---------------------------------------------------------------------------
;Ground MultiFireball Super
[State -1]
type = ChangeState
value = 6305
triggerall = var(35) = 1
triggerall = power >= 1000  || var(30) = 1
triggerall = statetype = S && ctrl
triggerall = p2statetype != L
triggerall = p2stateno != 5120
trigger1 = prevstateno = 917 && projhit917 = 1, < 15 && random <= 500
trigger2 = (p2bodydist x = [150,999]) && random <= 300
trigger3 = p2movetype = H && p2statetype = A && random <= 500 && enemy, Pos Y < -100


;===========================================================================
;Player Controlled
;---------------------------------------------------------------------------
;Slash Super
[State -1]
type = ChangeState
value = 6000
triggerall = var(35) != 1
triggerall = command = "QCFQCF_x" && power >= 1000  || var(30) = 1 && command = "QCFQCF_x"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Bust Super
[State -1]
type = ChangeState
value = 6100
triggerall = var(35) != 1
triggerall = command = "QCFQCF_y" && power >= 1000  || var(30) = 1 && command = "QCFQCF_y"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;No Contest Super
[State -1]
type = ChangeState
value = 6200
triggerall = var(35) != 1
triggerall = command = "QCFQCF_z" && power >= 1000  || var(30) = 1 && command = "QCFQCF_z"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Air MultiFireball Super
[State -1]
type = ChangeState
value = 6300
triggerall = var(35) != 1
triggerall = command = "QCFQCF_a" && power >= 1000  || var(30) = 1 && command = "QCFQCF_a"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Ground MultiFireball Super
[State -1]
type = ChangeState
value = 6305
triggerall = var(35) != 1
triggerall = command = "QCFQCF_a" && power >= 1000  || var(30) = 1 && command = "QCFQCF_a"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Honorable Death
[State -1]
type = ChangeState
value = 850
triggerall = var(35) != 1
trigger1 = command = "QCFB_start" && statetype = S && ctrl

;---------------------------------------------------------------------------
;Reversal A
[State -1]
type = ChangeState
value = 1700
triggerall = var(35) != 1
triggerall = command = "QCBF_x"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Reversal B
[State -1]
type = ChangeState
value = 1702
triggerall = var(35) != 1
triggerall = command = "QCBF_y"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Reversal C
[State -1]
type = ChangeState
value = 1704
triggerall = var(35) != 1
triggerall = command = "QCBF_z"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Reversal D
[State -1]
type = ChangeState
value = 1706
triggerall = var(35) != 1
triggerall = command = "QCBF_a"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Rage Explosion
[State -1]
type = ChangeState
value = 7000
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = var(30) = 0
triggerall = command = "xyz" 
trigger1 = ctrl

;---------------------------------------------------------------------------
;Rage Attack
[State -1]
type = ChangeState
value = 7100
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = var(30) = 1
triggerall = command = "xyz"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Bubble Shield 1
[State -1]
type = ChangeState
value = 1500
triggerall = var(35) != 1
triggerall = command = "DP_x"
triggerall = stateno != 1505
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Bubble Shield 2
[State -1]
type = ChangeState
value = 1501
triggerall = var(35) != 1
triggerall = command = "DP_y"
triggerall = stateno != 1505
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Bubble Shield 3
[State -1]
type = ChangeState
value = 1502
triggerall = var(35) != 1
triggerall = command = "DP_z"
triggerall = stateno != 1505
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Bubble Shield 4
[State -1]
type = ChangeState
value = 1503
triggerall = var(35) != 1
triggerall = command = "DP_a"
triggerall = stateno != 1505
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Water Spout Close
[State -1]
type = ChangeState
value = 1300
triggerall = var(35) != 1
triggerall = command = "DP_x"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Water Spout Middle
[State -1]
type = ChangeState
value = 1301
triggerall = var(35) != 1
triggerall = command = "DP_y"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Water Spout Far
[State -1]
type = ChangeState
value = 1302
triggerall = var(35) != 1
triggerall = command = "DP_z"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Water Spout Far 2
[State -1]
type = ChangeState
value = 1303
triggerall = var(35) != 1
triggerall = command = "DP_a"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Air Throw 1
[State -1]
type = ChangeState
value = 1400
triggerall = var(35) != 1
triggerall = command = "QCB_x"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Air Throw  2
[State -1]
type = ChangeState
value = 1404
triggerall = var(35) != 1
triggerall = command = "QCB_y"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Air Throw 3
[State -1]
type = ChangeState
value = 1405
triggerall = var(35) != 1
triggerall = command = "QCB_z"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Air Throw 4
[State -1]
type = ChangeState
value = 1408
triggerall = var(35) != 1
triggerall = command = "QCB_a"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Fireball 1
[State -1]
type = ChangeState
value = 1000
triggerall = var(35) != 1
triggerall = command = "QCF_x"
triggerall = numprojID(1006) = 0
triggerall = numprojID(1007) = 0
triggerall = numprojID(1008) = 0
triggerall = numprojID(1013) = 0
triggerall = numprojID(1014) = 0
triggerall = numprojID(1015) = 0
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Fireball 2
[State -1]
type = ChangeState
value = 1010
triggerall = var(35) != 1
triggerall = command = "QCF_y"
triggerall = numprojID(1006) = 0
triggerall = numprojID(1007) = 0
triggerall = numprojID(1008) = 0
triggerall = numprojID(1013) = 0
triggerall = numprojID(1014) = 0
triggerall = numprojID(1015) = 0
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Fireball 3
[State -1]
type = ChangeState
value = 1020
triggerall = var(35) != 1
triggerall = command = "QCF_z"
triggerall = numprojID(1006) = 0
triggerall = numprojID(1007) = 0
triggerall = numprojID(1008) = 0
triggerall = numprojID(1013) = 0
triggerall = numprojID(1014) = 0
triggerall = numprojID(1015) = 0
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Air Fireball 1
[State -1]
type = ChangeState
value = 1100
triggerall = var(35) != 1
triggerall = command = "QCF_x"
trigger1 = statetype = A && ctrl         

;---------------------------------------------------------------------------
;Air Fireball 2
[State -1]
type = ChangeState
value = 1101
triggerall = var(35) != 1
triggerall = command = "QCF_y"
trigger1 = statetype = A && ctrl       

;---------------------------------------------------------------------------
;Air Fireball 3
[State -1]
type = ChangeState
value = 1102
triggerall = var(35) != 1
triggerall = command = "QCF_z"
trigger1 = statetype = A && ctrl      

;---------------------------------------------------------------------------
;Teleport Left
[State -1]
type = ChangeState
value = 1200
triggerall = var(35) != 1
triggerall = command = "RDP_x"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Teleport Front of Enemy
[State -1]
type = ChangeState
value = 1201
triggerall = var(35) != 1
triggerall = command = "RDP_y"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Teleport Back of Enemy
[State -1]
type = ChangeState
value = 1202
triggerall = var(35) != 1
triggerall = command = "RDP_z"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Teleport Right
[State -1]
type = ChangeState
value = 1203
triggerall = var(35) != 1
triggerall = command = "RDP_a"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Water Ball 1
[State -1]
type = ChangeState
value = 1600
triggerall = var(35) != 1
triggerall = command = "QCB_x"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Water Ball 2
[State -1]
type = ChangeState
value = 1601
triggerall = var(35) != 1
triggerall = command = "QCB_y"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Water Ball 3
[State -1]
type = ChangeState
value = 1602
triggerall = var(35) != 1
triggerall = command = "QCB_z"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Water Ball 4
[State -1]
type = ChangeState
value = 1603
triggerall = var(35) != 1
triggerall = command = "QCB_a"
trigger1 = statetype = S && ctrl


;---------------------------------------------------------------------------
;Lie Down Pounce
[State -1]
type = ChangeState
value = 840
triggerall = var(35) != 1
triggerall = statetype != A && ctrl && p2statetype = L                               
trigger1 = command = "pounce"                                

;---------------------------------------------------------------------------
;Switch
[State -1]
type = ChangeState
value= 810
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = stateno != [805,810]
triggerall = command = "fwd_xy"
triggerall = P2BodyDist X <= 60
trigger1 = ctrl
trigger2 = stateno = 280

;---------------------------------------------------------------------------
;Charge
[State -1]
type = ChangeState
value = 800
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = power < 3000 
triggerall = stateno != 800 
triggerall = command = "a"
triggerall = command = "b" 
triggerall = var(30) = 0
trigger1 = ctrl 

;---------------------------------------------------------------------------
;Charge Full
[State -1]
type = ChangeState
value = 801
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = power >= 3000 || var(30) != 0
triggerall = command = "a"
triggerall = command = "b" 
trigger1 = ctrl

;---------------------------------------------------------------------------
;Command Roll Forward
[State -1]
type = ChangeState
value = 111
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = life > 0
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Command Roll Backwards
[State -1]
type = ChangeState
value = 116
triggerall = var(35) != 1
triggerall = statetype != A
triggerall = life > 0
triggerall = command = "b"
triggerall = command = "holdback"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dodge
[State -1]
type = ChangeState
value = 805
triggerall = var(35) != 1
triggerall = statetype != A 
triggerall = stateno != 805 
triggerall = command != "holddown"
triggerall = ctrl
trigger1 = command = "x" 
trigger1 = command = "y" 
trigger2 = command = "b" 

;---------------------------------------------------------------------------
;Stand Hop Crush
[State -1]
type = ChangeState
value = 260
triggerall = var(35) != 1
trigger1 = command = "yz" && statetype = S && ctrl

;---------------------------------------------------------------------------
;Crounching Slide Kick
[State -1]
type = ChangeState
value = 440
triggerall = var(35) != 1
trigger1 = command = "df_a" && command = "holddown" && statetype = C && ctrl && stateno != 100                              

;---------------------------------------------------------------------------
;Crounching Slide Kick
[State -1]
type = ChangeState
value = 441
triggerall = var(35) != 1
trigger1 = command = "a" && stateno = 100                         

;---------------------------------------------------------------------------
;Push Fwd
[State -1]
type = ChangeState
value = 820
triggerall = var(35) != 1
triggerall = statetype = S && ctrl && p2bodydist X < 20
trigger1 = command = "fwd_z" && stateno != 100 && p2statetype = S && p2movetype != H
trigger2 = command = "fwd_z" && stateno != 100 && p2statetype = C && p2movetype != H

;---------------------------------------------------------------------------
;Push Bwd
[State -1]
type = ChangeState
value = 830
triggerall = var(35) != 1
triggerall = statetype = S && ctrl && p2bodydist X < 20
trigger1 = command = "bck_z" && stateno != 100 && p2statetype = S && p2movetype != H
trigger2 = command = "bck_z" && stateno != 100 && p2statetype = C && p2movetype != H

;---------------------------------------------------------------------------
;Command Light Kick
[State -1]
type = ChangeState
value = 250
triggerall = var(35) != 1
trigger1 = statetype = S && ctrl && command = "fwd_a" && command != "holddown"  && stateno != 100 

;---------------------------------------------------------------------------
;Wall Jump
[State -1]
type = ChangeState
value = 47
triggerall = var(35) != 1
triggerall = stateno != 1505
triggerall = statetype = A  
triggerall = stateno != 47  && stateno !=105 && ctrl
trigger1 = ((command = "holdfwd") && (Vel X <= 0) && (backedgebodydist < 1))

;---------------------------------------------------------------------------
;Walljump
[State -1]
type = ChangeState
value = 48
triggerall = var(35) != 1
triggerall = stateno != 1505
triggerall = statetype = A && FrontEdgeDist < 3  && stateno !=105 && command = "holdback"
trigger1 = !stateno = [600, 690]
trigger2 = stateno != 47 && ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(35) != 1
trigger1 = command = "FF" && statetype = S && ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(35) != 1
trigger1 = command = "BB" && statetype = S && ctrl

;---------------------------------------------------------------------------
;Stand Weak Slash
[State -1]
type = ChangeState
value = 200
triggerall = var(35) != 1
triggerall = command = "x" && command != "holddown" && stateno != 100 
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Stand Medium Slash Far
[State -1]
type = ChangeState
value = 210
triggerall = var(35) != 1
triggerall = command = "y" && command != "holddown" && P2BodyDist X >= 40  && stateno != 100 
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Stand Medium Slash Close
[State -1]
type = ChangeState
value = 230
triggerall = var(35) != 1
triggerall = command = "y" && command != "holddown" && P2BodyDist X < 40  && stateno != 100 
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Stand Strong Slash 
[State -1]
type = ChangeState
value = 220
triggerall = var(35) != 1
triggerall = command = "z" && command != "holddown" && stateno != 100 
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Stand Strong Slash Running
[State -1]
type = ChangeState
value = 221
triggerall = var(35) != 1
triggerall = command = "z" && command != "holddown" 
trigger1 = stateno = 100 

;---------------------------------------------------------------------------
;Stand Kick 
[State -1]
type = ChangeState
value = 240
triggerall = var(35) != 1
triggerall = command = "a" && command != "holddown" && stateno != 100 
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;Crouch Weak Slash
[State -1]
type = ChangeState
value = 400
triggerall = var(35) != 1
triggerall = command = "x" && command = "holddown" 
trigger1 = statetype = C && ctrl                                  

;---------------------------------------------------------------------------
;Crouch Medium Slash
[State -1]
type = ChangeState
value = 410
triggerall = var(35) != 1
triggerall = command = "y" && command = "holddown" 
trigger1 = statetype = C && ctrl                                  

;---------------------------------------------------------------------------
;Crouch Strong Slash
[State -1]
type = ChangeState
value = 420
triggerall = var(35) != 1
trigger1 = statetype = C && ctrl && command = "z" && command = "holddown" 

;---------------------------------------------------------------------------
;Crouch Kick
[State -1]
type = ChangeState
value = 430
triggerall = var(35) != 1
trigger1 = statetype = C && ctrl && command = "a" && command = "holddown" 

;---------------------------------------------------------------------------
;Jump Weak Slash Stationary
[State -1]
type = ChangeState
value = 600
triggerall = var(35) != 1
triggerall = command = "x" 
trigger1 = statetype = A && ctrl && vel X = 0                                 

;---------------------------------------------------------------------------
;Jump Medium Slash Stationary
[State -1]
type = ChangeState
value = 605
triggerall = var(35) != 1
triggerall = command = "y" 
trigger1 = statetype = A && ctrl && vel X = 0                                  

;---------------------------------------------------------------------------
;Jump Weak Slash Moving
[State -1]
type = ChangeState
value = 610
triggerall = var(35) != 1
triggerall = command = "x"
trigger1 = statetype = A && ctrl && vel X != 0 && stateno != 105 

;---------------------------------------------------------------------------
;Jump Medium Slash Moving
[State -1]
type = ChangeState
value = 620
triggerall = var(35) != 1
triggerall = command = "y"
trigger1 =  statetype = A && ctrl && vel X != 0 && stateno != 105 

;---------------------------------------------------------------------------
;Jump Strong Slash
[State -1]
type = ChangeState
value = 630
triggerall = var(35) != 1
triggerall = command = "z" 
trigger1 = statetype = A && ctrl && stateno != 105                                

;---------------------------------------------------------------------------
;Jump Kick
[State -1]
type = ChangeState
value = 640
triggerall = var(35) != 1
triggerall = command = "a" 
trigger1 = statetype = A && ctrl && stateno != 105                                  


;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 197
triggerall = var(35) != 1
triggerall = command = "start" 
trigger1 = statetype != A && ctrl                                  

;---------------------------------------------------------------------------
;Master Arts Combos
[State -1]
type = ChangeState
value = 900
triggerall = var(35) != 1
triggerall = command = "c"
trigger1 = statetype = S && ctrl && command != "holddown" && stateno != 100
trigger2 = stateno = 100                              

;---------------------------------------------------------------------------
;Master Arts 2nd Hit
[State -1]
type = ChangeState
value = 901
triggerall = var(35) != 1
trigger1 = stateno = 900 && command = "x" && var(15) = 1 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 3rd Hit
[State -1]
type = ChangeState
value = 902
triggerall = var(35) != 1
trigger1 = stateno = 901 && command = "x" && var(15) = 1 

;---------------------------------------------------------------------------
;Master Arts 4th Hit
[State -1]
type = ChangeState
value = 903
triggerall = var(35) != 1
trigger1 = stateno = 902 && command = "y" && var(15) = 1 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 5th Hit
[State -1]
type = ChangeState
value = 904
triggerall = var(35) != 1
trigger1 = stateno = 903 && command = "y" && var(15) = 1 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 6th Hit
[State -1]
type = ChangeState
value = 905
triggerall = var(35) != 1
trigger1 = stateno = 904 && command = "z" && var(15) = 1 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 7th Hit
[State -1]
type = ChangeState
value = 906
triggerall = var(35) != 1
trigger1 = stateno = 905 && command = "z" && var(15) = 1 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 8th Hit
[State -1]
type = ChangeState
value = 907
triggerall = var(35) != 1
trigger1 = stateno = 906 && command = "x" && var(15) = 1 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 9th Hit
[State -1]
type = ChangeState
value = 908
triggerall = var(35) != 1
trigger1 = stateno = 907 && command = "y" && var(15) = 1 && projhit907 = 1, <= 8

;---------------------------------------------------------------------------
;Master Arts 10th Hit
[State -1]
type = ChangeState
value = 909
triggerall = var(35) != 1
trigger1 = stateno = 908 && command = "z" && var(15) = 1 && projhit908 = 1, <= 8

;---------------------------------------------------------------------------
;Master Arts 11th Hit
[State -1]
type = ChangeState
value = 910
triggerall = var(35) != 1
trigger1 = stateno = 909 && command = "z" && var(15) = 1 && projhit909 = 1, <= 8

;---------------------------------------------------------------------------
;Master Arts 12th Hit
[State -1]
type = ChangeState
value = 911
triggerall = var(35) != 1
trigger1 = stateno = 910 && command = "z" && var(15) = 1 && projhit910 = 1, <= 8

;---------------------------------------------------------------------------
;Master Arts 13th Hit
[State -1]
type = ChangeState
value = 912
triggerall = var(35) != 1
trigger1 = stateno = 911 && command = "z" && var(15) = 1 && projhit911 = 1, <= 8

;---------------------------------------------------------------------------
;Master Arts 14th Hit
[State -1]
type = ChangeState
value = 913
triggerall = var(35) != 1
trigger1 = stateno = 912 && command = "z" && var(15) = 1 && projhit912 = 1, <= 8

;---------------------------------------------------------------------------
;Master Arts 4th Hit B
[State -1]
type = ChangeState
value = 914
triggerall = var(35) != 1
trigger1 = stateno = 902 && command = "x" && var(15) = 1 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 5th Hit B
[State -1]
type = ChangeState
value = 915
triggerall = var(35) != 1
trigger1 = stateno = 903 && command = "z" && var(15) = 1 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 5th Hit C
[State -1]
type = ChangeState
value = 916
triggerall = var(35) != 1
trigger1 = stateno = 903 && command = "a" && var(15) = 1 && MoveContact

;---------------------------------------------------------------------------
;Master Arts 6th Hit B
[State -1]
type = ChangeState
value = 917
triggerall = var(35) != 1
trigger1 = stateno = 904 && command = "y" && var(15) = 1 && MoveContact



