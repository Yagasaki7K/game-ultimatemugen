=================================================================================================
 E-TERRYX: TERRY BOGARD
=================================================================================================

-------------------------------------------------------------------------------------------------
 RELEASE INFORMATION:
-------------------------------------------------------------------------------------------------

 Programmer      : Sander71113 

 Programmer	 : Maximillian J[E]nus  

 Sprite Edits	 : Kaddet

 Sources	 : King Of Fighters 96-2002, Garou "Mark Of The Wolves", Capcom Vs SNK 1-2, 

 Last Updated	 : June 13, 2003

 Date Released	 : June 7, 2003

 Mugen Version   : May 14, 2001

-------------------------------------------------------------------------------------------------
 REQUIREMENTS:
-------------------------------------------------------------------------------------------------

    1. M.U.G.E.N. engine - found at http://www.elecbyte.com
    2. Faster than 300 mhz processor. 
    3. 64MB or higher Ram.

-------------------------------------------------------------------------------------------------
 CHARACTER INFORMATION:
-------------------------------------------------------------------------------------------------

 	As usual, We tried to make Terry as accurately as possible, having exact vels and clsns.
 I can say with a smile that this Terry passed my crazy standards. I hope you guys will like him
 too. I've also improved the Ai and included some cool KOF strategies. Don't be surprised to see
 stuff from Garou Mark of the Wolves, it inspired the EX special attacks . Originally, this is 
 intended to have Multiple Mode and Grooves ala NEOKYOX, but I got lazy so, this release is 
 locked in MIX mode and MIX Groove. All of Terry's moves from KOF 96-2K2 and Garou MOTW are
 available in this version, there are even the unused versions of certain moves. In the future 
 we are planning to implement a menu wherein you can pick Terry's moves, using a point system. 
 Please take the time to read the documentation.

-------------------------------------------------------------------------------------------------
 ARTIFICIAL INTELLIGENCE SYSTEM:
-------------------------------------------------------------------------------------------------

 E-Terryx has a 3 level AI. All you have to do is edit E-Terryx.def using notepad.

 ;cmd      = terry.cmd         ;Hard Ai
 ;cmd      = terrymedai.cmd    ;Medium level Ai    
 cmd      = terrynoai.cmd      ;Low level Ai
 
 Just remove the semicolon AT THE START OF THE LINE before the ai level of your choice and make 
 sure the unwanted levels have semicolon before them. In the example above, it is setup to use 
 low level AI.

-------------------------------------------------------------------------------------------------
 SPECIAL SYSTEMS: 
-------------------------------------------------------------------------------------------------

  COUNTER HIT  - Allows for another free hit. This is most obvious when using knockdown 
                 attacks. Some moves are not affected by counter hit (ex. Sweep). Use it
                 to your advantage.

  GUARD CRUSH  - Now, E-TerryX can be Guard Crushed. So don't block too much :P. My Guard Crush 
                 System is not KOF accurate since it is still not built into the M.U.G.E.N.
                 engine itself. This is just a "work around". It works much like SFA3. 
                 You can see the guard crush points in debug display.

  DIZZY        - E-TerryX Can be dizzied. Again this is not KOF accurate. You can also check the 
                 dizzy points in Debug Display.                     

  THROW CANCEL - Tired of being thrown around? You cancel E-TerryX's throws by pressing any punch
                 button during the first few frames of his throw, KOF98 style. 

  EX MOVES     - I found an excuse to use MOTW effects :P. EX moves require 500 power,
		 and/or use up half of your max meter. 

-------------------------------------------------------------------------------------------------
 MIX GROOVE: 
-------------------------------------------------------------------------------------------------
                   
  NOTE: DMs use 1 power stock while SDMs requires MAX and 1 power stock.
        You'll have to press both punch or kick buttons to use the SDM. Some 
        special to super move cancels are enabled and it uses 1 powerstock. 
        Max mode allows you to cancel moves that are not normally cancelable, 
        (ie. custom combos), at the price of decreased attack power during Max.
           
     Roll Forward       - (x)+(a)  

     Side Step          - (x)+(a)
                          
     Attack             - (x) or (y)
     (During Sidestep)

     Roll Back          -  B, (x)+(a) 

     Safe Fall Recovery - (x)+(a)  

     Run Forward        - F, F

     Guard Cancel rolls/Knockdown     		- Required Power = 1000

     Max                - (y)+(a)     		- Required Power = 1000

-------------------------------------------------------------------------------------------------
 MOVELIST:
-------------------------------------------------------------------------------------------------
     MOVENAME:                         COMMAND:			 DESCRIPTION:	
-------------------------------------------------------------------------------------------------

---------------------
 EXTRA BASIC ATTACKS:
---------------------     

    KOF'98 Far Hard Kick              Back + (b)		 Alternative

    KOF'98 Rising Upper		      DF + (c)		 	 Cancellable
    KOF'98 Back fist                  Back + (x)		 Cancellable
    KOF'99 Hammer Punch		      Fwd + (x)		 	 Cancellable

    KOF'99 Diagonal Jump Hard Kick    Down + (b)     (in air)    Alternative
    KOF'99 Jump Knockdown Attack      Back + (y)+(b) (in air)    Alternative

      
-----------------
 SPECIAL ATTACKS:
