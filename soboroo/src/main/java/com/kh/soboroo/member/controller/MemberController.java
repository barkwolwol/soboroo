package com.kh.soboroo.member.controller;

import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UrlPathHelper;

import com.kh.soboroo.common.model.vo.CommonData;

@Controller
public class MemberController {
	
	// 로그인 페이지 호출
	@RequestMapping("login.me")
	public String loginMember() {
	   return "member/loginMember";
	}
	   
	//카카오톡 로그인.. 
	@RequestMapping(value = "/loginpage_kakao_callback", method = RequestMethod.GET)
	public String loginpage_kakao_callback(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		UrlPathHelper urlPathHelper = new UrlPathHelper();
		String originalURL = urlPathHelper.getOriginatingRequestUri(request);
		Map<String, String[]> paramMap = request.getParameterMap();
		Iterator keyData = paramMap.keySet().iterator();
		CommonData dto = new CommonData();
		while (keyData.hasNext()) {
			String key = ((String) keyData.next());
			String[] value = paramMap.get(key);
			dto.put(key, value[0].toString());
		}
		String url = "https://kauth.kakao.com/oauth/token";
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
		LinkedMultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
		map.add("client_id", "0ec377592349e9b86510090df869a4da");
		String redirect_url = "http://localhost:3500/soboroo/loginpage_kakao_callback";
		map.add("redirect_uri", redirect_url);
		map.add("grant_type", "authorization_code");
		map.add("code", dto.get("code"));
		System.out.println(map);
	     
		HttpEntity<LinkedMultiValueMap<String, String>> request2 = new HttpEntity<LinkedMultiValueMap<String, String>>(map, headers);
		CommonData response2 = restTemplate.postForObject(url, request2, CommonData.class);
		map.clear();
		model.addAttribute("access_token", response2.get("access_token"));
		return "redirect:/";
	}

}
