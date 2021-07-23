; The CMD file.
;K'_AKOF by NAO&M.
;-|AI Command |--------------------------------------------------------
[Command]
name = "AI_1"
command = U,D,F,F,B,B
time = 1
[Command]
name = "AI_2"
command = U,D,F,F,B,F
time = 1
[Command]
name = "AI_3"
command = U,D,F,F,B,D
time = 1
[Command]
name = "AI_4"
command = U,D,F,F,B,U
time = 1
[Command]
name = "AI_5"
command = U,D,F,F,U,B
time = 1
[Command]
name = "AI_6"
command = U,D,F,F,D,B
time = 1
[Command]
name = "AI_7"
command = U,D,F,F,F,B
time = 1
[Command]
name = "AI_8"
command = U,D,U,F,B,B
time = 1
[Command]
name = "AI_9"
command = U,D,D,F,B,B
time = 1
[Command]
name = "AI_10"
command = D,D,F,F,B,B
time = 1
[Command]
name = "AI_11"
command = U,U,F,F,B,B
time = 1
[Command]
name = "AI_12"
command = U,B,F,F,B,B
time = 1
[Command]
name = "AI_13"
command = U,B,F,F,U,U,B
time = 1
[Command]
name = "AI_14"
command = U,B,F,F,F,B,U
time = 1
[Command]
name = "AI_15"
command = U,B,F,U,F,U,D
time = 1

;====================================================================
;-| Hyper      |----------------------------------------

[Command]
name = "lvl 4 NEO EXTINCTION"
command = ~D, DF, F, D, DF, F, D, DF, F, D, DF, c
time = 80

[Command]
name = "lvl 4 NEO EXTINCTION"
command = ~D, DF, F, D, DF, F, c
time = 60

[Command]
name = "lvl 3 EXTINCTION AB"
command = ~D, DF, F, D, DF, a+b
time = 60

[Command]
name = "lvl 3 EXTINCTION XY"
command = ~D, DF, F, D, DF, F, D, DF, F, D, DF, x+y
time = 60

[Command]
name = "lvl 3 EXTINCTION YA"
command = ~D, DF, y, a
time = 30

[Command]
name = "Blaze"
command = ~D, B, D, B, z
time = 24

[Command]
name = "kuri"
command = ~D, B, y, x
time = 30

[Command]
name = "heatdriver"
command = ~D, DF, F, D, DF, x
time = 30

[Command]
name = "heatdriver2"
command = ~D, DF, F, D, DF, y
time = 30

[Command]
name = "heatdriverSDM"
command = ~D, DF, F, D, DF, x+y
time = 30

[Command]
name = "chaindriver"
command = ~D, F, D, B, x
time = 24

[Command]
name = "chaindriver"
command = ~D, F, D, B, y
time = 24

[Command]
name = "chaindriverSDM"
command = ~D, F, D, B, x+y
time = 36

[Command]
name = "Burning Mirage"
command = D, DB, D, DB, x
time = 30

[Command]
name = "Burning Mirage"
command = D, DB, D, DB, y
time = 30

[Command]
name = "heavensdriveSDM"
command = ~D, DF, F, D, DF, F, a+b
time = 36

[Command]
name = "heavensdrive"
command = D, DF, F, D, DF, a
time = 24

[Command]
name = "heavensdrive2"
command = D, DF, F, D, DF, b
time = 24

[Command]
name = "b_c"
command = ~D, B, D, F, x
time = 30

[Command]
name = "b_c"
command = ~D, B, D, F, y
time = 30

[Command]
name = "keii"
command = ~D, F, s
time = 20

;-| Special    |----------------------------------------
; Spike Ride B

[Command]
name = "Phase_X"
command = ~F, D, B, x
time = 24

[Command]
name = "Phase_Y"
command = ~F, D, B, y
time = 24

; Crow Bite A
[Command]
name = "Crow_Bite_A"
command = ~F, D, DF, x
time = 15
buffer.time = 10


; Crow Bite C
[Command]
name = "Crow_Bite_C"
command = ~F, D, DF, y
time = 15
buffer.time = 10

; Minute_spike_B
[Command]
name = "Minute_spike_B"
command = ~D, DB, B, a
time = 15

; Minute_spike_D
[Command]
name = "Minute_spike_D"
command = ~D, DB, B, b
time = 15

[Command]
name = "Blackout_B"
command = ~D, DF, F, a
time = 15

[Command]
name = "Blackout_D"
command = ~D, DF, F, b
time = 15

; Eine trigger
[Command]
name = "Eine_Trigger_A"
command = ~D,DF,F,x
time = 15

; Eine trigger
[Command]
name = "Eine_Trigger_C"
command = ~D,DF,F,y
time = 15


; nalow spike
[command]
name = "nalow"
command = ~D, DB, B, a
time = 15

[command]
name = "nalow"
command = ~D, DB, B, b
time = 15

; air trigger
[command]
name = "air_A"
command = ~D, DF, F, a
time = 15

[command]
name = "air_C"
command = ~D, DF, F, b
time = 15

;[command]
;name = "ts"
;command = ~F, F, y
;time = 10

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = a+x
time = 1

[command]
name = "poweradd_x"
command = a+y
time = 1

[Command]
name = "dodge"
command = a+x
time = 1

[Command]
name = "CD"
command = b+y
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

;-| Single Tap |---------------------------------------------------------
[Command]
name = "justfwd"
command = F
time = 1

[Command]
name = "justback"
command = B
time = 1

[Command]
name = "justup"
command = U
time = 1

[Command]
name = "justdown"
command = D
time = 1

;------------------------------------------------------
[Command]
name = "CD"
command = c
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "dodge"
command = z
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;------------------------------------------------------
[Command]
name = "A"
command = a
time = 1

[Command]
name = "B"
command = b
time = 1

[Command]
name = "C"
command = x
time = 1

[Command]
name = "D"
command = y
time = 1

; - [Hold button] - 
;-------------------------------------------------
[Command]
name = "hold_A"
command = /$x
time = 1

[Command]
name = "hold_B"
command = /$a
time = 1

[Command]
name = "hold_C"
command = /$y
time = 1

[Command]
name = "hold_D"
command = /$b
time = 1

[command]
name = "hold_CD"
command = /$c
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

;longjump
[Command]
name = "longjump"
command = D, $U
time = 18


;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
;-|Commands|------------------------------------------------------------------------------
[Statedef -1]
;===============================================
;Hyper
;===============================================

[State -1, poweradd x]
type = ChangeState
value = 172
triggerall = command = "poweradd_x"
trigger1 = (statetype = s) && ctrl
triggerall = Power < 5000
triggerall = ctrl = 1
trigger1 = command = "hold_B"
trigger1 = command = "hold_C"

;AI heatdrive
[State -1]
type = changestate
value = 3000 + (var(59) = 1)*1300 ; =1700
triggerall = !var(7) && !var(6)
triggerall = Var(50) ;  AI memory and focus
triggerall = command = "heatdriver"
triggerall = command != "heatdriverSDM"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = power <= 2000
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 11500
trigger7 = movecontact = 1 && time = [12,30]
trigger8 = stateno = 11501
trigger8 = movecontact = 1 && time = [10,20]
trigger9 = stateno = 11502
trigger9 = movecontact = 1 && time = [13,30]
trigger10 = stateno = 11503
trigger10 = movecontact = 1 && time = [8,20]
trigger11 = stateno = 11504
trigger11 = movecontact = 1 && time = [15,30]
trigger12 = stateno = 11505
trigger12 = movecontact = 1 && time = [8,30]
trigger13 = stateno = 11506
trigger13 = movecontact = 1 && time = [15,50]
trigger14 = stateno = 11600
trigger14 = movecontact = 1 && time = [17,40]
trigger15 = stateno = 11615
trigger15 = movecontact = 1
trigger16 = stateno = 290 && movecontact = 1
trigger17 = stateno = 295 && movecontact = 1



