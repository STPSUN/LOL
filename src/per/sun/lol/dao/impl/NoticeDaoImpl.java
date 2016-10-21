package per.sun.lol.dao.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.crypto.spec.PSource;

import per.sun.lol.dao.NoticeDao;
import per.sun.lol.entity.Notice;
import per.sun.lol.util.JdbcUtil;

public class NoticeDaoImpl implements NoticeDao
{

	public List<Notice> getNotices()
	{
		List<Notice> noticeList = null;
		Connection connection = JdbcUtil.getConnection();
		Statement statement = null;
		ResultSet rs = null;
		String sql = "select * from notice";
		
		try
		{
			statement = connection.createStatement();
			rs = statement.executeQuery(sql);
			while(rs.next())
			{
				if(noticeList == null)
					noticeList = new ArrayList<Notice>();
				Notice notice = new Notice();
				notice.setId(rs.getString("id"));
				notice.setTitle(rs.getString("title"));
				notice.setState(rs.getString("state"));
				notice.setContent(rs.getString("content"));
				noticeList.add(notice);
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return noticeList;
	}

	public void update(Notice notice)
	{
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement ps = null;
		String sql = "update notice set title=?, state=?, content=? where id=?";
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, notice.getTitle());
			ps.setString(2, notice.getState());
			ps.setString(3, notice.getContent());
			ps.setString(4, notice.getId());
			
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public Notice findById(String id)
	{
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Notice notice = null;
		String sql = "select * from notice where id=?";
		
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next())
			{
				notice = new Notice();
				notice.setId(id);
				notice.setTitle(rs.getString("title"));
				notice.setState(rs.getString("state"));
				notice.setContent(rs.getString("content"));
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return notice;
	}

	public void add(Notice notice)
	{
		Connection connection = JdbcUtil.getConnection();
		PreparedStatement ps = null;
		String sql = "insert into notice values(seq_notice.nextval,?,?,?)";
		try
		{
			ps = connection.prepareStatement(sql);
			
			ps.setString(1, notice.getTitle());
			ps.setString(2, notice.getState());
			ps.setString(3, notice.getContent());
			
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
		String sql = "delete from notice where id=?";
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





















