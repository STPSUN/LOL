package per.sun.lol.Service.impl;

import java.util.ArrayList;
import java.util.List;


import per.sun.lol.Service.OrderServlet;
import per.sun.lol.dao.OrderDao;
import per.sun.lol.dao.impl.OrderDaoImpl;
import per.sun.lol.entity.Order;

public class OrderServletImpl implements OrderServlet
{

	public List<Order> getAllOrders()
	{
		List<Order> ordersList = new ArrayList<Order>();
		OrderDao orderDao = new OrderDaoImpl();
		ordersList = orderDao.getAllOrders();
		
		return ordersList;
	}

	public void modifyOrder(Order order)
	{
		OrderDao orderDao = new OrderDaoImpl();
		orderDao.update(order);
	}

	public Order getOrderById(String id)
	{
		Order order = null;
		OrderDao orderDao = new OrderDaoImpl();
		order = orderDao.findById(id);
		
		return order;
	}

	public void addOrder(Order order)
	{
		OrderDao orderDao = new OrderDaoImpl();
		orderDao.add(order);
	}

	public void deleteOrder(String id)
	{
		OrderDao orderDao = new OrderDaoImpl();
		orderDao.delete(id);
	}

}
