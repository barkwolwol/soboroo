package com.kh.soboroo.board.model.service;

import java.util.ArrayList;

import org.aspectj.internal.lang.annotation.ajcDeclareAnnotation;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.board.model.dao.BoardDao;
import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.common.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao bDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectBoardListCount() {
		return bDao.selectBoardListCount(sqlSession);
	}

	@Override
	public ArrayList<Board> selectBoardList(PageInfo pi) {
		return bDao.selectBoardList(sqlSession, pi);
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBoard(Board b) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBoard(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
