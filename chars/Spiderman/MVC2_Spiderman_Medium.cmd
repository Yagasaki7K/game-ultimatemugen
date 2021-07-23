; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10

;--------|Ai Activation|------------------------------------------
[Command] 
name = "cpu01" 
command = F, D,DF, F,x,x,x,x,x 
time = 1 

[Command] 
name = "cpu02" 
command = F, D,DF, F,x,x,x,x,y 
time = 1 

[Command] 
name = "cpu03" 
command = F,x,x,x,y,x 
time = 1 

[Command] 
name = "cpu04" 
command = F, D,DF, F,x,x,y,x,x 
time = 1 

[Command] 
name = "cpu05" 
command = F, D,DF, F,x,y,x,x,x 
time = 1 

[Command] 
name = "cpu06" 
command = F, D,DF, F,y,x,x,x,x 
time = 1 

[Command] 
name = "cpu07" 
command = F, D,DF, F,y,x,x,x,y 
time = 1 

[Command] 
name = "cpu08" 
command = F, D,DF, F,y,x,x,y,x 
time = 1 

[Command] 
name = "cpu09" 
command = F, D,DF, F,y,x,y,x,x 
time = 1 

[Command] 
name = "cpu10" 
command = F, D,DF, F,y,y,x,x,x 
time = 1

[Command] 
name = "cpu11" 
command = F, D,DF, F,a,x,x,x,x 
time = 1 

[Command] 
name = "cpu12" 
command = F, D,DF, F,a,x,x,x,y 
time = 1 

[Command] 
name = "cpu13" 
command = F, D,DF, F,a,x,x,y,x 
time = 1 

[Command] 
name = "cpu14" 
command = F, D,DF, F,a,x,y,x,x 
time = 1 

[Command] 
name = "cpu15" 
command = F, D,DF, F,a,y,x,x,x 
time = 1 

[Command] 
name = "cpu16" 
command = F, D,DF, F,y,x,x,x,a 
time = 1 

[Command]
name = "cpu17" 
command = F, D,DF, F,y,x,x,a,x 
time = 1 

[Command] 
name = "cpu18" 
command = F, D,DF, F,y,x,a,x,x 
time = 1 

[Command] 
name = "cpu19" 
command = F, D,DF, F,y,a,x,x,x 
time = 1 

[Command] 
name = "cpu20" 
command = F, D,DF, F,a,a,x,x,x 
time = 1

[Command] 
name = "cpu21" 
command = F, D,DF, F,b,x,x,x,x 
time = 1 

[Command] 
name = "cpu22" 
command = F, D,DF, F,b,x,x,x,y 
time = 1 

[Command] 
name = "cpu23" 
command = F, D,DF, F,b,x,x,y,x 
time = 1 

[Command] 
name = "cpu24" 
command = F, D,DF, F,b,x,y,x,x 
time = 1 

[Command] 
name = "cpu25" 
command = F, D,DF, F,b,y,x,x,x 
time = 1 

[Command] 
name = "cpu26" 
command = F, D,DF, F,y,x,x,x,b 
time = 1 

[Command] 
name = "cpu27" 
command = F, D,DF, F,y,x,x,b,x 
time = 1 

[Command] 
name = "cpu28" 
command = F, D,DF, F,y,x,b,x,x 
time = 1 

[Command] 
name = "cpu29" 
command = F, D,DF, F,y,b,x,x,x 
time = 1 

[Command] 
name = "cpu30" 
command = F, D,DF, F,b,b,x,x,x 
time = 1


[Command] 
name = "cpu31" 
command = F, D,DF, F,b,x,x,x,x 
time = 1 

[Command] 
name = "cpu32" 
command = F, D,DF, F,b,x,x,x,y 
time = 1 

[Command] 
name = "cpu33" 
command = F, D,DF, F,b,x,x,y,x 
time = 1 

[Command] 
name = "cpu34" 
command = F, D,DF, F,b,x,y,x,x 
time = 1 

[Command] 
name = "cpu35" 
command = F, D,DF, F,b,y,x,x,x 
time = 1 

[Command] 
name = "cpu36" 
command = F, D,DF, F,y,x,x,x,b 
time = 1 

[Command] 
name = "cpu37" 
command = F, D,DF, F,y,x,x,b,x 
time = 1 

[Command] 
name = "cpu38" 
command = F, D,DF, F,y,x,b,x,x 
time = 1 

[Command] 
name = "cpu39" 
command = F, D,DF, F,y,b,x,x,x 
time = 1 

[Command] 
name = "cpu40" 
command = F, D,DF, F,b,b,x,x,x 
time = 1


[Command] 
name = "cpu41" 
command = F, D,DF, F,b,x,x,x,x 
time = 1 

[Command] 
name = "cpu42" 
command = F, D,DF, F,b,x,x,x,y 
time = 1 

[Command] 
name = "cpu43" 
command = F, D,DF, F,b,x,x,y,x 
time = 1 

[Command] 
name = "cpu44" 
command = F, D,DF, F,b,x,y,x,x 
time = 1 

[Command] 
name = "cpu45" 
command = F, D,DF, F,b,y,x,x,x 
time = 1 

[Command] 
name = "cpu46" 
command = F, D,DF, F,y,x,x,x,b 
time = 1 

[Command] 
name = "cpu47" 
command = F, D,DF, F,y,x,x,b,x 
time = 1 

[Command] 
name = "cpu48" 
command = F, D,DF, F,y,x,b,x,x 
time = 1 

[Command] 
name = "cpu49" 
command = F, D,DF, F,y,b,x,x,x 
time = 1 

[Command] 
name = "cpu50" 
command = F, D,DF, F,b,b,x,x,x 
time = 1

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

