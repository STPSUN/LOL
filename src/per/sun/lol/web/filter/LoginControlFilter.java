package per.sun.lol.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import per.sun.lol.entity.User;

public class LoginControlFilter implements Filter
{
	FilterConfig config;

	public void destroy()
	{
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException
	{
		HttpServletRequest request = (HttpServletRequest)arg0;
		HttpServletResponse response = (HttpServletResponse)arg1;
		HttpSession session = request.getSession();

		User loginUser = (User)session.getAttribute("loginUser");
		if(loginUser == null)
		{
			String redirectUrl = request.getContextPath() + "/login.jsp";
			String requestUrl = request.getRequestURI();
			log(requestUrl);
			redirectUrl += "?ourl=" + requestUrl;
			response.sendRedirect(redirectUrl);
		}else if(loginUser.getStatus() == 1)
		{
			arg2.doFilter(arg0, arg1);
		}else
		{
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		}
		
	}
	
	void log(String message)
	{
		config.getServletContext().log(message);
	}

	public void init(FilterConfig arg0) throws ServletException
	{
		// TODO Auto-generated method 
		config = arg0;
	}

}
