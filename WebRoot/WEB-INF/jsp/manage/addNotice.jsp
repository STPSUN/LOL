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
<link href="css/tianjiagonggao.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/a.css">
</head>
<body>
	<h1>后台管理</h1>
	<h2>
		<a href="manageindex.html">主页</a>&gt<a href="gonggaoguanli.html">公告管理</a>&gt添加公告
	</h2>
	<form action="${contextPath }/notice" method="post">
		<input type="hidden" name="action" value="doAdd" />
		<div class="one">
			公告标题：<input type="text" name="title" value="${notice.title }" />
		</div>
		<div class="two">公告内容：</div>
		<textarea cols="50" rows="10" value="${notice.content }"
			name="content"></textarea>
		<br>
		<div class="three">
			<input type="image" src="images/querentianjia.png"/>
		</div>
	</form>
</body>
</html>
