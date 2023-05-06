package com.kh.soboroo.myPage.model.service;

import java.util.ArrayList;

import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.member.model.vo.Member;
import com.kh.soboroo.reply.model.vo.Reply;

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
	
	int selectListCount(Member loginUser);
	
	ArrayList<Board> selectList(Member loginUser, PageInfo pi);
	
	int selectReplyListCount(Member loginUser);
	
	ArrayList<Reply> selectReplyList(Member loginUser, PageInfo pi);
}
