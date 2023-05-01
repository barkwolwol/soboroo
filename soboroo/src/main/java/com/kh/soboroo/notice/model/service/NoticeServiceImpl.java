package com.kh.soboroo.notice.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.notice.model.dao.NoticeDao;
import com.kh.soboroo.notice.model.vo.Notice;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeDao nDao;
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int selectNoticeListCount() {
		return nDao.selectNoticeListCount(sqlSession);
		
	}

	@Override
	public ArrayList<Notice> selectNoticeList(PageInfo pi) {
		return nDao.selectNoticeList(sqlSession, pi);
	}

	@Override
	public int increaseCount(int ntcNo) {
		return nDao.increaseCount(sqlSession, ntcNo);
	}

	@Override
	public Notice selectNotice(int ntcNo) {
		return nDao.selectNotice(sqlSession, ntcNo);
	}

	@Override
	public int insertNotice(Notice n) {
		return nDao.insertNotice(sqlSession, n);
	}

	@Override
	public int updateNotice(Notice n, int ntcNo) {
		return nDao.updateNotice(sqlSession,n);
	}

	@Override
	public int deleteNotice(int ntcNo) {
		return nDao.deleteNotice(sqlSession, ntcNo);
	}

	

}
