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
import per.sun.lol.util.Jdbc;
import per.sun.lol.util.JdbcUtil;

public class UserDaoImpl  implements UserDao
{
	public UserDaoImpl()
	{
		
	}

	public boolean addUser(User user)
	{
		PreparedStatement stmt = null;
		boolean rs = false;
		
		Connection connection = Jdbc.getConnection();
		String sql = "insert into users(id,name,username,password,sex,phone,postcode,address,status,grade) values(?,?,?,?,?,?,?,?,?,?)";
		try
		{
			stmt = connection.prepareStatement(sql);
			stmt.setInt(1, user.getId());
			stmt.setString(2, user.getName());
			stmt.setString(3, user.getUsername());
			stmt.setString(4, user.getPassword());
			stmt.setString(5, user.getSex());
			stmt.setString(6, user.getPhone());
			stmt.setString(7, user.getPostcode());
			stmt.setString(8, user.getAddress());
			stmt.setInt(9, user.getStatus());
			stmt.setString(10, user.getGrade());
			rs = stmt.executeUpdate() == 1 ? true : false;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;
	}

	public User fingByName(String name) throws SQLException
	{
		Connection connection = JdbcUtil.getConnection(); 
		PreparedStatement stmt = null;
		ResultSet rSet = null;
		User user = null;
		
		try
		{
			stmt = connection.prepareStatement("select * from users where name=?");
			stmt.setString(1, name);
			rSet = stmt.executeQuery();
			if(rSet.next())
			{
				user = new User();
				user.setId(rSet.getInt("id"));
				user.setName(name);
				user.setUsername(rSet.getString("username"));
				user.setPassword(rSet.getString("password"));
				user.setSex(rSet.getString("sex"));
				user.setPhone(rSet.getString("phone"));
				user.setPostcode(rSet.getString("postcode"));
				user.setAddress(rSet.getString("address"));
				user.setStatus(rSet.getInt("status"));
				user.setGrade(rSet.getString("grade"));
			}
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
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
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				//user.setUsername(rs.getString("username"));
				//user.setSex(rs.getString("sex"));
				//user.setBirthDate(rs.getDate("birthDate"));
				//user.setPhone(rs.getString("phone"));
				//user.setPostcode(rs.getString("postcode"));
				//user.setAddress(rs.getString("address"));
				user.setStatus(rs.getInt("status"));
				//user.setGrade(rs.getString("grade"));
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





























