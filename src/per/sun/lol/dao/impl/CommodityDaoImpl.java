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
				System.out.print(rs.getInt("id") + " ");
				System.out.print(rs.getString("name") + " ");
				System.out.print(rs.getInt("num") + " ");
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
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
				commodity.setId(rs.getInt("id"));
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

}
