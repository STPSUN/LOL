<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.imgif ul li {
	list-style: none;
	text-align: center;
	float: left;
	padding-left: 22px;
}

.imgif {
	width: 1013px;
	margin-left: 100px;
}

a:link {
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: underline;
}
</style>
</head>
<body>

	<%@ include file="head.jsp"%>
	<div class="imgif">
		<ul>
			<li><a href="${contextPath }/shop?action=toView1"> <img
					width="300" height="300" src="images/poster/a1.jpg" />
					<p class="p1">决战</p>
					<p class="p2">
						<span style="color:red;">￥40</sapn>
					</p> </a>
			</li>
			<li><a href="description02.html"> <img width="300"
					height="300" src="images/poster/a2.jpg" />
					<p class="p1">魔像的馈赠</p>
					<p class="p2">
						<span style="color:red;">￥40</sapn>
					</p> </a>
			</li>
			<li><a href="description03.html"> <img width="300"
					height="300" src="images/poster/a3.jpg" />
					<p class="p1">致命盛宴</p>
					<p class="p2">
						<span style="color:red;">￥40</sapn>
					</p> </a>
			</li>
			<li><a href="description04.html"> <img width="300"
					height="300" src="images/poster/a4.jpg" />
					<p class="p1">猫鼠游戏</p>
					<p class="p2">
						<span style="color:red;">￥40</sapn>
					</p> </a>
			</li>
			<li><a href="description05.html"> <img width="300"
					height="300" src="images/poster/a5.jpg" />
					<p class="p1">提莫小队</p>
					<p class="p2">
						<span style="color:red;">￥40</sapn>
					</p> </a>
			</li>
			<li><a href="description06.html"> <img width="300"
					height="300" src="images/poster/a6.jpg" />
					<p class="p1">出击</p>
					<p class="p2">
						<span style="color:red;">￥40</sapn>
					</p> </a>
			</li>
			<li><a href="description07.html"> <img width="300"
					height="300" src="images/poster/a10.jpg" />
					<p class="p1">月色与黎明</p>
					<p class="p2">
						<span style="color:red;">￥40</sapn>
					</p> </a>
			</li>
			<li><a href="description08.html"> <img width="300"
					height="300" src="images/poster/a11.jpg" />
					<p class="p1">猎</p>
					<p class="p2">
						<span style="color:red;">￥40</sapn>
					</p> </a>
			</li>
			<li><a href="description09.html"> <img width="300"
					height="300" src="images/poster/a12.jpg" />
					<p class="p1">变幻之风</p>
					<p class="p2">
						<span style="color:red;">￥40</sapn>
					</p> </a>
			</li>
			<!--
			<%int[] num =
			{ 1, 2, 3, 4, 5, 6, 10, 11, 12 };
			pageContext.setAttribute("num", num);
			String[] name =
			{ "1", "2", "3", "4", "5", "6", "7", "8", "9" };
			pageContext.setAttribute("name", name);%>
			<c:forEach items="${num }" var="index">
				<li><a href="description02.html"> <img width="300"
						height="300" src="images/poster/a${index }.jpg" />
						<p class="p1">魔像的馈赠</p>
						<p class="p2">
							<span style="color:red;">￥40</sapn>
						</p> </a>
				</li>
			</c:forEach>
		 -->

		</ul>
	</div>
	<%@ include file="foot.jsp"%>
</body>
</html>