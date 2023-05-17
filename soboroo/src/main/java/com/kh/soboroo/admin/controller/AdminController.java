package com.kh.soboroo.admin.controller;

import java.io.Console;

import java.util.ArrayList;



import java.util.HashMap;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.soboroo.admin.model.service.AdminService;
import com.kh.soboroo.admin.model.service.AdminServiceImpl;
import com.kh.soboroo.admin.model.vo.AdminBoard;
import com.kh.soboroo.admin.model.vo.AdminMember;
import com.kh.soboroo.admin.model.vo.AdminNotice;
import com.kh.soboroo.admin.model.vo.AdminOfflineGroupOnce;
import com.kh.soboroo.admin.model.vo.AdminOfflineGroupRegular;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.common.template.Pagination;
import com.kh.soboroo.member.model.service.MemberServiceImpl;








/**
 * @author cyj
 *
 */
/**
 * 
 *
 */
@Controller
public class AdminController {
	
		@Autowired
		private AdminServiceImpl aService;
		
		
		@RequestMapping("login.ad")
		public ModelAndView loginMember(HashMap<String, Object> userInfo, HttpSession session, ModelAndView mv) {
			AdminMember loginUser = aService.loginMember(userInfo);
			
			if(loginUser != null) {
				session.setAttribute("loginUser", loginUser);
				mv.setViewName("redirect:/");
			}else {
				mv.addObject("errorMsg", "로그인 실패!");
				mv.setViewName("common/errorPage");
			}
			
			return mv;
		}
		
		
		// 관리자 홈페이지 공지사항 
		/**
		 * @param currentPage
		 * @param mv
		 * @return
		 */
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
		/**
		 * @param currentPage
		 * @param mv
		 * @return
		 */
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
		
	
		// 관리자 회원 신고 정보 조회 페이지 호출
		@RequestMapping("updateReport.ad")
		public String updateReportInfo() {
			return "admin/updateReport";
		}
		
		

		
		// 관리자 정지 회원 페이지 호출
		/**
		 * @param currentPage
		 * @param mv
		 * @return
		 */
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
		/**
		 * @param currentPage
		 * @param no
		 * @param mv
		 * @return
		 */
		@RequestMapping("offlineone.ad")
		public ModelAndView selectList(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
									   @RequestParam(value="no", defaultValue = "2") int no, ModelAndView mv) {
			
			int listCount = aService.selectListCount();
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 6);
						
			ArrayList<AdminOfflineGroupOnce> list = aService.selectList(pi);
			
			ArrayList<AdminOfflineGroupOnce> rlist = aService.selectRecentList(pi);
			
			AdminOfflineGroupOnce ao = aService.selectOffList(no);
						
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/offlineOneInfo");
			
			mv.addObject("ao", ao).setViewName("admin/offlineOneInfo");
			
			mv.addObject("pi", pi).addObject("rlist", rlist).setViewName("admin/offlineOneInfo");
			
			System.out.println(rlist);
					
