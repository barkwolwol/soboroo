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
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.common.template.Pagination;


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
		 
		 int uploadNo = (int)session.getAttribute("uploadNo");
		 
		 // upload table update
		int result2 = bService.updateUpload(uploadNo);
		 
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
	
}
