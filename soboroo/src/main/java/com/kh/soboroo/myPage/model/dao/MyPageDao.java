package com.kh.soboroo.myPage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.entryList.model.vo.EntryList;
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

@Repository
public class MyPageDao {

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public int updateIntro(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateIntro", m);
	}
	
	public int deleteMember(SqlSessionTemplate sqlSession, Member m) {
		System.out.println("컨트롤러"+m);
		return sqlSession.update("memberMapper.deleteMember", m);
	}
	
	public int checkNick(SqlSessionTemplate sqlSession, String memNickname) {
		return sqlSession.selectOne("memberMapper.checkNick", memNickname);
	}
	
	public int updateNick(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateNick", m);
	}
	
	public int selectListCount(SqlSessionTemplate sqlSession, Member loginUser) {
		return sqlSession.selectOne("boardMapper.selectListCount", loginUser);
	}
	
	public int selectGroupBoardListCount(SqlSessionTemplate sqlSession, Member loginUser) {
		return sqlSession.selectOne("myPageMapper.selectGroupBoardListCount", loginUser);
	}
	
	public ArrayList<Board> selectList(SqlSessionTemplate sqlSession, Member loginUser, PageInfo pi){
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectList", loginUser, rowBounds);
	}
	
	public int selectReplyListCount(SqlSessionTemplate sqlSession, Member loginUser) {
		return sqlSession.selectOne("replyMapper.selectReplyListCount", loginUser);
	}
	
	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, Member loginUser, PageInfo pi){
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("replyMapper.selectReplyList", loginUser, rowBounds);
		
	}
	
	public ArrayList<Reply> selectGroupReplyList(SqlSessionTemplate sqlSession, Member loginUser, PageInfo pi){
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("replyMapper.selectGroupReplyList", loginUser, rowBounds);
	}
	
	public ArrayList<Object> selectTestList(SqlSessionTemplate sqlSession, Member loginUser, PageInfo pi){
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("myPageMapper.testTable", loginUser, rowBounds);
	}
	
	public int selectMyGroupListCount(SqlSessionTemplate sqlSession, Member loginUser) {
		return sqlSession.selectOne("myPageMapper.selectMyGroupListCount", loginUser);
	}
	
	public ArrayList<EntryList> selectMyGroupList(SqlSessionTemplate sqlSession, Member loginUser, PageInfo pi){
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("myPageMapper.selectMyGroupList", loginUser, rowBounds);
	}
	
	public ArrayList<Object> selectMySchedule(SqlSessionTemplate sqlSession, Member loginUser){
		return (ArrayList)sqlSession.selectList("myPageMapper.selectMySchedule", loginUser);
	}
	
	
	

}
