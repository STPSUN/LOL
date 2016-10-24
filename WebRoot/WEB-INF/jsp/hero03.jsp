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
<div id="hero"><img src="images/hero/hero03-1.jpg" id="score"/></div>
<h4 class="introduce">背景故事</h4>
<hr width="980px" color="green"/>
<div id="story">
<br>
<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp对古拉加斯而言，喝酒，是唯一一件比战斗还要重要的事。
他对酒劲更强的麦酒有着难以抑制的渴求。在这种渴求的驱使下，他不断寻找着酒劲最强、
最不寻常的原料来进行蒸馏。这个行事冲动、难以预测的吵闹酒徒，最喜欢的活动就是砸酒桶和砸脑袋。
拜他那古怪的酒水和喜怒无常的脾气所赐，和古拉加斯一起喝酒永远是一个危险的提议。<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp古拉加斯对佳酿有着矢志不渝的爱，但他巨大的体格总是阻止他进入那种飘飘欲仙的醉酒状态。
</div>
<h4 class="introduce">技能介绍</h4>
<div id="s">
<div id="photo">
<ul>
<li class="skilltupian num" tab="0"><img src="images/hero/hero03skill/hero03active.png"></li>
<li class="skilltupian" tab="1"><img src="images/hero/hero03skill/hero03Q.png"></li>
<li class="skilltupian" tab="2"><img src="images/hero/hero03skill/hero03W.png"></li>
<li class="skilltupian" tab="3"><img src="images/hero/hero03skill/hero03E.png"></li>
<li class="skilltupian" tab="4"><img src="images/hero/hero03skill/hero03R.png"></li>
</ul>
</div>
<div class="shuoming active">
<h4>欢乐时光</h4><em>被动技能</em>
<p>古拉加斯每次使用技能后都会喝一小杯，立即恢复4%的最大生命值。这个效果每8秒内只会触发1次。</p>
</div>
<div class="shuoming">
<h4>滚动酒桶</h4><em>快捷技能Q</em>
<p>古拉加斯将酒桶滚到目标地点。在再次激活时，或在到达目标地点4秒后，酒桶会爆炸，对附近敌人造成80/120/160/200/240(+0.6)魔法伤害，并将他们的移动速度减少40/45/50/55/60%，持续2秒。<br>
它的伤害和减速幅度会随着酒桶的发酵而提升，最多可在2秒后提升至150%。对小兵仅造成70%伤害。<br>
伤害：80/120/160/200/240<br>
减速幅度：40/45/50/55/60%<br>
冷却时间：11/10/9/8/7<br>
法力消耗：60/65/70/75/80
</p>
</div>
<div class="shuoming">
<h4>醉酒狂暴</h4><em>快捷技能W</em>
<p>古拉加斯痛饮烈酒，在接下来的2.5秒里，他所受的伤害会降低10/12/14/16/18%。
<br>
在完成引导后，他的下次普通攻击会对附近的敌人造成魔法伤害，伤害值相当于20/50/80/110/140(+0.3)加上目标8%的最大生命值（对野怪的最大伤害值为300）。<br>
伤害减免：10/12/14/16/18%<br>
基础伤害：20/50/80/110/140<br>
冷却时间：8/7/6/5/4
</div>
<div class="shuoming">
<h4>肉弹冲击</h4><em>快捷技能E</em>
<p>古拉加斯向前冲，并撞击命中的第一名敌人。他会对范围内的敌人造成80/130/180/230/280(+0.6)魔法伤害，并将他们撞开，造成1秒晕眩效果。<br>

当古拉加斯用肉弹冲击撞到敌方单位时，这个技能的冷却时间会减少。<br>
伤害：80/130/180/230/280<br>
冷却时间：16/15/14/13/12
</div>
<div class="shuoming">
<h4>爆破酒桶</h4><em>快捷技能R</em>
<p>古拉加斯抛出他的酒桶。酒桶在着陆后会爆炸，对命中的敌人造成200/300/400(+0.7)魔法伤害，并且将他们从爆炸中震开。
<br>
伤害：200/300/400<br>
冷却时间：100/90/80<br>
</p>
</div>
</div>
<h4 class="introduce">使用技巧</h4>
<hr width="980px" color="green"/>
<div id="use">
<dl>
<dt>当你使用酒桶</dt>
<dd><p>- 醉酒狂暴的伤害减免效果在开始引导时就会生效，因此尽量在即将受到伤害时使用它。</p></dd>
<dd><p>- 尽量使用爆破酒桶将敌人击退到你的防御塔下。</p></dd>
<dd><p>- 尽量将肉弹冲击与爆破酒桶联合使用，来为你的队伍制造杀机。</p></dd>
</dl>
<dl>
<dt>敌人使用酒桶</dt>
<dd><p>- 古拉加斯能够用其终极必杀技击退所有人。注意不要被撞向他，或者更糟——被撞向敌方防御塔。</p></dd>
<dd><p>- 肉弹冲击的冷却时间很短，你很难追赶古拉加斯，不要过分追赶。</p></dd>
</dl>
</div>
</div>
<%@ include file="main-end.jsp" %>
<!-- 
<iframe src="main-end.html" frameborder="0" height="100px" width="100%" scrolling="no" ></iframe>
 -->
</body>
<script type="text/javascript" src="js/hero03.js"></script>
</html>