;Maximum Spider
[Command]
name = "Maximum Spider"
command = ~D, DF, F, x+y

[Command]
name = "Maximum Spider"
command = ~D, DF, F, z+y

[Command]
name = "Maximum Spider"
command = ~D, DF, F, z+x



;Ultimate Web Throw
[Command]
name = "Crawler Assault"
command = ~D, DB, B, x+y

;Ultimate Web Throw
[Command]
name = "Crawler Assault"
command = ~D, DB, B, z+y

;Ultimate Web Throw
[Command]
name = "Crawler Assault"
command = ~D, DB, B, z+x

;Crawler Assault
[Command]
name = "boxe"
command = ~D, DF, F, a+b

;Crawler Assault
[Command]
name = "boxe"
command = ~D, DF, F, c+b

[Command]
name = "boxe"
command = ~D, DF, F, c+a

;spider sense
[Command]
name = "sense"
command = ~D, DB, B, a+b

;spider sense
[Command]
name = "sense"
command = ~D, DB, B, b+c

;spider sense
[Command]
name = "sense"
command = ~D, DB, B, a+c







[Command]
name = "refill"
command = ~D, DF, F, b+y


[Command]
name = "refill"
command = ~D, DF, F, c+z


[Command]
name = "refill"
command = ~D, DF, F, a+x





;-| Special Motions |------------------------------------------------------
;Spider Sting

[Command]
name = "esquiva"
command =  a+x

[Command]
name = "esquiva"
command =  c+z

[Command]
name = "esquiva"
command =  b+y


[Command]
name = "rasteira"
command =  ~B, F, a

[Command]
name = "rasteira"
command =  ~B, F, b

[Command]
name = "rasteira"
command =  ~B, F, c


[Command]
name = "socoteia"
command =  ~B, F, x

[Command]
name = "socoteia"
command =  ~B, F, y

[Command]
name = "socoteia"
command =  ~B, F, z

[Command]
name = "sho_a"
command = ~D, F, DF, x

;Spider Sting
[Command]
name = "sho_b"
command = ~D, F, DF, y

;Spider Sting
[Command]
name = "sho_c"
command = ~D, F, DF, z


;Web Ball
[Command]
name = "web"
command = ~D, DF, F, x

;Web Ball
[Command]
name = "web"
command = ~D, DF, F, y

;Web Ball
[Command]
name = "web"
command = ~D, DF, F, z





;Spider Sting
[Command]
name = "kikao1"
command = ~D, DF, F, a

;Spider Sting
[Command]
name = "kikao2"
command = ~D, DF, F, b

;Spider Sting
[Command]
name = "kikao3"
command = ~D, DF, F, c




;Web Swing
[Command]
name = "QCB_a"
command = ~D, DB, B, a

;Web Swing
[Command]
name = "QCB_b"
command = ~D, DB, B, b

;Web Swing
[Command]
name = "QCB_c"
command = ~D, DB, B, c


;Web Throw
[Command]
name = "QCB_x"
command = ~F, DF, D, DB, B, x

;Web Throw
[Command]
name = "QCB_y"
command = ~F, DF, D, DB, B, y

;Web Throw
[Command]
name = "QCB_z"
command = ~F, DF, D, DB, B, z


;Web Swing
[Command]
name = "counter"
command = ~D, DB, B, x

;Web Swing
[Command]
name = "counter"
command = ~D, DB, B, y

;Web Swing
[Command]
name = "counter"
command = ~D, DB, B, z

;Flight
;[Command]
;name = "DD_ab"
;command = ~D, D,a+b


;[Command]
;name = "FFx"
;command = F, F, x


;[Command]
;name = "FFy"
;command = F, F, y


;[Command]
;name = "Oiuchi"
;command = $U,a


;[Command]
;name = "Giga Crush"
;command = x+y


;[Command]
;name = "Recharge Power"
;command = y+z


[Command]
name = "Counter"
command = /B,c


[Command]
name = "Super Jump"
command = D,$U



;----|Combo Motions|---------------------------------------


;----|Throw Motions|---------------------------------------
;Throw, F/B + z
;Throw, F/B + c


;[Command]
;name = "Forward Slam"  ;while standing
;command = ~B,F,z


;Toss
;[Command]
;name = "Toss"
;command = ~B,F,y



;----|Basic Motions|---------------------------------------


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
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

;---|Hold Buttons|------------------------

[Command]
name = "holdx"
command = /x
time = 1


