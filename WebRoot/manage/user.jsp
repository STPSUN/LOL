<%@page import="per.sun.lol.dao.impl.UserDaoImpl"%>
<%@page import="per.sun.lol.dao.UserDao"%>
<%@page import="per.sun.lol.entity.User"%>
<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	UserDao userDao = new UserDaoImpl();
	List<User> ul = userDao.getAllUsers();
	pageContext.setAttribute("ul", ul);
%>

<!DOCTYPE html>
<html>
<head>
<link href="../css/dingdangguanli.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="../css/a.css">
</head>
<%
	//读取cookie
	Cookie[] ck = request.getCookies();
	Cookie userCookie = null;
	if (ck != null)
	{
		for (Cookie c : ck)
		{
			if ("loginName".equals(c.getName()))
			{
				userCookie = c;
				break;
			}
		}
	}
%>
<jsp:include page="/manage/header.jsp"></jsp:include>
<h2>
	<a href="manageindex.html">主页</a>&gt用户管理
</h2>
<form action="#" method="post">
	<div class="manage">
		<table class="usermanage">
			<tr>
				<td colspan="10" align="center";>工号ID:<input type="text"
					value="" name="quesion" />
				</td>
			</tr>
			<tr>
				<th>工号ID</th>
				<th>密码</th>
				<th>账户名</th>
				<th>等级</th>
				<th>操作</th>
			</tr>
			<c:if test="${empty ul }">
				<tr>
					<td colspan="5" align="center">暂无记录</td>
				</tr>
			</c:if>
			<c:if test="${not empty ul }">
				<c:forEach var="item" items="${ul }">
					<tr>
						<td>${item.id}</td>
						<td>${item.password}</td>
						<td>${item.name}</td>
						<td>${item.status}</td>
						<td class="w1 c">修改 删除</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</form>
</body>
</html>