statedef -2

var(20) = (0<1<2)
↓
0:
normal
↓
1:
UP = POWER MAX+(gametime&&lifeADD)
↓
2:
MAX = POWER MAX+SelfState+(gametime&&-lifeADD)+(stateNO(2750||4600)/即死)



fvar(14) = (0<1)
trigger - var(20) <= 1
1:damage > 550/LIFE SET ADD && SelfState
(var(20) = 2 - ON


fvar(25)
trigger - var(20) = 0
fvar(25) = fvar(25)
poweradd
10 * fvar(25)

fvar(25)
↓
1:poweradd 10
2:poweradd 10*2
3:poweradd 10*3

var(27)
部分stateno 不完全nothitby
movehit poweradd+

var(33)
无限绕身火焰max3状态附加
;;;;======================================================
人物设定:
由于素体能力出色,虽在某企业瓦解前就被创造出来,
但自身能力控制并不理想!!
由于要达到强化目的,曾几度面临生命危险的试验!
最终使用了他人的DNA进行融合,
几经周折！
终于获得相当不错的成果,但原来的能力却使用不能,原因依然不明...
-------------------------------------------------
my fc2 blog:
ryushirohou.blog.fc2blog.us

動画使用はOK！
無断転載は禁止です！

e-mail:
a412879606@live.com