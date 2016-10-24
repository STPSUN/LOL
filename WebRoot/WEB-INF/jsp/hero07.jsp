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
<div id="hero"><img src="images/hero/hero07-1.jpg" id="score"/></div>
<h4 class="introduce">背景故事</h4>
<hr width="980px" color="green"/>
<div id="story">
<div id="one">“无惧，无恨，无情。眼持中道，无可动摇。”</div>
<br>
<br>
身为神秘的武装教派领袖，慎背负着暮光之眼的称号，力图将平衡的理念贯彻于世。为了超脱自身的情感、偏执以及自我，他一直艰难地挣扎着。
慎手握魂刃，行走于无人通晓的隐秘道路，追求着无偏无倚的冷静裁决。
</div>
<h4 class="introduce">技能介绍</h4>
<div id="s">
<div id="photo">
<ul>
<li class="skilltupian num" tab="0"><img src="images/hero/hero07skill/hero07active.png"></li>
<li class="skilltupian" tab="1"><img src="images/hero/hero07skill/hero07Q.png"></li>
<li class="skilltupian" tab="2"><img src="images/hero/hero07skill/hero07W.png"></li>
<li class="skilltupian" tab="3"><img src="images/hero/hero07skill/hero07E.png"></li>
<li class="skilltupian" tab="4"><img src="images/hero/hero07skill/hero07R.png"></li>
</ul>
</div>
<div class="shuoming active">
<h4>忍法！气合盾</h4><em>被动技能</em>
<p>在施放一次技能后，慎会获得一层护盾。如果慎的技能对英雄产生作用，那么这个技能的冷却时间就会降低。</p>
</div>
<div class="shuoming">
<h4>奥义！暮临</h4><em>快捷技能Q</em>
<p>波慎召回他的魂刃并拖动它。如果魂刃在召回途中与敌方英雄产生了碰撞，那么该敌方英雄在逃离慎的时候会被减速35%，持续2秒。

<br>
慎的下3次攻击造成2/2.5/3/3.5/4(+@CharAbilityPower*.01@)%目标最大生命值的额外魔法伤害。如果魂刃曾与一名敌方英雄相碰撞，那么这些攻击的伤害值会变为4/4.5/5/5.5/6(+@CharAbilityPower2*.01@)%目标最大生命值，并提供+50%攻击速度加成。
<br>
每次攻击都会对野怪和小兵造成30/50/70/90/110额外魔法伤害(最大伤害：75/100/125/150/175)。<br>
    基础伤害：2/2.5/3/3.5/4%<br>
    强化版伤害：4/4.5/5/5.5/6%<br>
    额外小兵伤害：30/50/70/90/110<br>
    小兵伤害封顶：75/100/125/150/175<br>
    能量消耗：140/130/120/110/100<br>
    冷却时间：8/7.25/6.5/5.75/5
</p>
</div>
<div class="shuoming">
<h4>奥义！魂佑</h4><em>快捷技能W</em>
<p>慎的魂刃会创建一个持续1.75秒的防御结界。原本会命中结界内的慎或友方英雄的攻击都会被格挡。
<br>
如果结界内没有任何英雄可以保护，那么魂刃将不会激活，直到一个友方英雄进入或经过2秒为止。<br>
冷却时间：18/16.5/15/13.5/11
</div>
<div class="shuoming">
<h4>奥义！影缚</h4><em>快捷技能E</em>
<p>被动：用【E奥义！影缚】或【Q奥义！暮临】造成伤害时会回复能量。<br>

主动：慎朝着一个方向冲刺，对沿途的敌方英雄和野怪造成50/75/100/125/150[+]物理伤害和1.5秒的嘲讽效果<br>
    伤害：50/75/100/125/150<br>
    冷却时间：18/16/14/12/10
</p>
</div>
<div class="shuoming">
<h4>秘奥义！慈悲度魂落</h4><em>快捷技能R</em>
<p>慎为目标友方英雄提供一层吸收250/550/850(+1.35)伤害的护盾，护盾持续5秒。在引导秒后，慎和他的魂刃会传送到友方英雄身边。
<br>
护盾生命值： 250/550/850。<br>
冷却时间 ： 180/150/120
</p>
</div>
</div>
<h4 class="introduce">使用技巧</h4>
<hr width="980px" color="green"/>
<div id="use">
<dl>
<dt>当你使用暮光之眼</dt>
<dd><p>-密切留意队友们，并且准备好用你的大招拯救他们。</p></dd>
<dd><p>-   你的能量是可以持续快速恢复的，所以可以利用这点在与使用法力的英雄们对线时逐渐积累优势。</p></dd>
</dl>
<dl>
<dt>敌人使用暮光之眼</dt>
<dd><p>- 准备好躲避慎的嘲讽，并在他失误时予以反击。</p></dd>
<dd><p>- 一旦慎到达了6级，就要留意他用全图传送大招快速扭转局部战斗的局势。</p></dd>
</dl>
</div>
</div>
<%@ include file="main-end.jsp" %>
<!-- 
<iframe src="main-end.html" frameborder="0" height="100px" width="100%" scrolling="no" ></iframe>
 -->
</body>
<script type="text/javascript" src="js/hero07.js"></script>
</html>