package com.kh.soboroo.myPage.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.alert.model.vo.Alert;
import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.offline.model.vo.EntryList;
import com.kh.soboroo.member.model.vo.Member;
import com.kh.soboroo.myPage.model.dao.MyPageDao;
import com.kh.soboroo.myPage.model.vo.MyPage;
import com.kh.soboroo.myPage.model.vo.OfflineChallengeDday;
import com.kh.soboroo.myPage.model.vo.OfflineChallengeRegular;
import com.kh.soboroo.myPage.model.vo.OfflineGroupOnce;
import com.kh.soboroo.myPage.model.vo.OfflineGroupRegular;
import com.kh.soboroo.myPage.model.vo.OnlineChallengeDday;
import com.kh.soboroo.myPage.model.vo.OnlineChallengeRegular;
import com.kh.soboroo.myPage.model.vo.OnlineGroupOnce;
import com.kh.soboroo.myPage.model.vo.OnlineGroupRegular;
import com.kh.soboroo.reply.model.vo.Reply;

@Service
public class MyPageServiceImpl implements MyPageService {
	
	@Autowired
	private MyPageDao myDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int updateNick(Member m) {
		return myDao.updateNick(sqlSession, m);
	}

	@Override
	public int checkNick(String memNickname) {
		return myDao.checkNick(sqlSession, memNickname);
	}

	@Override
	public int updateIntro(Member loginUser) {
		int result = myDao.updateIntro(sqlSession, loginUser);
		System.out.println(loginUser);
		System.out.println("서비스 타니?");
		return result;
	}

	@Override
	public int deleteMember(Member loginUser) {
		int result = myDao.deleteMember(sqlSession, loginUser);
		
		System.out.println("서비스"+loginUser);
		return result;
	}

	@Override
	public Member loginMember(Member m) {

		Member loginUser = myDao.loginMember(sqlSession, m);
		
		return loginUser;
		
	}

	@Override
	public int selectListCount(Member loginUser) {
		return myDao.selectListCount(sqlSession, loginUser);
	}
	
	@Override
	public int selectGroupBoardListCount(Member loginUser) {
		return myDao.selectGroupBoardListCount(sqlSession, loginUser);
	}
	
	@Override
	public int selectAlertListCount(Member loginUser) {
		return myDao.selectAlertListCount(sqlSession, loginUser);
	}

	@Override
	public ArrayList<Alert> selectAlertList(Member loginUser, PageInfo pi) {
		return myDao.selectAlertList(sqlSession, loginUser, pi);
	}
	@Override
	public ArrayList<Board> selectList(Member loginUser, PageInfo pi) {
		
		return myDao.selectList(sqlSession, loginUser, pi);
	}

	@Override
	public int selectReplyListCount(Member loginUser) {
		return myDao.selectReplyListCount(sqlSession, loginUser);
	}
	
	@Override
	public int selectGroupReplyListCount(Member loginUser) {
		return myDao.selectGroupReplyListCount(sqlSession, loginUser);
	}

	@Override
	public ArrayList<Reply> selectReplyList(Member loginUser, PageInfo pi) {
		return myDao.selectReplyList(sqlSession, loginUser, pi);
	}

	@Override
	public ArrayList<Reply> selectGroupReplyList(Member loginUser, PageInfo pi) {
		return myDao.selectGroupReplyList(sqlSession, loginUser, pi);
	}

	@Override
	public ArrayList<Object> selectTestList(Member loginUser, PageInfo pi) {
		return myDao.selectTestList(sqlSession, loginUser, pi);
	}

	@Override
	public int selectMyGroupListCount(Member loginUser) {
		return myDao.selectMyGroupListCount(sqlSession, loginUser);
	}
	
	@Override
	public ArrayList<EntryList> selectMyGroupList (Member loginUser, PageInfo pi){
		return myDao.selectMyGroupList(sqlSession, loginUser, pi);
	}

	@Override
	public ArrayList<Object> selectMySchedule(Member loginUser) {
		return myDao.selectMySchedule(sqlSession, loginUser);
	}

	@Override
	public int insertAlert(Alert a) {
		return myDao.insertAlert(sqlSession, a);
	}

	@Override
	public String findNickname(int memNo) {
		return myDao.findNickname(sqlSession, memNo);
	}

	@Override
	public String deleteAlert(String memNo, String no) {
	    int count = myDao.deleteAlert(sqlSession, memNo, no);

	    if (count > 0) {
	        return "success";
	    } else {
	        return "failure";
	    }
	}
}