;Burning Mirage
[State -1]
type = changestate
value = 2500
triggerall = !var(6) && !var(7)
triggerall = !Var(59); hide AI
triggerall = command = "Burning Mirage"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 11500
trigger7 = movecontact = 1 && time = [12,30]
trigger8 = stateno = 11501
trigger8 = movecontact = 1 && time = [10,20]
trigger9 = stateno = 11502
trigger9 = movecontact = 1 && time = [13,30]
trigger10 = stateno = 11503
trigger10 = movecontact = 1 && time = [8,20]
trigger11 = stateno = 11504
trigger11 = movecontact = 1 && time = [15,30]
trigger12 = stateno = 11505
trigger12 = movecontact = 1 && time = [8,30]
trigger13 = stateno = 11506
trigger13 = movecontact = 1 && time = [15,50]
trigger14 = stateno = 11600
trigger14 = movecontact = 1 && time = [17,40]
trigger15 = stateno = 11615
trigger15 = movecontact = 1
trigger16 = stateno = 290 && movecontact = 1
trigger17 = stateno = 295 && movecontact = 1

[State -1]
type = changestate
value = 3700
triggerall = !var(6) && !var(7)
triggerall = !Var(59); hide AI
triggerall = command = "Blaze"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 11500
trigger7 = movecontact = 1 && time = [12,30]
trigger8 = stateno = 11501
trigger8 = movecontact = 1 && time = [10,20]
trigger9 = stateno = 11502
trigger9 = movecontact = 1 && time = [13,30]
trigger10 = stateno = 11503
trigger10 = movecontact = 1 && time = [8,20]
trigger11 = stateno = 11504
trigger11 = movecontact = 1 && time = [15,30]
trigger12 = stateno = 11505
trigger12 = movecontact = 1 && time = [8,30]
trigger13 = stateno = 11506
trigger13 = movecontact = 1 && time = [15,50]
trigger14 = stateno = 11600
trigger14 = movecontact = 1 && time = [17,40]
trigger15 = stateno = 11615
trigger15 = movecontact = 1
trigger16 = stateno = 2506 && time = [30,101]
trigger17 = stateno = 290 && movecontact = 1
trigger18 = stateno = 295 && movecontact = 1
trigger19 = stateno = 1503 && time >= 0 && movehit = 1

; クリムゾンスターロード
[state -1]
type = changestate
value = 13501
triggerall = command = "kuri"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger2 = stateno = 301
trigger3 = stateno = 11615
trigger3 = movecontact = 1
trigger4 = stateno = 3202 && time = [28,190]
trigger5 = stateno = 290 && movecontact = 1
trigger6 = stateno = 295 && movecontact = 1
trigger7 = stateno = 270 || stateno = 220 || stateno= 11500
trigger8 = stateno = 2506 && time = [46,98]


; heatdriver A
[State -1]
type = ChangeState
value = 3100
triggerall = !var(6) && !var(7)
triggerall = !Var(59); hide AI
triggerall = command = "heatdriver" || command ="heatdriver2"
triggerall = command != "heatdriverSDM"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 11500
trigger7 = movecontact = 1 && time = [12,30]
trigger8 = stateno = 11501
trigger8 = movecontact = 1 && time = [10,20]
trigger9 = stateno = 11502
trigger9 = movecontact = 1 && time = [13,30]
trigger10 = stateno = 11503
trigger10 = movecontact = 1 && time = [8,20]
trigger11 = stateno = 11504
trigger11 = movecontact = 1 && time = [15,30]
trigger12 = stateno = 11505
trigger12 = movecontact = 1 && time = [8,30]
trigger13 = stateno = 11506
trigger13 = movecontact = 1 && time = [15,50]
trigger14 = stateno = 11600
trigger14 = movecontact = 1 && time = [17,40]
trigger15 = stateno = 11615
trigger15 = movecontact = 1
trigger16 = stateno = 290 && movecontact = 1
trigger17 = stateno = 295 && movecontact = 1
trigger18 = stateno = 1503 && time >= 0 && movehit = 1

[State -1]
type = ChangeState
value = 3150
triggerall = !var(6) && !var(7)
triggerall = !Var(59); hide AI
triggerall = command = "heatdriverSDM"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 11500
trigger7 = movecontact = 1 && time = [12,30]
trigger8 = stateno = 11501
trigger8 = movecontact = 1 && time = [10,20]
trigger9 = stateno = 11502
trigger9 = movecontact = 1 && time = [13,30]
trigger10 = stateno = 11503
trigger10 = movecontact = 1 && time = [8,20]
trigger11 = stateno = 11504
trigger11 = movecontact = 1 && time = [15,30]
trigger12 = stateno = 11505
trigger12 = movecontact = 1 && time = [8,30]
trigger13 = stateno = 11506
trigger13 = movecontact = 1 && time = [15,50]
trigger14 = stateno = 11600
trigger14 = movecontact = 1 && time = [17,40]
trigger15 = stateno = 11615
trigger15 = movecontact = 1
trigger16 = stateno = 3205 && time >= 13
trigger17 = stateno = 2506 && time >= 85
trigger17 = stateno = 3202 && time = [176,200]
trigger18 = stateno = 3102 && time = [27,38]
trigger19 = stateno = 1503 && time >= 0 && movehit = 1
trigger20 = stateno = 1500 && time >= 0 && movehit = 1
trigger21 = stateno = 1201 && animelem = 40,>= 0 && animelem = 45,<= 4
trigger22 = stateno = 1204 && time >= 95 && (movehit)


; heatdriver A CounterMode version
[State -1]
type = ChangeState
value = 3400 - (var(59) = 1)*1700 ; =1700
triggerall = !var(7)
triggerall = var(6) != 0
triggerall = !Var(50) ;  AI memory and focus
triggerall = command = "heatdriver"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 1500
trigger8 = stateno = 300
trigger8 = time = [1,40]
trigger9 = stateno = 11615
trigger9 = movecontact = 1
trigger10 = stateno = 290 && movecontact = 1
trigger11 = stateno = 295 && movecontact = 1
trigger12 = stateno = 1503 && time >= 0 && movehit = 1

;--------------------
; 3250 SDM chaindriver
[State -1]
type = ChangeState
value = 3250
triggerall = !var(6) && !var(7)
triggerall = !Var(59); hide AI
triggerall = command = "chaindriverSDM"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 11615
trigger7 = movecontact = 1
trigger8 = stateno = 2506 && time = [46,98]
trigger9 = stateno = 290 && movecontact = 1
trigger10 = stateno = 295 && movecontact = 1
trigger11 = stateno = 1503 && time >= 0 && movehit = 1
trigger12 = stateno = 1201 && animelem = 40,>= 0 && animelem = 45,<= 4
trigger13 = stateno = 1204 && time >= 95
trigger14 = stateno = 3202 && time = [28,190]

