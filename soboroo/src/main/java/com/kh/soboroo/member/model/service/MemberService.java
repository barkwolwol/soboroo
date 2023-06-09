package com.kh.soboroo.member.model.service;

import java.util.HashMap;

import com.kh.soboroo.member.model.vo.Member;

public interface MemberService {
	
	// 로그인 서비스 (select)
	Member loginMember(HashMap<String, Object> userInfo);
	
	// 회원가입 서비스 (insert)
	int insertMember(Member m);
	
	// 아이디 중복체크 서비스 (select)
	int idCheck(String checkId);
	

}
