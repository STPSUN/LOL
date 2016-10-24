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
<div id="hero"><img src="images/hero/hero06-1.jpg" id="score"/></div>
<h4 class="introduce">背景故事</h4>
<hr width="980px" color="green"/>
<div id="story">
<div id="one">“我不是英雄。只是个拿锤子的约德尔人。”</div>
<br>
<br>
符文之地不乏英勇之人，但很少有人能和波比一样坚毅。带着长度两倍于她身高的锤子，
这个决绝的约德尔人已经花费了数不清的岁月来寻找那个“德玛西亚英雄”。
然而，这位据称是她武器的合法持有人的英雄，只是个虚构出来的人物。
</div>
<h4 class="introduce">技能介绍</h4>
<div id="s">
<div id="photo">
<ul>
<li class="skilltupian num" tab="0"><img src="images/hero/hero06skill/hero06active.png"></li>
<li class="skilltupian" tab="1"><img src="images/hero/hero06skill/hero06Q.png"></li>
<li class="skilltupian" tab="2"><img src="images/hero/hero06skill/hero06W.png"></li>
<li class="skilltupian" tab="3"><img src="images/hero/hero06skill/hero06E.png"></li>
<li class="skilltupian" tab="4"><img src="images/hero/hero06skill/hero06R.png"></li>
</ul>
</div>
<div class="shuoming active">
<h4>钢铁大使</h4><em>被动技能</em>
<p>波比扔出她的圆盾，获得攻击距离加成和并造成额外魔法伤害。<br>
圆盾会落在附近的一个区域上，并且波比可以拾取它来获得一个护盾效果。敌人可以踩在圆盾上来将它摧毁。</p>
</div>
<div class="shuoming">
<h4>圣锤猛击</h4><em>快捷技能Q</em>
<p>波比猛砸地面，造成35/55/75/95/115(+0.8)加上敌人7%最大生命值的物理伤害，并留下一个不稳定区域。
<br>
伤害：35/55/75/95/115<br>
减速幅度：20/25/30/35/40%<br>
冷却时间：9/8/7/6/5<br>
法力消耗：35/40/45/50/55
</p>
</div>
<div class="shuoming">
<h4>坚定风采</h4><em>快捷技能W</em>
<p>被动：波比获得护甲和魔抗(15%的护甲和魔抗)。 这个加成会在波比的生命值低于40%时翻倍。
<br>
主动：在接下来的2.5秒里，波比获得32/34/36/38/40%移动速度。当坚定风采激活时，她会阻挡敌人在她身边进行的突进，同时造成70/110/150/190/230(+0.7)魔法伤害。<br>
对生命值低于20%的线上小兵造成300%伤害<br>
移动速度：32/34/36/38/40%。<br>
冷却时间：24/22/20/18/16<br>
伤害：70/110/150/190/230
</div>
<div class="shuoming">
<h4>英勇冲锋</h4><em>快捷技能E</em>
<p>波比擒抱一名敌人，造成50/70/90/110/130(+0.5)物理伤害并将该敌人推向前方。如果波比将目标推到地形上，那么敌人会受到额外的50/70/90/110/130(+0.5)物理伤害并被晕眩1.6/1.7/1.8/1.9/2秒。<br>

初始伤害：50/70/90/110/130<br>
撞墙伤害：50/70/90/110/130<br>
冷却时间：14/13/12/11/10
</div>
<div class="shuoming">
<h4>持卫的裁决</h4><em>快捷技能R</em>
<p>首次施放：波比引导最多4秒，同时使她自身减速15%。
<br>
再次施放：波比猛砸地面，发出一道冲击波，对命中的第一个英雄身边的敌人造成200/300/400(+0.9)物理伤害，并朝着他们的召唤师平台击退他们一大段距离。引导时间越久，则冲击波的长度和击退距离越长。<br>
在被击退状态下，敌人无法被选为目标。<br>
伤害：200/300/400<br>
冷却时间：140/120/100
</p>
</div>
</div>
<h4 class="introduce">使用技巧</h4>
<hr width="980px" color="green"/>
<div id="use">
<dl>
<dt>当你使用圣锤之毅</dt>
<dd><p>-被动技能【钢铁大使】的圆盾会倾向于落在墙体附近，尽量利用这点来让【E英勇冲锋】发挥作用。</p></dd>
<dd><p>-  可以立刻施放【R持卫的裁决】来击退敌人，你可以在单挑中利用这个特点来赚取优势。</p></dd>
</dl>
<dl>
<dt>敌人使用圣锤之毅</dt>
<dd><p>- 波比可以用她的【W坚定风采】来阻挡敌人的突进。</p></dd>
<dd><p>- 当波比开始旋转她的铁锤时，就说明她在给她的大招【R持卫的裁决】蓄力。</p></dd>
<dd><p>- 你可以踩在波比的盾上，来阻止它为她提供护盾。</p></dd>
</dl>
</div>
</div>
<%@ include file="main-end.jsp" %>
<!-- 
<iframe src="main-end.html" frameborder="0" height="100px" width="100%" scrolling="no" ></iframe>
 -->
</body>
<script type="text/javascript" src="js/hero06.js"></script>
</html>
