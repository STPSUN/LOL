<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String userName = request.getParameter("login account");
	String password = request.getParameter("psw1");

	if("admin".equals(userName) && "admin".equals(password))
	{
		response.sendRedirect("/index.html");
	}else
	{
		request.setAttribute("error", "用户名或者密码错误！");
		request.getRequestDispatcher("/login.jsp").forward(request, response);
	}
%>