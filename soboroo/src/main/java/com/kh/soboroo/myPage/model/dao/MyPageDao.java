package com.kh.soboroo.myPage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.soboroo.member.model.vo.Member;

@Repository
public class MyPageDao {

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public int updateIntro(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateIntro", m);
	}
	
	public int checkNick(SqlSessionTemplate sqlSession, String memNickname) {
		return sqlSession.selectOne("memberMapper.checkNick", memNickname);
	}

}
