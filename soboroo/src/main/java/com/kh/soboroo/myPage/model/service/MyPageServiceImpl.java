package com.kh.soboroo.myPage.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.member.model.vo.Member;
import com.kh.soboroo.myPage.model.dao.MyPageDao;
import com.kh.soboroo.myPage.model.vo.MyPage;

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

}
