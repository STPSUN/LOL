<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/dingdangguanli.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/a.css">
</head>
<body>
	<h1>后台管理</h1>
	<h2>
		<a href="manageindex.html">主页</a>&gt用户管理
	</h2>
	<form action="#" method="post">
		<div class="manage">
			<table class="usermanage">
				<tr>
					<td colspan="10" align="center";>用户ID:<input type="text"
						value="" name="userID" />
					</td>
				</tr>
				<tr>
					<th>用户ID</th>
					<th width="100">昵称</th>
					<th width="100">姓名</th>
					<th width="100">密码</th>
					<th width="100">性别</th>
					<th width="100">手机号</th>
					<th width="100">邮编</th>
					<th width="100">等级</th>
					<th width="100">发货地址</th>
					<th>操作</th>
				</tr>
				<c:if test="${not empty userList }">
					<c:forEach var="user" items="${userList }">
						<tr>
							<td>${user.id}</td>
							<td>${user.name }</td>
							<td>${user.username }</td>
							<td>${user.password }</td>
							<td>${user.sex }</td>
							<td>${user.phone }</td>
							<td>${user.postcode }</td>
							<td>${user.grade }</td>
							<td>${user.address }</td>
							<td class="w1 c">修改 删除</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty userList }">
					<tr>
						<td colspan="10" align="center">暂无数据</td>
					</tr>
				</c:if>
				
			</table>
		</div>
	</form>
</body>

</html>