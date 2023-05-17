package com.kh.soboroo.myPage.model.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

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

@Repository
public class MyPageDao {

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public int updateIntro(SqlSessionTemplate sqlSession, Member loginUser) {
		System.out.println(loginUser);
		System.out.println("다오 타니?");
		return sqlSession.update("memberMapper.updateIntro", loginUser);
	}
	
	public int deleteMember(SqlSessionTemplate sqlSession, Member loginUser) {
		System.out.println("컨트롤러"+loginUser);
		return sqlSession.update("memberMapper.deleteMember", loginUser);
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
	
	public int selectGroupReplyListCount(SqlSessionTemplate sqlSession, Member loginUser) {
		return sqlSession.selectOne("replyMapper.selectGroupReplyListCount", loginUser);
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
	
	public int insertAlert(SqlSessionTemplate sqlSession, Alert a) {
		return sqlSession.insert("myPageMapper.insertAlert", a);
	}
	
	public String findNickname(SqlSessionTemplate sqlSession, int memNo) {
		return sqlSession.selectOne("memberMapper.findNickname", memNo);
	}
	
	public int selectAlertListCount(SqlSessionTemplate sqlSession,Member loginUser) {
		return sqlSession.selectOne("myPageMapper.selectAlertListCount", loginUser);
	}
	
	public ArrayList<Alert> selectAlertList(SqlSessionTemplate sqlSession,Member loginUser, PageInfo pi){
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("myPageMapper.selectAlertList", loginUser, rowBounds);
	
	}
	
	public int deleteAlert(SqlSessionTemplate sqlSession, String memNo, String no) {
	    System.out.println("myDao.deleteAlert() 호출됨");
	    System.out.println("myDao.deleteAlert() 호출됨" + memNo);
	    System.out.println("myDao.deleteAlert() 호출됨" + no);
	    Map<String, String> parameters = new HashMap<>();
	    parameters.put("memNo", memNo);
	    parameters.put("no", no);
	    return sqlSession.update("myPageMapper.deleteAlert", parameters);
	}


}