[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holds"
command = /s
time = 1

;---|Relase Buttons|------------------------


;---|Press then Release no other key in between|------------------


;--------------

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
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
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================



;-------------------
; Get modified Enemy Y dist
[State -1]
type = VarSet
trigger1 = 1;var(59)
var(8) = floor(P2Dist Y - (abs(EnemyNear, const(size.mid.pos.y)) - abs(const(size.mid.pos.y))))

;-------------------
[State -1]
type = VarSet
trigger1 = 1;var(59)
var(7) = abs(enemynear,const(size.head.pos.y))

;===========================================================================
;===========================================================================
;------|AI Moves|-----------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu01"
trigger2 = command = "cpu02"
trigger3 = command = "cpu03"
trigger4 = command = "cpu04"
trigger5 = command = "cpu05"
trigger6 = command = "cpu06"
trigger7 = command = "cpu07"
trigger8 = command = "cpu08"
trigger9 = command = "cpu09"
trigger10 = command = "cpu10"
var(59) = 1
;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu11"
trigger2 = command = "cpu12"
trigger3 = command = "cpu13"
trigger4 = command = "cpu14"
trigger5 = command = "cpu15"
trigger6 = command = "cpu16"
trigger7 = command = "cpu17"
trigger8 = command = "cpu18"
trigger9 = command = "cpu19"
trigger10 = command = "cpu20"
var(59) = 1

;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu21"
trigger2 = command = "cpu22"
trigger3 = command = "cpu23"
trigger4 = command = "cpu24"
trigger5 = command = "cpu25"
trigger6 = command = "cpu26"
trigger7 = command = "cpu27"
trigger8 = command = "cpu28"
trigger9 = command = "cpu29"
trigger10 = command = "cpu30"
var(59) = 1


;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu31"
trigger2 = command = "cpu32"
trigger3 = command = "cpu33"
trigger4 = command = "cpu34"
trigger5 = command = "cpu35"
trigger6 = command = "cpu36"
trigger7 = command = "cpu37"
trigger8 = command = "cpu38"
trigger9 = command = "cpu39"
trigger10 = command = "cpu40"
var(59) = 1

;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu41"
trigger2 = command = "cpu42"
trigger3 = command = "cpu43"
trigger4 = command = "cpu44"
trigger5 = command = "cpu45"
trigger6 = command = "cpu46"
trigger7 = command = "cpu47"
trigger8 = command = "cpu48"
trigger9 = command = "cpu49"
trigger10 = command = "cpu50"
var(59) = 1



;---------------------------------------------------------------------------

;---------------------------------------------------------------------------



;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;-------------------------------------------------------------------------------
;Guarding states

;---------------------------------------------------------------------------


[State -1,AI Guard]
type = ChangeState
triggerall = var(59) && Numenemy && (stateno != [120,155]); && !var(54)
triggerall =!(enemynear,hitdefattr=SCA,AT)
;triggerall = statetype != A
triggerall = inguarddist && random < 500
trigger1 = ctrl
value = 120


;-------------------------------------
[State -1, Stand Parry]
type = hitoverride
triggerall = var(56) > 1   && random < 500
triggerall = var(59) && roundstate = 2 && statetype = S
trigger1 = 1
attr = SAC, NA, SA, HA, NP, HP, SP, AA, AT, AP, NT,ST,HT
stateno = ifelse(random < 500,130, 7970)
slot = 0
time = ifelse((stateno=[150,153]),6,8)


;-------------------------------------
[State -1, Crouch Parry]
type = hitoverride
triggerall = var(56) > 1  && random < 500
triggerall = var(59) && roundstate = 2 && statetype = C
trigger1 = 1
attr = C,NA, SA, HA, NP, HP, SP, AA, AT, AP,NT,ST,HT
stateno = ifelse(random < 500,131, 7970)
slot = 0
time = ifelse((stateno=[150,153]),6,8)


;-------------------------------------
[State -1, Air Parry]
type = hitoverride
triggerall = var(56) > 1 && random < 500
triggerall = var(59) && roundstate = 2 && (statetype = A || Pos Y < 0)
trigger1 = 1
attr = SA,NA, SA, HA, NP, HP, SP, AA, AT, AP
stateno = 132
;forceair = 1
slot = 0
time = ifelse((stateno=[154,155]),6,8)


;------------------------------------
;AI Guard Push (Standing)
;------------------------------------
;[State -1, AI Guard Push]
;type = ChangeState
;value = 7610
;triggerall = Var(59)
;triggerall = p2bodydist x =[0,40]
;triggerall = StateType = S
;trigger1 = StateNo = [150,153]
;trigger1 = Time >= 5
;trigger1 = random < 100;+300*(BackEdgeDist < 30)

;------------------------------------
;AI Guard Push (Crouching)
;------------------------------------
;[State -1, AI Guard Push]
;type = ChangeState
;value = 7615
;triggerall = Var(59)
;triggerall = p2bodydist x =[0,40]
;triggerall = StateType = C
;trigger1 = StateNo = [150,153]
;trigger1 = Time >= 5
;trigger1 = random < 100;+300*(BackEdgeDist < 30)

;------------------------------------
;AI Guard Push (Air)
;------------------------------------
;[State -1, AI Guard Push]
;type = ChangeState
;value = 7620
;triggerall = Var(59)
;triggerall = p2bodydist x =[0,40]
;triggerall = StateType = A
;trigger1 = StateNo = [154,155]
;trigger1 = Time >= 5
;trigger1 = random < 100;+300*(BackEdgeDist < 30)

;------------------------------------
;AI Recovery Roll after KnockDown
;------------------------------------
[State -1]
type = ChangeState
value = 7800 + (backedgedist > 100)
triggerall = Var(59) && MoveType != H && RoundState = 2
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = p2bodydist x < 100
trigger1 = Random < 300;+500*(BackEdgeDist < 100) 
trigger1 = Time >= 1

;------------------------------------
;AI Recovery
;---------------------------------------------------------------------------
; [State -1, Flight]
;type = ChangeState
;value = 900
;triggerall = statetype != A && var(59) && (enemynear,hitdefattr =SCA,AA,AP)
;triggerall = random < 550 && p2bodydist X < 50 && enemynear, movetype != A
;trigger1 = ctrl
;trigger2 = stateno = 130
;trigger3 = stateno = 131


;[State -1, Flight]
;type = ChangeState
;value = 901
;triggerall = var(59) && statetype = A && p2stateno = [600,699]
;triggerall = random < 550 && p2bodydist X < 50 && enemynear, movetype = A
;trigger1 = ctrl
;trigger2 = stateno = 132
 [State -1, Flight]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = random < 300 && ctrl
trigger1 = enemynear,numproj = 1


[State -1, Maximum Spider]
type = ChangeState
value = 3010
triggerall = var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000 && (var(40) < 5 ||  var(22) = 1)
triggerall = random < 50  && p2bodydist X > 70 && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(51)

[State -1, one for J.J.]
type = ChangeState
value = 3500
triggerall = var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000 && var(40) >= 5 &&  var(22) = 0
triggerall = statetype != A  && MoveType != H && RoundState = 2
triggerall = random < 150 && p2bodydist X < 70 && enemynear, movetype != A
trigger1 = ctrl
trigger2 = var(51)


[State -1, sense]
type = ChangeState
value = 3200
triggerall = var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = var(22)=0  && var(40) <=10 && var(42)=0
triggerall = power >= 1000 && MoveType != H && RoundState = 2
triggerall = statetype != A
triggerall = random < 500 && p2bodydist X > 70
trigger1 = ctrl
trigger2 = var(51)


;---------------------------------------------------------------------------

[State -1, Ultimate Web Throw]
type = ChangeState
value = 3040
triggerall = var(59) && BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000  &&  var(22) = 0 && var(40) >= 10
triggerall = statetype != A && MoveType != H && RoundState = 2
triggerall = random < 50 && p2bodydist X > 70
trigger1 = ctrl
trigger2 = var(51)

[State -1, Ultimate Web Throw]
type = ChangeState
value = 3039
triggerall = var(59) && BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000  &&  var(22) = 0 && var(40) >= 10
triggerall = statetype = A  && MoveType != H && RoundState = 2
triggerall = random < 50  && p2bodydist X > 70
trigger1 = ctrl
trigger2 = var(51)


;---------------------------------------------------------------------------

[State -1, Crawler Assault]
type = ChangeState
value = 3400
triggerall = var(59)&& BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000  &&  (var(22) = 1 || var(40) < 10)
triggerall = statetype != A && MoveType != H && RoundState = 2
triggerall = random < 50 && p2bodydist X < 70
trigger1 = ctrl
trigger2 = var(51)
;------------------------
[State -1, boxe]
type = ChangeState
value = 3900
triggerall = var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000 && var(40) >= 5 &&  var(22) = 0
triggerall = statetype != A && MoveType != H && RoundState = 2
triggerall = random < 60  && p2bodydist X > 70
trigger1 = ctrl
trigger2 = var(51)

;-----------------------------------------------------------------------------
;Basic Attacks

[State -1, Spider Sting]
type = ChangeState
value = 1500
triggerall = var(59)  && enemynear, movetype = A
triggerall = statetype != A && MoveType != H && RoundState = 2
triggerall = random < 300 && p2bodydist X < 40
trigger1 = ctrl
trigger2 = var(51) = 1
-------------------------------------------------------------------------
[State -1, Web Swing]
type = ChangeState
value = 1530
triggerall = var(59) && var(40) > 2 && MoveType != H && RoundState = 2
triggerall = random < 100 && p2bodydist X > 100
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50 ;|| stateno = 511
;---------------------------------------------------------------------------
[State -1, Web Ball]
type = ChangeState
value = 1000
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = var(40) > 0
triggerall = random < 100 && p2bodydist X > 100
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Ball]
type = ChangeState
value = 1010
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = var(40) > 0
triggerall = random < 50 && p2bodydist X > 100
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Ball]
type = ChangeState
value = 1100
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = random < 100 && p2bodydist X > 170
triggerall = var(40) > 5
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


