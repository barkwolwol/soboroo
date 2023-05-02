package com.kh.soboroo.admin.model.service;

import java.util.ArrayList;

import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.notice.model.vo.Notice;

public interface AdminService {
	
	
	// 관리자 로그인 서비스
	
	// 공지사항 관리
	
	ArrayList<Notice> selectNoticeList(PageInfo pi);
	
	int selectNoticeListCount();
 
	

}
