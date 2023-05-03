package com.kh.soboroo.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.admin.model.dao.AdminDao;
import com.kh.soboroo.admin.model.vo.Admin;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.notice.model.vo.Notice;

@Service
public class AdminServiceImpl implements AdminService {
	
	
	@Autowired
	private AdminDao aDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Notice> selectNoticeList(PageInfo pi) {
		
		return aDao.selectNoticeList(sqlSession, pi);
		
	}

	@Override
	public int selectNoticeListCount() {
		return aDao.selectNoticeListCount(sqlSession);
	}
	

}
