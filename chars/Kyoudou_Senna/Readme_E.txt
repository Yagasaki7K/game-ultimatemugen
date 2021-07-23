
===================================<Profile>=========================================
Name: Senna Kyoudou
From: Big Bang Beat -1st Impression- ver.1.06
Author: Songfu (remake Ahuron's)
Last Update: 2008.12.30  99.7%


-----------------------------------<Command>-----------------------------------------
[Normal Behavior]
Light Attack　　　　　　　　　A
Middle Attack　 　　　　　　　B
Hard Attack　　　　　　 　　　C
Throwing　　　　　　　 　     6+C or 4+C
Get Away from Throwing        6+C or 4+C
Recovery　　　　　　　　　　　4orNor6 + AorBorC
Lately Get up　　 　　　　　　2(long in lying down)
High Jump　　　　　　　　　　 2(short)+7or8or9
Air Dush                      66 or 44 (9N6 or 7N4 on the ground)
Turning Attack                (7or8or9)+(AorBorC) (When you are behind the enemy in the air)
                                                        (When you can do aerial jump)

B Dush　 　　　　　　　　　   X or 2+X or X(air) or 2+X(air) or 8+X(air) (1 Gauge)
B Counter　　　　　  　　     X (in guard)(1 Gauge)
Hikuusen Kou (Original)  　   XC (in guard)(1 Gauge)
B Escape (Front)            　6+X(on hit) (3 Gauge <When P Gauge Exists, 2 Gauge>)
B Escape (Back)　　　　　　 　4+X(on hit) (3 Gauge <When P Gauge Exists, 2 Gauge>)

P Charge　　　 　　　　 　　　Y
Advanced Charge　　　　　   　22+Y(1 Gauge)
Enhance (Recovery)　　　　　　Z(only 3 times)
Extend Charge                 Any arrow key in P Charge (Attack Up, P Charge velocity Up, Life Down)

[Particular Attack]
Kakato Geri 　　　　　　　　　6+A
Kare Tsubaki　　　　　　　　　6+C or 4+C
Ha Gaeshi　　　 　　　　　　　C(When aerial hard attack hits)

[Special Attack]
Harukaze　　　　　　　　　　　214+A
Harukaze Mai                  A(in Harukaze)
Harukaze Geki　　　　　　　　 BorC (in Harukaze)
Nagikaze                      214+B
Ibuki                         214+C
Shijuusen                     4+C(in Ibuki)
Ou Gekka                      6+C(in Ibuki)
Gekka                         623+AorBorC(also in the air), BorC after Light Gekka in the air
Tsubaki                       41236+AorBorC
Hikuusen(Original)            22+C(counter. not for aerial attack and throwing. have limitation of distance)
                                  (can be canceled by crouching attack, Gekka and Kakato Geri)

[B-POWER ARTS](1 Gauge)
Nagikaze Ran                  63214+X
Tsubaki Ran	 	      41236+X
Ouka Hisyousen		      623+X(also in the air)
Tamafuri no Mai(Original)     421+X(use Enhance, lifeadd: Enhance/2 + Damage, decrease the enemy's Gauge)

[BIGBANG BREAK](2 Gauge)
Setsu Gekka		      623+X(When the 3rd attack of Ouka Hisyousen Hits)


-----------------------------------<Set Up>-----------------------------------------
When the charactor selects, push start bottan => P Gauge MAX Ver.

Search the words in "-2.cns" or "AI.cns" and set the numbers.
1.Attack Up and Life : var(51) = -1 or Life or LifeMax, [Default: LifeMax]
2.Attack After Bounce : var(50) = L (L = [1,2]), [Default: 2(can)]
3.Win Direction : var(49) = M (M = [0,2]), [Default: 2(full)]

1.CPU Level : var(59) = X (X = [0,10]), [Default: 10]
2.CPU Guard Level : var(52) = Y (Y = [1,5]), [Default: 5]
3.CPU use Original Attack : var(48) = N (N = [0,1]), [Default: 1(use)]

---------------------------------<Little Tips>--------------------------------------
<Cancel>
Normal Attack: Light < Medium < Hard
B-POWER ARTS can cancel the almost behavior.
Reference of the other cancel
    Kakato Geri < Kakato Geri, Normal and Special Attack
    Normal Attack < Kakato Geri, Special Attack
    Medium and Hard Tsubaki < Special Attack
    Nagikaze < Medium Gekka
    Light Stand Attack, Medium Crouch Attack, Kakato Geri, Nagikaze < Jump

<Recovery>
Reference of No-Recovery Attack
    Medium Gekka in the air, Ou Gekka, 2nd Attack of Harukaze, Last Attack of Nagikaze Ran, Last Attack of Ouka Hisyousen
    Only on the ground: Hard Crouch Attack, Shijuusen, 1st Attack of Harukaze, Medium and Hard Gekka
    Only in the air: Ha Gaeshi
1st Attack of Harukaze, Medium and Hard Gekka hit in the air after No-Recovery Attack also cannot be recovered.
The recovery judgement of Light and Hard Gekka combo almost equals that of only Hard Gekka.
    e.f: in Aerial combo, Hard Attack < Hard Gekka => can recover
                          Hard Attack < Light Gekka < Hard Gekka => can recover
                          Hard Attack < Ha Gaeshi < Hard Gekka => cannot recover
                          Hard Attack < Ha Gaeshi < Light Gekka < Hard Gekka => cannot recover
           on the ground, Light Gekka < Hard Gekka => cannot recover
                          Hard crouch Attack < Light Gekka < Hard Gekka => cannot recover
                          Hard crouch Attack < Light Gekka < Light Gekka < Hard Gekka => can recover

<The Other>
Medium Stand Attack cannot be guarded in the air.


-----------------------------------<Comment>-----------------------------------------
 Because I don't know English so much, please tell me if you can't understand the descriptions.
And write at BBS if you want to know something. Thank you for playing.


=====================================================================================

