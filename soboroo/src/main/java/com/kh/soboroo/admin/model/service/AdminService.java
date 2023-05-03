package com.kh.soboroo.admin.model.service;

import java.util.ArrayList;

import com.kh.soboroo.admin.model.vo.Admin;
import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.notice.model.vo.Notice;


public interface AdminService {
	
	
	// 관리자 로그인 서비스
	
	// 관리자 공지사항 관리
	ArrayList<Notice> selectNoticeList(PageInfo pi);
	
	
	// 관리자 공지사항 조회수
	int selectNoticeListCount();
	
 
	// 관리자 게시판 관리
	ArrayList<Board> selectBoardList(PageInfo pi);
	

	// 관리자 게시판 조회수
	int selectBoardListCount();
	
	
	
}
