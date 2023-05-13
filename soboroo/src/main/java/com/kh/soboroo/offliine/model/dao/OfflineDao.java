package com.kh.soboroo.offliine.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.soboroo.common.model.vo.Upload;
import com.kh.soboroo.offliine.model.vo.OfflineGroupOnce;

public class OfflineDao {

	public int insertGroupOne(SqlSessionTemplate sqlSession, OfflineGroupOnce ogo, Upload u) {
		return sqlSession.insert("offlineMapper.insertGroupOne", ogo, u);
	}

}
