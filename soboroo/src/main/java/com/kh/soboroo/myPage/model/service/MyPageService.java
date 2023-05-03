package com.kh.soboroo.myPage.model.service;

import com.kh.soboroo.member.model.vo.Member;

public interface MyPageService {
	
	// 닉네임 변경 서비스
	int updateNick(Member m);
	
	// 닉네임 중복체크 서비스
	int checkNick(String memNickname);
	
	// 자기소개 변경 서비스
	int updateIntro(Member m);
	
	// 회원탈퇴 서비스
	int deleteMember(String memId);

	Member loginMember(Member m);
}
