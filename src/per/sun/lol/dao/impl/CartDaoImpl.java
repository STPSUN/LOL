package per.sun.lol.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import per.sun.lol.dao.CartDao;
import per.sun.lol.entity.Cart;
import per.sun.lol.entity.Notice;
import per.sun.lol.util.JdbcUtil;

public class CartDaoImpl implements CartDao
{

	public void add(Cart cart)
	{
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement ps = null;
		String sql = "insert into cart values(seq_cart.nextval,?,?,?,?,?,?,?)";
		try
		{
			ps = connection.prepareStatement(sql);
			
			ps.setString(1, cart.getFileName());
			ps.setString(2, cart.getName());
			ps.setString(3, cart.getColor());
			ps.setString(4, cart.getSizes());
			ps.setInt(5, cart.getPrice());
			ps.setInt(6, cart.getNum());
			ps.setInt(7, cart.getTotal());
			
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
		String sql = "delete from cart where id=?";
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

	public List<Cart> getAllCart()
	{
		List<Cart> cartList = null;
		Connection connection = JdbcUtil.getConnection();
		Statement ps = null;
		ResultSet rs = null;
		String sql = "select * from cart";
		try
		{
			ps = connection.createStatement();
			rs = ps.executeQuery(sql);
			while(rs.next())
			{
				if(cartList == null)
					cartList = new ArrayList<Cart>();
				Cart cart = new Cart();
				cart.setId(rs.getString("id"));
				cart.setFileName(rs.getString("fileName"));  
				cart.setName(rs.getString("name"));
				cart.setColor(rs.getString("color"));
				cart.setSizes(rs.getString("sizes"));
				cart.setPrice(rs.getInt("price"));
				cart.setNum(rs.getInt("num"));
				cart.setTotal(rs.getInt("total"));
				cartList.add(cart);
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cartList;
	}

	public void update(Cart cart)
	{
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement ps = null;	
		String sql = "update cart set fileName=?,name=?,color=?,sizes=?,price=?,num=?,total=? where id=?";
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, cart.getFileName());
			ps.setString(2, cart.getName());
			ps.setString(3, cart.getColor());
			ps.setString(4, cart.getSizes());
			ps.setInt(5, cart.getPrice());
			ps.setInt(6, cart.getNum());
			ps.setInt(7, cart.getTotal());
			ps.setString(8, cart.getId());
			
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Cart findCartById(String id)
	{
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Cart cart = null;
		String sql = "select * from cart where id=?";
		
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next())
			{
				cart = new Cart();
				cart.setId(id);
				cart.setFileName(rs.getString("fileName"));
				cart.setName(rs.getString("name"));
				cart.setColor(rs.getString("color"));
				cart.setSizes(rs.getString("sizes"));
				cart.setPrice(rs.getInt("price"));
				cart.setNum(rs.getInt("num"));
				cart.setTotal(rs.getInt("total"));
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cart;
	}

}






















