package com.kh.soboroo.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class NoticeController {

	 
		@RequestMapping("pmtNotice.no")
		public String pmtNotice() {
			return "notice/pmtNoticeForm";
		
		
		
	}
		@RequestMapping("pmtenrollForm.no")
		public String pmtenrollForm() {
			return "notice/pmtEnrollForm";
		
		
		
	}
}
