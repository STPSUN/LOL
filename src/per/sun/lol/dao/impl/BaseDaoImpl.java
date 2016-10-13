package per.sun.lol.dao.impl;

import java.sql.Connection;

public class BaseDaoImpl
{
	protected Connection connection;
	
	protected BaseDaoImpl(Connection connection)
	{
		this.connection = connection;
	}
}
