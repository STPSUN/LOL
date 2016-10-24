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
<div id="hero"><img src="images/hero/hero02-1.jpg" id="score"/></div>
<h4 class="introduce">背景故事</h4>
<hr width="980px" color="green"/>
<div id="story">
<br>
<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp不同于他的兄长德莱厄斯，战场上的胜利对德莱文来说是绝对不够的。他热切渴望着人们的承认，喝彩，以及荣耀。他先是在诺克萨斯军队里寻求成名的机会，可他的戏剧天资却被严重埋没。带着能与世界分享“德莱文”这个大名的渴望，他将注意力转移到了监狱体系。
在那里，他将枯燥无味的例行公事转变成了一个前所未见的奇特景观，并由此获得了梦寐以求的名气。<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp在德莱文首次行刑的时候，他下令让死刑犯逃命。此举震惊了在场的旁观者们。正当死刑犯刚要从视野里消失时，德莱文用一记无可挑剔的飞斧结果了他。
</div>
<h4 class="introduce">技能介绍</h4>
<div id="s">
<div id="photo">
<ul>
<li class="skilltupian num" tab="0"><img src="images/hero/hero02skill/hero02active.png"></li>
<li class="skilltupian" tab="1"><img src="images/hero/hero02skill/hero02Q.png"></li>
<li class="skilltupian" tab="2"><img src="images/hero/hero02skill/hero02W.png"></li>
<li class="skilltupian" tab="3"><img src="images/hero/hero02skill/hero02E.png"></li>
<li class="skilltupian" tab="4"><img src="images/hero/hero02skill/hero02R.png"></li>
</ul>
</div>
<div class="shuoming active">
<h4>德莱文联盟</h4><em>被动技能</em>
<p>在接住一把旋转飞斧或者击杀了一个小兵、野怪或防御塔后，德莱文会从他的粉丝那里获得崇拜效果。击杀一名敌方英雄会为德莱文提供额外赏金，赏金的多少取决于他拥有多少层崇拜效果。</p>
</div>
<div class="shuoming">
<h4>旋转飞斧</h4><em>快捷技能Q</em>
<p>德莱文的下次攻击会造成0.45,0.55,0.65,0.75,0.85点额外物理伤害。额外伤害相当于他总攻击力的45/55/65/75/85%。<br>
这个斧头将会从目标身上弹到高空。如果德莱文接住了它，那么会立刻准备好下一发旋转飞斧。<br>
德莱文可以同时拥有2发旋转飞斧。<br>
额外伤害：45/55/65/75/85%<br>
冷却时间：12/11/10/9/8</p>
</div>
<div class="shuoming">
<h4>血性冲刺</h4><em>快捷技能W</em>
<p>德莱文获得40/45/50/55/60%的移动速度加成，持续1.5秒；并获得20/25/30/35/40%的攻击速度加成，持续3秒。在持续时间里，移动速度加成会急剧降低。
<br>
在接到一个旋转飞斧后，血性冲刺将会立刻冷却完毕。<br>
攻击速度：20/25/30/35/40%<br>
移动速度：40/45/50/55/60%
</div>
<div class="shuoming">
<h4>开道利斧</h4><em>快捷技能E</em>
<p>德莱文扔出他的斧头，对目标造成70/105/140/175/210(+0.5)物理伤害，并将他们击退到一边。被命中的目标将被减速20/25/30/35/40%，持续2秒。<br>
伤害：70/105/140/175/210<br>
减速幅度：20/25/30/35/40%<br>
冷却时间：18/17/16/15/14
</div>
<div class="shuoming">
<h4>冷血追命</h4><em>快捷技能R</em>
<p>变德莱文掷出两柄大斧，对命中的每个单位造成175/275/375(+1.1)物理伤害。
<br>
在命中一名敌方英雄后，大斧会缓慢地调转方向，并回到德莱文身边。在斧头正在向外飞的时候，德莱文可以激活该技能来让斧头早点飞回来。每命中一个单位，伤害值就会减少8%(最小值为40%)。在斧头调转方向时，伤害值会重置。<br>
伤害： 175/275/375<br>
冷却时间：100/90/80<br>
</p>
</div>
</div>
<h4 class="introduce">使用技巧</h4>
<hr width="980px" color="green"/>
<div id="use">
<dl>
<dt>当你使用荣耀行刑官</dt>
<dd><p>- 如果德莱文呆在原地不动，旋转飞斧将会掉落在他所在的位置附近。也许会直接落到他身上，也许会在左边或右边。</p></dd>
<dd><p>- 如果德莱文在攻击之后移动，旋转飞斧会朝着他移动的方向进行移动。利用这点来控制旋转飞斧的轨迹。</p></dd>
</dl>
<dl>
<dt>敌人使用荣耀行刑官</dt>
<dd><p>- 朝着德莱文旋转飞斧即将着陆的位置施放技巧射击。</p></dd>
<dd><p>- 干扰德莱文，让他丢掉他的斧头。如果你做到了，那么他的战斗力会显著降低。</p></dd>
</dl>
</div>
</div>
<%@ include file="main-end.jsp" %>
<!-- 
<iframe src="main-end.html" frameborder="0" height="100px" width="100%" scrolling="no" ></iframe>
 -->
</body>
<script type="text/javascript" src="js/hero02.js"></script>
</html>