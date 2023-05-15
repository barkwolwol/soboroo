package com.kh.soboroo.offline.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.common.model.vo.Upload;
import com.kh.soboroo.offline.model.vo.OfflineGroupOnce;

@Repository
public class OfflineDao {

	public int insertGroupOne(SqlSessionTemplate sqlSession, OfflineGroupOnce ogo) {
		return sqlSession.insert("offlineMapper.insertGroupOne", ogo);
	}

	public int insertGroupOneImg(SqlSessionTemplate sqlSession, OfflineGroupOnce ogo, Upload u) {
		return sqlSession.insert("offlineMapper.insertGroupOneImg", u);
	}

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("offlineMapper.selectListCount");
	}

	public ArrayList<OfflineGroupOnce> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		// 몇 개의 게시글을 건너 뛸껀지
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		// 총 몇개를 조회할껀지
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("offlineMapper.selectList", null, rowBounds);
	}

	public int increaseCount(SqlSessionTemplate sqlSession, int no) {
		return sqlSession.update("offlineMapper.increaseCount", no);
	}

	public OfflineGroupOnce selectGroupOne(SqlSessionTemplate sqlSession, int no) {
		return sqlSession.selectOne("offlineMapper.selectGroupOne", no);
	}

}
