package per.sun.lol.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import per.sun.lol.dao.OrderDao;
import per.sun.lol.entity.Notice;
import per.sun.lol.entity.Order;
import per.sun.lol.util.JdbcUtil;

public class OrderDaoImpl implements OrderDao
{

	public List<Order> getAllOrders()
	{
		List<Order> orderList = null;
		Connection connection = JdbcUtil.getConnection();
		Statement statement = null;
		ResultSet rs = null;
		String sql = "select * from orders";
		
		try
		{
			statement = connection.createStatement();
			rs = statement.executeQuery(sql);
			while(rs.next())
			{
				if(orderList == null)
					orderList = new ArrayList<Order>();
				Order order = new Order();
				order.setId(rs.getString("id"));
				order.setBusyer(rs.getString("busyer"));
				order.setAddress(rs.getString("address"));
				order.setState(rs.getString("state"));
				orderList.add(order);
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderList;
	}

	public void update(Order order)
	{
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement ps = null;
		String sql = "update orders set busyer=?, address=?, state=? where id=?";
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, order.getBusyer());
			ps.setString(2, order.getAddress());
			ps.setString(3, order.getState());
			ps.setString(4, order.getId());
			
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Order findById(String id)
	{
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Order order = null;
		String sql = "select * from orders where id=?";
		
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next())
			{
				order = new Order();
				order.setId(id);
				order.setBusyer(rs.getString("busyer"));
				order.setAddress(rs.getString("address"));
				order.setState(rs.getString("state"));
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return order;
	}

	public void add(Order order)
	{
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement ps = null;
		String sql = "insert into orders values(seq_orders.nextval,?,?,?)";
		
		try
		{
			ps = connection.prepareStatement(sql);
			
			ps.setString(1, order.getBusyer());
			ps.setString(2, order.getAddress());
			ps.setString(3, order.getState());
			
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void delete(String id)
	{
		PreparedStatement ps = null;
		Connection connection = JdbcUtil.getConnection();
		String sql = "delete from orders where id=?";
		
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}












