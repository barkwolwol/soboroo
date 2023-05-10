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
	
//	@RequestMapping(value="/kakaoLoginPro.do", method=RequestMethod.POST)
//	public Map<String, Object> kakaoLoginPro(@RequestParam Map<String,Object> paramMap,HttpSession session) throws SQLException, Exception {
//		System.out.println("paramMap:" + paramMap);
//		Map <String, Object> resultMap = new HashMap<String, Object>();
//		
//		Map<String, Object> kakaoConnectionCheck = MemberService.kakaoConnectionCheck(paramMap);
//		if(kakaoConnectionCheck == null) { //일치하는 이메일 없으면 가입
//			resultMap.put("JavaData", "register");
//		}else if(kakaoConnectionCheck.get("KAKAOLOGIN") == null && kakaoConnectionCheck.get("EMAIL") != null) { //이메일 가입 되어있고 카카오 연동 안되어 있을시
//			System.out.println("kakaoLogin");
//			MemberService.setKakaoConnection(paramMap);
//			Map<String, Object> loginCheck = MemberService.userKakaoLoginPro(paramMap);
//			session.setAttribute("userInfo", loginCheck);
//			resultMap.put("JavaData", "YES");
//		}else{
//			Map<String, Object> loginCheck = MemberService.userKakaoLoginPro(paramMap);
//			session.setAttribute("userInfo", loginCheck);
//			resultMap.put("JavaData", "YES");
//		}
//		
//		return resultMap;
//	}
	   
	//카카오톡 로그인.. 
//	@RequestMapping(value = "/loginpage_kakao_callback", method = RequestMethod.GET)
//	public String loginpage_kakao_callback(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
//		UrlPathHelper urlPathHelper = new UrlPathHelper();
//		String originalURL = urlPathHelper.getOriginatingRequestUri(request);
//		Map<String, String[]> paramMap = request.getParameterMap();
//		Iterator keyData = paramMap.keySet().iterator();
//		CommonData dto = new CommonData();
//		while (keyData.hasNext()) {
//			String key = ((String) keyData.next());
//			String[] value = paramMap.get(key);
//			dto.put(key, value[0].toString());
//		}
//		String url = "https://kauth.kakao.com/oauth/token";
//		RestTemplate restTemplate = new RestTemplate();
//		HttpHeaders headers = new HttpHeaders();
//		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
//		LinkedMultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
//		map.add("client_id", "0ec377592349e9b86510090df869a4da");
//		String redirect_url = "http://localhost:3500/soboroo/loginpage_kakao_callback";
//		map.add("redirect_uri", redirect_url);
//		map.add("grant_type", "authorization_code");
//		map.add("code", dto.get("code"));
//		System.out.println(map);
//	     
//		HttpEntity<LinkedMultiValueMap<String, String>> request2 = new HttpEntity<LinkedMultiValueMap<String, String>>(map, headers);
//		CommonData response2 = restTemplate.postForObject(url, request2, CommonData.class);
//		map.clear();
//		model.addAttribute("access_token", response2.get("access_token"));
//		return "redirect:/";
//	}

}
