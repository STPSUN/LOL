package per.sun.lol.Service;

import java.util.List;

import per.sun.lol.entity.Order;

public interface OrderServlet
{
	List<Order> getAllOrders();
	void modifyOrder(Order order);
	Order getOrderById(String id);
	void addOrder(Order order);
	void deleteOrder(String id);
}