[State -1, Web Throw]
type = ChangeState
value = 1200
triggerall = var(59) && !NumHelper(21540) && var(40) > 2
triggerall = random < 50 && p2bodydist X > 50 && p2bodydist X < 70
triggerall = statetype = A && pos y < -55 && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50
trigger4 = stateno = 511

[State -1, Web Throw]
type = ChangeState
value = 1201
triggerall = var(59) && !NumHelper(21540) && var(40) > 2
triggerall = random < 50 && p2bodydist X < 20
triggerall = statetype = A && pos y < -55 && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50
trigger4 = stateno = 511


[State -1, Web Throw]
type = ChangeState
value = 1202
triggerall = var(59) && !NumHelper(21540) && var(40) > 2
triggerall = random < 50 && p2bodydist X > 100 && enemynear, movetype = A
triggerall = statetype = A && pos y < -55 && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50
trigger4 = stateno = 511




[State -1, Web Throw]
type = ChangeState
value = 1540
triggerall = var(59) && !NumHelper(21540) && var(40) > 2
triggerall = random < 50 && p2bodydist X > 100 && enemynear, movetype != A
triggerall = statetype != A &&  var(22) = 0 && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Web Throw]
type = ChangeState
value = 1550
triggerall = var(59) && !NumHelper(21540) && var(40) > 2
triggerall = random < 50 && p2bodydist X > 70 && p2bodydist X < 150 && enemynear, movetype = A
triggerall = statetype != A  &&  var(22) = 0 && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Web Throw]
type = ChangeState
value = 1560
triggerall = var(59) && !NumHelper(21540) && var(40) > 2
triggerall = random < 50 && p2bodydist X < 400 && enemynear, movetype = A
triggerall = statetype != A  &&  var(22) = 0 && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(51) = 1



[State -1, Spider Sting]
type = ChangeState
value = 1600
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = random < 50 && p2bodydist X > 100 && enemynear, movetype != A
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, socoteia]
type = ChangeState
value = 3600
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = random < 100 && p2bodydist X > 150 ;&& enemynear, movetype != A
triggerall = var(40) >= 4
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

[State -1, Web Throw]
type = ChangeState
value = 1900
triggerall = var(59) && var(40) > 4
triggerall = random < 100 && p2bodydist X < 150 && enemynear, statetype = A
triggerall = statetype != A  && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(51) = 1