-----------------

    Burn Knuckle		      D,DB,B + Punch	         Forward Attack

    Crack Shoot			      D,DB,B + Kick              Forward Atk and Anti Air

    Rising Tackle		      Charge D,U + Punch	 Anti Air, Auto Guard

    Power Dunk			      F,D,DF + Kick		 Forward Atk and Anti Air	

    Power Charge 		      B,D,F + Kick		 Forward Attack, 
                                                                 Cancel to Power Dunk

    Slide Kick			      Hold B,F + Kick            Forward Attack, Hits Low
								 Cancel to Rising Tackle	
	 
    Motw Power charge		      B, F + Punch               Fwd Atk, C version autoguard
								 Cancel to PC Follow-up

    Motw PC Follow up		      F + Punch                  Fwd Atk, Cancel to Finisher

    Motw PC Finisher		      F + Punch			 Forward Attack	 
	
    Power Wave '98		      D,DF,F + Punch		 Projectile (Close or Far Range)

    Power Wave '95		      D,DF,F + Kick	         Projectile (Slow and Fast)

    Power Wave '99		      D,D + (x)			 Projectile (Fast)

    Ground Wave '99		      D,D + (y)			 Projectile (Close Range)	
								 Cancel to Any Special Attack

    Power Wave '2K2		      D,D + (a)			 Projectile (Fast)

    Ground Wave '2K2		      D,D + (b)			 Projectile (Close Range)	
								 Cancel to Any Special Attack
								 
    Fake Wave			      D,DF,F + (a)+(b)		 Fake Power Wave 
								 Cancel to Any Special Attack
								 Cancel to Any Super Attack

--------------------
 EX SPECIAL ATTACKS:
--------------------

    Power Wave EX		      D,DF,F + (x)+(y)		 3 Projectiles
								 Can hit enemies off the ground.

    Burn Knuckle EX	              D,DB,B + (x)+(y)           Forward Attack
								 Enemy is Juggleable when hit
								 Long Invincibility Time
    Power Charge EX		      B,D,F + (a)+(b)		 Forward Attack
								 Auto Guard

    Power Dunk EX		      F,D,F + (a)+(b)		 Anti Air, Forward Attack
								 Start-Up Invincibility 

    Air Shoot		              D,DB,B + (a)+(b) on Air    Both Air attacks are 
								 cancelable from Rising Tackle 
    Air Charge		              D,DF,F + (a)+(b) on Air	 and Crackshoot in Max.
   
    
-------------------
 DESPERATION MOVES:
-------------------

    Buster Wolf			      D,DF,F,D,DF,F + Kick       Forward Attack
						 		 Projectile (Medium Range)

    High Angle Geyser		      D,DB,B,D,DB,B + Kick	 Forward Attack
								 Projectile (Medium Range)

    Power Geyser		      D,DB,B,D,DF,F + Punch      Projectile (Close Range)

-------------------------
 SUPER DESPERATION MOVES:
-------------------------

    Buster Wolf SDM     	      D,DF,F,D,DF,F + (a)+(b)    Forward Attack
								 Projectile (Medium Range)

    High Angle Geyser SDM	      D,DB,B,D,DB,B + (a)+(b)	 Forward Attack
								 Projectile (Close Range)

    Power Geyser SDM  		      D,DB,B,D,DF,F + (x)+(y)    3 Projectiles (Far Range)

--------------------------------
 HIDDEN SUPER DESPERATION MOVES:
--------------------------------

    Rising Force 		      D,DF,F,D,DF,F + (x)+(y)    Forward Attack
								 
    Final Geyser		      D,DF,F,D,DB,B + (x)	 Multiple Random Projectiles
								 Terry is throwable during the
								 long start up. 

-------------------------------------------------------------------------------------------------
 DISCLAIMER: 
-------------------------------------------------------------------------------------------------

 1. This work is for M.U.G.E.N. use only. 
 2. No portion of this archive is to be in any way modified or redistributed 
    without the permission of the author. Before you use or copy anything, 
    "PLEASE KINDLY ASK THE AUTHOR'S PERMISSION".
 3. FOR NEWBIES: Do not update or fix this archive and then call it your own. PLEASE~!
 4. Don't use the edited sprites. Ask KADDET for them.
 5. I will not be held responsible for any damage done to your Computer, or your life.
 6. Anything else that should've been included here.

-------------------------------------------------------------------------------------------------
 CREDITS: 
-------------------------------------------------------------------------------------------------

 SNK NEOGEO  		          - For making Terry Bogard
 
 ELECBYTE 			  - For making M.U.G.E.N.

 NEORAGEX 			  - I'm still using an old school emulator. :P

 NEOJUKE			  - Sound rips

 SES'MCM, RAGNAROKN's MEE	  - For their indispensible tools.

 J[E]NUS 		          - For making the specials and dms.

 KADDET  		          - For his awesome sprite edits. 

 SOPITAS, VITALZERO, WINANE	  - For feedback and/or uploading the zip.

 TENSHIN, CAIN HIGHWIND, SHINDIO  - For all the non KOF samples and/or feedback.
	    
 PEOPLE AT THE MUGEN BOARDS 	  - For making me waste my time reading, mostly nonsense.

 PEOPLE AT #MUGEN & #MREV 	  - For being fun, idle and of some help.

 PAULA 	    			  - For being so beautiful, she delays my projects. :P

 JESUS   			  - Whom everything is of and for.

 ME (SANDER71113) 		  - For wasting my time in completing this project. 

-------------------------------------------------------------------------------------------------
 CONTACT INFO: 
-------------------------------------------------------------------------------------------------
 
 EMAIL   :   sander71113@yahoo.com

 WEB PAGE:   http://go.to/sander71113
             http://sander71113.mgbr.net           
                             
=================================================================================================
 END OF README.TXT
=================================================================================================
