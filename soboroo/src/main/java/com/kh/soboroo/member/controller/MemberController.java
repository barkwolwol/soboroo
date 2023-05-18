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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UrlPathHelper;

import com.kh.soboroo.member.model.dao.MemberDao;
import com.kh.soboroo.member.model.service.MemberService;
import com.kh.soboroo.member.model.service.MemberServiceImpl;
import com.kh.soboroo.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberServiceImpl mService; // 편의를 위해
	
//	@Autowired
//	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 로그인 페이지 호출 loginPage.me
	@RequestMapping("loginPage.me")
	public String loginPage() {
		   return "member/loginMember";
	}
	
	@RequestMapping("login.me")
	public ModelAndView loginMember(HashMap<String, Object> userInfo, HttpSession session, ModelAndView mv) {
		Member loginUser = mService.loginMember(userInfo);
		
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
		}else {
			mv.addObject("errorMsg", "로그인 실패!");
			mv.setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("enrollForm.me")
	public String enrollForm() {
		return "member/memberEnrollForm";
	}
	
	@RequestMapping(value= "/loginpage_kakao_callback", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session) throws Exception {
//		System.out.println("#########" + code);
		String access_Token = mService.getAccessToken(code);
        
		HashMap<String, Object> userInfo = mService.getUserInfo(access_Token);
		
//		System.out.println("###access_Token#### : " + access_Token);
//		System.out.println("###id#### : " + userInfo.get("id"));
//		System.out.println("###nickname#### : " + userInfo.get("nickname"));
//		System.out.println("###profile_image#### : " + userInfo.get("profile_image"));
//		System.out.println("###thumbnail_image#### : " + userInfo.get("thumbnail_image"));
//		
//		System.out.println("###email#### : " + userInfo.get("email"));
//		System.out.println("###age_range#### : " + userInfo.get("age_range"));
//		System.out.println("###birthday#### : " + userInfo.get("birthday"));
//		System.out.println("###gender#### : " + userInfo.get("gender"));
		
		session.setAttribute("userInfo", userInfo);
//		System.out.println("userInfo의 값은 ?? : " + userInfo);
//		System.out.println("여기는 체크커넥션 메소드 타는 자리");
		
		int result = mService.checkConnection(userInfo);
//		System.out.println("쳌커넥션 후 result : " + result);
		
		if(result > 0) {
			// 로그인 성공
			session.setAttribute("alertMsg", "환영합니다.");
			
			ModelAndView mv = new ModelAndView();
			loginMember(userInfo, session, mv);
			return "redirect:/";
			
		}else {
			// 회원가입
			return "member/memberEnrollForm";
			
		}
		
	}
	
	@RequestMapping("insert.me")
	public String insertMember(Member m, Model model, HttpSession session) {
	   
		HashMap<String, Object> userInfo = (HashMap<String, Object>)session.getAttribute("userInfo");
		
//		System.out.println(userInfo);
		
		m.setKakaoId((String)userInfo.get("id"));
	    m.setMemNickname((String)userInfo.get("nickname"));
	    m.setMemImg((String)userInfo.get("profile_image"));
	    m.setMemEmail((String)userInfo.get("email"));
	    m.setMemAdultNY(((String)userInfo.get("age_range")));
	    m.setMemBirth(((String)userInfo.get("birthday")));
	    m.setMemGender((String)userInfo.get("gender"));
	    

//	    System.out.println(m);
	    int result = mService.insertMember(m);

	    if(result > 0) { // 성공 => 메인페이지 url 재요청! 알람창
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
	

	
	
	

}
