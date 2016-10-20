package per.sun.lol.Service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import per.sun.lol.Service.UserService;
import per.sun.lol.dao.UserDao;
import per.sun.lol.dao.impl.UserDaoImpl;
import per.sun.lol.entity.User;
import per.sun.lol.util.DataSourceUtil;
import per.sun.lol.util.Jdbc;
import per.sun.lol.util.JdbcUtil;

public class UserServiceImpl implements UserService
{

	public boolean authenticate(String userName, String password)
	{
		boolean result = false;
		UserDao userDao = new UserDaoImpl();
		try
		{
			User user = userDao.fingByName(userName);
			if(password.equals(user.getPassword()))
			{
				result = true;
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public User getUser(String name)
	{
		User user = null;
		User temp = null;
		UserDao userDao = new UserDaoImpl();
		
		try
		{
			temp = userDao.fingByName(name);
			if(temp != null)
			{
				user = temp;
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
	}

	public List<User> getUsers()
	{
		List<User> uList = new ArrayList<User>();
		UserDao userDao = new UserDaoImpl();
		
		try
		{
			uList = userDao.getAllUsers();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return uList;
	}

	
	
}
