<%@page import="javax.imageio.spi.RegisterableService"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	//boolean rs = (Boolean)request.getAttribute("registerResult");
	String rs = request.getParameter("rs");
	
%>

  <body>
  	<%
  		if("1".equals(rs)){
  		//if(rs){
  			response.addHeader("Refresh", "5;url=" + request.getContextPath()+"/index.html");
  	%>
  	<span style="color:red; font-size:15">用户注册成功,5秒后进入主页...</span>
  	<%
  		}else{
  			response.addHeader("Refresh", "5;url=" + request.getContextPath() + "/register.jsp");
  	%>
  	<span style="color:red; font-size:14">用户注册失败,5秒后返回注册页面...</span>
  	<%
  		}
  	%>
  </body>
</html>














