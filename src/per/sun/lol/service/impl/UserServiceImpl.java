package per.sun.lol.service.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;


import per.sun.lol.dao.UserDao;
import per.sun.lol.dao.impl.UserDaoImpl;
import per.sun.lol.entity.User;
import per.sun.lol.service.UserService;
import per.sun.lol.util.DataSourceUtil;

public class UserServiceImpl implements UserService
{

	public User getUserById(String id)
	{
		Connection connection = null;
		User user = null;
		try
		{
			connection = DataSourceUtil.openConnection();
			UserDao userDao = new UserDaoImpl();
			user = userDao.fingByID(id);
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
	}

	public List<User> getUsers()
	{
		// TODO Auto-generated method stub
		return null;
	}

}
