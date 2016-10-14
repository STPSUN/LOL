<%@page import="per.sun.lol.dao.impl.UserDaoImpl"%>
<%@page import="per.sun.lol.dao.UserDao"%>
<%@page import="per.sun.lol.entity.User"%>
<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/manage/loginControl.jsp" %>
<%
	UserDao userDao = new UserDaoImpl();
	List<User> ul = userDao.getAllUsers();
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
	if(ck != null)
	{
		for(Cookie c : ck)
		{
			if("loginName".equals(c.getName()))
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
						value="" name="quesion" /></td>
				</tr>
				<tr>
					<th>工号ID</th>
					<th>密码</th>
					<th>账户名</th>
					<th>等级</th>
					<th>操作</th>
				</tr>
				<%
					if(ul == null || ul.size() == 0)
					{
				%>
				<tr><td colspan="5" align="center">暂无记录</td></tr>
				<%
					}else{
						for(User u : ul){
				%>
				<tr>
					<td><%=u.getId() %></td>
					<td><%=u.getPassword()==null?"":u.getPassword() %></td>
					<td><%=u.getName()==null?"":u.getName() %></td>
					<td><%=u.getStatus()==1?"1":"2" %></td>
					<td class="w1 c">修改 删除</td>
				</tr>
				<%
						}
					}
				%>
			</table>
		</div>
	</form>
</body>
</html>