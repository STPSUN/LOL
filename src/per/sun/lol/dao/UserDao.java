package per.sun.lol.dao;

import java.sql.SQLException;
import java.util.List;

import per.sun.lol.entity.User;

public interface UserDao
{
	User fingByName(String name) throws SQLException;
	
	/**
	 * 添加一个用户
	 * @return 成功：true
	 * 			失败：false
	 */
	boolean addUser(User user);
	
	List<User> getAllUsers() throws SQLException;
	
	

}
