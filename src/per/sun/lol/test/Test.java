package per.sun.lol.test;

import java.sql.SQLException;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.sun.xml.internal.bind.CycleRecoverable.Context;

import per.sun.lol.Service.UserService;
import per.sun.lol.Service.impl.UserServiceImpl;
import per.sun.lol.dao.CommodityDao;
import per.sun.lol.dao.UserDao;
import per.sun.lol.dao.impl.CommodityDaoImpl;
import per.sun.lol.dao.impl.UserDaoImpl;
import per.sun.lol.entity.Commodity;
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
		System.out.println("main");
		
		//Test test = new Test();
		//test.testFindByName();
		//test.userFindByName();
		//test.authentate();
		


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
