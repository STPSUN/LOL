package per.sun.lol.Service.impl;

import java.util.ArrayList;
import java.util.List;

import per.sun.lol.Service.NoticeService;
import per.sun.lol.dao.NoticeDao;
import per.sun.lol.dao.impl.NoticeDaoImpl;
import per.sun.lol.entity.Notice;

public class NoticeServiceImpl implements NoticeService
{

	public List<Notice> getNotices()
	{
		List<Notice> nList = new ArrayList<Notice>();
		NoticeDao noticeDao = new NoticeDaoImpl();
		
		nList = noticeDao.getNotices();
		
		return nList;
	}

	public void modifyNotice(Notice notice)
	{
		NoticeDao noticeDao = new NoticeDaoImpl();
		noticeDao.update(notice);
	}

	public Notice getNoticeById(String id)
	{
		Notice notice = null;
		NoticeDao noticeDao = new NoticeDaoImpl();
		notice = noticeDao.findById(id);
		
		return notice;
	}

	public void addNotice(Notice notice)
	{
		NoticeDao noticeDao = new NoticeDaoImpl();
		noticeDao.add(notice);
	}

	public void deleteNotice(String id)
	{
		NoticeDao noticeDao = new NoticeDaoImpl();
		noticeDao.delete(id);
		
	}
}
