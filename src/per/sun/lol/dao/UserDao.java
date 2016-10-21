package per.sun.lol.dao;

import java.sql.SQLException;
import java.util.List;

import per.sun.lol.entity.User;

public interface UserDao
{
	/**
	 * 通过用户名查找用户
	 * @param name
	 * @return
	 * @throws SQLException
	 */
	User fingByName(String name) throws SQLException;
	
	/**
	 * 通过id查找用户
	 * @param id
	 * @return
	 */
	User findUserById(String id);
	
	/**
	 * 添加一个用户
	 */
	boolean addUser(User user);
	
	/**
	 * 获取用户列表
	 * @return
	 * @throws SQLException
	 */
	List<User> getAllUsers() throws SQLException;
	
	/**
	 * 更新用户
	 * @param user
	 */
	void update(User user);
	
	/**
	 * 添加一个用户
	 * @param user
	 */
	void add(User user);
	
	/**
	 * 删除用户
	 * @param id
	 */
	void delete(String id);

}
