package com.kh.soboroo.common.model.service;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.common.model.dao.CommonDao;

@Service
public class CommonServiceImpl implements CommonService {
	
	@Autowired
	private CommonDao cDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	@Override
	public int insertUpload(HashMap<String, String> map) {
		return cDao.insertUpload(sqlSession, map);
	}


	@Override
	public int selectUploadNo() {
		return cDao.selectUploadNo(sqlSession);
	}

}
