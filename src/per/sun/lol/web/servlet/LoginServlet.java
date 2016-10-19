package per.sun.lol.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import per.sun.lol.Service.UserService;
import per.sun.lol.Service.impl.UserServiceImpl;
import per.sun.lol.entity.User;
import per.sun.lol.util.WebUtil;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class LoginServlet extends HttpServlet
{
	UserService userService = new UserServiceImpl();

	/**
	 * Constructor of the object.
	 */
	public LoginServlet()
	{
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy()
	{
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		//确定action
		String action = "toLogin";
		String ac = request.getParameter("action");
		if(ac != null)
		{
			action = ac;
		}
		//根据action进行相应处理
		if("toLogin".equals(action))
		{
			toLogin(request,response);
		}else if("doLogin".equals(action))
		{
			doLogin(request, response);
		}
		
	}

	private void doLogin(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		//获取用户输入的用户名，密码
		String userName = request.getParameter("login account");
		String password = request.getParameter("psw1");
		//调用userService进行用户认证
		boolean result = userService.authenticate(userName, password);
		
		if(result == false)
		{
			//认证没有通过，使用request.setAttribute()方法保存错误信息，并将页面转发到login.jsp
			request.setAttribute("error", "用户名不存在或密码错误");
			request.getRequestDispatcher("WEB-INF/jsp/login.jsp").forward(request, response);
			log("用户名不存在或密码错误");
		}else
		{
			//认证通过，存session，写cookie，跳转
			User user = userService.getUser(userName);
			request.getSession().setAttribute(WebUtil.LOGINED_USER, user);
			//判断用户是否勾选了自动登陆
			String isAutoLogin = request.getParameter("isAutoLogin");
			if("1".equals(isAutoLogin))
			{
				String ocv = user.getName()+ "|" + user.getPassword();
				String cv = new BASE64Encoder().encode(ocv.getBytes());
				//将登陆的用户信息存入cookie
				Cookie cookie = new Cookie(WebUtil.LOGINED_USER, cv);
				cookie.setMaxAge(4000);
				response.addCookie(cookie);
			}
			navigate(request, response, user);
		}
	}
	
	private void toLogin(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException
	{
		//取cookie
		Cookie[] ck = request.getCookies();
		Cookie loginUserCookie = null;
		if(ck != null)
		{
			for(Cookie c : ck)
			{
				if(c.getName().equals(WebUtil.LOGINED_USER))
				{
					loginUserCookie = c;
					break;
				}
			}
		}
		//取到cookie
		if(loginUserCookie != null)
		{
			String cookieValue = loginUserCookie.getValue();
			byte[] cv = new BASE64Decoder().decodeBuffer(cookieValue);
			cookieValue = new String(cv);
			String value[] = cookieValue.split("\\|");
			String userName = null, password = null;
			User user = null;
			if(value.length == 2)
			{
				userName = value[0];
				password = value[1];
				log("\nUserName: " + userName + "\nPassword: " + password);
				//调用userService进行用户认证
				boolean result = userService.authenticate(userName, password);
				if(result == true)
				{
					user = userService.getUser(userName);
				}
			}
			
			if(user == null)
			{
				//认证没有通过，删除cookie，显示登陆表单
				Cookie c = new Cookie(WebUtil.LOGINED_USER, null);
				c.setMaxAge(0);
				response.addCookie(c);
				request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
			}else
			{
				//认证通过，存session，跳转
				request.getSession().setAttribute(WebUtil.LOGINED_USER, user);
				navigate(request, response, user);
			}
		}else
		{
			//没有取到cookie，显示登陆表单
			request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
			log("/WEB-INF/jsp/login.jsp");
		}
		
	}

	private void navigate(HttpServletRequest request,
			HttpServletResponse response, User loginUser) throws IOException
	{
		String ourl = request.getParameter("ourl");
		if(ourl != null && !"".equals(ourl))
		{
			//如果有原始请求地址，按原始请求地址跳转
			ourl = URLDecoder.decode(ourl, "utf-8");
			response.sendRedirect(ourl);
		}else if(loginUser.getStatus() == 1)
		{
			//没有原始请求地址，用户类型是管理员，跳转到后台首页
			response.sendRedirect(request.getContextPath() + "/manageHome");
		}else if(loginUser.getStatus() == 2)
		{
			//没有原始请求地址，用户类型是普通用户，跳转到前台首页
			response.sendRedirect(request.getContextPath() + "/home");
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException
	{
		// Put your code here
	}

}
