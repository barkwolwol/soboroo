package com.kh.soboroo.offline.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

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

}
