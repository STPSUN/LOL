package per.sun.lol.web.servlet.manage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.registry.DeleteException;

import per.sun.lol.Service.UserService;
import per.sun.lol.Service.impl.UserServiceImpl;
import per.sun.lol.entity.User;

public class UserManageServlet extends HttpServlet
{
	UserService userService = new UserServiceImpl();

	/**
	 * Constructor of the object.
	 */
	public UserManageServlet()
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doPost(request, response);

	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String action = "userList";
		String ac = request.getParameter("action");
		if (ac != null)
		{
			action = ac;
		} 
		if ("userList".equals(action))
		{
			userList(request, response);
		} else if ("toModify".equals(action))
		{
			toModify(request, response);
		}else if("doModify".equals(action))
		{
			
		}else if("delete".equals(action))
		{
			delete(request, response);
		}
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String id = request.getParameter("id");
		userService.deleteUser(id);
		response.sendRedirect(request.getContextPath() + "/user?action=userList");
	}

	private void toModify(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		String id = request.getParameter("id");
		//User user = userService.findUserById(id);
		//request.setAttribute("user", user);
		request.getRequestDispatcher("WEB-INF/jsp/manage/user-modify.jsp")
				.forward(request, response);
	}

	private void userList(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		request.setAttribute("userList", userService.getUsers());
		request.getRequestDispatcher("/WEB-INF/jsp/manage/user.jsp").forward(
				request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException
	{
		// Put your code here
	}

}
