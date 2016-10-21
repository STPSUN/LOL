package per.sun.lol.Service.impl;

import java.util.ArrayList;
import java.util.List;

import per.sun.lol.Service.CommodityService;
import per.sun.lol.dao.CommodityDao;
import per.sun.lol.dao.impl.CommodityDaoImpl;
import per.sun.lol.entity.Commodity;

public class CommodityServiceImpl implements CommodityService
{

	public List<Commodity> getAllCommodity()
	{
		List<Commodity> commodityList = new ArrayList<Commodity>();
		CommodityDao commodityDao = new CommodityDaoImpl();
		commodityList = commodityDao.getAllCommodity();
		
		return commodityList;
	}

	public void modifyCommodity(Commodity commodity)
	{
		CommodityDao commodityDao = new CommodityDaoImpl();
		commodityDao.update(commodity);
	}

	public Commodity getCommodityById(String id)
	{
		Commodity commodity = null;
		CommodityDao commodityDao = new CommodityDaoImpl();
		commodity = commodityDao.findById(id);

		return commodity;
	}

	public void addCommodity(Commodity commodity)
	{
		CommodityDao commodityDao = new CommodityDaoImpl();
		commodityDao.add(commodity);
	}

	public void deleteCommodity(String id)
	{
		CommodityDao commodityDao = new CommodityDaoImpl();
		commodityDao.delete(id);
	}

}
