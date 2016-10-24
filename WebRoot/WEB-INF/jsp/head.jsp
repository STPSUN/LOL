<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("contextPath", path);
%>
<!DOCTYPE html>
<html>
<head>
<title>头</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<style type="text/css">
</style>
<link rel="stylesheet" type="text/css" href="css/a.css" />
</head>
<body>
	<div id="head">
		<div id="lp">
			<img src="images/poster/logo.png" style="width:600px;" />
		</div>
		<div id="xingxi">
			<div id="logo">
				<a href="${contextPath }/home"><font color="white">首页
				
				</a>&gt<a href="${contextPath }/shop"><font color="white">商城
				
				</a>&gt海报艺术</font>
			</div>
			<a href="${contextPath }/shop?action=orderDetail"><span id="dingdang"><font
					color="white">我的订单</font> </span> </a>
			<div id="car">
				<img src="images/poster/car.png" /> <a href="${contextPath }/shop?action=cartList"><font
					color="white">我的购物车</font> </a>
			</div>
		</div>
		<img src="images/poster/nav3.jpg" />
	</div>
</body>
</html>

