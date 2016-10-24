package per.sun.lol.Service;

import java.util.List;

import per.sun.lol.entity.Cart;

public interface CartService
{
	void addCart(Cart cart);
	void delete(String id);
	List<Cart> getAllCart();
	void modifyCart(Cart cart);
	Cart findCartById(String id);
}
