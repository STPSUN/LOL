<%@page import="sun.misc.BASE64Encoder"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.NEW"%>
<%@page import="per.sun.lol.dao.impl.UserDaoImpl"%>
<%@page import="per.sun.lol.dao.UserDao"%>
<%@page import="per.sun.lol.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String ly = (String) request.getAttribute("ly");
	UserDao userDao = new UserDaoImpl();

	//判断从哪里发起的登录请求
	if ("login.jsp".equals(ly))
	{
		String userName = (String) request.getAttribute("userName");
		String password = (String) request.getAttribute("password");
		User user = userDao.fingByName(userName);
		if (user != null && password.equals(user.getPassword()))
		{
			//将登录的用户信息存入session
			session.setAttribute("loginUser", user);
			//获取原访问地址
			String ourl = request.getParameter("ourl");
			response.sendRedirect(ourl);
		}
	} else //从用户输入的
	{
		//获取用户输入的用户名，密码
		String userName = request.getParameter("login account");
		String password = request.getParameter("psw1");

		//通过DAO获取数据库中的用户
		User user = userDao.fingByName(userName);

		//根据数据库里的用户数据验证用户名，密码
		if (user != null && password.equals(user.getPassword()))
		{
			//将登录的用户信息存入session
			session.setAttribute("loginUser", user);

			//判断用户是否勾选了自动登录
			String isAutoLogin = request.getParameter("interest");
			if ("1".equals(isAutoLogin))
			{
				//加密
				String ocv = user.getName() + "|" + user.getPassword();
				String cv = new BASE64Encoder().encode(ocv.getBytes());
				//将登录的用户信息存入cookie
				Cookie cookie = new Cookie("loginName", cv);
				cookie.setMaxAge(3000);
				response.addCookie(cookie);
			}

			//读取隐藏表单域的原始地址，进行重定向
			String ourl = request.getParameter("ourl");
			if (ourl == null || "null".equals(ourl) || "".equals(ourl))
			{
				//根据用户类型进行不同页面跳转：
				//	普通用户，重定向到index.html
				//	管理员，重定向到manage/user.jsp
				if (user.getStatus() == 1)
					response.sendRedirect(request.getContextPath()
							+ "/manage/user.jsp");
				else
					response.sendRedirect(request.getContextPath()
							+ "/index.html");
			} else
			{
				response.sendRedirect(ourl);
			}
		} else
		{
			//如果用户名，密码错误，使用reque.setAttribute()方法保存错误信息，并将页面转发到login.jsp
			request.setAttribute("error", "用户名或者密码错误！");
			request.getRequestDispatcher("login.jsp").forward(request,
					response);
		}
	}
%>