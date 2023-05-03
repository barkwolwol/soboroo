package com.kh.soboroo.board.model.service;

import java.util.ArrayList;

import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.common.model.vo.PageInfo;

public interface BoardService {
	// 1_1. 자유게시판 리스트 페이지 서비스(페이징)
		int selectBoardListCount();
		
		// 1_2. 자유게시판 목록조회
		ArrayList<Board> selectBoardList(PageInfo pi);
		
		// 2. 자유게시판 상세조회
		int increaseCount(int boardNo);
		Board selectBoard(int boardNo);
		
		// 3. 자유게시판 등록
		int insertBoard(Board b);
		
		// 4. 자유게시판 수정
		int updateBoard(Board b);
		
		// 5. 자유게시판 삭제
		int deleteBoard(int boardNo);
}
