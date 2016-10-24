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
<div id="hero"><img src="images/hero/hero05-1.jpg" id="score"/></div>
<h4 class="introduce">背景故事</h4>
<hr width="980px" color="green"/>
<div id="story">
<br>
<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp大部分人在恕瑞玛烈日的眩光下变得疯癫，而玛尔扎哈却在暗夜的拥抱中失去了心智。<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp玛尔扎哈天生便是一位预言家。尽管他的才能尚未达到炉火纯青的境界，
但他的能力却是符文之地的最大恩惠。由于他对命运的复杂多变有着强烈的感知，致使一些不受欢迎的事物趁虚而入，
逐渐地侵蚀着他的潜意识。在他的梦里，隔离之纱最薄弱的地方，一个邪灵正在召唤他。起初，玛尔扎哈尚能抵御这强烈的蛊惑，
然而随着时间的流逝，召唤之声越来越强烈，直到玛尔扎哈再也无法抗拒
</div>
<h4 class="introduce">技能介绍</h4>
<div id="s">
<div id="photo">
<ul>
<li class="skilltupian num" tab="0"><img src="images/hero/hero05skill/hero05active.png"></li>
<li class="skilltupian" tab="1"><img src="images/hero/hero05skill/hero05Q.png"></li>
<li class="skilltupian" tab="2"><img src="images/hero/hero05skill/hero05W.png"></li>
<li class="skilltupian" tab="3"><img src="images/hero/hero05skill/hero05E.png"></li>
<li class="skilltupian" tab="4"><img src="images/hero/hero05skill/hero05R.png"></li>
</ul>
</div>
<div class="shuoming active">
<h4>虚空穿越</h4><em>被动技能</em>
<p>如果玛尔扎哈在近期没有受到任何伤害或被控制，他就会获得巨幅伤害减免并免疫控制效果，这个效果在承受了伤害或格挡了一次控制效果后仍然会残留一段很短的时间<br>
来自线上小兵的伤害不受影响。</p>
</div>
<div class="shuoming">
<h4>虚空召唤</h4><em>快捷技能Q</em>
<p>玛尔扎哈开启两扇通往虚空的传送门，在短暂的延迟后，能量就会从虚空之中喷发，并且在两道传送门之间对流，对击中的敌人造成70/110/150/190/230(+0.7)魔法伤害并使其沉默1/1.25/1.5/1.75/2 秒。
<br>
伤害：70/110/150/190/230。<br>
沉默时长：1/1.25/1.5/1.75/2
</p>
</div>
<div class="shuoming">
<h4>虚空虫群</h4><em>快捷技能W</em>
<p>召唤一个持续12秒的虚灵来与附近敌人作战。
<br>
虚灵首次攻击英雄或野怪、或参与击杀了一个单位时，玛尔扎哈就会召唤出一个新的虚灵。当玛尔扎哈有3个或以上的虚灵在场上时，它们会获得50%攻击速度加成。<br>
虚灵详细资料：攻击造成物理伤害加上10/15/20/25/30(+0.1)魔法伤害(对野怪造成50%伤害)<br>
对生命值低于20%的线上小兵造成300%伤害<br>
虚灵的剩余持续时间少于4秒时就不会召唤新虚灵了。<br>
优先攻击中了【R冥府之握】或【E煞星幻象】的目标，并且在接近这些目标时提升100%移动速度。<br>
其它情况下默认攻击最近的敌人<br>
攻击力收益系数：30/32.5/35/37.5/40%<br>
虚灵的魔法伤害：10/15/20/25/30<br>
冷却时间：20/19/18/17/16
</div>
<div class="shuoming">
<h4>煞星幻象</h4><em>快捷技能E</em>
<p>在4秒里对一名敌人持续造成共80/115/150/185/220(+0.7)魔法伤害。在此期间，对目标使用【Q虚空召唤】和【R冥府之握】会刷新幻象的持续时间。<br>

如果目标被击杀，玛尔扎哈会获得法力（2%最大法力值）并且幻象会传播到最近的敌人身上。<br>
基础伤害：80/115/150/185/220<br>
冷却时间：15/13/11/9/7<br>
法力消耗：60/70/80/90/100
</div>
<div class="shuoming">
<h4>冥府之握</h4><em>快捷技能R</em>
<p>玛尔扎哈压制一名敌方英雄，持续2.5秒并在目标附近创建一个充满负能量的地带，每秒对附近敌人造成他们5/7/9%(+0.015%)最大生命值的魔法伤害，持续5秒。
<br>
百分比生命值伤害：5/7/9%<br>
冷却时间：120/100/80
</p>
</div>
</div>
<h4 class="introduce">使用技巧</h4>
<hr width="980px" color="green"/>
<div id="use">
<dl>
<dt>当你使用虚空先知</dt>
<dd><p>-把【W虚空虫群】留到附近有敌人可供虚灵攻击或击杀时使用。</p></dd>
<dd><p>-  使用【Q虚空召唤】和【R冥府之握】来刷新敌人身上的【E煞星幻象】的持续时间。</p></dd>
<dd><p>-  在对线中避免受伤可以最大化【虚空穿越】的覆盖时长，从而显著提升玛尔扎哈的生存能力。</p></dd>
</dl>
<dl>
<dt>敌人使用虚空先知</dt>
<dd><p>- 当玛尔扎哈用技能命中了一个感染了【E煞星幻象】的敌人时，【E煞星幻象】的持续时间会得到刷新。</p></dd>
<dd><p>- 要离那些中了【E煞星幻象】的小兵们远一点，以免它们身上的幻象传递到你身上。</p></dd>
<dd><p>- 积累【W虚空虫群】时的玛尔扎哈是极其危险的。</p></dd>
</dl>
</div>
</div>
<%@ include file="main-end.jsp" %>
<!-- 
<iframe src="main-end.html" frameborder="0" height="100px" width="100%" scrolling="no" ></iframe>
 -->
</body>
<script type="text/javascript" src="js/hero05.js"></script>
</html>
