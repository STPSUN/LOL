package per.sun.lol.web.servlet.manage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.bcel.internal.generic.NEW;

import per.sun.lol.Service.NoticeService;
import per.sun.lol.Service.impl.NoticeServiceImpl;
import per.sun.lol.entity.Notice;

public class NoticeManageServlet extends HttpServlet
{
	NoticeService noticeService = new NoticeServiceImpl();

	/**
	 * Constructor of the object.
	 */
	public NoticeManageServlet()
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
		String action = "noticeList";
		String ac = request.getParameter("action");
		if(ac != null)
			action = ac;
		if("noticeList".equals(action))
		{
			noticeList(request, response);
		}else if("toModify".equals(action))
		{
			toModify(request, response);
		}else if("doModify".equals(action))
		{
			doModify(request, response);
		}
	}

	private void doModify(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException
	{
		//收集用户输入的数据
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		//更新之前，先从数据库加载数据
		Notice notice = noticeService.getNoticeById(id);
		
		//用获取道德用户输入更新实体属性
		notice.setTitle(title);
		notice.setContent(content);
		
		//将实体持久化
		noticeService.modifyNotice(notice);
		//request.getRequestDispatcher("WEB-INF/jap/manage/notice.jsp").forward(request, response);
		noticeList(request, response);
		
		//提示并重定向
		//PrintWriter out = response.getWriter();
		//out.println("<script type='text/javascript'>");
		//out.println("   alert('修改成功！);");
//		out.println("   location.href='" + request.getContextPath() + "/notice?action=noticeList';");
//		out.println("</script>");
//		out.flush();
//		out.close();
	}

	private void toModify(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		String noticeId = request.getParameter("id");
		Notice notice = noticeService.getNoticeById(noticeId);
		request.setAttribute("notice", notice);
		request.getRequestDispatcher("/WEB-INF/jsp/manage/notice-modify.jsp").forward(request, response);
	}

	private void noticeList(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		request.setAttribute("noticeList", noticeService.getNotices());
		request.getRequestDispatcher("WEB-INF/jsp/manage/notice.jsp").forward(request, response);
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
