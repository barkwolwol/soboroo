package com.kh.soboroo.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	   // 로그인 페이지 호출
	   @RequestMapping("login.me")
	   public String loginMember() {
	      return "member/loginMember";
	   }

}
