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
		<a href="manageindex.html">主页</a><a href="manageheader.html">&gt用户管理</a>&gt修改用户管理
	</h2>
	<form action="#" method="post">
		<div class="manage">
			<table class="usermanage">
				<tr>
					<th>用户ID</th>
					<th width="100">密码</th>
					<th width="100">昵称</th>
					<th width="100">用户姓名</th>
					<th width="100">性别</th>
					<th width="100">出生日期</th>
					<th width="100">手机号</th>
					<th width="100">邮编</th>
					<th width="100">发货地址</th>

				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>

				</tr>


				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>

				</tr>

			</table>
			<div class="three">
				<input type="image" src="images/querenxiugai.png"
					style="padding-top:10px;" />
			</div>
		</div>
	</form>
</body>

</html>