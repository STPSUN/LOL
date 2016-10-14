<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="per.sun.lol.entity.User"%>
<%
	User loginUser = (User)session.getAttribute("loginUser");
	if(loginUser == null)
	{
		response.sendRedirect(request.getContextPath()+"/login.jsp");
	}
%>

