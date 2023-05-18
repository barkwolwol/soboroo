package com.kh.soboroo.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.soboroo.board.model.service.BoardServiceImpl;
import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.board.model.vo.Reply;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.common.template.Pagination;
import com.kh.soboroo.notice.model.vo.Notice;


@Controller
public class BoardController {

	@Autowired
	private BoardServiceImpl bService;
	
	
	@RequestMapping("list.bo")
	public ModelAndView selectBoardList(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv,int category ) {
		

			int listCount = bService.selectBoardListCount(category);
			//System.out.println(listCount);
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
			
			
			ArrayList<Board> list = bService.selectBoardList(pi,category);
			
			mv.addObject("pi", pi).addObject("list",
					list).setViewName("board/boardListView");

		return mv;
	}
	
	 @RequestMapping("detail.bo")
		public ModelAndView selectBoard(int bno, ModelAndView mv) {
		 
		 int result = bService.increaseCount(bno);
		 
		 //System.out.println(result);
		 
		 
		 if(result > 0) {
			 //System.out.println("이거타나요");
			 Board b = bService.selectBoard(bno);
			 
			 mv.addObject("b", b).setViewName("board/boardDetailView");
		 }else {
			 mv.addObject("errorMsg", "게시글 상세 조회 실패!").setViewName("common/errorPage");
			 
			 }
		 return mv;
	 }
	 
	 @RequestMapping("boardupdate.bo")
		public String updateForm() {
			return "board/boardUpdateForm";	// 포워딩(모델)	
		}
	 
	 @RequestMapping("enroll.bo")
		public String enrollForm() {
	
			return "board/boardEnrollForm";
			
		}
	 
	 @RequestMapping("insert.bo")
	 public String insertBoard(Board b, HttpSession session, Model model) {
		 
		 // board table insert
		 int result1 = bService.insertBoard(b);
		 //System.out.println(b);
		 int uploadNo = 0;
		 int result2 = 1;
		 if(uploadNo != 0  ) {
			 uploadNo = (int)session.getAttribute("uploadNo");
			 // upload table update
			 result2 = bService.updateUpload(uploadNo); 
		 }
		 
		 
		 if(result1 > 0 && result2 > 0) {
			 session.setAttribute("alertMsg", "게시글이 성공적으로 등록되었습니다.");
			 return "redirect:list.bo?category=0";
		 }else {
			 model.addAttribute("errorMsg", "게시글 등록 실패");
			 return "common/errorPage";
		 }
		 
	 }
	 
	 @RequestMapping("search.bo")
	 public ModelAndView searchBoard(String keyword, String condition, ModelAndView mv) {
		 int currentPage = 1;
		 HashMap<String, String> map = new HashMap<String, String>();
		 map.put("condition", condition);
		 map.put("keyword", keyword);	
		 
		 int listCount = bService.selectSearchCount(map);
		 PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		 
		 ArrayList<Board> list = bService.selectSearchList(map, pi);
			
			mv.addObject("pi", pi).addObject("list",
					list).setViewName("board/boardListView");
		
		return mv;
		 
	 }
	 @RequestMapping("updateForm.bo")
		public String updateForm(int bno, Model model) {
			// 해당 게시글 조회 후 셋팅
			model.addAttribute("b", bService.selectBoard(bno));
			return "board/boardUpdateForm";	// 포워딩(모델)	
		}
	 
		@RequestMapping("update.bo")
		public String updateNotice(Board b,HttpSession session, Model model) {
				
		 //System.out.println(b);
			int result = bService.updateBoard(b);
			//System.out.println(result);
			if(result > 0) { // 수정 성공=> 상세페이지
				session.setAttribute("alertMsg", "게시글이 수정되었습니다.");
				return"redirect:detail.bo?bno=" + b.getBoardNo();
			}else { // 수정 실패 => 에러페이지 포워딩
				model.addAttribute("errorMsg", "게시글 수정 실패");
				return "common/errorPage";
			}
		}
		@RequestMapping("delete.bo")
		public String deleteNotice(int bno, String filePath, HttpSession session, Model model) {
			
			int result = bService.deleteBoard(bno);
			
			if(result > 0) {
				// 삭제 성공
	
				// 게시판 리스트 페이지 list.bo url 재요청
				session.setAttribute("alertMsg", "성공적으로 게시글이 삭제 되었습니다");
				return "redirect:list.bo?category=0";
			}else {
				// 삭제 실패
				//에러문구 담아서 에러페이지 포워딩(모델)
				model.addAttribute("errorMsg", "게시글 삭제 실패!");
				return "common/errorPage";
			}
			
		}
		@ResponseBody
		@RequestMapping(value = "rlist.bo", produces = "application/json; charset=utf-8")
		public String ajaxSelectReplyList(int bno) {
			ArrayList<Reply> list = bService.selectReplyList(bno);
			//System.out.println(list);
			return new Gson().toJson(list);
		}
		
		@ResponseBody
		@RequestMapping("rinsert.bo")
		public String ajaxInsertReply(Reply r) {
			int result = bService.insertReply(r);
			
			return result > 0 ? "success" :"fail";
		}
		
		/*
		 * @ResponseBody
		 * 
		 * @RequestMapping("Relist.bo") public String ajaxselectReplyComment(int bno) {
		 * ArrayList<Reply> relist = bService.selectReplyComment(bno); return new
		 * Gson().toJson(relist); }
		 */
		@RequestMapping("report.bo")
		public String reportBoard(int boardNo,HttpSession session, Model model) {
				
		 //System.out.println(b);
			int result = bService.reportBoard(boardNo);
			//System.out.println(result);
			if(result > 0) { // 수정 성공=> 상세페이지
				session.setAttribute("alertMsg", "게시글이 신고되었습니다.");
				return"redirect:list.bo?category=0";
			}else { // 수정 실패 => 에러페이지 포워딩
				model.addAttribute("errorMsg", "게시글 삭제 실패");
				return "common/errorPage";
			}
		}
}
