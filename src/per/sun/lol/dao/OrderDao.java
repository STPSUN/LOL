package per.sun.lol.dao;

import java.util.List;

import per.sun.lol.entity.Order;

public interface OrderDao
{
	/**
	 * 获取订单列表
	 * @return
	 */
	List<Order> getAllOrders();
	
	/**
	 * 更新订单
	 * @param order
	 */
	void update(Order order);
	
	/**
	 * 通过id查找订单
	 * @param id
	 * @return order
	 */
	Order findById(String id);
	
	/**
	 * 添加订单
	 * @param order
	 */
	void add(Order order);
	
	/**
	 * 删除订单
	 * @param id
	 */
	void delete(String id);
}