; 3200 chain driver
[State -1]
type = ChangeState
value = 3200
triggerall = !var(6) && !var(7)
triggerall = !Var(59); hide AI
triggerall = command = "chaindriver"
triggerall = command != "chaindriverSDM"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 11500
trigger7 = movecontact = 1 && time = [12,30]
trigger8 = stateno = 11501
trigger8 = movecontact = 1 && time = [10,20]
trigger9 = stateno = 11502
trigger9 = movecontact = 1 && time = [13,30]
trigger10 = stateno = 11503
trigger10 = movecontact = 1 && time = [8,20]
trigger11 = stateno = 11504
trigger11 = movecontact = 1 && time = [15,30]
trigger12 = stateno = 11505
trigger12 = movecontact = 1 && time = [8,30]
trigger13 = stateno = 11506
trigger13 = movecontact = 1 && time = [15,50]
trigger14 = stateno = 11600
trigger14 = movecontact = 1 && time = [17,40]
trigger15 = stateno = 11615
trigger15 = movecontact = 1
trigger16 = stateno = 290 && movecontact = 1
trigger17 = stateno = 295 && movecontact = 1
trigger18 = stateno = 1503 && time >= 0 && movehit = 1

; バーニングコロナ
[state -1]
type = changestate
value = 3600
triggerall = command = "b_c"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 11500
trigger7 = movecontact = 1 && time = [12,30]
trigger8 = stateno = 11501
trigger8 = movecontact = 1 && time = [10,20]
trigger9 = stateno = 11502
trigger9 = movecontact = 1 && time = [13,30]
trigger10 = stateno = 11503
trigger10 = movecontact = 1 && time = [8,20]
trigger11 = stateno = 11504
trigger11 = movecontact = 1 && time = [15,30]
trigger12 = stateno = 11505
trigger12 = movecontact = 1 && time = [8,30]
trigger13 = stateno = 11506
trigger13 = movecontact = 1 && time = [15,50]
trigger14 = stateno = 11600
trigger14 = movecontact = 1 && time = [17,40]
trigger15 = stateno = 11615
trigger15 = movecontact = 1
trigger16 = stateno = 290 && movecontact = 1
trigger17 = stateno = 295 && movecontact = 1

; ヘヴンズドライブ
[state -1]
type = changestate
value = 3340
triggerall = command = "heavensdrive"
triggerall = command != "heavensdriveSDM"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 11500
trigger7 = movecontact = 1 && time = [12,30]
trigger8 = stateno = 11501
trigger8 = movecontact = 1 && time = [10,20]
trigger9 = stateno = 11502
trigger9 = movecontact = 1 && time = [13,30]
trigger10 = stateno = 11503
trigger10 = movecontact = 1 && time = [8,20]
trigger11 = stateno = 11504
trigger11 = movecontact = 1 && time = [15,30]
trigger12 = stateno = 11505
trigger12 = movecontact = 1 && time = [8,30]
trigger13 = stateno = 11506
trigger13 = movecontact = 1 && time = [15,50]
trigger14 = stateno = 11600
trigger14 = movecontact = 1 && time = [17,40]
trigger15 = stateno = 11615
trigger15 = movecontact = 1
trigger16 = stateno = 290 && movecontact = 1
trigger17 = stateno = 295 && movecontact = 1
trigger18 = stateno = 13505
trigger18 = time >= 5
trigger19 = stateno = 1503 && time >= 0 && movehit = 1

[state -1]
type = changestate
value = 3340
triggerall = command = "heavensdrive2" || command = "heavensdrive"
triggerall = command != "heavensdriveSDM"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 11500
trigger7 = movecontact = 1 && time = [12,30]
trigger8 = stateno = 11501
trigger8 = movecontact = 1 && time = [10,20]
trigger9 = stateno = 11502
trigger9 = movecontact = 1 && time = [13,30]
trigger10 = stateno = 11503
trigger10 = movecontact = 1 && time = [8,20]
trigger11 = stateno = 11504
trigger11 = movecontact = 1 && time = [15,30]
trigger12 = stateno = 11505
trigger12 = movecontact = 1 && time = [8,30]
trigger13 = stateno = 11506
trigger13 = movecontact = 1 && time = [15,50]
trigger14 = stateno = 11600
trigger14 = movecontact = 1 && time = [17,40]
trigger15 = stateno = 11615
trigger15 = movecontact = 1
trigger16 = stateno = 290 && movecontact = 1
trigger17 = stateno = 295 && movecontact = 1
trigger18 = stateno = 13505
trigger18 = time >= 5
trigger19 = stateno = 1503 && time >= 0 && movehit = 1

[state -1]
type = changestate
value = 3390
triggerall = command = "heavensdriveSDM"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 11500
trigger7 = movecontact = 1 && time = [12,30]
trigger8 = stateno = 11501
trigger8 = movecontact = 1 && time = [10,20]
trigger9 = stateno = 11502
trigger9 = movecontact = 1 && time = [13,30]
trigger10 = stateno = 11503
trigger10 = movecontact = 1 && time = [8,20]
trigger11 = stateno = 11504
trigger11 = movecontact = 1 && time = [15,30]
trigger12 = stateno = 11505
trigger12 = movecontact = 1 && time = [8,30]
trigger13 = stateno = 11506
trigger13 = movecontact = 1 && time = [15,50]
trigger14 = stateno = 11600
trigger14 = movecontact = 1 && time = [17,40]
trigger15 = stateno = 11615
trigger15 = movecontact = 1
trigger16 = stateno = 290 && movecontact = 1
trigger17 = stateno = 295 && movecontact = 1
trigger18 = stateno = 13505
trigger18 = time >= 5
trigger19 = stateno = 1503 && time >= 0 && movehit = 1

; ナロウスパイク
[state -1]
type = changestate
value = 13505
triggerall = command = "nalow"
triggerall = command = "Minute_spike_D" || command = "Minute_spike_B"
trigger1 = stateno = 1301
trigger2 = stateno = 1306

; エアトリガー　弱
[state -1]
type = changestate
value = 963
triggerall = command = "air_A"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 314 || (stateno = [620,650])
trigger2 = movecontact = 1
trigger3 = stateno = 1505

; エアトリガー　強
[state -1]
type = changestate
value = 964
triggerall = command = "air_C"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 314 || (stateno = [620,650])
trigger2 = movecontact = 1
trigger3 = stateno = 1505

[state -1]
type = changestate
triggerall = var(59) = 1
triggerall = StateType = A
triggerall = random <= 50
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X >= 160
triggerall = p2stateno != [150,152]
trigger1 = ctrl = 1
value = IfElse(random < 300,963,IfElse(random < 400,964,963))

;; テリブルスマッシュ
;[state -1]
;type = changestate
;value = 11600
;triggerall = command = "ts"
;trigger1 = statetype = S
;trigger1 = ctrl = 1

; 敬意
[state -1]
type = changestate
value = 970
triggerall = command = "keii"
triggerall = statetype != A
trigger1 = ctrl = 1


;=======================================
; TEMP vars
;=======================================
[State -1]
type = varset
triggerall = command = "holdfwd" && command = "B"
triggerall = time = [2,13]
trigger1 = stateno = 1000 || stateno = 1006
trigger2 = stateno = 1504
var(2) = 1

[State -1]
type = varset
triggerall = command = "holdfwd" && command = "A"
triggerall = time = [2,13]
trigger1 = stateno = 1000 || stateno = 1006
trigger2 = stateno = 1504
var(2) = 2

[State -1]
type = varset
triggerall = command = "holdback" && command = "A"
triggerall = time = [2,13]
trigger1 = stateno = 1000 || stateno = 1006
var(2) = 3

