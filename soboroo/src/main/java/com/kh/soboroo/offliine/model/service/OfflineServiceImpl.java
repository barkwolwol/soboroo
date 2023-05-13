package com.kh.soboroo.offliine.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.soboroo.common.model.vo.Upload;
import com.kh.soboroo.offliine.model.dao.OfflineDao;
import com.kh.soboroo.offliine.model.vo.OfflineGroupOnce;

public class OfflineServiceImpl implements OfflineService {
	
	@Autowired
	private OfflineDao offDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertGroupOne(OfflineGroupOnce ogo, Upload u) {
		return offDao.insertGroupOne(sqlSession, ogo, u);
	}

}
