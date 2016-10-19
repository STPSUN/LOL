package per.sun.lol.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import sun.util.logging.resources.logging;

public class DataSourceUtil
{
	private static DataSource dataSource;
	
	public static Connection openConnection() throws SQLException
	{
		return dataSource.getConnection();
	}
	
	public static void closeConnection(Connection connection)
	{
		try
		{
			if(connection != null)
				connection.close();
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	static{
		Context ctx;
		try
		{
			ctx = new InitialContext();
			dataSource = (DataSource)ctx.lookup("java:comp/env/jdbc/lol");
		} catch (NamingException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
