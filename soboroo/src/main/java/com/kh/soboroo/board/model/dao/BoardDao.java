package com.kh.soboroo.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.board.model.vo.Reply;
import com.kh.soboroo.common.model.vo.PageInfo;

@Repository
public class BoardDao {

	public int selectBoardListCount(SqlSessionTemplate sqlSession, int category) {
		return sqlSession.selectOne("boardMapper.selectBoardListCount", category);
	}

	public ArrayList<Board> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi, int category) {
		// 몇 개의 게시글을 건너 뛸껀지
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		// 총 몇개를 조회해갈껀지
		int limit = pi.getBoardLimit();
		//System.out.println("limit" + limit);
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectBoardList", category, rowBounds);
	}

	public int increaseCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.increaseCount", boardNo);
	}

	public Board selectBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectBoard", boardNo);
	}
	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.insertBoard", b);
	}

	public int selectSearchCount(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("boardMapper.selectSearchCount", map);
	}

	public ArrayList<Board> selectSearchList(SqlSessionTemplate sqlSession, HashMap<String, String> map, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
	     int limit = pi.getBoardLimit();
	      
	      RowBounds rowBounds = new RowBounds(offset, limit);
	      return (ArrayList)sqlSession.selectList("boardMapper.selectSearchList", map, rowBounds);
	}

	public int updateUpload(SqlSessionTemplate sqlSession, int uploadNo) {
		return sqlSession.update("boardMapper.updateUpload",uploadNo);
	}

	public int updateBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("boardMapper.updateBoard",b);
	}

	public int deleteBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.deleteBoard", boardNo);
	}

	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, int boardNo) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectReplyList", boardNo);
	}

	public int insertReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("boardMapper.insertReply", r);
	}

	public int reportBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.reportBoard", boardNo);
	}

	/*
	 * public ArrayList<Reply> selectReplyComment(SqlSessionTemplate sqlSession, int
	 * boardNo) { return
	 * (ArrayList)sqlSession.selectList("boardMapper.selectReplyComment", boardNo);
	 * }
	 */




}
