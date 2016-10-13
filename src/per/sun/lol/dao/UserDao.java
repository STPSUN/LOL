package per.sun.lol.dao;

import java.sql.SQLException;
import java.util.List;

import per.sun.lol.entity.User;

public interface UserDao
{
	User fingByID(String id) throws SQLException;
	
	boolean addUser();
	
	List<User> getAllUsers() throws SQLException;
	
	

}
