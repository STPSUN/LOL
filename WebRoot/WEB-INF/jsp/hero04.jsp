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
<div id="hero"><img src="images/hero/hero04-1.jpg" id="score"/></div>
<h4 class="introduce">背景故事</h4>
<hr width="980px" color="green"/>
<div id="story">
<br>
<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp马尔科姆丶格雷福斯的足迹遍布整个大陆，他在许多领地、城邦和帝国都是通缉要犯。格雷福斯粗狂不羁、意志坚定，而且残忍无情无人能及，他一生的犯罪恶行为他积攒了（随后又不可避免地失去了）一笔小财。<br>
</div>
<h4 class="introduce">技能介绍</h4>
<div id="s">
<div id="photo">
<ul>
<li class="skilltupian num" tab="0"><img src="images/hero/hero04skill/hero04active.png"></li>
<li class="skilltupian" tab="1"><img src="images/hero/hero04skill/hero04Q.png"></li>
<li class="skilltupian" tab="2"><img src="images/hero/hero04skill/hero04W.png"></li>
<li class="skilltupian" tab="3"><img src="images/hero/hero04skill/hero04E.png"></li>
<li class="skilltupian" tab="4"><img src="images/hero/hero04skill/hero04R.png"></li>
</ul>
</div>
<div class="shuoming active">
<h4>新命运</h4><em>被动技能</em>
<p>格雷福斯的散弹枪会拥有2发弹药。在发射完弹药后，他就必须重新装弹。每次攻击会呈扇形发射若干颗弹丸。用多个弹丸命中相同敌人会造成额外伤害。这些弹丸无法穿透单位。</p>
</div>
<div class="shuoming">
<h4>穷途末路</h4><em>快捷技能Q</em>
<p>格雷福斯发射一颗火药弹，对一条直线上的敌人造成55/70/85/100/115(+)物理伤害。<br>
在2秒后，或与地形产生碰撞的0.25秒后，火药弹会爆炸，对附近的所有敌人造成80/125/170/215/260(+)物理伤害。<br>
伤害： 55/70/85/100/115 / 80/125/170/215/260<br>
爆炸伤害的攻击力收益系数：0.4/0.6/0.8/1/1.2<br>
法力消耗：60/70/80/90/100<br>
冷却时间：14/13/12/11/10
</p>
</div>
<div class="shuoming">
<h4>烟幕弹</h4><em>快捷技能W</em>
<p>格雷福斯发射一枚烟雾弹，来制造一团持续4秒的黑色烟幕。在黑色烟幕中的敌人无法看到烟幕之外。

<br>
在烟幕弹爆开时造成60/110/160/210/260(+0.6)魔法伤害和15/20/25/30/35%减速效果。<br>
减速：15/20/25/30/35%<br>
法力消耗：70/75/80/85/90<br>
冷却时间：26/24/22/20/18
</div>
<div class="shuoming">
<h4>快速拔枪</h4><em>快捷技能E</em>
<p>格雷福斯向目标区域冲刺，在移动时进行一次快速装弹。接下来的4秒里，格雷福斯获得一层纯爷们效果（可叠加）。<br>

每次普攻时会使【快速拔枪】的冷却时间缩短0.5秒，并在普攻命中非小兵单位时刷新纯爷们。<br>
纯爷们提供10/15/20/25/30护甲和魔法抗性(最多可叠加4次)。<br>
纯爷们的防御属性加成：10/15/20/25/30<br>
冷却时间：18/17/16/15/14
</div>
<div class="shuoming">
<h4>终极爆弹</h4><em>快捷技能R</em>
<p>格雷福斯射出一枚爆破弹，并因发射时的超强后坐力而被击退。对命中的第一个敌人造成250/400/550(+)物理伤害。在命中一名敌方英雄，或者达到最大射程之后，终极爆弹将会分裂，对目标之后锥形范围内的敌人造成200/320/440(+)物理伤害。
<br>
主体伤害：250/400/550<br>
锥形伤害：200/320/440<br>
冷却时间：100/90/80
</p>
</div>
</div>
<h4 class="introduce">使用技巧</h4>
<hr width="980px" color="green"/>
<div id="use">
<dl>
<dt>当你使用法外狂徒</dt>
<dd><p>-【W烟幕弹】既可以用来逃命，也可以用来杀人。</p></dd>
<dd><p>-  可以用【E快速拔枪】来接近敌人，然后用【Q大号铅弹】来造成巨额的伤害。</p></dd>
</dl>
<dl>
<dt>敌人使用法外狂徒</dt>
<dd><p>- 格雷福斯主要造成物理伤害，所以护甲是一个非常有效的反制手段。</p></dd>
<dd><p>- 离开烟幕弹的作用范围，能使烟幕弹作用于你的有害效果立刻消失。</p></dd>
</dl>
</div>
</div>
<%@ include file="main-end.jsp" %>
<!-- 
<iframe src="main-end.html" frameborder="0" height="100px" width="100%" scrolling="no" ></iframe>
 -->
</body>
<script type="text/javascript" src="js/hero04.js"></script>
</html>