			return mv;
					
		}
		
		// 관리자 오프라인 정기 모임 관리 페이지 노출
		@RequestMapping("offlineleg.ad")
		public ModelAndView offlineRegInfo(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
				   @RequestParam(value="no", defaultValue = "2") int no, ModelAndView mv) {
			
		int listCount = aService.selectRegListCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 6);
			
		ArrayList<AdminOfflineGroupRegular> list = aService.selectRegList(pi);
		
		ArrayList<AdminOfflineGroupRegular> rlist = aService.selectRegularRecentList(pi);
		
		AdminOfflineGroupRegular ao = aService.selectOffRegList(no);
			
		mv.addObject("pi", pi).addObject("list", list).setViewName("admin/offlineRegInfo");
		
		mv.addObject("ao", ao).setViewName("admin/offlineRegInfo");
		
		mv.addObject("pi", pi).addObject("rlist", rlist).setViewName("admin/offlineRegInfo");
		
		System.out.println(rlist);
		
		return mv;

		}
		
		// 관리자 오프라인 목표 모임 관리 페이지 노출
		@RequestMapping("offlinegoal.ad")
		public ModelAndView offlineGoalInfo(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
				   @RequestParam(value="no", defaultValue = "2") int no, ModelAndView mv) {
			
				int listCount = aService.selectListCount();
				
				PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 6);
					
				ArrayList<AdminOfflineGroupOnce> list = aService.selectList(pi);
				
				ArrayList<AdminOfflineGroupOnce> rlist = aService.selectRecentList(pi);
				
				AdminOfflineGroupOnce ao = aService.selectOffList(no);
					
				mv.addObject("pi", pi).addObject("list", list).setViewName("admin/offlineGoalInfo");
				
				mv.addObject("ao", ao).setViewName("admin/offlineGoalInfo");
				
				mv.addObject("pi", pi).addObject("rlist", rlist).setViewName("admin/offlineGoalInfo");
				
				System.out.println(rlist);
				
				return mv;
				
				}
						
		// 관리자 오프라인 디데이 모임 관리 페이지 노출
		@RequestMapping("offlineDday.ad")
		public ModelAndView offlineDdayInfo(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
				   @RequestParam(value="no", defaultValue = "2") int no, ModelAndView mv) {
			
				int listCount = aService.selectListCount();
				
				PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 6);
					
				ArrayList<AdminOfflineGroupOnce> list = aService.selectList(pi);
				
				ArrayList<AdminOfflineGroupOnce> rlist = aService.selectRecentList(pi);
				
				AdminOfflineGroupOnce ao = aService.selectOffList(no);
					
				mv.addObject("pi", pi).addObject("list", list).setViewName("admin/offlineDdayInfo");
				
				mv.addObject("ao", ao).setViewName("admin/offlineDdayInfo");
				
				mv.addObject("pi", pi).addObject("rlist", rlist).setViewName("admin/offlineDdayInfo");
				
				System.out.println(rlist);
				
				return mv;
				
				}
		
		
		// 관리자 통합 신고 관리 페이지 호출
		/**
		 * @param currentPage
		 * @param mv
		 * @return
		 */
		@RequestMapping("report.ad")
		public ModelAndView intergrateReport(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
			
			PageInfo pi = Pagination.getPageInfo(0,currentPage, 10, 5);
			
			ArrayList<AdminMember> list = aService.selectReportList(pi);
			
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/intergratedReport");
			
			return mv;
			
			
		}
		
		// 관리자 게시글 관리 페이지 호출
		/**
		 * @param currentPage
		 * @param mv
		 * @return
		 */
		@RequestMapping("board.ad")
		public ModelAndView boardInfo(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
				
				int listCount = aService.selectBoardListCount(); 
				
				PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 10);
				
				ArrayList<AdminBoard> list = aService.selectBoardList(pi);
				
				mv.addObject("pi", pi).addObject("list", list).setViewName("admin/boardInfo");
				
				
				return mv;
			}
		
		
		
		// 관리자 공지사항 관리 페이지 호출
		/**
		 * @param currentPage
		 * @param mv
		 * @return
		 */
		@RequestMapping("notice.ad")
		public ModelAndView noticeInfo(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
			
			int listCount = aService.selectNoticeListCount(); 
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 10);
			
			ArrayList<AdminNotice> list = aService.selectNoticeList(pi);
			
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/noticeInfo");
			
			return mv;

		}
		
		
		
		@RequestMapping("updateMem.ad")
	    public String updateMemberStatus(AdminMember m, HashMap<String, Object> userInfo, HttpSession session,int memStatus, Model model) {
	        // 회원 상태를 업데이트하는 로직을 수행합니다.
	        // memStatus를 사용하여 해당 회원의 상태를 업데이트합니다.
	        // 필요한 데이터베이스 작업 등을 수행하고 결과를 반환합니다.
	        
	        // 예시로 "success" 문자열을 반환하도록 작성했습니다.
				System.out.println(memStatus);
				
				System.out.println(m);
			
			    int result = aService.updateMemberStatus(m,memStatus);
			    
			    System.out.println(result);
			
				if(result > 0) {
				
				AdminMember updateMem = aService.loginMember(userInfo);
				
				session.setAttribute("loginUser", updateMem);
				
				session.setAttribute("alertMsg", "성공적으로 회원정보 변경 되었습니다.");
				
				return "redirect:/memberInfo.ad";
					
				
			}else { // 수정 실패
				
				model.addAttribute("errorMsg", "회원정보 변경 실패!");
				return "common/errorPage";
			}
			

			
	    }

	
}
