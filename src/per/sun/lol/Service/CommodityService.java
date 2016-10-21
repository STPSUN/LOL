package per.sun.lol.Service;

import java.util.List;

import per.sun.lol.entity.Commodity;

public interface CommodityService
{
	List<Commodity> getAllCommodity();
	void modifyCommodity(Commodity commodity);
	Commodity getCommodityById(String id);
	void addCommodity(Commodity commodity);
	void deleteCommodity(String id);
}
