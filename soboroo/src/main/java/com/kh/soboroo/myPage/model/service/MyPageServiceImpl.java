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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int checkNick(String memNickname) {
		return myDao.checkNick(sqlSession, memNickname);
	}

	@Override
	public int updateIntro(Member m) {
		System.out.println(m+"MM");
		
		int result = myDao.updateIntro(sqlSession, m);
		System.out.println(m+"M");
		System.out.println(result + "result");
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
