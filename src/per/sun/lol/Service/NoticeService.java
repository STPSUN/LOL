package per.sun.lol.Service;

import java.util.List;

import per.sun.lol.entity.Notice;

public interface NoticeService
{
	/**
	 * 获取公告列表
	 * 
	 * @return notice
	 */
	List<Notice> getNotices();
	
	/**
	 * 修改公告
	 * 
	 * @param notice
	 */
	void modifyNotice(Notice notice);
	
	/**
	 * 根据id查找公告
	 * 
	 * @param id
	 * @return notice
	 */
	Notice getNoticeById(String id);
}
