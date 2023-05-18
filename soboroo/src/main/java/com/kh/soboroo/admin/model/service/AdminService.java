package com.kh.soboroo.admin.model.service;

import java.util.ArrayList;


import java.util.HashMap;

import com.kh.soboroo.admin.model.vo.AdminNotice;
import com.kh.soboroo.admin.model.vo.AdminOfflineGroupOnce;
import com.kh.soboroo.admin.model.vo.AdminOnlineGroupOnce;
import com.kh.soboroo.admin.model.vo.AdminBoard;
import com.kh.soboroo.admin.model.vo.AdminMember;
import com.kh.soboroo.common.model.vo.PageInfo;





public interface AdminService {
	
	// 관리자 회원 관리
	ArrayList<AdminMember> selectMemberList(PageInfo pi);
		
		
	// 관리자 공지사항 관리
	ArrayList<AdminNotice> selectNoticeList(PageInfo pi);
	
	
	// 관리자 공지사항 조회수
	int selectNoticeListCount();
	
 
	// 관리자 게시판 관리
	ArrayList<AdminBoard> selectBoardList(PageInfo pi);
	

	// 관리자 게시판 조회수
	int selectBoardListCount();
	
	
	// 관리자 회원 정보 수정
	int adminMemberUpdate(AdminMember m);
	
	// 관리자 회원 상태 변경
	int updateMemberStatus(AdminMember m ,int memStatus);
	
	int deleteAdminInfo(AdminMember loginUser);
	
	// 관리자 공지사항 삭제
	int deleteAdNotice(AdminNotice n,int ntcNo);
	
	
	// 관리자 정지회원 관리
	ArrayList<AdminMember> selectSusMemberList(PageInfo pi);
	
	// 관리자 탈퇴회원 관리
	ArrayList<AdminMember> selectWithdrawMemberList(PageInfo pi);
	
	
	
	// 관리자 통합신고 관리
	ArrayList<AdminMember> selectReportList(PageInfo pi);
	
	// 관리자 회원 수정관리
	AdminMember selectUpdateInfo(int memNo);
	
	
	// 오프라인 반짝모임 관리
	ArrayList<AdminOfflineGroupOnce> selectList(PageInfo pi,int tableNo);
	
	// 오프라인 반짝모임 리스트 조회수
	int selectListCount();

	// 오프라인 반짝모임 리스트에서 최근 모임 조회
	ArrayList<AdminOfflineGroupOnce> selectRecentList(PageInfo pi);
	
	// 온라인 반짝모임 관리
	ArrayList<AdminOnlineGroupOnce> selectOnList(PageInfo pi,int tableNo);
		
	// 온라인 반짝모임 리스트 조회수
	int selectOnListCount();

	// 온라인 반짝모임 리스트에서 최근 모임 조회
	ArrayList<AdminOnlineGroupOnce> selectOnRecentList(PageInfo pi);
	
	
	// 관리자 로그인
	AdminMember loginMember(HashMap<String, Object> userInfo);
	
	
	
	
	
}
