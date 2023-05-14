package com.kh.soboroo.offline.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.common.model.vo.Upload;
import com.kh.soboroo.offline.model.dao.OfflineDao;
import com.kh.soboroo.offline.model.vo.OfflineGroupOnce;

@Service
public class OfflineServiceImpl implements OfflineService {
	
	@Autowired
	private OfflineDao offDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertGroupOne(OfflineGroupOnce ogo, Upload u) {
		int result1 = offDao.insertGroupOne(sqlSession, ogo);
		int result2 = 1;
		
		if(u != null) {
			result2 = offDao.insertGroupOneImg(sqlSession, ogo, u);
		}
		
		return offDao.insertGroupOne(sqlSession, ogo);
	}

}
