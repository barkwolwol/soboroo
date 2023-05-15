package com.kh.soboroo.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.soboroo.admin.model.service.AdminService;
import com.kh.soboroo.admin.model.service.AdminServiceImpl;
import com.kh.soboroo.admin.model.vo.AdminBoard;
import com.kh.soboroo.admin.model.vo.AdminMember;
import com.kh.soboroo.admin.model.vo.AdminNotice;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.common.template.Pagination;
import com.kh.soboroo.member.model.service.MemberServiceImpl;
import com.kh.soboroo.member.model.vo.Member;




@Controller
public class AdminController {
	
		@Autowired
		private AdminServiceImpl aService;
		private MemberServiceImpl mService;
	
		
		// 관리자 홈페이지 공지사항 
		@RequestMapping("adminHome.ad")
		public ModelAndView adminLogin(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
			
			int listCount = aService.selectNoticeListCount(); 
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
			
			ArrayList<AdminNotice> list = aService.selectNoticeList(pi);
			
			ArrayList<AdminBoard> list2 = aService.selectBoardList(pi);
			
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/adminIndex");
			
			mv.addObject("pi", pi).addObject("list2", list2).setViewName("admin/adminIndex");
	
			return mv;

		} 
		
		
		
			
		// 관리자 회원 관리 페이지 호출
		@RequestMapping("memberInfo.ad")
		public ModelAndView memberInfo(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
			
			PageInfo pi = Pagination.getPageInfo(0,currentPage, 10, 10);
			
			ArrayList<AdminMember> list = aService.selectMemberList(pi);
			
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/memberInfo");
			
			return mv;
			
		}
		
		
		// 관리자 회원 정보 수정 페이지 호출
		@RequestMapping("updateInfo.ad")
		public ModelAndView updateMemberInfo(@RequestParam(value = "memNo") int memNo, ModelAndView mv) {
			
			AdminMember m = aService.selectUpdateInfo(memNo);
			
			mv.addObject("m", m).setViewName("admin/updateMemberInfo");
			
			return mv;
		}
		
		
		// 회원 정보 수정
		@RequestMapping("updateMem.ad")
		public String adminMemberUpdate(AdminMember m, HashMap<String, Object> userInfo, HttpSession session, Model model) {
			
			int result = aService.adminMemberUpdate(m);
			
			if(result > 0) {
				
				Member updateMem = mService.loginMember(userInfo);
				
				session.setAttribute("loginUser", updateMem);
				
				session.setAttribute("alertMsg", "성공적으로 회원정보 변경 되었습니다.");
				
				return "redirect:MemberInfo";
				
			}else { // 수정 실패
				
				model.addAttribute("errorMsg", "회원정보 변경 실패!");
				return "common/errorPage";
			}
			
			
		}
		
		
		
		// 관리자 회원 신고 정보 조회 페이지 호출
		@RequestMapping("updateReport.ad")
		public String updateReportInfo() {
			return "admin/updateReport";
		}
		
		

		
		// 관리자 정지 회원 페이지 호출
		@RequestMapping("susMember.ad")
		public ModelAndView suspendMember(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
			
			PageInfo pi = Pagination.getPageInfo(0, currentPage, 10, 10);
			
			ArrayList<AdminMember> list = aService.selectSusMemberList(pi);
			
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/suspendMemberInfo");
			
			return mv;
			
			
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
		public ModelAndView intergrateReport(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
			
			PageInfo pi = Pagination.getPageInfo(0,currentPage, 10, 5);
			
			ArrayList<AdminMember> list = aService.selectReportList(pi);
			
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/intergratedReport");
			
			
			return mv;
			
			
		}
		
		// 관리자 게시글 관리 페이지 호출
		@RequestMapping("board.ad")
		public ModelAndView boardInfo(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
				
				int listCount = aService.selectBoardListCount(); 
				
				PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
				
				ArrayList<AdminBoard> list = aService.selectBoardList(pi);
				
				mv.addObject("pi", pi).addObject("list", list).setViewName("admin/boardInfo");
				
				
				return mv;
			}
		
		
		
		// 관리자 공지사항 관리 페이지 호출
		@RequestMapping("notice.ad")
		public ModelAndView noticeInfo(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
			
			int listCount = aService.selectNoticeListCount(); 
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
			
			ArrayList<AdminNotice> list = aService.selectNoticeList(pi);
			
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/noticeInfo");
			
			return mv;

		}

	
}
