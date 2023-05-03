package com.kh.soboroo.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.notice.model.vo.Notice;

@Repository
public class NoticeDao {

	public int selectNoticeListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("noticeMapper.selectNoticeListCount");
	}

	public ArrayList<Notice> selectNoticeList(SqlSessionTemplate sqlSession, PageInfo pi) {
		// 몇 개의 게시글을 건너 뛸껀지
				int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
				
				// 총 몇개를 조회해갈껀지
				int limit = pi.getBoardLimit();
				//System.out.println("limit" + limit);
				RowBounds rowBounds = new RowBounds(offset, limit);
				
				return (ArrayList)sqlSession.selectList("noticeMapper.selectNoticeList", null, rowBounds);
	}

	public int increaseCount(SqlSessionTemplate sqlSession, int ntcNo) {
	 return sqlSession.update("noticeMapper.increaseCount", ntcNo);
	 
 	}

	public Notice selectNotice(SqlSessionTemplate sqlSession, int ntcNo) {
		return sqlSession.selectOne("noticeMapper.selectNotice", ntcNo);
	}

	public int insertNotice(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.insert("noticeMapper.insertNotice", n);
	}

	public int deleteNotice(SqlSessionTemplate sqlSession, int ntcNo) {
		return sqlSession.update("noticeMapper.deleteNotice", ntcNo);
	}

	public int updateNotice(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.update("noticeMapper.updateNotice", n);
	}


	
	

}
