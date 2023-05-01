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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateIntro(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(String memId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member loginMember(Member m) {

		Member loginUser = myDao.loginMember(sqlSession, m);
		
		System.out.println(loginUser);
		// close도 spring이 알아서 해준다
		return loginUser;
		
	}

}
