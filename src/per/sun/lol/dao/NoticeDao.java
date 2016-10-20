package per.sun.lol.dao;

import java.util.List;

import per.sun.lol.entity.Notice;

public interface NoticeDao
{
	/**
	 * 获取公告列表
	 * 
	 * @return notice
	 */
	List<Notice> getNotices();
	
	/**
	 * 更新公告
	 * @param notice
	 */
	void update(Notice notice);
	
	/**
	 * 通过id查找公告
	 */
	Notice findById(String id);
}
