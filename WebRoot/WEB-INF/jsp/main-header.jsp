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
	<title>main-header</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/main-header.css">
<link rel="stylesheet" type="text/css" href="css/indexa.css">
</head>
<body>
	<div id="main-header">
		<table>
			<tr>
				<td>
					<img src="images/index/logn.png">
				</td>
				<td id="main-header-index">
					<a href="index.html" target="_blank"><h2>官网首页</h2></a>
				</td>
				<td id="main-header-video" >
					<a href="video.html" target="_blank"><h2>视频中心</h2></a>
				</td>
				<td id="main-header-mall">
					<a href="shop.html" target="_blank"><h2>周边商城</h2></a>
				</td>
			</tr>
		</table>
	</div>
	<div id="main-middle">
		<img src="images/index/headbg.png">
	</div>
	<div id="main-bottom">
		<table>
			<tr>
				<td>
					<a href="http://down.qq.com/lol/dltools/LOL_V3.1.9.9_FULL_TDL_speeded_signed.exe">
					<img src="images/index/downloadlog.png"></a>
				</td>
				<td id="main-bottom-active">
					<h2>活动资讯</h2>
				</td>
				<td id="main-bottom-video">
					<h2>最新视频</h2>
				</td>
				<td id="main-bottom-hero">
				<h2>周免英雄</h2>
				</td>
				<td id="main-bottom-login">
				<%log("登陆"); %>
					<a href="${contextPath}/login?action=toLogin">
					<h2>登录</h2></a>
				</td>
				</td>
				<td id="main-bottom-register">
					<a href="register.jsp" target="_blank"><h2>注册</h2></a>
				</td>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>