package com.kh.soboroo.admin.model.dao;

import java.util.ArrayList;

import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.soboroo.admin.model.vo.AdminBoard;
import com.kh.soboroo.admin.model.vo.AdminMember;
import com.kh.soboroo.admin.model.vo.AdminNotice;
import com.kh.soboroo.admin.model.vo.AdminOfflineGroupOnce;
import com.kh.soboroo.admin.model.vo.AdminOnlineGroupOnce;
import com.kh.soboroo.common.model.vo.PageInfo;




@Repository
public class AdminDao {
	
	// 공지사항 목록 관리
	public ArrayList<AdminNotice> selectNoticeList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
				int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
				
			
				int limit = pi.getBoardLimit();
				
				RowBounds rowBounds = new RowBounds(offset, limit);
				
				return (ArrayList)sqlSession.selectList("adminMapper.selectNoticeList", null, rowBounds);
	}
	
	//  관리자 공지사항 관리 조회수 
	
	public int selectNoticeListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectNoticeListCount");
	}
	
	
	// 게시판 목록 관리
	public ArrayList<AdminBoard> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectBoardList", null, rowBounds);
				
	}
	
	
	// 관리자 게시판 관리 조회수 
	public int selectBoardListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectBoardListCount");
	}
	
	
	public ArrayList<AdminMember> selectMemberList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectMemberList", null, rowBounds);
		
		
	}
	
	public ArrayList<AdminMember> selectSusMemberList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();

		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectSusMemberList", null, rowBounds);
		
	}
	
	public ArrayList<AdminMember> selectReportList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectReportList", null, rowBounds);
		
		
	}
	
	public AdminMember loginMember(SqlSessionTemplate sqlSession, HashMap<String, Object> userInfo) {
		return sqlSession.selectOne("adminMapper.loginMember", userInfo);
	}
	
	public int adminMemberUpdate(SqlSessionTemplate sqlSession, AdminMember m) {
		return sqlSession.update("adminMapper.adminMemberUpdate", m);
	}
	
	
	public AdminMember selectUpdateInfo(SqlSessionTemplate sqlSession, int memNo){
		
		return sqlSession.selectOne("adminMapper.updateMemInfoList",memNo);
		
	}
	
	public ArrayList<AdminOfflineGroupOnce> selectList(SqlSessionTemplate sqlSession, PageInfo pi , int tableNo){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectList", tableNo, rowBounds);
		
	}
	
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("adminMapper.selectListCount");
	}
	
	
	public ArrayList<AdminOfflineGroupOnce> selectRecentList(SqlSessionTemplate sqlSession, PageInfo pi) {
		return (ArrayList)sqlSession.selectList("adminMapper.selectRecentList", pi);
	}
	
	
	public int updateMemberStatus(SqlSessionTemplate sqlSession, AdminMember m , int memStatus) {
		
		m.setMemStatus(memStatus);
		return sqlSession.update("adminMemberUpdate",m);
	}
	
	
	public int deleteAdminInfo(SqlSessionTemplate sqlSession, AdminMember loginUser) {
		
		return sqlSession.update("adminMapper.deleteAdminInfo", loginUser);
	}
	
	public int deleteAdNotice(SqlSessionTemplate sqlSession, int ntcNo , AdminNotice n) {
		
		n.setNtcNo(ntcNo);
		
		return sqlSession.update("adminMapper.deleteAdNotice", ntcNo);
	}
	
	public ArrayList<AdminMember> selectWithdrawMemberList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectWithdrawMemberList", null, rowBounds);
	}
	
	public int selectOnListCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("adminMapper.selectOnListCount", sqlSession);
	}
	
	public ArrayList<AdminOnlineGroupOnce> selectOnRecentList(SqlSessionTemplate sqlSession, PageInfo pi) {
		return (ArrayList)sqlSession.selectList("adminMapper.selectOnRecentList", pi);
	}
	
	
	public ArrayList<AdminOnlineGroupOnce> selectOnList(SqlSessionTemplate sqlSession, PageInfo pi , int tableNo){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectOnList", tableNo, rowBounds);
		
	}
	
	

}
