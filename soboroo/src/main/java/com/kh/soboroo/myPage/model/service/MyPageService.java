package com.kh.soboroo.myPage.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.soboroo.alert.model.vo.Alert;
import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.offline.model.vo.EntryList;
import com.kh.soboroo.member.model.vo.Member;
import com.kh.soboroo.myPage.model.vo.OfflineChallengeDday;
import com.kh.soboroo.myPage.model.vo.OfflineChallengeRegular;
import com.kh.soboroo.myPage.model.vo.OfflineGroupOnce;
import com.kh.soboroo.myPage.model.vo.OfflineGroupRegular;
import com.kh.soboroo.myPage.model.vo.OnlineChallengeDday;
import com.kh.soboroo.myPage.model.vo.OnlineChallengeRegular;
import com.kh.soboroo.myPage.model.vo.OnlineGroupOnce;
import com.kh.soboroo.myPage.model.vo.OnlineGroupRegular;
import com.kh.soboroo.reply.model.vo.Reply;

public interface MyPageService {
	
	// 닉네임 변경 서비스
	int updateNick(Member m);
	
	// 닉네임 중복체크 서비스
	int checkNick(String memNickname);
	
	// 자기소개 변경 서비스
	int updateIntro(Member loginUser);
	
	// 회원탈퇴 서비스
	int deleteMember(Member loginUser);

	Member loginMember(Member m);
	
	int selectAlertListCount(Member loginUser);
	
	ArrayList<Alert> selectAlertList(Member loginUser, PageInfo pi);
	
	int selectListCount(Member loginUser);
	
	int selectGroupReplyListCount(Member loginUser);
	
	ArrayList<Board> selectList(Member loginUser, PageInfo pi);
	
	int selectReplyListCount(Member loginUser);
	
	int selectGroupBoardListCount(Member loginUser);
	
	ArrayList<Reply> selectReplyList(Member loginUser, PageInfo pi);
	
	ArrayList<Reply> selectGroupReplyList(Member loginUser, PageInfo pi);
	
	ArrayList<Object> selectTestList(Member loginUser, PageInfo pi);
	
	int selectMyGroupListCount(Member loginUser);
	
	ArrayList<EntryList> selectMyGroupList(Member loginUser, PageInfo pi);
	
	ArrayList<Object> selectMySchedule(Member loginUser);
	
	int insertAlert(Alert a);
	
	String findNickname(int memNo);
	
	String deleteAlert(String memNo, String no);
}
