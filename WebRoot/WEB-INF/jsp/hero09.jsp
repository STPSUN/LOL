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
<div id="hero"><img src="images/hero/hero09-1.jpg" id="score"/></div>
<h4 class="introduce">背景故事</h4>
<hr width="980px" color="green"/>
<div id="story">
<br>
<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp辛德拉生来就具有无边的魔法潜能，除了爱好以自己的意志来运用这难以置信的能量外，就再无所好。
随着每一天的过去，她的魔力天赋也变得更加有效且更具毁灭性。辛德拉拒绝任何平衡或克制的观念，
只想保持她的能量的控制权，即使它意味着那些想要制止她的当局会废掉她。<br>
在艾欧尼亚度过的年少时光里，辛德拉对魔法的鲁莽使用吓坏了村庄的长老们。他们将她带到一个偏僻的寺庙，把她交给一个老法师照顾。令辛德拉愉快的是，
老法师解释说，这个寺庙是一间学校——老法师可以在这里指引她，让她发展她的才能。
</div>
<h4 class="introduce">技能介绍</h4>
<div id="s">
<div id="photo">
<ul>
<li class="skilltupian num" tab="0"><img src="images/hero/hero09skill/hero09active.png"></li>
<li class="skilltupian" tab="1"><img src="images/hero/hero09skill/hero09Q.png"></li>
<li class="skilltupian" tab="2"><img src="images/hero/hero09skill/hero09W.png"></li>
<li class="skilltupian" tab="3"><img src="images/hero/hero09skill/hero09E.png"></li>
<li class="skilltupian" tab="4"><img src="images/hero/hero09skill/hero09R.png"></li>
</ul>
</div>
<div class="shuoming active">
<h4>卓尔不凡</h4><em>被动技能</em>
<p>技能在升至满级后，会获得特殊效果。<br>
暗黑法球：法球的存留时间延长至8秒。<br>
驱使念力：可额外抓取目标附近的2颗法球。<br>
弱者退散：技能的宽度提高50%。<br>
能量倾泻：施法距离提升75。</p>
</div>
<div class="shuoming">
<h4>暗黑法球</h4><em>快捷技能Q</em>
<p>辛德拉幻化出一颗暗黑法球，造成50/95/140/185/230(+0.75)魔法伤害。这个法球可以存留秒，并且能被辛德拉的其它技能所操纵。

<br>
这个技能可以在移动时施放。<br>

    伤害：50/95/140/185/230<br>
    法力消耗：40/50/60/70/80<br>
</p>
</div>
<div class="shuoming">
<h4>驱使念力</h4><em>快捷技能W</em>
<p>首次施放：抓取暗黑法球或敌方小兵。如果没有目标被选取，则会抓取最近的暗黑法球。
<br>
再次施放：辛德拉投掷所有被抓取的单位。被击中的敌人会受到80/120/160/200/240(+0.8)魔法伤害，并被减速25/30/35/40/45%，减速效果持续1.5秒。
<br>
这个技能可以在移动时施放。<br>

    伤害：80/120/160/200/240<br>
    法力消耗：60/70/80/90/100<br>
    减速：25/30/35/40/45%<br>
    冷却时间：12/11/10/9/8
	</p>
</div>
<div class="shuoming">
<h4>弱者退散</h4><em>快捷技能E</em>
<p>
将敌人和暗黑法球击退，对他们和被他们碰到的任何敌人造成70/115/160/205/250(+0.5)魔法伤害。<br>

暗黑法球会沿途击晕所有的敌人，晕眩效果持续1.5秒。<br><br>

    伤害：70/115/160/205/250<br>
    冷却时间：16/15/14/13/12
</p>
</div>
<div class="shuoming">
<h4>能量倾泻</h4><em>快捷技能R</em>
<p>辛德拉释放洪流一般的能量，驱使所有暗黑法球来伤害一个敌方英雄。能量倾泻会将环绕于辛德拉身边的3颗暗黑法球，以及先前创造的最多4颗暗黑法球一起轰向目标英雄。
<br>
每颗法球的伤害：90/135/180(+0.2)。<br>
最低总伤害：270/405/540(+0.6)。<br>

    伤害：90/135/180<br>
    冷却时间：100/90/80
</p>
</div>
</div>
<h4 class="introduce">使用技巧</h4>
<hr width="980px" color="green"/>
<div id="use">
<dl>
<dt>当你使用暗黑元首</dt>
<dd><p>-为了最大化你的大招伤害，请在战场上存在许多暗黑法球时使用它。</p></dd>
<dd><p>-  在你用驱使念力命中一名敌方英雄后，接一发暗黑法球，可以让目标英雄被减速，并让目标难受一阵子。</p></dd>
<dd><p>- 尽快将一个小技能升到5级，然后该技能就能获得额外效果了。</p></dd>
</dl>
<dl>
<dt>敌人使用暗黑元首</dt>
<dd><p>- 在与辛德拉对抗时，尽早购买鞋子，能帮你躲避她的大多数技能。</p></dd>
<dd><p>- 在辛德拉交出弱者退散后攻击她，因为弱者退散的冷却时间很长，所以她在这个时候毫无保命能力。</p></dd>
<dd><p>- 辛德拉的技能会在点满后获得额外效果，并且外观也会改变。</p></dd>
</dl>
</div>
</div>
<%@ include file="main-end.jsp" %>
<!-- 
<iframe src="main-end.html" frameborder="0" height="100px" width="100%" scrolling="no" ></iframe>
 -->
</body>
<script type="text/javascript" src="js/hero09.js"></script>
</html>