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
<div id="hero"><img src="images/hero/hero10-1.jpg" id="score"/></div>
<h4 class="introduce">背景故事</h4>
<hr width="980px" color="green"/>
<div id="story">
<br>
<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp在厄尔提斯坦的废墟之地，曾经有一座恢宏的城池，很久以前在一场可怕的符文战争中灰飞烟灭，就像宏伟屏障之下的大多数陆地一样。尽管如此，还是有一个人生还了下来：一名叫做基兰的魔法师。对于他这样一个时光痴迷者来说，住在城市的钟塔之中是再合适不过了。当毁灭的战火即将席卷至他的家乡之时，基兰用强大的瞬间魔法做了个实验来预测未来的种种可能性，希望能发现一个和平的解决之道。
<br>
然而基兰的魔法影响了他对时间流逝的感知，当厄尔提斯坦遭到一群未知的召唤黑骑士组成的方阵袭击之时，基兰正处于冥想的静止之中。.
</div>
<h4 class="introduce">技能介绍</h4>
<div id="s">
<div id="photo">
<ul>
<li class="skilltupian num" tab="0"><img src="images/hero/hero10skill/hero10active.png"></li>
<li class="skilltupian" tab="1"><img src="images/hero/hero10skill/hero10Q.png"></li>
<li class="skilltupian" tab="2"><img src="images/hero/hero10skill/hero10W.png"></li>
<li class="skilltupian" tab="3"><img src="images/hero/hero10skill/hero10E.png"></li>
<li class="skilltupian" tab="4"><img src="images/hero/hero10skill/hero10R.png"></li>
</ul>
</div>
<div class="shuoming active">
<h4>瓶中时光</h4><em>被动技能</em>
<p>基兰将时光储存为经验值。<br>

当他拥有足够的经验值来使一名友方英雄升级时，他就能通过右键点击该友方英雄来使其升级。基兰自身也会获得等值的经验值。无法在战斗中使用。</p>
</div>
<div class="shuoming">
<h4>定时炸弹</h4><em>快捷技能Q</em>
<p>
基兰在目标地点上投掷一个定时炸弹。炸弹会附着在第一个靠近它周围小范围内的单位（优先附着英雄）身上。<br>

3秒后炸弹会爆炸，对附近的所有敌人造成75/115/165/230/300(+0.9)魔法伤害。<br>

对相同单位放置2颗炸弹时，就会提前引爆第一个炸弹，使爆炸范围内的所有敌人晕眩1.1/1.2/1.3/1.4/1.5秒。<br><br>

    伤害：75/115/165/230/300<br>
    晕眩时长：1.1/1.2/1.3/1.4/1.5<br>
    冷却时间：10/9.5/9/8.5/8<br>
    法力消耗：60/65/70/75/80<br>
</p>
</div>
<div class="shuoming">
<h4>穿梭未来</h4><em>快捷技能W</em>
<p>让基兰的其它基础技能的冷却时间减少10秒。<br>

    冷却时间：14/12/10/8/6
	</p>
</div>
<div class="shuoming">
<h4>时光发条</h4><em>快捷技能E</em>
<p>
基兰提升友方英雄或减少敌方英雄的移动速度40/55/70/85/99%，持续2.5秒。<br>

    速度：40/55/70/85/99%
</p>
</div>
<div class="shuoming">
<h4>时光倒流</h4><em>快捷技能R</em>
<p>
基兰对自己或友方英雄施放用于保护的时间符文，持续5秒。若目标受到致命伤害，则将目标时光倒流，并回复其600/850/1100(+2)生命值。
<br><br>
    生命回复：600/850/1100<br>
    冷却时间：120/90/60<br>
    法力消耗：125/150/175<br>
</p>
</div>
</div>
<h4 class="introduce">使用技巧</h4>
<hr width="980px" color="green"/>
<div id="use">
<dl>
<dt>当你使用时光守护者</dt>
<dd><p>-你可以连续使用【Q定时炸弹】和【W穿梭未来】来快速地将两颗定时炸弹放到一个目标上。放置第二颗炸弹会引爆第一颗，并晕眩附近的敌人。</p></dd>
<dd><p>- 【E时光发条】能让友军追杀敌人，或者从败仗逃脱。</p></dd>
<dd><p>- 【R时光倒流】能有效保护本方的主力输出英雄，但过早使用该技能会导致敌方转移攻击目标，降低效果。</p></dd>
</dl>
<dl>
<dt>敌人使用时光守护者</dt>
<dd><p>-  如果你能跟上基兰的速度，你可以等到他的大招效果消逝之后，再发出夺命一击。</p></dd>
<dd><p>- 基兰很容易死在集火之下，但是很难被单杀。想杀他时，请你的队伍集中火力。</p></dd>
</dl>
</div>
</div>
<%@ include file="main-end.jsp" %>
<!-- 
<iframe src="main-end.html" frameborder="0" height="100px" width="100%" scrolling="no" ></iframe>
 -->
</body>
<script type="text/javascript" src="js/hero10.js"></script>
</html>