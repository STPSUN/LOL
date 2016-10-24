package per.sun.lol.Service.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import per.sun.lol.Service.CartService;
import per.sun.lol.dao.CartDao;
import per.sun.lol.dao.impl.CartDaoImpl;
import per.sun.lol.entity.Cart;
import per.sun.lol.util.JdbcUtil;

public class CartServiceImpl implements CartService
{

	public void addCart(Cart cart)
	{
		CartDao cartDao = new CartDaoImpl();
		cartDao.add(cart);
	}

	public void delete(String id)
	{
		CartDao cartDao = new CartDaoImpl();
		cartDao.delete(id);
	}

	public List<Cart> getAllCart()
	{
		List<Cart> cartList = null;
		CartDao cartDao = new CartDaoImpl();
		
		cartList = cartDao.getAllCart();
		
		return cartList;
	}

	public void modifyCart(Cart cart)
	{
		CartDao cartDao = new CartDaoImpl();
		cartDao.update(cart);
	}

	public Cart findCartById(String id)
	{
		Cart cart = new Cart();
		CartDao cartDao = new CartDaoImpl();
		cart = cartDao.findCartById(id);

		return cart;
	}

}