;===================
[State -1, sense]
type = ChangeState
value = 3100
triggerall = var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall =  var(22)=0 && MoveType != H && RoundState = 2
triggerall = power >= 1000
triggerall = statetype != A
triggerall = random < 40
trigger1 = ctrl
trigger2 = var(51)


 [State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = Stateno != 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = BackEdgeDist >= 50 && random < 50


;---------------------------------------------------------------------------


;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = Stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = random < 50




;---------------------------------------------------------------------------

[State -1,Ground Throw]
type = ChangeState
value = 800
triggerall = var(59) &&  var(22) = 0
triggerall = random < 50 && MoveType != H && RoundState = 2
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------

[State -1,Ground Toss]
type = ChangeState
value = 830
triggerall = var(59) &&  var(22) = 0
triggerall = random < 50 && MoveType != H && RoundState = 2
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S


;---------------------------------------------------------------------------

[State -1,Air Throw]
type = ChangeState
value = 920
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = random < 50
triggerall = P2BodyDist X <= 20
triggerall = P2BodyDist y >= -20 && P2BodyDist y <= 20
triggerall = ctrl
trigger1 = statetype = A
trigger1 = pos Y < -50

[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = var(59) && P2BodyDist X <= 10 && random < 100
trigger1 = statetype = S && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 200




;---------------------------------------------------------------------------
[State -1,  Stand Kick]
type = ChangeState
value = 300
triggerall = var(59) && P2BodyDist X <= 10 && random < 100
trigger1 = statetype = S && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 300



;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = var(59) && P2BodyDist X <= 10 && random < 100
trigger1 = statetype = C && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 400

;---------------------------------------------------------------------------

[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = var(59) && P2BodyDist X <= 10 && random < 100
trigger1 = statetype = C && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 500




;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) && P2BodyDist X <= 20 && random < 100
trigger1 = statetype = S && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 210



;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = var(59) && P2BodyDist X <= 20 && random < 100
trigger1 = statetype = S && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 310




;---------------------------------------------------------------------------

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) && P2BodyDist X <= 20 && random < 100
trigger1 = statetype = C && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 410



;---------------------------------------------------------------------------

[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = var(59) && P2BodyDist X <= 20 && random < 100
trigger1 = statetype = C && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 510




;---------------------------------------------------------------------------
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) && P2BodyDist X <= 50 && random < 100
trigger1 = statetype = S && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 220


;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = var(59) && P2BodyDist X <= 50 && random < 100
trigger1 = statetype = S && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 320


;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) && P2BodyDist X <= 50 && random < 100
trigger1 = statetype = C && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 420


;---------------------------------------------------------------------------

;[State -1, Crouch Strong Kick 2]
;type = ChangeState
;value = 521
;triggerall = !var(59)
;triggerall = command = "c" && command = "holdfwd"
;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = var(17) = [1,2]
;trigger3 = var(17) = 3 && var(21) = var(36)
;trigger3 = stateno != 521

;---------------------------------------------------------------------------

[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = var(59) && P2BodyDist X <= 50 && random < 100
trigger1 = statetype = C && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 520

;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = var(59) && P2BodyDist X <= 10 && random < 100
triggerall = statetype = A && MoveType != H && RoundState = 2
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 600
trigger3 = stateno = 511 || stateno = 50
trigger4 = (StateNo = 1210) && (Movecontact) && time > 2



;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = var(59) && P2BodyDist X <= 10 && random < 100
triggerall = statetype = A && MoveType != H && RoundState = 2
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 700
trigger3 = stateno = 511 || stateno = 50
trigger4 = (StateNo = 1210) && (Movecontact) && time > 2





;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && P2BodyDist X <= 20 && random < 100
triggerall = statetype = A && MoveType != H && RoundState = 2
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = var(17) = 5
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 610
trigger4 = stateno = 511 || stateno = 50
trigger5 = (StateNo = 1210) && (Movecontact) && time > 2




;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = var(59) && P2BodyDist X <= 20 && random < 100
triggerall = statetype = A && MoveType != H && RoundState = 2
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = var(17) = 5
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 710
trigger4 = stateno = 511 || stateno = 50
trigger5 = (StateNo = 1210) && (Movecontact) && time > 2



;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) && P2BodyDist X <= 50 && random < 100
triggerall = statetype = A && MoveType != H && RoundState = 2
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = var(17) = [5,6]
trigger3 = var(17) = 7 && var(21) = var(36)
trigger3 = stateno != 620
trigger4 = stateno = 511 || stateno = 50
trigger5 = (StateNo = 1210) && (Movecontact) && time > 2


;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = var(59) && P2BodyDist X <= 50 && random < 100
triggerall = stateno != 7730 && MoveType != H && RoundState = 2
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = [5,6]
trigger3 = var(17) = 7 && var(21) = var(36)
trigger3 = stateno != 720
trigger4 = stateno = 511 || stateno = 50
trigger5 = (StateNo = 1210) && (Movecontact) && time > 2


;-----------------------------------------------------------------------------
;AI Combo
;---------------------------------------------------------------------------



[State -1, Maximum Spider]
type = ChangeState
value = 3010
triggerall = !var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "Maximum Spider"
triggerall = power >= 1000 && (var(40) < 5 ||  var(22) = 1)
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

[State -1, one for J.J.]
type = ChangeState
value = 3500
triggerall = !var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "Maximum Spider"
triggerall = power >= 1000 && var(40) >= 5 &&  var(22) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

[State -1, sense]
type = ChangeState
value = 3100
triggerall = !var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "sense" && var(22)=0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

[State -1, sense]
type = ChangeState
value = 3200
triggerall = !var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "refill" && var(22)=0  && var(40)!=100 && var(42)=0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

[State -1, boxe]
type = ChangeState
value = 3900
triggerall = !var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "boxe"
triggerall = power >= 1000 && var(40) >= 5 &&  var(22) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)


;---------------------------------------------------------------------------

