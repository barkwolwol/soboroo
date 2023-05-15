package com.kh.soboroo.offline.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.common.model.vo.PageInfo;
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
		System.out.println("첨파있나요? : " + u);
		int result1 = offDao.insertGroupOne(sqlSession, ogo);
		int result2 = 1;
		
		if(u.getOriginName() != null) {
			System.out.println("첨파있음");
			result2 = offDao.insertGroupOneImg(sqlSession, ogo, u);
		}
		
		return result1 * result2;
	}

	public int selectListCount() {
		return offDao.selectListCount(sqlSession);
	}

	public ArrayList<OfflineGroupOnce> selectList(PageInfo pi) {
		return offDao.selectList(sqlSession, pi);
	}

}
