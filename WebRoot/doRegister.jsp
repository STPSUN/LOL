<%@page import="per.sun.lol.entity.User"%>
<%@page import="per.sun.lol.dao.impl.UserDaoImpl"%>
<%@page import="per.sun.lol.dao.UserDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	User user = new User(10,"sun","sun","sun","男","12345678902","324","福建",2,"A");
	UserDao userDao = new UserDaoImpl();
	boolean rs = userDao.addUser(user);
	/*请求转发方式显示数据库操作结果会导致表单重复提交问题
	request.setAttribute("registerResult", rs);
	request.getRequestDispatcher("/registerResult.jsp").forward(request, response);*/
	
	response.sendRedirect(request.getContextPath() + "/registerResult.jsp?rs=" + (rs?"1":"0"));
	
%>
