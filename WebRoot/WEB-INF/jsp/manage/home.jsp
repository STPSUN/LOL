<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<link href="css/manageindex.css" type="text/css" rel="stylesheet"/>
	<link rel="stylesheet" type="text/css" href="css/a.css">
</head>
<body>
<div id="qiantai"><a href="../index.html">返回前台</a></div>
<h1>后台管理</h1>
<div id="manage">
<div id="usermanage">
<a href="${contextPath}/user"><h2>用户管理</h2></a>
</div>
<div id="dingdangmanage">
<a href="${contextPath }/order"><h2>订单管理</h2></a>
</div>
<div id="shangpinmanage">
<a href="${contextPath }/commodity"><h2>商品管理</h2></a>
</div>
<div id="gonggaomanage">
<a href="${contextPath }/notice"><h2>公告管理</h2></a>
</div>
<div id="questionmanage">
<a href="${contextPath }/question"><h2>常见问题管理</h2></a>
</div>
<div id="guanliyuanmanage">
<a href="${contextPath }/admin"><h2>管理员管理</h2></a>
</div>
</div>
</body>
</html>