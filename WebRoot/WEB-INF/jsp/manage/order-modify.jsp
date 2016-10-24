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
<link href="../css/guanliyuan.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="../css/a.css">
</head>
<body>
	<h1>后台管理</h1>
	<h2>
		<a href="manageindex.html">主页</a><a href="dingdangguanli.html">&gt订单管理</a>&gt修改订单
	</h2>
	<form action="#" method="post">

		<div class="manage">
			订单ID:&nbsp;<input type="text" /><br> <br> 购买者:&nbsp;<input
				type="text" /><br> <br> 发货地址:<input type="text" /><br>
			<br>

		</div>
		<div class="three">
			<input type="image" src="../images/querenxiugai.png" width="100px" />
		</div>
	</form>
</body>

</html>