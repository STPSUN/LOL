package per.sun.lol.dao;

import java.util.List;

import per.sun.lol.entity.Cart;

public interface CartDao
{
	void add(Cart cart);
	void delete(String id);
	List<Cart> getAllCart();
	void update(Cart cart);
	Cart findCartById(String id);
}
