package com.kh.soboroo.admin.model.service;

import java.util.ArrayList;






import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.admin.model.dao.AdminDao;
import com.kh.soboroo.admin.model.vo.AdminNotice;
import com.kh.soboroo.admin.model.vo.AdminOfflineGroupOnce;
import com.kh.soboroo.admin.model.vo.AdminOnlineGroupOnce;
import com.kh.soboroo.admin.model.vo.AdminBoard;
import com.kh.soboroo.admin.model.vo.AdminMember;
import com.kh.soboroo.common.model.vo.PageInfo;




@Service
public class AdminServiceImpl implements AdminService {
	
	
	@Autowired
	private AdminDao aDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<AdminNotice> selectNoticeList(PageInfo pi) {
		
		return aDao.selectNoticeList(sqlSession, pi);
		
	}

	@Override
	public int selectNoticeListCount() {
		return aDao.selectNoticeListCount(sqlSession);
	}

	@Override
	public ArrayList<AdminBoard> selectBoardList(PageInfo pi) {
		
		return aDao.selectBoardList(sqlSession,pi);
	}

	@Override
	public int selectBoardListCount() {
		
		return aDao.selectBoardListCount(sqlSession);
	}

	
	@Override
	public ArrayList<AdminMember> selectMemberList(PageInfo pi) {
	
		return aDao.selectMemberList(sqlSession,pi);
	}


	@Override
	public ArrayList<AdminMember> selectSusMemberList(PageInfo pi) {
		
		return aDao.selectSusMemberList(sqlSession, pi);
	}

	@Override
	public ArrayList<AdminMember> selectReportList(PageInfo pi) {
		
		return aDao.selectReportList(sqlSession,pi);
	}


	@Override
	public int adminMemberUpdate(AdminMember m) {
		
		int result = aDao.adminMemberUpdate(sqlSession,m);
		return result;
	}
	
	

	@Override
	public AdminMember selectUpdateInfo(int memNo) {
		
		return aDao.selectUpdateInfo(sqlSession, memNo);
	}

	@Override
	public ArrayList<AdminOfflineGroupOnce> selectList(PageInfo pi, int tableNo) {
		
		return aDao.selectList(sqlSession, pi, tableNo);
	}

	@Override
	public int selectListCount() {
		
		return aDao.selectListCount(sqlSession);
	}


	
	@Override
	public ArrayList<AdminOfflineGroupOnce> selectRecentList(PageInfo pi) {
		
		return aDao.selectRecentList(sqlSession,pi);
	}
	
	

	@Override
	public int updateMemberStatus(AdminMember m , int memStatus) {
		
		int result = aDao.updateMemberStatus(sqlSession,m,memStatus);
		
		return result;
	}

	@Override
	public AdminMember loginMember(HashMap<String, Object> userInfo) {

		AdminMember loginUser = aDao.loginMember(sqlSession, userInfo);
		
		return loginUser;
		
	}

	@Override
	public int deleteAdminInfo(AdminMember loginUser) {
	
		int result = aDao.deleteAdminInfo(sqlSession, loginUser);
		
		return result;
	}

	@Override
	public ArrayList<AdminMember> selectWithdrawMemberList(PageInfo pi) {
		
		return aDao.selectWithdrawMemberList(sqlSession,pi);
	}

	@Override
	public ArrayList<AdminOnlineGroupOnce> selectOnList(PageInfo pi, int tableNo) {
		
		return aDao.selectOnList(sqlSession, pi, tableNo);
	}

	@Override
	public int selectOnListCount() {

		return aDao.selectOnListCount(sqlSession);
	}

	@Override
	public ArrayList<AdminOnlineGroupOnce> selectOnRecentList(PageInfo pi) {

		return aDao.selectOnRecentList(sqlSession,pi);
	}

	@Override
	public int deleteAdNotice(AdminNotice n ,int ntcNo) {
		
		int result = aDao.deleteAdNotice(sqlSession,ntcNo,n);
				
		return result;
		
	}


	
	
	
	

}
