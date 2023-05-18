package com.kh.soboroo.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.board.model.vo.Reply;
import com.kh.soboroo.common.model.vo.PageInfo;

public interface BoardService {
	// 1_1. 자유게시판 리스트 페이지 서비스(페이징)
		int selectBoardListCount(int category);
		
		// 1_2. 자유게시판 목록조회
		ArrayList<Board> selectBoardList(PageInfo pi,int category);
		
		// 2. 자유게시판 상세조회
		int increaseCount(int boardNo);
		Board selectBoard(int boardNo);
		
		// 3. 자유게시판 등록
		int insertBoard(Board b);
		int updateUpload(int uploadNo);
		
		// 4. 자유게시판 수정
		int updateBoard(Board b);
		
		// 5. 자유게시판 삭제
		int deleteBoard(int boardNo);
		
		// 게시글 검색
		int selectSearchCount(HashMap<String, String> map);
		ArrayList<Board> selectSearchList(HashMap<String, String> map, PageInfo pi);
		
		// 6. 댓글 리스트 조회 (ajax)
		ArrayList<Reply> selectReplyList(int boardNo);
		
		// 7. 댓글 작성용 서비스 (ajax)
		int insertReply(Reply r);
		
		// 8. 게시글 신고 서비스
		int reportBoard(int boardNo);

		/* ArrayList<Reply> selectReplyComment(int boardNo); */
		
		
		
}
