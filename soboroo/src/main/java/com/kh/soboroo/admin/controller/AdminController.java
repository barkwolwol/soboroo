package com.kh.soboroo.admin.controller;

import java.io.Console;
import java.io.File;

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
import com.kh.soboroo.admin.model.vo.AdminOnlineGroupOnce;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.common.template.Pagination;









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
		
		
		// 관리자 회원 탈퇴
		@ResponseBody
		@RequestMapping("deleteMem.ad")
		public String deleteAdminInfo(AdminMember m, HttpSession session) {
			
			AdminMember loginUser = (AdminMember)session.getAttribute("loginUser");
			
			loginUser.setMemStatus(m.getMemStatus());
			
			int result = aService.deleteAdminInfo(loginUser);
			
			System.out.println(result);
			
			System.out.println(loginUser);
			
			 if(result > 0) {
			       
			        session.removeAttribute("loginUser");
			        
			        session.setAttribute("alertMsg", "회원 탈퇴되었습니다. 이용해주셔서 감사합니다.");
			        
			        return "redirect:/";
			        
			       
			    } else {
			        session.setAttribute("alertMsg", "회원 탈퇴에 실패하였습니다.");
			        return "redirect:memberInfo.ad";
			        
			    }
			
			
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
		public ModelAndView withdrawMember(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
			
			PageInfo pi = Pagination.getPageInfo(0, currentPage, 10, 10);
			
			ArrayList<AdminMember> list = aService.selectWithdrawMemberList(pi);
			
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/withdrawalMemberInfo");
			
			return mv;
		}
		
	
		// 관리자 오프라인 모임 관리 페이지 호출
		/**
		 * @param currentPage
		 * @param no
		 * @param mv
		 * @return
		 */
		@RequestMapping("offlineone.ad")
		public ModelAndView selectList(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
				@RequestParam(value = "tableNo", defaultValue = "6") int tableNo,ModelAndView mv) {
			
			int listCount = aService.selectListCount();
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 10);
						
			ArrayList<AdminOfflineGroupOnce> list = aService.selectList(pi,tableNo);
			
			ArrayList<AdminOfflineGroupOnce> rlist = aService.selectRecentList(pi);
						
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/offlineOneInfo");
			
			mv.addObject("pi", pi).addObject("rlist", rlist).setViewName("admin/offlineOneInfo");
				
			System.out.println(rlist);
					
			return mv;
					
		}
		
		// 관리자 온라인 모임 관리
		
		@RequestMapping("onlineone.ad")
		public ModelAndView selectOnList(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
				@RequestParam(value = "tableNo", defaultValue = "2") int tableNo,ModelAndView mv) {
			
			int listCount = aService.selectOnListCount();
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 10);
						
			ArrayList<AdminOnlineGroupOnce> list = aService.selectOnList(pi,tableNo);
			
			ArrayList<AdminOnlineGroupOnce> rlist = aService.selectOnRecentList(pi);
						
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/onlineOneInfo");
			
			mv.addObject("pi", pi).addObject("rlist", rlist).setViewName("admin/onlineOneInfo");
				
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
		
		// 관리자 공지사항 삭제
		@RequestMapping("deleteNo.ad")
		public String deleteAdNotice(AdminNotice n,int ntcNo, String filePath, HttpSession session, Model model) {
			
			int result = aService.deleteAdNotice(n,ntcNo);
			
			System.out.println(ntcNo);
			
			System.out.println(result);
			
			if(result > 0) {

				session.setAttribute("alertMsg", "성공적으로 게시글이 삭제 되었습니다");
				return "redirect:notice.ad";
				
			}else {
				// 삭제 실패
				//에러문구 담아서 에러페이지 포워딩(모델)
				model.addAttribute("errorMsg", "게시글 삭제 실패!");
				return "common/errorPage";
			}
			
			
		}
		
		
		
		
		@RequestMapping("updateMem.ad")
	    public String updateMemberStatus(AdminMember m, HashMap<String, Object> userInfo, HttpSession session,int memStatus, Model model) {
	    
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
