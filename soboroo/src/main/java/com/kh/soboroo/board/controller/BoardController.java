package com.kh.soboroo.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	
	@RequestMapping("list.bo")
	public String selectBoard() {
		
		return "board/boardListView";
		
	}
	
	@RequestMapping("enrollForm.bo")
	public String enrollForm() {
		return "board/boardEnrollForm";
}
	
}
