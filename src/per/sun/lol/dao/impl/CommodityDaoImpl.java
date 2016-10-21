package per.sun.lol.dao.impl;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sun.org.apache.commons.digester.rss.Item;

import per.sun.lol.dao.CommodityDao;
import per.sun.lol.entity.Commodity;
import per.sun.lol.util.JdbcUtil;

public class CommodityDaoImpl implements CommodityDao
{

	public List<Commodity> getAllCommodity()
	{
		List<Commodity> commodityList = null;
		Connection connection = JdbcUtil.getConnection();
		Statement statement = null;
		ResultSet rs = null;
		String sql = "select * from commodity";
		
		try
		{
			statement = connection.createStatement();
			rs = statement.executeQuery(sql);
			while(rs.next())
			{
				if(commodityList == null)
					commodityList = new ArrayList<Commodity>();
				Commodity commodity = new Commodity();
				commodity.setId(rs.getString("id"));
				commodity.setName(rs.getString("name"));
				commodity.setNum(rs.getInt("num"));
				commodityList.add(commodity);
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return commodityList;
	}

	public boolean addCommodity(Commodity item)
	{
		boolean result = false;
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into commodity values(seq_commodity.nextval,?,?)";
		try
		{
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, item.getName());
			pstmt.setInt(2, item.getNum());
			result = pstmt.executeUpdate() == 1 ? true : false;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JdbcUtil.release(connection, pstmt, null);
		return result;
	}

	public List<Commodity> findByName(String name)
	{
		List<Commodity> commodityList = new ArrayList<Commodity>();
		PreparedStatement pstmt =  null;
		ResultSet rs = null;

		Connection connection = JdbcUtil.getConnection();
		
		String sql = "select * from commodity where name=?";
		
		try
		{
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				Commodity commodity = new Commodity();
				commodity.setId(rs.getString("id"));
				commodity.setName(rs.getString("name"));
				commodity.setNum(rs.getInt("num"));
				commodityList.add(commodity);
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JdbcUtil.release(connection, pstmt, rs);
		
		return commodityList;
	}

	public Commodity findById(String id)
	{
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Commodity commodity = null;
		String sql = "select * from commodity where id=?";
		
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next())
			{
				commodity = new Commodity();
				commodity.setId(id);
				commodity.setName(rs.getString("name"));
				commodity.setNum(rs.getInt("num"));
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return commodity;
	}

	public void update(Commodity commodity)
	{
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement ps = null;	
		String sql = "update commodity set name=?, num=? where id=?";
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, commodity.getName());
			ps.setInt(2, commodity.getNum());
			ps.setString(3, commodity.getId());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void add(Commodity commodity)
	{
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement ps = null;
		String sql = "insert into commodity values(seq_commodity.nextval,?,?)";
		try
		{
			ps = connection.prepareStatement(sql);
			
			ps.setString(1, commodity.getName());
			ps.setInt(2, commodity.getNum());
			
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
		String sql = "delete from commodity where id=?";
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