[State -1, Ultimate Web Throw]
type = ChangeState
value = 3040
triggerall = !var(59) && BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "Crawler Assault"
triggerall = power >= 1000  &&  var(22) = 0 && var(40) >= 10
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

[State -1, Ultimate Web Throw]
type = ChangeState
value = 3039
triggerall = !var(59) && BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "Crawler Assault"
triggerall = power >= 1000  &&  var(22) = 0 && var(40) >= 10
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51)


;---------------------------------------------------------------------------

[State -1, Crawler Assault]
type = ChangeState
value = 3400
triggerall = !var(59)&& BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "boxe"
triggerall = power >= 1000  &&  (var(22) = 1 || var(40) < 5)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)



 ;esquiva
 [State -1, Flight]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = !var(59)
triggerall = command = "esquiva"
trigger1 = ctrl
trigger2 = stateno = 130
trigger3 = stateno = 131


[State -1, Flight]
type = ChangeState
value = 901
triggerall = !var(59)
triggerall = statetype = A
triggerall = command = "esquiva"
trigger1 = ctrl
trigger2 = stateno = 132


[State -1, Spider Sting]
type = ChangeState
value = 1500
triggerall = !var(59)
triggerall = command = "sho_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;fail states
[State -1, Web Swing]
type = ChangeState
value = 178
triggerall = !var(59) && var(40) <= 2
triggerall = command = "QCB_a" || command = "QCB_b" || command = "QCB_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Swing]
type = ChangeState
value = 179
triggerall = !var(59) && var(40) <= 2
triggerall = command = "QCB_a" || command = "QCB_b" || command = "QCB_c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51) = 1



;---------------------------------------------------------------------------
[State -1, Web Swing]
type = ChangeState
value = 1510
triggerall = !var(59) && var(40) > 2
triggerall = command = "QCB_a"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50 ;|| stateno = 511


;---------------------------------------------------------------------------
[State -1, Web Swing]
type = ChangeState
value = 1520
triggerall = !var(59) && var(40) > 2
triggerall = command = "QCB_b"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50 ;|| stateno = 511

;---------------------------------------------------------------------------
;fail
[State -1, Web Ball]
type = ChangeState
value = 178
triggerall = !var(59)
triggerall = var(40) <= 0
triggerall = command = "web"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


[State -1, Web Ball]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = var(40) > 0
triggerall = command = "web"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


[State -1, Web Ball]
type = ChangeState
value = 179
triggerall = !var(59)
triggerall = var(40) <= 0
triggerall = command = "web"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51) = 1


[State -1, Web Ball]
type = ChangeState
value = 1010
triggerall = !var(59)
triggerall = var(40) > 0
triggerall = command = "web"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Ball]
type = ChangeState
value = 178
triggerall = !var(59)
triggerall = var(40) <= 5
triggerall = command = "kikao1" || command = "kikao2" || command = "kikao3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


[State -1, Web Ball]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = var(40) > 5
triggerall = command = "kikao1" || command = "kikao2" || command = "kikao3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1



;---------------------------------------------------------------------------
[State -1, Spider Sting]
type = ChangeState
value = 1480
triggerall = !var(59)
triggerall = command = "sho_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;---------------------------------------------------------------------------
[State -1, Spider Sting]
type = ChangeState
value = 1490
triggerall = !var(59)
triggerall = command = "sho_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;---------------------------------------------------------------------------




;---------------------------------------------------------------------------
[State -1, Web Swing]
type = ChangeState
value = 1530
triggerall = !var(59) && var(40) > 2
triggerall = command = "QCB_c"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50 ;|| stateno = 511


;---------------------------------------------------------------------------
[State -1, Web Throw]
type = ChangeState
value = 179
triggerall = !var(59) && !NumHelper(21540) && var(40) <= 2
triggerall = command = "kikao1" || command = "kikao2" || command = "kikao3"
triggerall = statetype = A && pos y < -55
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Throw]
type = ChangeState
value = 1200
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = command = "kikao2"
triggerall = statetype = A && pos y < -55
trigger1 = ctrl
trigger2 = (StateNo = 610); && (Movecontact) && time > 2
trigger3 = (StateNo = 710); && (Movecontact) && time > 2
trigger4 = var(51) = 1
trigger5 = stateno = 50
trigger6 = stateno = 511
trigger7 = (StateNo = 720); && (Movecontact) && time > 2
trigger8 = (StateNo = 620); && (Movecontact) && time > 2
trigger9 = (StateNo = 8018); && (Movecontact) && time > 2

[State -1, Web Throw]
type = ChangeState
value = 1201
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = command = "kikao1"
triggerall = statetype = A && pos y < -55
trigger1 = ctrl
trigger2 = (StateNo = 610); && (Movecontact) && time > 2
trigger3 = (StateNo = 710) ;&& (Movecontact) && time > 2
trigger4 = var(51) = 1
trigger5 = stateno = 50
trigger6 = stateno = 511
trigger7 = (StateNo = 720); && (Movecontact) && time > 2
trigger8 = (StateNo = 620) ;&& (Movecontact) && time > 2
trigger9 = (StateNo = 8018); && (Movecontact) && time > 2

[State -1, Web Throw]
type = ChangeState
value = 1202
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = command = "kikao3"
triggerall = statetype = A && pos y < -55
trigger1 = ctrl
trigger2 = (StateNo = 610); && (Movecontact) && time > 2
trigger3 = (StateNo = 710); && (Movecontact) && time > 2
trigger4 = var(51) = 1
trigger5 = stateno = 50
trigger6 = stateno = 511
trigger7 = (StateNo = 720); && (Movecontact) && time > 2
trigger8 = (StateNo = 620) ;&& (Movecontact) && time > 2
trigger9 = (StateNo = 8018);&& (Movecontact) && time > 2