[State -1]
type = varset
triggerall = command = "holdback" && command = "B"
triggerall = time = [2,13]
trigger1 = stateno = 1000 || stateno = 1006
var(2) = 4

;CM start temp
;[State -1]
;type = Changestate
;trigger1 = command = "A" && command = "B" && command = "C"
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger1 = var(6) = 0 && var(7) = 0
;trigger1 = power >= 3000
;value = 6100

;AM start temp
;[State -1]
;type = Changestate
;trigger1 = command = "B" && command = "C" && command = "D"
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger1 = var(6) = 0 && var(7) = 0
;trigger1 = power >= 3000
;value = 6200

;========================================
; martial moves
;========================================
; Uppercut
[State -1]
type = ChangeState
value = 1500
triggerall = command = "Crow_Bite_A"
triggerall = statetype != A
triggerall = !var(59) ; hide AI
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 11500
trigger8= movecontact = 1 && time = [12,30]
trigger9 = stateno = 11501
trigger9 = movecontact = 1 && time = [10,20]
trigger10 = stateno = 11502
trigger10 = movecontact = 1 && time = [13,30]
trigger11 = stateno = 11503
trigger11 = movecontact = 1 && time = [8,20]
trigger12 = stateno = 11504
trigger12 = movecontact = 1 && time = [15,30]
trigger13 = stateno = 11505
trigger13 = movecontact = 1 && time = [8,30]
trigger14 = stateno = 11506
trigger14 = movecontact = 1 && time = [15,50]
trigger15 = stateno = 11600
trigger15 = movecontact = 1 && time = [17,40]
trigger16 = stateno = 11615
trigger16 = movecontact = 1
trigger17 = stateno = 290 && movecontact = 1
trigger18 = stateno = 295 && movecontact = 1

[State -1]
type = ChangeState
value = 1500
triggerall = var(59) = 1
triggerall = prevstateno = 5
triggerall = p2bodydist x = [0,30]
triggerall = p2movetype = H
trigger1 = animtime = 0

; Uppercut_C
[State -1]
type = ChangeState
value = 1503
triggerall = !Var(59); hide AI
triggerall = command = "Crow_Bite_C"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 11500
trigger8= movecontact = 1 && time = [12,30]
trigger9 = stateno = 11501
trigger9 = movecontact = 1 && time = [10,20]
trigger10 = stateno = 11502
trigger10 = movecontact = 1 && time = [13,30]
trigger11 = stateno = 11503
trigger11 = movecontact = 1 && time = [8,20]
trigger12 = stateno = 11504
trigger12 = movecontact = 1 && time = [15,30]
trigger13 = stateno = 11505
trigger13 = movecontact = 1 && time = [8,30]
trigger14 = stateno = 11506
trigger14 = movecontact = 1 && time = [15,50]
trigger15 = stateno = 11600
trigger15 = movecontact = 1 && time = [17,40]
trigger16 = stateno = 11615
trigger16 = movecontact = 1
trigger17 = stateno = 290 && movecontact = 1
trigger18 = stateno = 295 && movecontact = 1

; 1300 Shala! Minute spike_B
[State -1]
type = ChangeState
value = 1300 - (var(59) = 1 && p2movetype = H && p2statetype = S && stateno != 301)*987
triggerall = !var(50)
triggerall = command = "Minute_spike_B"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 11500
trigger8= movecontact = 1 && time = [12,30]
trigger9 = stateno = 11501
trigger9 = movecontact = 1 && time = [10,20]
trigger10 = stateno = 11502
trigger10 = movecontact = 1 && time = [13,30]
trigger11 = stateno = 11503
trigger11 = movecontact = 1 && time = [8,20]
trigger12 = stateno = 11504
trigger12 = movecontact = 1 && time = [15,30]
trigger13 = stateno = 11505
trigger13 = movecontact = 1 && time = [8,30]
trigger14 = stateno = 11506
trigger14 = movecontact = 1 && time = [15,50]
trigger15 = stateno = 11600
trigger15 = movecontact = 1 && time = [17,40]
trigger16 = stateno = 11615
trigger16 = movecontact = 1
trigger17 = stateno = 290 && movecontact = 1
trigger18 = stateno = 295 && movecontact = 1

[State -1]
type = ChangeState
value = 1200
triggerall = !var(50)
triggerall = command = "Phase_X"
triggerall = statetype != A
triggerall = statetype != L
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 11500
trigger8= movecontact = 1 && time = [12,30]
trigger9 = stateno = 11501
trigger9 = movecontact = 1 && time = [10,20]
trigger10 = stateno = 11502
trigger10 = movecontact = 1 && time = [13,30]
trigger11 = stateno = 11503
trigger11 = movecontact = 1 && time = [8,20]
trigger12 = stateno = 11504
trigger12 = movecontact = 1 && time = [15,30]
trigger13 = stateno = 11505
trigger13 = movecontact = 1 && time = [8,30]
trigger14 = stateno = 11506
trigger14 = movecontact = 1 && time = [15,50]
trigger15 = stateno = 11600
trigger15 = movecontact = 1 && time = [17,40]
trigger16 = stateno = 11615
trigger16 = movecontact = 1
trigger17 = stateno = 290 && movecontact = 1
trigger18 = stateno = 295 && movecontact = 1

[State -1]
type = ChangeState
value = 1202
triggerall = !var(50)
triggerall = command = "Phase_Y"
triggerall = statetype != A
triggerall = statetype != L
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 11500
trigger8= movecontact = 1 && time = [12,30]
trigger9 = stateno = 11501
trigger9 = movecontact = 1 && time = [10,20]
trigger10 = stateno = 11502
trigger10 = movecontact = 1 && time = [13,30]
trigger11 = stateno = 11503
trigger11 = movecontact = 1 && time = [8,20]
trigger12 = stateno = 11504
trigger12 = movecontact = 1 && time = [15,30]
trigger13 = stateno = 11505
trigger13 = movecontact = 1 && time = [8,30]
trigger14 = stateno = 11506
trigger14 = movecontact = 1 && time = [15,50]
trigger15 = stateno = 11600
trigger15 = movecontact = 1 && time = [17,40]
trigger16 = stateno = 11615
trigger16 = movecontact = 1
trigger17 = stateno = 290 && movecontact = 1
trigger18 = stateno = 295 && movecontact = 1

; Aerial Shala B
[State -1]
type = ChangeState
value = 1302 ; aerial minute spike
triggerall = !Var(59); hide AI
triggerall = command = "Minute_spike_B"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 314 || (stateno = [620,650])
trigger2 = movecontact = 1
trigger3 = stateno = 1505

; 1300 Shala! D
[State -1]
type = ChangeState
value = 1305
triggerall = !Var(59); hide AI
triggerall = command = "Minute_spike_D"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 11500
trigger8= movecontact = 1 && time = [12,30]
trigger9 = stateno = 11501
trigger9 = movecontact = 1 && time = [10,20]
trigger10 = stateno = 11502
trigger10 = movecontact = 1 && time = [13,30]
trigger11 = stateno = 11503
trigger11 = movecontact = 1 && time = [8,20]
trigger12 = stateno = 11504
trigger12 = movecontact = 1 && time = [15,30]
trigger13 = stateno = 11505
trigger13 = movecontact = 1 && time = [8,30]
trigger14 = stateno = 11506
trigger14 = movecontact = 1 && time = [15,50]
trigger15 = stateno = 11600
trigger15 = movecontact = 1 && time = [17,40]
trigger16 = stateno = 11615
trigger16 = movecontact = 1
trigger17 = stateno = 290 && movecontact = 1
trigger18 = stateno = 295 && movecontact = 1

