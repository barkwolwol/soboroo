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
	
	@RequestMapping("pmtNotice.bo")
	public String pmtNotice() {
		return "board/pmtNoticeForm";
	
	
	
}
	@RequestMapping("pmtenrollForm.bo")
	public String pmtenrollForm() {
		return "board/pmtEnrollForm";
	
	
	
}
}
