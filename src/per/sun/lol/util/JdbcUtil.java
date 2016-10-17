package per.sun.lol.util;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
public class JdbcUtil
{
	//建立链接
	public static Connection getConnection()
	{
		Connection connection = null;
		try
		{
			//加载驱动
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try
		{
			//建立链接
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","lol","sun");
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return connection;
	}
	
	//关闭链接
	public static void release(Connection connection, Statement stmt, ResultSet rs)
	{
		if(rs != null)
			try
			{
				rs.close();
			} catch (SQLException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(stmt != null)
			try
			{
				stmt.close();
			} catch (Exception e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(connection != null)
			try
			{
				connection.close();
			} catch (SQLException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
