[State -1, Web Throw]
type = ChangeState
value = 178
triggerall = !var(59) && !NumHelper(21540) && var(40) <= 2
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z"
triggerall = statetype != A &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Throw]
type = ChangeState
value = 1540
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = command = "QCB_x"
triggerall = statetype != A &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Web Throw]
type = ChangeState
value = 1550
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = command = "QCB_y"
triggerall = statetype != A  &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Web Throw]
type = ChangeState
value = 1560
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = command = "QCB_z"
triggerall = statetype != A  &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1


[State -1, Web Throw]
type = ChangeState
value = 178
triggerall = !var(59) && !NumHelper(21540) && var(40) <= 4
triggerall = command = "counter"
triggerall = statetype != A &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Throw]
type = ChangeState
value = 1900
triggerall = !var(59) && !NumHelper(21540) && var(40) > 4
triggerall = command = "counter"
triggerall = statetype != A  ;&&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1



[State -1, Spider Sting]
type = ChangeState
value = 1600
triggerall = !var(59)
triggerall = command = "rasteira"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, socoteia]
type = ChangeState
value = 178
triggerall = !var(59)&& BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "socoteia"
triggerall = var(40) < 4
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)



[State -1, socoteia]
type = ChangeState
value = 3600
triggerall = !var(59)&& BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "socoteia"
triggerall = var(40) >= 4
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)
;===========================================================================

===========================================================================


;---------------------------------------------------------------------------
;Guard Push (Standing)
[State -1, Guard Push]
type = ChangeState
value = 7610
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = S
trigger1 = stateno = [150,153]


;---------------------------------------------------------------------------
;Guard Push (Crouching)
[State -1, Guard Push]
type = ChangeState
value = 7615
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = C
trigger1 = stateno = [150,153]


;---------------------------------------------------------------------------
;Guard Push (Air)
[State -1, Guard Push]
type = ChangeState
value = 7620
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = A
trigger1 = stateno = [154,155]


;---------------------------------------------------------------------------

 ;Air Dash
[State -1, Air Dash Forward]
type = ChangeState
value = 1340
triggerall = !var(59) && var(40) > 1
triggerall = command = "FF"
triggerall = stateno != 1340 && stateno != 1350 && stateno != 1360
trigger1 = ctrl && statetype = A
trigger2 = stateno = 511
trigger3 = stateno = 50

[State -1, Air Dash Forward]
type = ChangeState
value = 1350
triggerall = !var(59) && var(40) > 1
triggerall = command = "BB"
triggerall = stateno != 1350 && stateno != 1360
trigger1 = ctrl && statetype = A
trigger2 = stateno = 511
trigger3 = stateno = 50

[State -1, Air Dash Forward]
type = ChangeState
value = 1360
triggerall = !var(59) && var(40) > 1
triggerall = command = "UU"
triggerall = stateno != 1350 && stateno != 1360
trigger1 = ctrl && statetype = A
trigger2 = stateno = 511
trigger3 = stateno = 50




;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
triggerall = Stateno != 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"


;---------------------------------------------------------------------------


;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
triggerall = Stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF"




;---------------------------------------------------------------------------

[State -1,Ground Throw]
type = ChangeState
value = 800
triggerall = !var(59) &&  var(22) = 0
triggerall = command = "holdfwd"
triggerall = command = "z" ;&& command = "y"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------

[State -1,Ground Toss]
type = ChangeState
value = 830
triggerall = !var(59) &&  var(22) = 0
triggerall = command = "holdfwd"
triggerall = command = "c"; && command = "b"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S


;---------------------------------------------------------------------------

[State -1,Air Throw]
type = ChangeState
value = 920
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = command = "z" ; && command = "y"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = A
trigger1 = pos Y < -50


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(59)
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------

[State -1, overhead atk]
type = ChangeState
value = 590
triggerall = !var(59)
triggerall = command = "y" && command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 590




;---------------------------------------------------------------------------

[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 300) && (Movecontact) && time > 3




;---------------------------------------------------------------------------
[State -1,  Stand Kick]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact) && time > 3

;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 500) && (Movecontact) && time > 3


;---------------------------------------------------------------------------

[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (Movecontact) && time > 3




;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command != "holddown"
triggerall= command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 310) && (Movecontact) && time > 3
trigger4 = (StateNo = 300) && (Movecontact) && time > 3



;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 300) && (Movecontact) && time > 3




;---------------------------------------------------------------------------

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (Movecontact) && time > 3
trigger3 = (StateNo = 500) && (Movecontact) && time > 3



;---------------------------------------------------------------------------

[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (Movecontact) && time > 3
trigger3 = (StateNo = 500) && (Movecontact) && time > 3
trigger4 = (StateNo = 410) && (Movecontact) && time > 3


;---------------------------------------------------------------------------
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command != "holddown"
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 300) && (Movecontact) && time > 3
trigger4 = (StateNo = 210) && (Movecontact) && time > 3
trigger5 = (StateNo = 310) && (Movecontact) && time > 3
trigger6 = (StateNo = 320) && (Movecontact) && time > 3



;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 300) && (Movecontact) && time > 3
trigger4 = (StateNo = 210) && (Movecontact) && time > 3
trigger5 = (StateNo = 310) && (Movecontact) && time > 3


;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (Movecontact) && time > 3
trigger3 = (StateNo = 500) && (Movecontact) && time > 3
trigger4 = (StateNo = 410) && (Movecontact) && time > 3
trigger5 = (StateNo = 510) && (Movecontact) && time > 3


;---------------------------------------------------------------------------

;[State -1, Crouch Strong Kick 2]
;type = ChangeState
;value = 521
;triggerall = !var(59)
;triggerall = command = "c" && command = "holdfwd"
;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = var(17) = [1,2]
;trigger3 = var(17) = 3 && var(21) = var(36)
;trigger3 = stateno != 521