; Aerial Shala D
[State -1]
type = ChangeState
value = 1307
triggerall = !Var(59); hide AI
triggerall = command = "Minute_spike_D"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 314 || (stateno = [620,650])
trigger2 = movecontact = 1
trigger3 = stateno = 1505

[State -1]
type = ChangeState
value = 1307
triggerall = Var(59) = 1; hide AI
triggerall = var(8) = 0
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = time >= 0
trigger1 = p2bodydist x <= 10
trigger1 = p2bodydist y >= -110
trigger2 = movecontact = 1
trigger2 = stateno = 1505

; 1700 Black out
[State -1]
type = ChangeState
value = 1700 - (var(59) = 1 && p2movetype = H)*400
triggerall = command = "Blackout_B"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger3 = !Var(59); hide AI
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 11500
trigger8= movecontact = 1 && time = [12,30]
trigger9 = stateno = 11501
trigger9 = movecontact = 1 && time = [10,20]
trigger10 = stateno = 11502
trigger10 = movecontact = 1 && time = [13,30]
trigger11 = stateno = 11503
trigger11 = movecontact = 1 && time = [8,20]
trigger12 = stateno = 11504
trigger12 = movecontact = 1 && time = [15,30]
trigger13 = stateno = 11505
trigger13 = movecontact = 1 && time = [8,30]
trigger14 = stateno = 11506
trigger14 = movecontact = 1 && time = [15,50]
trigger15 = stateno = 11600
trigger15 = movecontact = 1 && time = [17,40]
trigger16 = stateno = 11615
trigger16 = movecontact = 1
trigger17 = stateno = 290 && movecontact = 1
trigger18 = stateno = 295 && movecontact = 1

;1710 Black out D
[State -1]
type = ChangeState
value = 1710  - (var(59) = 1 && p2movetype = H)*410
triggerall = command = "Blackout_D"
triggerall = statetype != A
triggerall = !Var(59); hide AI
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 11500
trigger8= movecontact = 1 && time = [12,30]
trigger9 = stateno = 11501
trigger9 = movecontact = 1 && time = [10,20]
trigger10 = stateno = 11502
trigger10 = movecontact = 1 && time = [13,30]
trigger11 = stateno = 11503
trigger11 = movecontact = 1 && time = [8,20]
trigger12 = stateno = 11504
trigger12 = movecontact = 1 && time = [15,30]
trigger13 = stateno = 11505
trigger13 = movecontact = 1 && time = [8,30]
trigger14 = stateno = 11506
trigger14 = movecontact = 1 && time = [15,50]
trigger15 = stateno = 11600
trigger15 = movecontact = 1 && time = [17,40]
trigger16 = stateno = 11615
trigger16 = movecontact = 1
trigger17 = stateno = 290 && movecontact = 1
trigger18 = stateno = 295 && movecontact = 1

; eine trigger A
[State -1]
type = ChangeState
value = 1000
triggerall = !Var(59)
triggerall = command = "Eine_Trigger_A"
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 11500
trigger8= movecontact = 1 && time = [12,30]
trigger9 = stateno = 11501
trigger9 = movecontact = 1 && time = [10,20]
trigger10 = stateno = 11502
trigger10 = movecontact = 1 && time = [13,30]
trigger11 = stateno = 11503
trigger11 = movecontact = 1 && time = [8,20]
trigger12 = stateno = 11504
trigger12 = movecontact = 1 && time = [15,30]
trigger13 = stateno = 11505
trigger13 = movecontact = 1 && time = [8,30]
trigger14 = stateno = 11506
trigger14 = movecontact = 1 && time = [15,50]
trigger15 = stateno = 11600
trigger15 = movecontact = 1 && time = [17,40]
trigger16 = stateno = 11615
trigger16 = movecontact = 1
trigger17 = stateno = 290 && movecontact = 1
trigger18 = stateno = 295 && movecontact = 1

; eine trigger C
[State -1]
type = ChangeState
value = 1050
triggerall = !Var(50); AI focus
triggerall = command = "Eine_Trigger_C"
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 11500
trigger8= movecontact = 1 && time = [12,30]
trigger9 = stateno = 11501
trigger9 = movecontact = 1 && time = [10,20]
trigger10 = stateno = 11502
trigger10 = movecontact = 1 && time = [13,30]
trigger11 = stateno = 11503
trigger11 = movecontact = 1 && time = [8,20]
trigger12 = stateno = 11504
trigger12 = movecontact = 1 && time = [15,30]
trigger13 = stateno = 11505
trigger13 = movecontact = 1 && time = [8,30]
trigger14 = stateno = 11506
trigger14 = movecontact = 1 && time = [15,50]
trigger15 = stateno = 11600
trigger15 = movecontact = 1 && time = [17,40]
trigger16 = stateno = 11615
trigger16 = movecontact = 1
trigger17 = stateno = 290 && movecontact = 1
trigger18 = stateno = 295 && movecontact = 1

;===================================
; Throws
;===================================
;;Throw Attack Z
;[State -1]
;type = ChangeState
;value = 390 + (var(59) = 1 && BackEdgeDist < 140)*10
;triggerall = P2bodydist X <= 2
;triggerall = p2movetype != H && p2statetype != A
;triggerall = statetype = S && ctrl
;triggerall = p2stateno != 5120
;triggerall = stateno != 100
;trigger1 = command = "holdfwd" && command = "z"
;trigger2 = var(59) >= 1
;trigger2 = Random <= 100
;trigger2 = (p2bodydist X <= 2) && (p2stateno < 100)
;trigger3 = var(50) = 1 && Random <= 800

;Throw Attack C
[State -1]
type = ChangeState
value = 370 + (var(59) = 1 && BackEdgeDist < 140)*10
triggerall = P2bodydist X <= 2
triggerall = p2movetype != H && p2statetype != A
triggerall = statetype = S && ctrl
triggerall = p2stateno != 5120
triggerall = stateno != 100
trigger1 = command = "holdfwd" && command = "D"
trigger2 = var(59) >= 1
trigger2 = Random <= 100
trigger2 = (p2bodydist X <= 2) && (p2stateno < 100)
trigger3 = var(50) = 1 && Random <= 800

;Throw Attack D
[State -1]
type = ChangeState
value = 380
triggerall = P2bodydist X <= 2
triggerall = p2movetype != H && p2statetype != A
triggerall = statetype = S && ctrl
triggerall = p2stateno != 5120
triggerall = stateno != 100
trigger1 = command = "holdfwd" && command = "B"
trigger2 = var(59) >= 1
trigger2 = Random <= 100
trigger2 = (p2bodydist X <= 2) && (p2stateno < 100)

;========================================
; misc moves
;========================================

; 113 during guard roll back cancel
[State -1]
type = ChangeState
value = 113
triggerall = !Var(59)
triggerall = command = "A" && command = "C"
triggerall = command = "holdback"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 152

; 112 during guard roll fwd cancel
[State -1]
type = ChangeState
value = 112
triggerall = !Var(59)
triggerall = command = "A" && command = "C"
triggerall = command != "holdback"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 152

; 110 dodge forward
[State -1]
type = ChangeState
value = 110
trigger1 = command = "z"
trigger1 = command = "holdfwd"
trigger1 = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = command = "A" && command = "C"
trigger2 = command != "holdback"
trigger2 = statetype = S
trigger2 = ctrl = 1

