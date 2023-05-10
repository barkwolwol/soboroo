package com.kh.soboroo.myPage.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.entryList.model.vo.EntryList;
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
	public int updateIntro(Member m) {
		int result = myDao.updateIntro(sqlSession, m);
		return result;
	}

	@Override
	public int deleteMember(String memId) {
		// TODO Auto-generated method stub
		return 0;
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
	public ArrayList<Board> selectList(Member loginUser, PageInfo pi) {
		
		return myDao.selectList(sqlSession, loginUser, pi);
	}

	@Override
	public int selectReplyListCount(Member loginUser) {
		return myDao.selectReplyListCount(sqlSession, loginUser);
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


}
