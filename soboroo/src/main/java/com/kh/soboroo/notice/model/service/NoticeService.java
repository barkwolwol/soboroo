package com.kh.soboroo.notice.model.service;

import java.util.ArrayList;


import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.notice.model.vo.Notice;

public interface NoticeService {
	
	// 1_1. 공지사항 리스트 페이지 서비스(페이징)
	int selectNoticeListCount();
	
	// 1_2. 공지사항 목록조회
	ArrayList<Notice> selectNoticeList(PageInfo pi);
	
	// 2. 공지사항 상세조회
	int increaseCount(int ntcNo);
	Notice selectNotice(int ntcNo);
	
	// 3. 공지사항 등록
	int insertNotice(Notice n);
	
	// 4. 공지사항 수정
	int updateNotice(Notice n);
	
	// 5. 공지사항 삭제
	int deleteNotice(int ntcNo);
	

}
