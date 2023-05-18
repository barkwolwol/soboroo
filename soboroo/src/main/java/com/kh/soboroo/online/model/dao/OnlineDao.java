package com.kh.soboroo.online.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.soboroo.common.model.vo.GroupUpload;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.online.model.vo.OnlineGroupOnce;

@Repository
public class OnlineDao {

	public int insertOnlineGroupOne(SqlSessionTemplate sqlSession, OnlineGroupOnce ong) {
		return sqlSession.insert("onlineMapper.insertOnlineGroupOne", ong);
	}

	public int insertGroupOneImg(SqlSessionTemplate sqlSession, GroupUpload groupUpload) {
	    return sqlSession.insert("onlineMapper.insertGroupOneImg", groupUpload);
	}
	
	public int insertEntryListSelf(SqlSessionTemplate sqlSession, OnlineGroupOnce ong) {
		return sqlSession.insert("onlineMapper.insertEntryListSelf", ong);
	}

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("onlineMapper.selectListCount");
	}

	public ArrayList<OnlineGroupOnce> selectListOn(SqlSessionTemplate sqlSession, PageInfo pi, int tableNo) {
		// 몇 개의 게시글을 건너 뛸껀지
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		// 총 몇개를 조회할껀지
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("onlineMapper.selectListOn", tableNo, rowBounds);
	}

	public int increaseCount(SqlSessionTemplate sqlSession, int no) {
		return sqlSession.update("onlineMapper.increaseCount", no);
	}

//	public OnlineGroupOnce selectDetail(SqlSessionTemplate sqlSession, int no) {
//		return sqlSession.selectOne("onlineMapper.selectDetail", no);
//	}

	public List<GroupUpload> selectAttachmentList(SqlSessionTemplate sqlSession, int no) {
		return sqlSession.selectList("onlineMapper.selectAttachmentList", no);
	}



}