;---------------------------------------------------------------------------

[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = !var(59)
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (Movecontact) && time > 3
trigger3 = (StateNo = 500) && (Movecontact) && time > 3
trigger4 = (StateNo = 410) && (Movecontact) && time > 3
trigger5 = (StateNo = 510) && (Movecontact) && time > 3



;---------------------------------------------------------------------------
[State -1, Air Down Kick]
type = ChangeState
value = 8018
triggerall = !var(59)
triggerall = command = "c" && command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 3
trigger3 = (StateNo = 610) && (Movecontact) && time > 3
trigger4 = (StateNo = 620) && (Movecontact) && time > 3
trigger5 = (StateNo = 700) && (Movecontact) && time > 3
trigger6 = (StateNo = 710) && (Movecontact) && time > 3
trigger7 = (StateNo = 720) && (Movecontact) && time > 3




;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = A
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = (StateNo = 700) && (Movecontact) && time > 3
trigger3 = stateno = 511 || stateno = 50
trigger4 = (StateNo = 1210) && (Movecontact) && time > 2



;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = !var(59)
triggerall = command = "a"
triggerall = statetype = A
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 3
trigger3 = stateno = 511 || stateno = 50
trigger4 = (StateNo = 1210) && (Movecontact) && time > 2





;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = A
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = (StateNo = 1210) && (Movecontact) && time > 2
trigger3 = (StateNo = 1211) && (Movecontact) && time > 2
trigger4 = (StateNo = 1212) && (Movecontact) && time > 2
trigger5 = (StateNo = 600) && (Movecontact) && time > 3
trigger6 = (StateNo = 700) && (Movecontact) && time > 3
trigger7 = (StateNo = 710) && (Movecontact) && time > 3
trigger8 = stateno = 511 || stateno = 50

;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = A
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = (StateNo = 1210) && (Movecontact) && time > 2
trigger3 = (StateNo = 1211) && (Movecontact) && time > 2
trigger4 = (StateNo = 1212) && (Movecontact) && time > 2
trigger5 = (StateNo = 600) && (Movecontact) && time > 3
trigger6 = (StateNo = 700) && (Movecontact) && time > 3
trigger7 = (StateNo = 610) && (Movecontact) && time > 3
trigger8 = stateno = 511 || stateno = 50



;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
triggerall = statetype = A
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = (StateNo = 1210) && (Movecontact) && time > 2
trigger3 = (StateNo = 1211) && (Movecontact) && time > 2
trigger4 = (StateNo = 1212) && (Movecontact) && time > 2
trigger5 = (StateNo = 600) && (Movecontact) && time > 3
trigger6 = (StateNo = 610) && (Movecontact) && time > 3
trigger7 = (StateNo = 710) && (Movecontact) && time > 3
trigger8 = (StateNo = 700) && (Movecontact) && time > 3
trigger9 = stateno = 511 || stateno = 50


;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 511
;triggerall = !var(59)
triggerall = statetype = A
triggerall = Movecontact
trigger1 = stateno = 720

;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = !var(59)
triggerall = command = "c"
triggerall = stateno != 7730
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 1210) && (Movecontact) && time > 2
trigger3 = (StateNo = 1211) && (Movecontact) && time > 2
trigger4 = (StateNo = 1212) && (Movecontact) && time > 2
trigger5 = (StateNo = 700) && (Movecontact) && time > 3
trigger6 = (StateNo = 710) && (Movecontact) && time > 3
trigger7 = (StateNo = 610) && (Movecontact) && time > 3
trigger8 = (StateNo = 600) && (Movecontact) && time > 3
trigger9 = stateno = 511 || stateno = 50

;---------------------------------------------------------------------------
[State -1, Triangle Jump]
type = ChangeState
value = 7730
triggerall = stateno != 1340 && stateno != 1350
trigger1 = command = "holdfwd" && ctrl && var(59) = 0 && prevstateno !=  7740 && prevstateno !=  7730 &&  (backedgebodydist = 0) && (pos y < -80); && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (backedgebodydist = 0) && (pos y < -80); && prevstateno != [600,650]

[State -1, teto]
type = ChangeState
value = 7740
triggerall = stateno = 7730
trigger1 =  command = "holdup" && ctrl && var(59) = 0 && prevstateno !=  7740 &&  (ScreenPos Y <= 80) &&  (ScreenPos Y >= 75);&& (pos y < -80); && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (ScreenPos Y <= 80) &&  (ScreenPos Y >= 75); && prevstateno != [600,650]

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7710
triggerall = !var(59)
triggerall = statetype != A
trigger1 = command = "Super Jump"
trigger1 = ctrl
trigger2 = command = "Super Jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = stateno = 210 || NumTarget(320) || stateno = 521

;---------------------------------------------------------------------------
[State -1, Counter]
type = ChangeState
value = 7970
triggerall = !var(59)
triggerall = command = "Counter"
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
[State -1, Roll recovery foward]
type = ChangeState
value = 7800
triggerall = !var(59)
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = command = "holdfwd"
trigger1 = Time = 1

;---------------------------------------------------------------------------
[State -1, Roll recovery Backward]
type = ChangeState
value = 7801
triggerall = !var(59)
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = command = "holdback"
trigger1 = Time = 1





;---------------------------------------------------------------------------


[State -1,Guard]
type = ChangeState
triggerall = NumHelper(8600)
triggerall = !var(59) && (stateno != [120,155]) ;&& Helper(8600),Numenemy
;triggerall = statetype != A
triggerall = p2bodydist x > 80
triggerall = enemynear,movetype = A ;inguarddist || Helper(8600),inguarddist
triggerall = command = "holdback"
trigger1 = ctrl
value = 120

