package com.kh.soboroo.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
		
		// 관리자 로그인 페이지 호출 // 지금은 홈화면
		@RequestMapping("adminLogin.me")
		public String adminLogin() {
			return "admin/adminIndex";	
		}
			
		// 관리자 회원 관리 페이지 호출
		@RequestMapping("memberInfo.ad")
		public String memberInfo() {
			return "admin/memberInfo";
		}
		
		// 관리자 회원 정보 수정 페이지 호출
		@RequestMapping("updateInfo.ad")
		public String updateMemberInfo() {
			return "admin/updateMemberInfo";
		}
		
		// 관리자 정지 회원 페이지 호출
		@RequestMapping("susMember.ad")
		public String suspendMember() {
			return "admin/suspendMemberInfo";
		}
		
		// 관리자 탈퇴 회원 페이지 호출
		@RequestMapping("withdrawMember.ad")
		public String withdrawMember() {
			return "admin/withdrawalMemberInfo";
		}
		
		// 관리자 온라인 반짝 모임 관리 페이지 호출
		@RequestMapping("onlineone.ad")
		public String onlineOneInfo() {
			return "admin/onlineOneInfo";
		}
		
		// 관리자 온라인 정기 모임 관리 페이지 노출
		@RequestMapping("onlineleg.ad")
		public String onlineRegInfo() {
			return "admin/onlineRegInfo";
		}
		
		// 관리자 온라인 목표 모임 관리 페이지 노출
		@RequestMapping("onlinegoal.ad")
		public String onlineGoalInfo() {
			return "admin/onlineGoalInfo";
		}
		
		// 관리자 온라인 디데이 모임 관리 페이지 노출
		@RequestMapping("onlineDday.ad")
		public String onlineDdayInfo() {
			return "admin/onlineDdayInfo";
		}
	
		// 관리자 오프라인 반짝 모임 관리 페이지 호출
		@RequestMapping("offlineone.ad")
		public String offlineOneInfo() {
			return "admin/offlineOneInfo";
		}
		
		// 관리자 오프라인 정기 모임 관리 페이지 노출
		@RequestMapping("offlineleg.ad")
		public String offlineRegInfo() {
			return "admin/offlineRegInfo";
		}
		
		// 관리자 오프라인 목표 모임 관리 페이지 노출
		@RequestMapping("offlinegoal.ad")
		public String offlineGoalInfo() {
			return "admin/offlineGoalInfo";
		}
		
		// 관리자 오프라인 디데이 모임 관리 페이지 노출
		@RequestMapping("offlineDday.ad")
		public String offlineDdayInfo() {
			return "admin/offlineDdayInfo";
		}
		
	
		
		// 관리자 통합 신고 관리 페이지 호출
		@RequestMapping("report.ad")
		public String intergrateReport() {
			return "admin/intergratedReport";
		}
		
		// 관리자 게시글 관리 페이지 호출
		@RequestMapping("board.ad")
		public String boardInfo() {
			return "admin/boardInfo";
		}
		
		// 관리자 공지사항 관리 페이지 호출
		@RequestMapping("notice.ad")
		public String noticeInfo() {
			return "admin/noticeInfo";
		}
		
	
	
}
