package com.kh.soboroo.common.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CommonDao {

	public int insertUpload(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.insert("boardMapper.insertUpload",map);
	}

	public int selectUploadNo(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectUploadNo");
	}

}
