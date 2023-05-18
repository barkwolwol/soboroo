package com.kh.soboroo.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.aspectj.internal.lang.annotation.ajcDeclareAnnotation;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.board.model.dao.BoardDao;
import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.board.model.vo.Reply;
import com.kh.soboroo.common.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao bDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectBoardListCount(int category) {
		return bDao.selectBoardListCount(sqlSession, category);
	}

	@Override
	public ArrayList<Board> selectBoardList(PageInfo pi, int category) {
		return bDao.selectBoardList(sqlSession, pi, category);
	}

	@Override
	public int increaseCount(int boardNo) {
		return bDao.increaseCount(sqlSession, boardNo);
	}

	@Override
	public Board selectBoard(int boardNo) {
		return bDao.selectBoard(sqlSession,boardNo);
	}

	@Override
	public int insertBoard(Board b) {
		return bDao.insertBoard(sqlSession, b);
	}

	@Override
	public int updateBoard(Board b) {
		return bDao.updateBoard(sqlSession,b);
	}

	@Override
	public int deleteBoard(int boardNo) {
		return bDao.deleteBoard(sqlSession, boardNo);
	}

	@Override
	public int selectSearchCount(HashMap<String, String> map) {
		return bDao.selectSearchCount(sqlSession, map);
	}

	@Override
	public ArrayList<Board> selectSearchList(HashMap<String, String> map, PageInfo pi) {
		return bDao.selectSearchList(sqlSession, map, pi);
	}

	@Override
	public int updateUpload(int uploadNo) {
		return bDao.updateUpload(sqlSession, uploadNo);
	}

	@Override
	public ArrayList<Reply> selectReplyList(int boardNo) {
		return bDao.selectReplyList(sqlSession, boardNo);	}

	@Override
	public int insertReply(Reply r) {
		return bDao.insertReply(sqlSession, r);
	}
	/*
	 * @Override public ArrayList<Reply> selectReplyComment(int boardNo) { return
	 * bDao.selectReplyComment(sqlSession, boardNo); }
	 */

	@Override
	public int reportBoard(int boardNo) {
		return bDao.reportBoard(sqlSession, boardNo);
	}
	
	

	

}
