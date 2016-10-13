package per.sun.lol.dao.impl;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import per.sun.lol.dao.UserDao;
import per.sun.lol.entity.User;
import per.sun.lol.util.JdbcUtil;

public class UserDaoImpl  implements UserDao
{
	public UserDaoImpl()
	{
		
	}

	public boolean addUser()
	{
		PreparedStatement stmt = null;
		boolean rs = false;
		
		Connection connection = JdbcUtil.getConnection();
		String sql = "insert into users values(1,'s','s','sun','sex','s',232,32,'dsa'";
		try
		{
			rs = stmt.executeUpdate() == 1 ? true : false;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;
	}

	public User fingByID(String id) throws SQLException
	{
		// TODO Auto-generated method stub
		return null;
	}

	public List<User> getAllUsers() throws SQLException
	{
		List<User> userList = null;
		Connection connection = JdbcUtil.getConnection();
		Statement  statement = null;
		ResultSet rs = null;
		String sql= "select * from users";
		
		try
		{
			statement = connection.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next())
			{
				if(userList == null)
					userList = new ArrayList<User>();
				User user = new User();
				user.setUserID(rs.getLong("id"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setUsername(rs.getString("username"));
				user.setSex(rs.getString("sex"));
				//user.setBirthDate(rs.getDate("birthDate"));
				user.setPhone(rs.getString("phone"));
				user.setPostcode(rs.getString("postcode"));
				user.setAddress(rs.getString("address"));
				userList.add(user);
			}
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userList;
	}
}





























