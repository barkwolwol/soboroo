package com.kh.soboroo.notice.controller;

import java.io.File;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.common.template.Pagination;
import com.kh.soboroo.notice.model.service.NoticeServiceImpl;
import com.kh.soboroo.notice.model.vo.Notice;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeServiceImpl nService;

	@RequestMapping("list.no")
	public ModelAndView selectNoticeList(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
		int listCount = nService.selectNoticeListCount(); 
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<Notice> list = nService.selectNoticeList(pi);
		
		mv.addObject("pi", pi).addObject("list", list).setViewName("notice/noticeListView");
		
		return mv;
		
		
	}
	 @RequestMapping("detail.no")
		public ModelAndView selectNotice(int nno, ModelAndView mv) {
		 
		 int result = nService.increaseCount(nno);
		 
		 //System.out.println(result);
		 
		 
		 if(result > 0) {
			 //System.out.println("이거타나요");
			 Notice n = nService.selectNotice(nno);
			 
			 mv.addObject("n", n).setViewName("notice/noticeDetailView");
		 }else {
			 mv.addObject("errorMsg", "게시글 상세 조회 실패!").setViewName("common/errorPage");
			 
			 }
		 return mv;
	 }
	 
	 
	 @RequestMapping("notupdate.no")
		public String updateForm() {
			return "notice/noticeUpdateForm";	// 포워딩(모델)	
		}
	 
	 @RequestMapping("notenrollForm.no")
		public String enrollForm() {
			return "notice/noticeEnrollForm";
			
		}
	 
		@RequestMapping("insert.no")
		public String insertNotive(Notice n, MultipartFile upfile, HttpSession session, Model model) {
			
			System.out.println(n);
			int result = nService.insertNotice(n);
			
			if(result > 0) { 
				session.setAttribute("alertMsg", "성공적으로 게시글이 등록");
				return "redirect:list.no";
			}else {
				model.addAttribute("errorMsg", "게시글 등록 실패");
				return "common/errorPage";
						
			}
			
		}
		private String saveFile(MultipartFile upfile, HttpSession session) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@RequestMapping("updateForm.no")
		public String updateForm(int nno, Model model) {
			// 해당 게시글 조회 후 셋팅
			model.addAttribute("n", nService.selectNotice(nno)); // [1, 제목, 내용]
			return "notice/noticeUpdateForm";	// 포워딩(모델)	
		}
		
		@RequestMapping("delete.no")
		public String deleteNotice(int nno, String filePath, HttpSession session, Model model) {
			
			int result = nService.deleteNotice(nno);
			
			if(result > 0) {
				// 삭제 성공
	
				// 게시판 리스트 페이지 list.bo url 재요청
				session.setAttribute("alertMsg", "성공적으로 게시글이 삭제 되었습니다");
				return "redirect:list.no";
			}else {
				// 삭제 실패
				//에러문구 담아서 에러페이지 포워딩(모델)
				model.addAttribute("errorMsg", "게시글 삭제 실패!");
				return "common/errorPage";
			}
			
		}
		
	 
		
		@RequestMapping("update.no")
		public String updateNotice(Notice n,HttpSession session, Model model) {
				
		 //System.out.println(n);
			int result = nService.updateNotice(n);
			if(result > 0) { // 수정 성공=> 상세페이지
				session.setAttribute("alertMsg", "게시글이 수정되었습니다.");
				return"redirect:detail.no?nno=" + n.getNtcNo();
			}else { // 수정 실패 => 에러페이지 포워딩
				model.addAttribute("errorMsg", "게시글 수정 실패");
				return "common/errorPage";
			}
		}
}
