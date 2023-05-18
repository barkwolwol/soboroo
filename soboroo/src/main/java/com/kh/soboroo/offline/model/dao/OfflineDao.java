package com.kh.soboroo.offline.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.soboroo.common.model.vo.GroupUpload;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.offline.model.vo.OfflineGroupOnce;
import com.kh.soboroo.online.model.vo.OnlineGroupOnce;

@Repository
public class OfflineDao {

	public int insertOfflineGroupOne(SqlSessionTemplate sqlSession, OfflineGroupOnce ogo) {
		return sqlSession.insert("offlineMapper.insertOfflineGroupOne", ogo);
	}

	public int insertGroupOneImg(SqlSessionTemplate sqlSession, GroupUpload groupUpload) {
	    return sqlSession.insert("offlineMapper.insertGroupOneImg", groupUpload);
	}
	
	public int insertEntryListSelf(SqlSessionTemplate sqlSession, OfflineGroupOnce ogo) {
		return sqlSession.insert("offlineMapper.insertEntryListSelf", ogo);
	}

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("offlineMapper.selectListCount");
	}

	public ArrayList<OfflineGroupOnce> selectList(SqlSessionTemplate sqlSession, PageInfo pi, int tableNo) {
		// 몇 개의 게시글을 건너 뛸껀지
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		// 총 몇개를 조회할껀지
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("offlineMapper.selectList", tableNo, rowBounds);
	}

	/*
	public int increaseCount(SqlSessionTemplate sqlSession, int tableNo, int no) {
		
		OnlineGroupOnce on = new OnlineGroupOnce();
		on.setTableNo(tableNo);
		on.setNo(no);
		
		return sqlSession.update("offlineMapper.increaseCount", on);
	}
	*/

	/*
	public OfflineGroupOnce selectDetail(SqlSessionTemplate sqlSession, int no) {
		return sqlSession.selectOne("offlineMapper.selectDetail", no);
	}
	*/

	public List<GroupUpload> selectAttachmentList(SqlSessionTemplate sqlSession, int tableNo, int no) {
		
		OnlineGroupOnce on = new OnlineGroupOnce();
		on.setTableNo(tableNo);
		on.setNo(no);
		
		return sqlSession.selectList("offlineMapper.selectAttachmentList", on);
	}

//	public int insertOfflineGroupReg(SqlSessionTemplate sqlSession, OfflineGroupOnce ogo) {
//		return sqlSession.insert("offlineMapper.insertOfflineGroupReg", ogo);
//	}
//
//	public int insertOfflineChallengeDday(SqlSessionTemplate sqlSession, OfflineGroupOnce ogo) {
//		return sqlSession.insert("offlineMapper.insertOfflineChallengeDday", ogo);
//	}
//
//	public int insertOfflineChallengeReg(SqlSessionTemplate sqlSession, OfflineGroupOnce ogo) {
//		return sqlSession.insert("offlineMapper.insertOfflineChallengeReg", ogo);
//	}
	
	


}
