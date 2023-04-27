package com.kh.soboroo.board.controller;




import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	
	

 
	@RequestMapping("enroll.bo")
	public String enrollBoard() {
		
		return "board/boardEnrollForm";
		
	}
		
	@RequestMapping("list.bo")
	public String selectBoard() {
		
		return "board/boardListView";
		
	}
	@RequestMapping("detail.bo")
	public String detailBoard() {
		return "board/boardDetailView";
	}

}
