<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/hero.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<!-- 

<iframe src="main-header.html" frameborder="0" height="690px" width="100%" scrolling="no" ></iframe>
 -->
 <%@ include file="main-header.jsp" %>
<div id="all">
<div id="weizhi">
<a style="color:green" href="${contextPath }/home">英雄联盟首页</a>&gt
周免英雄&gt
英雄详情
</div>
<div id="hero"><img src="images/hero/hero08-1.jpg" id="score"/></div>
<h4 class="introduce">背景故事</h4>
<hr width="980px" color="green"/>
<div id="story">
<br>
<br>
在符文之地，有少数龙类，能熟练地运用他们的独特骨骼里所流淌的强烈魔法能量，因而进化成了一种罕见的天空之龙。这些强大且神秘的生物，绝大部分时候都隐藏在远离人类国家的地方。不过，有一些会被人类文明所吸引，并变成人类的形态，将自己融入到人类世界中去。偶尔会有个别龙被某个人类的心灵所吸引，并与之发生关系。虽然几率微乎其微，这种结合有时也会结出果实，而它们的后代会成为少数光临符文之地的半龙人之一。希瓦娜就是这样一种生物，一名普通的德玛西亚农家女和天空之龙的爱情结晶。
</div>
<h4 class="introduce">技能介绍</h4>
<div id="s">
<div id="photo">
<ul>
<li class="skilltupian num" tab="0"><img src="images/hero/hero08skill/hero08active.png"></li>
<li class="skilltupian" tab="1"><img src="images/hero/hero08skill/hero08Q.png"></li>
<li class="skilltupian" tab="2"><img src="images/hero/hero08skill/hero08W.png"></li>
<li class="skilltupian" tab="3"><img src="images/hero/hero08skill/hero08E.png"></li>
<li class="skilltupian" tab="4"><img src="images/hero/hero08skill/hero08R.png"></li>
</ul>
</div>
<div class="shuoming active">
<h4>龙族血统</h4><em>被动技能</em>
<p>希瓦娜获得护甲加成和魔法抗性加成。这些加成会在希瓦娜处于魔龙形态时得到提升。</p>
</div>
<div class="shuoming">
<h4>龙牙突刺</h4><em>快捷技能Q</em>
<p>希瓦娜的下次攻击会进行两次打击，分别造成和0.8,0.85,0.9,0.95,1物理伤害。
<br>
当龙牙突刺尚未冷却完毕时，每次普攻会使剩余的冷却时间减少0.5秒。<br>
魔龙形态：龙牙突刺会撕裂希瓦娜面前的所有单位。
<br>
龙牙突刺的第二次攻击将造成相当于希瓦娜40/55/70/85/100%总攻击力的伤害。<br>
       额外伤害：40/55/70/85/100%<br>
    冷却时间：9/8/7/6/5
</p>
</div>
<div class="shuoming">
<h4>烈火燎原</h4><em>快捷技能W</em>
<p>希瓦娜每秒对周围的敌人造成20/32/45/57/70(+0.2)(+0.1)魔法伤害，并且移动速度提高30/35/40/45/50%，这个移速加成会在3秒里持续减少。
<br>
在烈火燎原激活时，希瓦娜的普攻会对附近的敌人造成@Effect1Amount*0.25@(+@CharBonusPhysical*0.25@)(+@CharAbilityPower2*.25@)魔法伤害并使此移速加成的持续时间延长1秒。
。<br>
魔龙形态：烈火燎原会灼烧大地，对站在上面的敌人持续造成伤害<br>
【烈火燎原】对野怪造成的伤害+20%。<br>
烈火燎原的最大持续时长为7秒。<br>

    伤害（范围）：20/32/45/57/70<br>
    伤害（普攻特效）：@Effect1Amount*0.25@ -> @Effect1AmountNL*0.25@<br>
    移动速度加成：30/35/40/45/50%
</div>
<div class="shuoming">
<h4>烈焰吐息</h4><em>快捷技能E</em>
<p>希瓦娜放出一枚火球，对沿途的所有敌人造成60/100/140/180/220(+0.6)魔法伤害，并给他们施加持续5秒的标记。
<br>

希瓦娜的普通攻击在命中被标记的目标时，会造成相当于目标2.5%最大生命值的附加魔法伤害。<br>

魔龙形态：烈焰吐息会席卷希瓦娜前方扇形范围内的所有敌人。<br>

在对抗野怪时，烈焰吐息每次命中时的附加伤害封顶值为100。<br>

    伤害：60/100/140/180/220<br>
    冷却时间：12/11/10/9/8
</p>
</div>
<div class="shuoming">
<h4>魔龙降世</h4><em>快捷技能R</em>
<p>主动效果：希瓦娜变成一条巨龙，并且飞向目标区域。沿途的敌人会受到175/300/425(+0.7)魔法伤害，并被震向她的目标区域。
<br>
被动效果：希瓦娜每秒产生1/1.5/2点怒气。普通攻击产生2点怒气。<br>
    腾飞伤害： 175/300/425<br>
    被动怒气获取：1/1.5/2
</p>
</div>
</div>
<h4 class="introduce">使用技巧</h4>
<hr width="980px" color="green"/>
<div id="use">
<dl>
<dt>当你使用龙血武姬</dt>
<dd><p>-希瓦娜的攻击能够给她的全部技能带来好处。提供攻击速度的装备对于她而言比其他英雄更有价值。</p></dd>
<dd><p>-  【E烈焰吐息】在混线时非常值得投入点数。</p></dd>
<dd><p>- 【W烈火燎原】是打野的理想选择。野怪会受到完整持续时间的打击，并且该技能的移动速度加成能够增强她的抓人能力。。</p></dd>
<dd><p>-  购买一个能够减速的装备非常有用：【冰霜之锤】，【亡者的板甲】或者【冰霜战锤】</p></dd>
</dl>
<dl>
<dt>敌人使用暮光之眼</dt>
<dd><p>- 值得注意的是，希瓦娜的威力通过进攻产生，使她在对抗能够与她保持一定距离的敌人时非常吃力。</p></dd>
<dd><p>- 希瓦娜的所有基础技能在魔龙形态下都能攻击多个敌人。因此，在与她作战时不要聚成一团。</p></dd>
<dd><p>- 在怒气槽蓄满时，希瓦娜就能使用大招了。在她的怒气很低时对她进行压制会非常有效。</p></dd>
</dl>
</div>
</div>
<%@ include file="main-end.jsp" %>
<!-- 
<iframe src="main-end.html" frameborder="0" height="100px" width="100%" scrolling="no" ></iframe>
 -->
</body>
<script type="text/javascript" src="js/hero08.js"></script>
</html>