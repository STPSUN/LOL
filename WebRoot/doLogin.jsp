<%@page import="per.sun.lol.dao.impl.UserDaoImpl"%>
<%@page import="per.sun.lol.dao.UserDao"%>
<%@page import="per.sun.lol.entity.User" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String userName = request.getParameter("login account");
	String password = request.getParameter("psw1");
	
	UserDao userDao = new UserDaoImpl();
	User user = userDao.fingByName(userName);

	if(user != null && password.equals(user.getPassword()))
	{
		//将登录的用户信息存入session
		session.setAttribute("loginUser", user);
		
		//将登录的用户信息存入cookie
		Cookie cookie = new Cookie("loginName", user.getName());
		cookie.setMaxAge(300);
		response.addCookie(cookie);
		if(user.getStatus() == 1)
			response.sendRedirect(request.getContextPath()+"/manage/user.jsp");
		else
			response.sendRedirect(request.getContextPath()+"/index.html");
	}else
	{
		request.setAttribute("error", "用户名或者密码错误！");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
%>