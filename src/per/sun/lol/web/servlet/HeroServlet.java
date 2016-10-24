package per.sun.lol.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HeroServlet extends HttpServlet
{

	/**
	 * Constructor of the object.
	 */
	public HeroServlet()
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

		String action = request.getParameter("action");
		if("hero01".equals(action))
		{
			request.getRequestDispatcher("/WEB-INF/jsp/hero01.jsp").forward(request, response);
		}else if("toVideo".equals(action))
		{
			request.getRequestDispatcher("/WEB-INF/jsp/video.jsp").forward(request, response);
		}else if("hero02".equals(action))
		{
			request.getRequestDispatcher("/WEB-INF/jsp/hero02.jsp").forward(request, response);
		}else if("hero03".equals(action))
		{
			request.getRequestDispatcher("/WEB-INF/jsp/hero03.jsp").forward(request, response);
		}else if("hero04".equals(action))
		{
			request.getRequestDispatcher("/WEB-INF/jsp/hero04.jsp").forward(request, response);
		}else if("hero05".equals(action))
		{
			request.getRequestDispatcher("/WEB-INF/jsp/hero05.jsp").forward(request, response);
		}else if("hero06".equals(action))
		{
			request.getRequestDispatcher("/WEB-INF/jsp/hero06.jsp").forward(request, response);
		}else if("hero07".equals(action))
		{
			request.getRequestDispatcher("/WEB-INF/jsp/hero07.jsp").forward(request, response);
		}else if("hero08".equals(action))
		{
			request.getRequestDispatcher("/WEB-INF/jsp/hero08.jsp").forward(request, response);
		}else if("hero09".equals(action))
		{
			request.getRequestDispatcher("/WEB-INF/jsp/hero09.jsp").forward(request, response);
		}else if("hero10".equals(action))
		{
			request.getRequestDispatcher("/WEB-INF/jsp/hero10.jsp").forward(request, response);
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