; 111 dodge forward attack
[State -1]
type = ChangeState
value = 111
triggerall = !var(59) ; hide AI
triggerall = stateno = 110
trigger1 = command = "A"
trigger2 = command = "B"
trigger3 = command = "C"
trigger4 = command = "D"

; 360 dodge backward KOF99
[State -1]
type = ChangeState
value = 355
trigger1 = command = "z"
trigger1 = command = "holdback"
trigger1 = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------
; standing CD attack
[State -1]
type = ChangeState
value = 240
triggerall = !var(59)
triggerall = (command = "CD") && (command != "holddown")
triggerall = statetype != A
triggerall = statetype = S
trigger1 = ctrl = 1

; CD during guard cancel
[State -1]
type = ChangeState
value = 321
triggerall = (command = "CD") && (command != "holddown")
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 152

; jump CD
[State -1]
type = ChangeState
value = 650
triggerall = !var(59)
triggerall = command = "CD"
triggerall = statetype = A
trigger1 = ctrl = 1

; FWD_A 1inch
[State -1]
type = ChangeState
value = 300 + (var(59) = 1 && p2statetype = C && p2bodydist X <= 50)*10
triggerall = command = "holdfwd" && command = "C"
trigger1 = statetype = S
trigger1 = ctrl = 1

; FWD_A 1inch Type 2
[State -1]
type = ChangeState
value = 301
triggerall = !var(59)
triggerall = command = "holdfwd" && command = "C"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [250,260]) || (stateno = [400,430])
trigger2 = time = [2,10]
trigger3 = stateno = [270,280]
trigger3 = movecontact = 1 && time <= 18
trigger4 = stateno = 270
trigger4 = P2bodydist X <= 18
trigger4 = time = [4,10]
trigger5 = stateno = 111
trigger5 = var(6) != 0
trigger5 = movecontact = 1

; FWD + D
[State -1]
type = ChangeState
value = 310
triggerall = command = "holdfwd" && command = "B"
triggerall = !Var(59); hide AI
trigger1 = statetype = S
trigger1 = ctrl = 1

; FWD + D cancelled
[State -1]
type = ChangeState
value = 313
triggerall = command = "holdfwd" && command = "B"
triggerall = statetype != A
triggerall = !Var(59); hide AI
trigger1 = ctrl = 1
trigger2 = (stateno = [250,260]) || (stateno = [400,430])
trigger2 = time = [2,10]
trigger3 = stateno = [270,280]
trigger3 = movecontact = 1 && time <= 18
trigger4 = stateno = 270
trigger4 = P2bodydist X <= 18
trigger4 = time = [4,10]
trigger5 = stateno = 111
trigger5 = var(6) != 0
trigger5 = movecontact = 1

; FWD + B スナイパーサイド
[State -1]
type = ChangeState
value = 11610
triggerall = command = "holdfwd" && command = "A"
triggerall = !Var(59); hide AI
trigger1 = statetype = S
trigger1 = ctrl = 1

; FWD + B cancelled スナイパーサイド　キャンセル版
[State -1]
type = ChangeState
value = 11615
triggerall = command = "holdfwd" && command = "A"
triggerall = statetype != A
triggerall = !Var(59); hide AI
trigger1 = ctrl = 1
trigger2 = (stateno = [250,260]) || (stateno = [400,430])
trigger2 = time = [2,10]
trigger3 = stateno = [270,280]
trigger3 = movecontact = 1 && time <= 18
trigger4 = stateno = 270
trigger4 = P2bodydist X <= 18
trigger4 = time = [4,10]
trigger5 = stateno = 111
trigger5 = var(6) != 0
trigger5 = movecontact = 1

[State -1]
type = ChangeState
value = 290
triggerall = command = "holdback" && command = "A"
triggerall = statetype != A
triggerall = !Var(59); hide AI
trigger1 = ctrl = 1
trigger2 = (stateno = [250,260]) || (stateno = [400,430])
trigger2 = time = [2,10]
trigger3 = stateno = [270,280]
trigger3 = movecontact = 1 && time <= 18
trigger4 = stateno = 270
trigger4 = P2bodydist X <= 18
trigger4 = time = [4,10]
trigger5 = stateno = 111
trigger5 = var(6) != 0
trigger5 = movecontact = 1

;========================================
; スタイリッシュアート
;========================================
; スタイリッシュアートＡ
[state -1]
type = changestate
value = 11500
triggerall = command = "holdback" && command = "D"
trigger1 = statetype = S
trigger1 = ctrl = 1

; スタイリッシュアートＢ
[state -1]
type = changestate
value = 11503
triggerall = command = "holdback" && command = "A"
trigger1 = statetype = S
trigger1 = ctrl = 1

;--------------------------------------------------------------------------------------
; Standing close attacks

; Stand_A (close)
[State -1]
type = ChangeState
value = 260
triggerall = !Var(59); hide AI
triggerall = command = "A"
triggerall = p2bodydist x <= 18
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = time >= 6
trigger2 = movecontact = 1
trigger3 = stateno = 260
trigger3 = time >= 7
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = time >= 6
trigger4 = movecontact = 1
trigger5 = stateno = 410
trigger5 = time >= 7
trigger5 = movecontact = 1

; Stand_B (close)
[State -1]
type = ChangeState
value = 280
triggerall = command = "B"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = p2bodydist x <= 18
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = time >= 6
trigger2 = movecontact = 1
trigger3 = stateno = 260
trigger3 = time >= 7
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger4 = time >= 6
trigger5 = stateno = 410
trigger5 = time >= 7
trigger5 = movecontact = 1

; Stand_C (close)
[State -1]
type = ChangeState
value = 250
triggerall = !Var(59); hide AI
triggerall = command = "C"
trigger1 = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1

; Stand_D (close)
[State -1]
type = ChangeState
value = 270
triggerall = !Var(50); AI focus
triggerall = command = "D"
triggerall = p2bodydist x <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1


;----------------------------------------------------
; Standing (far) attacks

; Stand_A (far)
[State -1]
type = ChangeState
value = 210
triggerall = command = "A"
triggerall = p2bodydist x > 18
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time >= 8
trigger3 = stateno = 250
trigger3 = movecontact = 1
trigger3 = time >= 8
trigger4 = stateno = 260
trigger4 = time >= 7
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger5 = time >= 6
trigger6 = stateno = 410
trigger6 = time >= 7
trigger6 = movecontact = 1

; Stand_B (far)
[State -1]
type = ChangeState
value = 230
triggerall = !Var(59); hide AI
triggerall = command = "B"
triggerall = p2bodydist x > 18
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time >= 8
trigger3 = stateno = 250
trigger3 = movecontact = 1
trigger3 = time >= 8
trigger4 = stateno = 260
trigger4 = time >= 7
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger5 = time >= 6
trigger6 = stateno = 410
trigger6 = time >= 7
trigger6 = movecontact = 1

; Stand_C (far)
[State -1]
type = ChangeState
value = 200 - (var(59) = 1 && p2statetype = L)*180 ; = 40
triggerall = !Var(50); AI focus
triggerall = command = "C"
triggerall = P2bodydist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1

; Stand_D (far)
[State -1]
type = ChangeState
triggerall = !Var(50); AI focus
; mini AI setup
; AI use change to Stand A when P2 lie down
; AI use backhop if too close
value = 220 - (var(59) = 1 && p2statetype = L)*30 - (var(59) = 1 && p2statetype != L && p2bodydist X <= 40)*125
triggerall = !Var(58)
triggerall = command = "D"
trigger1 = statetype = S
trigger1 = ctrl = 1

