<%@page import="sun.misc.BASE64Decoder"%>
<%@page import="per.sun.lol.dao.impl.UserDaoImpl"%>
<%@page import="per.sun.lol.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	Cookie[] ck = request.getCookies();
	Cookie loginUserCookie = null;
	if (ck != null)
	{
		for (Cookie c : ck)
		{
			if (c.getName().equals("loginName"))
			{
				loginUserCookie = c;
				break;
			}
		}
	}

	if (loginUserCookie != null)
	{
		//获取cookie的值
		String cookieValue = loginUserCookie.getValue();
		//解密
		byte[] cv = new BASE64Decoder().decodeBuffer(cookieValue);
		cookieValue = new String(cv);
		//使用|分隔账号和密码
		String value[] = cookieValue.split("\\|");
		//获取账号和密码
		String userName = null, password = null;
		if (value.length == 2)
		{
			userName = value[0];
			password = value[1];

			log("\nUserName: " + userName + "\nPassword: " + password);
			//将用户名和密码存入request范围
			request.setAttribute("userName", userName);
			request.setAttribute("password", password);

			request.setAttribute("ly", "login.jsp");
			request.getRequestDispatcher("/doLogin.jsp").forward(
					request, response);
		}

	} else
	{
%>
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body onLoad="createCode();">
	<div id="main">
		<form method="post" action="doLogin.jsp"
			onsubmit="return checkForm(this)">
			<input type="hidden" name="ourl"
				value="<%=request.getParameter("ourl")%>" />
			<table width="600px" align="center">
				<tr>
					<td>
						<fieldset>
							<legend>
								<h1>
									<font color="#38ac88">欢迎登录</font>
								</h1>
							</legend>
							<table width="500" align="center">
								<caption>
									<font color="">----------请输入账号信息----------</font>
								</caption>
								<tr>
									<td width="100" height="50" style="text-align:right">账号：</td>
									<td width="250"><input name="login account" value=""
										id="myinput" style="width:200px" type="text"
										onfocus="FocusItem(this)" onblur="CheckItem(this);" /><br />
										<span></span></td>
								</tr>
								<tr>
									<td height="50" style="text-align:right">密码：</td>
									<td><input name="psw1" style="width:200px" id="passWord"
										type="password" onfocus="FocusItem(this)"
										onblur="CheckItem(this);" /><br /> <span></span></td>
								</tr>

								<tr>
									<td height="50" style="text-align:right">验证码：</td>
									<td><input type="text" id="input1" /></td>
									<td><input type="button" id="checkCode" class="code"
										style="width:60px" onClick="createCode()" /> <a href="#"
										onClick="createCode()">看不清楚</a></td>
								</tr>
								<tr>
									<td></td>
									<td><input name="interest" value="1" type="checkbox"
										checked="checked">是否自动登录&nbsp;&nbsp; <input
										name="interest" type="checkbox">记住密码</td>
								</tr>
								<tr>
									<td height="80" colspan="2" align="center"><input
										type="submit" id="Button1" onClick="validate();"
										style="background-color:#38ac88;height:35px" value="确认登录" />
									</td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript" src="js/loginadd.js"></script>
</body>
</html>
<%
	}
%>