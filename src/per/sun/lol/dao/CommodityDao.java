package per.sun.lol.dao;

import java.util.List;

import per.sun.lol.entity.Commodity;

public interface CommodityDao
{
	List<Commodity> getAllCommodity();
	
	List<Commodity> findByName(String name);
	
	boolean addCommodity(Commodity item);

}