;------------------------------------------------
; Crouching attacks

; Crouching A
[State -1]
type = ChangeState
value = 410
triggerall = !Var(50); AI focus
triggerall = command = "holddown" && command = "A"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time >= 8
trigger3 = stateno = 410
trigger3 = (time >= 7) || movecontact

; Crouching B
[State -1]
type = ChangeState
value = 430
triggerall = !Var(50); AI focus
triggerall = command = "holddown" && command = "B"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = (time >= 8) || movecontact
trigger2 = p2bodydist X >= 0
trigger3 = stateno = 400
trigger3 = time >= 8
trigger4 = var(59)
trigger4 = hitcount = 1
trigger4 = stateno = 410 && movecontact

; Crouching C
[State -1]
type = ChangeState
value = 400
triggerall = !Var(59); hide AI
triggerall = command = "holddown" && command = "C"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = movecontact = 1
trigger3 = StateNo = 400 && movecontact = 1

; Crouching D
[State -1]
type = ChangeState
value = 420
triggerall = !Var(59); hide AI
triggerall = command = "holddown" && command = "D"
triggerall = statetype = C
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 610
triggerall = !Var(59); hide AI
trigger1 = command = "A"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping light kick
[State -1]
type = ChangeState
value = 630
triggerall = var(59) != 1
trigger1 = command = "B"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 630
triggerall = var(59) = 1
triggerall = var(8) != 0
trigger1 = command = "B"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = RoundState = 2
triggerall = statetype = A
triggerall = p2statetype != A
triggerall = stateno != [105,106]
Trigger1 = ctrl
trigger1 = p2bodydist X <= 39
trigger1 = p2bodydist Y > -75
trigger1 = vel Y > 0
trigger1 = !inguarddist
Trigger2 = ctrl
trigger2 = p2bodydist X <= 40
trigger2 = p2stateno = 5120
trigger2 = vel Y = 0
trigger2 = !inguarddist
value = ifelse(random <= 500,650,630)

; Jumping hard punch
[State -1]
type = ChangeState
value = 600
triggerall = var(59) != 1
trigger1 = command = "C"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping hard kick
[State -1]
type = ChangeState
value = 620
triggerall = var(59) != 1
trigger1 = command = "D"
trigger1 = statetype = A
trigger1 = ctrl = 1


;=======================================
; Taunt
[State -1]
type = ChangeState
value = 195
triggerall = !Var(50); AI focus
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = stateno != 195
trigger1 = ctrl = 1

; Run Forward
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1
trigger1 = stateno != 100 && prevstateno != 100
trigger1 = stateno != 10044 && prevstateno != 10044

