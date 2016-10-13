package per.sun.lol.service;

import java.util.List;

import per.sun.lol.entity.User;

/**
 * 用户管理相关服务
 * 
 * @author sun
 *
 */
public interface UserService
{
	/**
	 * 根据id找到用户
	 * @param userID
	 * @return id
	 */
	User getUserById(String id);
	
	/**
	 * 获取用户列表
	 * 
	 * @return userList
	 */
	List<User> getUsers();

}
