package per.sun.lol.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import per.sun.lol.Service.CartService;
import per.sun.lol.Service.impl.CartServiceImpl;
import per.sun.lol.entity.Cart;

import com.sun.jndi.cosnaming.IiopUrl.Address;

public class ShopServlet extends HttpServlet
{
	CartService cartService = new CartServiceImpl();

	/**
	 * Constructor of the object.
	 */
	public ShopServlet()
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
		String action = "toShop";
		String ac = request.getParameter("action");
		if(ac != null)
			action = ac;
		if("toShop".equals(action))
		{
			request.getRequestDispatcher("/WEB-INF/jsp/shop.jsp").forward(request, response);
		}else if("toView1".equals(action))
		{
			toView1(request, response);
		}else if("toOrder-address".equals(action))
		{
			toOrderAddress(request, response);
		}else if("toPay".equals(action))
		{
			toPay(request, response);
		}else if("toPaySucceed".equals(action))
		{
			toPaySucceed(request, response);
		}else if("addCart".equals(action))
		{
			addCart(request, response);
		}else if("toCart".equals(action))
		{
			toCart(request, response);
		}else if("doCart".equals(action))
		{
			doCart(request, response);
		}else if("cartList".equals(action))
		{
			cartList(request, response);
		}else if("doDeleteCart".equals(action))
		{
			doDeleteCart(request, response);
		}else if("doModifyCart".equals(action))
		{
			doModifyCart(request, response);
		}else if("orderDetail".equals(action))
		{
			orderDetail(request, response);
		}
	}

	private void orderDetail(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		request.setAttribute("cart", cartService.getAllCart());
		request.getRequestDispatcher("/WEB-INF/jsp/order-details.jsp").forward(request, response);
	}

	private void doModifyCart(HttpServletRequest request,
			HttpServletResponse response) throws IOException
	{
		String cartId = request.getParameter("cartId");
		String num = request.getParameter("num");

		Cart cart = new Cart();
		cart = cartService.findCartById(cartId);
		cart.setNum(Integer.valueOf(num));
		
		cartService.modifyCart(cart);
		response.sendRedirect(request.getContextPath() + "/shop?action=cartList");
	}

	private void doDeleteCart(HttpServletRequest request,
			HttpServletResponse response) throws IOException
	{
		String cartId = request.getParameter("id");
		cartService.delete(cartId);
		response.sendRedirect(request.getContextPath() + "/shop?action=cartList");
	}

	private void cartList(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		request.setAttribute("cartList", cartService.getAllCart());
		
		request.getRequestDispatcher("/WEB-INF/jsp/cart.jsp").forward(request, response);
	}

	//立即购买
	private void doCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//把商品添加进购物车
		Cart cart = new Cart();
		cart.setName("决战");
		cart.setColor("彩色");
		cart.setSizes("均码");
		cart.setPrice(40);
		cart.setNum(1);
		cart.setTotal(cart.getNum() * cart.getPrice());
		cartService.addCart(cart);
		//跳转到购物车结算
		response.sendRedirect(request.getContextPath() + "/shop?action=cartList");
//		request.getRequestDispatcher("/WEB-INF/jsp/cart.jsp").forward(request, response);
	}

	private void toCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("/WEB-INF/jsp/cart.jsp").forward(request, response);
	}

	private void addCart(HttpServletRequest request,
			HttpServletResponse response) throws IOException
	{
		//商品加入购物车
		Cart cart = new Cart();
		cart.setName("决战");
		cart.setColor("彩色");
		cart.setSizes("均码");
		cart.setPrice(40);
		cart.setNum(1);
		cart.setTotal(cart.getNum() * cart.getPrice());
		cartService.addCart(cart);
		
		PrintWriter out = response.getWriter();
		out.println("<script type='text/javascript'>");
		out.println("	alert('Cart a success');");
		out.println("	location.href='" + request.getContextPath() + "/shop';");
		out.println("</script>");
		out.flush();
		out.close();
	}

	private void toPaySucceed(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("/WEB-INF/jsp/pay-succeed.jsp").forward(request, response);
	}

	private void toPay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("/WEB-INF/jsp/pay.jsp").forward(request, response);
	}

	private void toOrderAddress(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		request.setAttribute("cart", cartService.getAllCart());
		request.getRequestDispatcher("/WEB-INF/jsp/order-address.jsp").forward(request, response);
	}

	private void toView1(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("/WEB-INF/jsp/shop1-view.jsp").forward(request, response);
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