[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = RoundState = 2
triggerall = stateno != 100
trigger1 = statetype != A
trigger1 = p2bodydist X >= 100
trigger1 = p2statetype != A
trigger1 = p2statetype != L || p2stateno = [5110,5120]
trigger1 = !inguarddist || p2movetype != A
trigger1 = ctrl && random <= 150
value = 100

; Run Backwards
[State -1]
type = ChangeState
value = 105 + (var(59) = 1 && BackEdgeDist <= 165)*9939
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

[State -1]
type = Helper
trigger1 = NumHelper(9999) = 0
id = 9999
pos = 0, 150
stateno = 9999
pausemovetime = 999999
Name = "AI switch - Thanks to 'ANMC' && 'Bagaliao'"
keyctrl = 1
persistent = 0

[State -1]
type = ChangeState
value = 5201
triggerall = command = "recovery"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger1 = pos y > -30
trigger1 = vel y > 0 && vel y < 9

[State -1]
type = ChangeState
value = 5201
triggerall = var(59) = 1
triggerall = alive = 1
triggerall = canrecover
trigger1 = stateno = 5050
trigger1 = pos y > -30
trigger1 = vel y > 0 && vel y < 9
trigger1 = random < 333






;=======================================
; AI plus, most of AI is in CNS
;=======================================

; Crawbite C (anti air)
[State -1]
type = ChangeState
value = 1503 - (p2stateno >= 2000 && p2movetype = A)*1373 ;130
triggerall = var(59) >= 1 && ctrl
triggerall = statetype != A
triggerall = P2bodydist x = (10,50)
triggerall = FrontEdgeDist > 50
triggerall = P2movetype != H ;&& (P2StateNo != [120,155]) && (P2StateNo != 0)
trigger1 = P2bodydist Y = (-58,-40)
trigger1 = P2statetype = A; && p2movetype = A
trigger2 = (PrevStateNo = [151,153]) || (PrevStateNo = 140)
trigger2 = p2stateno < 2000

; Crawbite A (anti attack)
[State -1]
type = ChangeState
value = 1500 - (p2stateno >= 2000 && p2movetype = A)*1370 ;130
triggerall = var(59) >= 1 && ctrl
triggerall = (Random >= 100) || (var(50) = 1)
triggerall = statetype != A
triggerall = P2bodydist X = (5,50)
triggerall = FrontEdgeDist > 50
triggerall = P2movetype = A
trigger1 = P2statetype != A
trigger2 = P2dist Y = (-50,-40)
trigger2 = P2statetype = A
trigger3 = stateno = 5120
trigger3 = AnimTIme = 0
trigger2 = (PrevStateNo = [151,153]) || (PrevStateNo = 140)

; Minute spike B
[State -1]
type = ChangeState
value = 1300
triggerall = var(59) >= 1 && ctrl
triggerall = statetype != A && p2statetype != A
triggerall = p2stateno <= 2000
triggerall = Random <= 700
trigger1 = P2stateno = (105,107)
trigger1 = P2bodydist X = (25,35)
trigger2 = P2stateno = 100
trigger2 = P2bodydist X = (30,65)
trigger3 = P2movetype = A
trigger3 = P2bodydist X = (35,80)
trigger4 = p2bodydist X = [112,117]
trigger4 = p2stateno = 20

; Crouch C
[State -1]
type = ChangeState
value = 420 - (p2statetype = S)*150
trigger1 = PrevStateNo != 5120 && P2statetype != L
trigger1 = var(59) >= 1 && ctrl && statetype != A
trigger1 = p2statetype != A
trigger1 = P2bodydist X = (0,11)  ; (0,15)
trigger1 = p2stateno != 5120

; Standing C
[State -1]
type = ChangeState
value = 270 + (P2stateno < 100 && Random <= 50)*10
triggerall = var(59) >= 1 && ctrl = 1 && statetype != A
triggerall = p2stateno != 5120 && p2movetype != A
trigger1 = P2statetype = S || P2Statetype = C
trigger1 = P2bodydist X <= 3 ;2
trigger1 = !inguarddist
trigger2 = P2statetype = S
trigger2 = P2bodydist X <= 15
trigger2 = !inguarddist

; Crouching  C - part 2
[State -1]
type = ChangeState
value = 420
trigger1 = PrevStateNo != 5120
trigger1 = var(59) >= 1 && ctrl
trigger1 = statetype != A
trigger1 = p2statetype != L && p2statetype != A
trigger1 = P2bodydist X <= 10
trigger1 = !inguarddist

; crouching B
; 409 is a temporary state for stand to crouch animation for AI use.
; since this is a guard reversal, no need to go through the delay.
[State -1]
type = ChangeState
value = 410
triggerall = var(59) = 1 && ctrl
triggerall = PrevStateNo != 5120
triggerall = P2StateType != C && statetype != A && P2Statetype != L
triggerall = (P2bodydist X <= 35) && (P2bodydist Y = [-10,0])
triggerall = (P2MoveType != A) || (PrevStateNo = [151,153]) || (PrevStateNo = 140)
triggerall = P2life != 0
trigger1 = !var(50)
trigger2 = var(50)
trigger2 = Random = [0,500]

; stop AI walk
[State -1]
type = AssertSpecial
trigger1 = Var(59)
flag = NoWalk

[state -1]
type = ChangeState
triggerall = var(59) = 1 && ctrl
trigger1 = P2bodyDist X != [18,50]
trigger1 = RoundState != 3
trigger1 = Anim != 5
trigger1 = StateNo = 0
trigger1 = Pos Y = 0
value = 2044 ; AI walk loop state

; jumps
[State -1, AI jump]
type = ChangeState
value = 40 ; see CNS
triggerall = (stateno != (40,52)) && (Anim != (40,52))
triggerall = (stateno != 2041) && (stateno != 4044)
triggerall = statetype != A && p2statetype != A && p2movetype != H
triggerall = !var(58)
triggerall = var(59) = 1 && ctrl
triggerall = frontedgebodydist >= 40
trigger1 = p2stateno = 5120
trigger1 = P2bodydist X >= 60
trigger1 = random <= 150
trigger2 = P2bodydist X >= 50
trigger2 = p2statetype = L
trigger2 = random <= 50

type = ChangeState
triggerall = var(59) = 1
triggerall = RoundState = 2
triggerall = statetype != A
trigger1 = p2bodydist X = [50,100]
trigger1 = random <= 80 && (stateno = 100)
trigger1 = p2statetype !=L
trigger1 = p2movetype !=A
trigger1 = !inguarddist
trigger2 = ctrl && random = [600,690]
trigger2 = p2bodydist X = [-10,65]
trigger2 = p2stateno = 5120
value = 40

; jump C
[State -1]
type = ChangeState
value = 620 +(p2stateno = 5120 && p2bodydist X >= 68)*10
triggerall = statetype = A
triggerall = var(59) = 1 && ctrl
trigger1 = p2bodydist x = [-20,18]
trigger1 = p2statetype = S || p2statetype = C
trigger2 = p2stateno = 5120

; jump CD
[State -1]
type = ChangeState
value = 630
triggerall = statetype = A
triggerall = var(59) = 1 && ctrl
triggerall= p2statetype = S
trigger1 = p2bodydist x = [19,38]
trigger1 = vel Y > 0
trigger1 = !inguarddist
trigger2 = p2bodydist X = [40,90]
trigger2 = vel Y > 0
trigger2 = !inguarddist
trigger3 = (vel x = 0) && (vel Y > 0)
trigger3 = !inguarddist

; jump B
[State -1]
type = ChangeState
value = 620 + (P2statetype != A && Pos Y = [-65,-48])*40
triggerall = statetype = A
triggerall = var(59) = 1 && ctrl
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = p2bodydist x = [0,41]
trigger1 = vel x > 0
trigger1 = !inguarddist
;trigger1 = Enemy, numproj = 0 ; mugen 414 2001 only

; jump D
[State -1]
type = ChangeState
value = 630
triggerall = statetype = A
triggerall = var(59) = 1 && ctrl
trigger1 = (p2bodydist x = [42,55]) && (p2statetype != S)
trigger2 = p2bodydist x >= 30 && vel Y > 0

; Minute spike D
[State -1]
type = ChangeState
value = 1305
triggerall = var(59) >= 1 && ctrl
triggerall = statetype != A
triggerall = P2bodydist X = (36,60)
trigger1 = P2stateno = (105,106)
trigger2 = P2stateno = 40
trigger2 = time < 2

; hop back
[State -1]
type = ChangeState
value = 105 + (BackEdgeDist < 125)*9939
triggerall = var(59) >= 1 && ctrl
triggerall = statetype != A
triggerall = BackEdgeDist >= 100 && (PrevStateNo != [105,107])
triggerall = P2movetype = I
trigger1 = FrontEdgeBodyDist <= 26
trigger1 = Random <= 100
trigger2 = P2bodydist X = [0,50]
trigger2 = P2StateNo = 5120
trigger2 = Random < 80
trigger3 = P2bodydist X = [30,40]
trigger3 = Random < 100

; Eine Trigger
[State -1, AIEineTrigger1]
type = ChangeState
value = 1000
triggerall = var(59) >= 1 && ctrl && (statetype != A)
triggerall = FrontEdgeBodyDist >= 26
trigger1 = P2bodydist X = (34,175)
trigger1 = P2movetype = I ; P2 idle
trigger1 = P2statetype != A
trigger1 = random < 100
trigger1 = p2statetype = L || p2stateno < 1200

; combo eine trigger
[state -1]
type = ChangeState
value = 1000
triggerall = var(59) && ctrl = 0
triggerall = movecontact
triggerall = (hitcount >= 2) || p2bodydist X >= 5
trigger1 = stateno = 400
trigger2 = stateno = 410

; 3250 SDM chaindriver unhide AI
[State -1]
type = ChangeState
value = 3250
trigger1 = statetype != A && ctrl && power >= 3000
trigger1 = p2statetype != A
trigger1 = !var(50); memory
trigger1 = var(59) = 1 ; unhide AI
trigger1 = random < 111 && p2life > 500
trigger1 = p2bodydist X = [178,244] ; farthest possible is 255
trigger1 = p2movetype = A

; AI memory disable SDM chain drive if missed
[state -1, memory SDM]
type = VarSet
trigger1 = Var(59) = 1
trigger1 = PrevStateNo = 3250
trigger1 = MoveType = H ; when countered
trigger1 = time = 0
ignorehitpause = 1
var(50) = 1 ; memory AI


;=======================================
; AI anti boss
;=======================================

; blackout
[State -1, 581]
type = ChangeState
value = 1710
triggerall = var(58) = 1
triggerall = statetype != A && ctrl
trigger1 = p2movetype = I
trigger1 = p2bodydist  X >= 205
trigger1 = random <= 1000

[State -1]
type = ChangeState
value = 3250 ; SDM chain
triggerall = var(58) = 1
triggerall = statetype != A && ctrl && power >= 3000
trigger1 = p2stateno = 900 || p2stateno = 950
trigger1 = p2bodydist X > 43

; defense up
[State -1, 58571]
type = ChangeState
value = 120 + (p2statetype = C)*11
trigger1 = Var(58) = 1
trigger1 = RoundState = 2
trigger1 = alive = 1 && ctrl
trigger1 = p2movetype = A
trigger1 = p2statetype != C
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1, 58571]
type = ChangeState
value = 120
triggerall = Var(59) = 1
triggerall = RoundState = 2
triggerall = alive = 1 && ctrl
trigger1 = p2movetype = A
trigger1 = p2statetype != C
trigger1 = statetype != A
trigger1 = inguarddist
trigger2 = enemy,numproj||enemy(numenemy>1),numproj
trigger2 = statetype != A
trigger2 = inguarddist

[State-1]
type = ChangeState
value = 105 ; hop back
triggerall = var(58) = 1
triggerall = PrevStateNo != [105,107]
triggerall = statetype != A && ctrl
trigger1 = random <= 200
trigger1 = P2bodydist X = (195,209)
trigger2 = backedgedist > 60
trigger2 = P2bodydist X < 80
trigger2 = p2stateno = 5120; get up

[State -1]
type = ChangeState
value = 1503
trigger1 = var(58) = 1
trigger1 = statetype != A && ctrl
trigger1 = p2stateno = 100
trigger1 = p2bodydist X < 85

