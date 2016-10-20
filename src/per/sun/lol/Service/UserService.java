package per.sun.lol.Service;

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
	 * 查找用户
	 * @param name
	 * @return
	 */
	User getUser(String name);
	
	/**
	 * 获取用户列表
	 */
	List<User> getUsers();
	

}
