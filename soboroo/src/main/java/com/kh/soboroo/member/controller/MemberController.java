package com.kh.soboroo.member.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UrlPathHelper;

import com.kh.soboroo.common.model.vo.CommonData;
import com.kh.soboroo.member.model.service.MemberService;
import com.kh.soboroo.member.model.service.MemberServiceImpl;
import com.kh.soboroo.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberServiceImpl mService; // 편의를 위해
	
//	@Autowired
//	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 로그인 페이지 호출
	@RequestMapping("login.me")
	public String loginMember() {
	   return "member/loginMember";
	}
	
	@RequestMapping("enrollForm.me")
	public String enrollForm() {
		return "member/memberEnrollForm";
	}
	
	@RequestMapping("insert.me")
	public String insertMember(Member m, Model model, HttpSession session) {
		 System.out.println(m);
		// 1. 한글 깨짐 => 스프링에서 제공하는 인코딩 필터 등록 => web.xml 에 등록
		// 2. 나이를 입력하지 않았을 경우 "" 빈 문자열이 넘어오는데 int 형 필드에 담을 수 없어서 400에러 발생
		//    => Member 클래스의 age 필드를 int형 ---> String형으로 변경 (오라클은 자동형변환 잘돼서 상관없음)
		// 3. 비밀번호가 사용자가 입력한 그대로의 평문
		//    => Bcrypt 방식의 암호화를 통해서 암호문으로 변경
		//    1) 스프링 시큐리티 모듈에서 제공하고 있음 (라이브러리 추가 pom.xml)
		//    2) BCryptPasswordEncoder 라는 클래스를 빈으로 등록 (spring-security.xml 파일에)
		//    3) web.xml 에 spring-security.xml 파일을 pre-loading 할 수 있도록 작성
		
		// System.out.println("평문 : " + m.getUserPwd());
		
		// 암호화 작업 (암호문을 만들어내는 과정)
//		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		// System.out.println("암호문 : " + encPwd);
		
		// 이게 제일 중요!!
//		m.setUserPwd(encPwd);	// Member 객체에 userPwd에 평문이 아닌 암호문으로 변경!
		
		int result = mService.insertMember(m);
		
		if(result >0) { // 성공 => 메인페이지 url 재요청! 알람창
			session.setAttribute("alertMsg", "성공적으로 회원가입 되었습니다.");
			return "redirect:/";
		}else { // 실패 => 에러문구 담아서 에러페이지 포워딩
			model.addAttribute("errorMsg", "회원가입 실패!");
			return "common/errorPage";
		}
		
		
	}
	
	@ResponseBody
	@RequestMapping("idCheck.me")
	public String idCheck(String checkId) {
		int count = mService.idCheck(checkId);
		
		return count > 0 ? "NNNNN" : "NNNNY";
		
	}
	
	@RequestMapping(value="/loginpage_kakao_callback", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
		System.out.println("#########" + code);
		String access_Token = mService.getAccessToken(code);
        
		// 위에서 만든 코드 아래에 코드 추가
		HashMap<String, Object> userInfo = mService.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###profile_image#### : " + userInfo.get("profile_image"));
		System.out.println("###thumbnail_image#### : " + userInfo.get("thumbnail_image"));
		
		System.out.println("###email#### : " + userInfo.get("email"));
		System.out.println("###age_range#### : " + userInfo.get("age_range"));
		System.out.println("###birthday#### : " + userInfo.get("birthday"));
		System.out.println("###gender#### : " + userInfo.get("gender"));
        
		return "redirect:/";
    	}
	
	
	

}
