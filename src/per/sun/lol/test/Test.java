package per.sun.lol.test;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.sun.xml.internal.bind.CycleRecoverable.Context;

import per.sun.lol.Service.CommodityService;
import per.sun.lol.Service.NoticeService;
import per.sun.lol.Service.OrderServlet;
import per.sun.lol.Service.UserService;
import per.sun.lol.Service.impl.CommodityServiceImpl;
import per.sun.lol.Service.impl.NoticeServiceImpl;
import per.sun.lol.Service.impl.OrderServletImpl;
import per.sun.lol.Service.impl.UserServiceImpl;
import per.sun.lol.dao.CommodityDao;
import per.sun.lol.dao.NoticeDao;
import per.sun.lol.dao.UserDao;
import per.sun.lol.dao.impl.CommodityDaoImpl;
import per.sun.lol.dao.impl.NoticeDaoImpl;
import per.sun.lol.dao.impl.UserDaoImpl;
import per.sun.lol.entity.Commodity;
import per.sun.lol.entity.Notice;
import per.sun.lol.entity.Order;
import per.sun.lol.entity.User;
import per.sun.lol.util.DataSourceUtil;
import per.sun.lol.util.JdbcUtil;

public class Test
{

	/**
	 * @param args
	 * @throws SQLException 
	 */
	public static void main(String[] args) throws SQLException
	{
		// TODO Auto-generated method stub
		//System.out.println("main");
		
		Test test = new Test();
		//test.get();
		//test.addOrder();
//		test.deleteUser();
		//test.addUser();
//		test.updateUser();
		//test.deleteNotice();
		//test.addNotice();
		//test.noticeFindById2();
		//test.updateNotice2();
		//test.commodityFindById();
		//test.noticeFindById2();
		//test.updateNotice();
		//test.testFindByName();
		//test.userFindByName();
		//test.authentate();
		//test.addCommodity();
		test.deleteCom();
		
	}
	
	public void deleteCom()
	{
		List<Commodity> cList = new ArrayList<Commodity>();
		CommodityService  commodityService = new CommodityServiceImpl();
		cList = commodityService.getAllCommodity();
		for(Commodity commodity : cList)
		{
			System.out.println(commodity.getId() + " " + commodity.getName());
		}
		
	}
	
	public void addCommodity()
	{
		Commodity commodity = new Commodity();
		commodity.setName("ssss");
		commodity.setNum(11);
		
		CommodityService  commodityService = new CommodityServiceImpl();
		commodityService.addCommodity(commodity);
	}
	
	public void get()
	{
		List<Order> orderList = new ArrayList<Order>();
		OrderServlet orderServlet = new OrderServletImpl();
		orderList = orderServlet.getAllOrders();
		for(Order order : orderList)
		{
			System.out.println(order.getId() + " " + order.getAddress());
		}
	}
	
	public void addOrder()
	{
		Order order = new Order();
		order.setBusyer("c");
		order.setAddress("aa");
		order.setState("cc");
		
		OrderServlet orderServlet = new OrderServletImpl();
		orderServlet.addOrder(order);
	}
	
	public void deleteUser()
	{
		UserService userService = new UserServiceImpl();
		userService.deleteUser("2");
	}
	
	public void addUser()
	{
		User user = new User();
		user.setGrade("B");
		user.setAddress("添加测试");
		System.out.println(user.getGrade() + "\t" + user.getAddress());
		
		UserService userService = new UserServiceImpl();
		userService.addUser(user);
	}
	
	public void updateUser()
	{
		User user = new User();
		UserDao userDao = new UserDaoImpl();
		//user = userDao.findUserById("4");
		UserService userService = new UserServiceImpl();
		user = userService.findUserById("4");
		user.setAddress("修改测试");
		user.setName("ttttttt");
		userService.modifyUser(user);
		
		System.out.println(user.getId() + "\t" + user.getAddress());
	}
	
	public void deleteNotice()
	{
		NoticeService noticeService = new NoticeServiceImpl();
		noticeService.deleteNotice("7");
	}
	
	public void addNotice()
	{
		System.out.println("addNotice:");
		Notice notice = new Notice();
		notice.setTitle("bb");
		notice.setState("no");
		notice.setContent("添加测试");
		System.out.println(notice.getId() + notice.getTitle());
		
		//NoticeDao noticeDao = new NoticeDaoImpl();
		//noticeDao.add(notice);
		
		NoticeService noticeService = new NoticeServiceImpl();
		noticeService.addNotice(notice);
	}
	
	public void noticeFindById2()
	{
		Notice notice = null;
		NoticeService noticeService = new NoticeServiceImpl();
		notice = noticeService.getNoticeById("5");
		System.out.println(notice.getId() + "\t" + notice.getTitle() + "\t" + notice.getState());
	}
	
	public void noticeFindById()
	{
		Notice notice = null;
		NoticeDao noticeDao = new NoticeDaoImpl();
		notice = noticeDao.findById("3");
		System.out.println(notice.getId() + "\t" + notice.getTitle() + "\t" + notice.getState());
		
	}
	
	public void updateNotice2()
	{
		Notice notice = null;
		NoticeService noticeService = new NoticeServiceImpl();
		notice = noticeService.getNoticeById("5");
		System.out.println(notice.getId() + "\t" + notice.getTitle() + "\t" + notice.getState());
		
		notice.setTitle("qq");
		notice.setState("eee");
		notice.setContent("zzz");
		noticeService.modifyNotice(notice);
	}
	
	public void updateNotice()
	{
		Notice notice = null;
		NoticeDao noticeDao = new NoticeDaoImpl();
		notice = noticeDao.findById("1");
		System.out.println(notice.getId() + "\t" + notice.getTitle() + "\t" + notice.getState());
		
		notice.setTitle("ss");
		//notice.setState("no");
		notice.setContent("ee");
		noticeDao.update(notice);
		//NoticeService noticeService = new NoticeServiceImpl();
		//noticeService.modifyNotice(notice);
	}
	
	
	public void testAdd()
	{
		Commodity commodity = new Commodity("sun",12);
		CommodityDao commodityDao = new CommodityDaoImpl();
		if(commodityDao.addCommodity(commodity))
		{
			System.out.println("持久化成功");
		}else
		{
			System.out.println("持久化失败");
		}
	}
	
	public void testFindByName()
	{
		CommodityDao commodityDao = new CommodityDaoImpl();
		List<Commodity> cList = commodityDao.findByName("sun");
		System.out.println(cList.size());
		for(Commodity commodity : cList)
		{
			System.out.println(commodity.getId() + "\t" + commodity.getName() + "\t" + commodity.getNum());
		}
	}
	
	public void userFindByName() throws SQLException
	{
		String userName = "admin";
		String password = "admin";
		UserDao userDao = new UserDaoImpl();
		User user = userDao.fingByName(userName);
		if(password.equals(user.getPassword()))
		{
			System.out.println("验证通过");
		}else
		{
			System.out.println("验证失败");
		}
	}
	
}
