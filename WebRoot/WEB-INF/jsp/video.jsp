<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>视频中心</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<style type="text/css">
.introducevideo {
	color: #338C7A;
}

.video ul li {
	float: left;
	list-style: none;
	width: 181px;
	height: 140px padding-top:20px;
	padding-left: 40px;
}

.jieshuo {
	color: #338C7A;
	margin-top: 370px;
}

.gaoshou {
	color: #338C7A;
	margin-top: 170px;
}

.pic .pic2 {
	display: none;
}

.pic:hover .pic1 {
	display: none;
}

.pic:hover .pic2 {
	display: block;
}
</style>
</head>
<body>
<!-- 
	<iframe src="main-header.html" frameborder="0" height="690px"
		width="100%" scrolling="no"></iframe>
 -->
 <%@ include file="main-header.jsp" %>
	<a style="color:green" href="${contextPath }/home">英雄联盟首页</a>&gt 视频中心 最新视频
	<h2 class="introducevideo">最新视频</h2>
	<hr width="" color="green" />
	<div class="video">
		<ul>

			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/go.shtml?id=38913&type=lwvideo&url=http://www.lolfun.cn/video/717&e_code=lolweb.videocomboindex.r0"
						target="_blank"><img class="pic1"
						src="images/video/zuixin/video01up.png" /> <img class="pic2"
						src="images/video/zuixin/video01down.png" /> </a> 不知如何蜻蜓点水？大型螳螂实战演练
				</div>
			</li>

			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/go.shtml?id=38913&type=lwvideo&url=http://www.lolfun.cn/video/717&e_code=lolweb.videosearch.r1"
						target="_blank"><img class="pic1"
						src="images/video/zuixin/video02up.png" /> <img class="pic2"
						src="images/video/zuixin/video02down.png" /> </a> 薇恩史上十大最强操作镜头
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/go.shtml?id=38911&type=lwvideo&url=http://www.gamemei.com/yxlm/36466.html&e_code=lolweb.videosearch.r3"
						target="_blank"><img class="pic1"
						src="images/video/zuixin/video03up.png" /> <img class="pic2"
						src="images/video/zuixin/video03down.png" /> </a> 巴德机密带你升天，星界游神的机密
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/go.shtml?id=38910&type=lwvideo&url=http://l.zhangyoubao.com/video/71063&e_code=lolweb.videosearch.r4"
						target="_blank"><img class="pic1"
						src="images/video/zuixin/video04up.png" /> <img class="pic2"
						src="images/video/zuixin/video04down.png" /> </a> 中外瑞文对比，放逐是为了修行
				</div>
			</li>
			<li><a
				href="http://lol.qq.com/v/go.shtml?id=38909&type=lwvideo&url=http://l.zhangyoubao.com/video/71062&e_code=lolweb.videosearch.r5"
				target="_blank"><img src="images/video/zuixin/video05up.png" />
			</a> 中外李青对比，每一脚都是经典</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/go.shtml?id=38908&type=lwvideo&url=http://lol.te5.com/2016/121319.html&e_code=lolweb.videosearch.r6"
						target="_blank"><img class="pic1"
						src="images/video/zuixin/video06up.png" /> <img class="pic2"
						src="images/video/zuixin/video06down.png" /> </a> 逆天瑞文1VS5团灭抢大龙
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="lol.qq.com/v/go.shtml?id=38907&type=lwvideo&url=http://www.loldn.com/yule/41382.html&e_code=lolweb.videosearch.r7"
						target="_blank"><img class="pic1"
						src="images/video/zuixin/video07up.png" /> <img class="pic2"
						src="images/video/zuixin/video07down.png" /> </a> 北美王者组最强操作
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/go.shtml?id=38906&type=lwvideo&url=http://www.loldk.com/fm/f/v/vdetailclient-47137.html&e_code=lolweb.videosearch.r8"
						target="_blank"><img class="pic1"
						src="images/video/zuixin/video08up.png" /> <img class="pic2"
						src="images/video/zuixin/video08down.png" /> </a> 要比秀，瑞文可不比亚索和劫差
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/detail.shtml?id=38901&e_code=lolweb.videosearch.r13"
						target="_blank"><img class="pic1"
						src="images/video/zuixin/video09up.png" /> <img class="pic2"
						src="images/video/zuixin/video09down.png" /> </a> 王者亚索风度偏偏杀人秀
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/detail.shtml?id=38900&e_code=lolweb.videosearch.r14"
						target="_blank"><img class="pic1" class="pic1"
						src="images/video/zuixin/video10up.png" /> <img class="pic2"
						src="images/video/zuixin/video10down.png" /> </a> Duke女刀实力碾压杰斯杀戮秀
				</div>
			</li>
		</ul>
	</div>
	<h2 class="jieshuo">解说视频</h2>
	<hr width="" color="green" />
	<div class="video">
		<ul>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/detail.shtml?id=38483&e_code=lolweb.videoauthorindex.authornew"
						target="_blank"><img class="pic1"
						src="images/video/jieshuo/jieshuo01-a.png" /> <img class="pic2"
						src="images/video/jieshuo/jieshuo01-b.png" /> </a> 伊芙蕾雅：光速QR皎月见人就秒
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/detail.shtml?id=38406&e_code=lolweb.videoauthorindex.authornew"
						target="_blank"><img class="pic1"
						src="images/video/jieshuo/jieshuo02-a.png" /> <img class="pic2"
						src="images/video/jieshuo/jieshuo02-b.png" /> </a> 苦笑学堂：暴力流阿木木25层杀人书
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/detail.shtml?id=38401&e_code=lolweb.videoauthorindex.authornew"
						target="_blank"><img class="pic1"
						src="images/video/jieshuo/jieshuo03-a.png" /> <img class="pic2"
						src="images/video/jieshuo/jieshuo03-b.png" /> </a> JY克制讲堂：教你如何克制兰博
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/go.shtml?id=38706&type=lwvideo&url=http://v.longzhu.com/miss/v/1966053?from=lolclient&e_code=lolweb.videosearch.r3"
						target="_blank"><img class="pic1"
						src="images/video/jieshuo/jieshuo04-a.png" /> <img class="pic2"
						src="images/video/jieshuo/jieshuo04-b.png" /> </a>
					MiSS排位：电玩女神阿狸摄魂宝珠震撼全场
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/detail.shtml?id=38208&e_code=lolweb.videosearch.r2"
						target="_blank"><img class="pic1"
						src="images/video/jieshuo/jieshuo05-a.png" /> <img class="pic2"
						src="images/video/jieshuo/jieshuo05-b.png" /> </a> 小苍：德智体美全面发展学霸艾克
				</div>
			</li>
		</ul>
	</div>
	<h2 class="gaoshou">高手视频</h2>
	<hr width="" color="green" />
	<div class="video">
		<ul>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/go.shtml?id=38618&type=lwvideo&url=http://v.longzhu.com/keahoarl/v/1965917&e_code=lolweb.videoauthorindex.authornew"
						target="_blank"><img class="pic1"
						src="images/video/gaoshou/gaoshou01up.png" /> <img class="pic2"
						src="images/video/gaoshou/gaoshou01down.png" /> </a>
					抗韩中年人：史上最强套路，达到对面删号
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/detail.shtml?id=38613&e_code=lolweb.videoauthorindex.authornew"
						target="_blank"><img class="pic1"
						src="images/video/gaoshou/gaoshou02up.png" /> <img class="pic2"
						src="images/video/gaoshou/gaoshou02down.png" /> </a>
					枪炮出品：上分计划，风筝之王的崛起
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/detail.shtml?id=38643&e_code=lolweb.videoauthorindex.authornew"
						target="_blank"><img class="pic1"
						src="images/video/gaoshou/gaoshou03up.png" /> <img class="pic2"
						src="images/video/gaoshou/gaoshou03down.png" /> </a> 神探仓：国服第一提莫教你打爆一切
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/detail.shtml?id=38696&e_code=lolweb.videoauthorindex.authornew"
						target="_blank"> <img class="pic1"
						src="images/video/gaoshou/gaoshou04up.png" /> <img class="pic2"
						src="images/video/gaoshou/gaoshou04down.png" /> </a>
					若风：五杀杰斯雷霆之怒超能巨炮轰炸全场
				</div>
			</li>
			<li>
				<div class="pic">
					<a
						href="http://lol.qq.com/v/detail.shtml?id=31160&e_code=lolweb.videoauthorindex.author9"
						target="_blank"> <img class="pic1"
						src="images/video/gaoshou/gaoshou05up.png" /> <img class="pic2"
						src="images/video/gaoshou/gaoshou05down.png" /> </a> 小智：五杀人马，君临天下的杀戮
				</div>
			</li>
		</ul>
	</div>
	<%@ include file="main-end.jsp" %>
	<!-- 
		<iframe src="main-end.html" frameborder="0" height="100px" width="100%"
		scrolling="no"></iframe>

	 -->
</body>
</html>