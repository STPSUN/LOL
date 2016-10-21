package per.sun.lol.Service;

import java.sql.SQLException;
import java.util.List;

import per.sun.lol.entity.User;

public interface UserService
{
	/**
	 * 用户认证
	 * 
	 * @param userName
	 * @param password
	 * 
	 * @return 认证成功：经过认证用户实体
	 * 		   认证失败：null
	 */
	boolean authenticate(String userName, String password);
	
	/**
	 * 通过用户名查找用户
	 * @param name
	 * @return
	 */
	User getUser(String name);
	
	/**
	 * 通过id查找用户
	 * @param id
	 * @return
	 * @throws SQLException 
	 */
	User findUserById(String id);
	
	/**
	 * 获取用户列表
	 */
	List<User> getUsers();
	
	/**
	 * 修改用户
	 * @param user
	 */
	void modifyUser(User user);
	
	/**
	 * 添加用户
	 * @param user
	 */
	void addUser(User user);
	
	/**
	 * 删除用户
	 * @param id
	 */
	void deleteUser(String id);

}
