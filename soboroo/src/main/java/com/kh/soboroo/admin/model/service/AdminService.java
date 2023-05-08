package com.kh.soboroo.admin.model.service;

import java.util.ArrayList;


import com.kh.soboroo.admin.model.vo.AdminNotice;
import com.kh.soboroo.admin.model.vo.AdminBoard;
import com.kh.soboroo.admin.model.vo.AdminMember;
import com.kh.soboroo.common.model.vo.PageInfo;



public interface AdminService {
	
	
	// 관리자 로그인 서비스
	
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
	
	
	
}
