package com.kh.soboroo.offline.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.soboroo.common.model.vo.GroupUpload;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.offline.model.dao.OfflineDao;
import com.kh.soboroo.offline.model.vo.OfflineGroupOnce;

@Service
public class OfflineServiceImpl implements OfflineService {
	
	@Autowired
	private OfflineDao offDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertGroupOne(OfflineGroupOnce ogo, GroupUpload groupUpload) {
	    int result1 = offDao.insertGroupOne(sqlSession, ogo);
	    int result2 = 1;

	    if (!groupUpload.getUploads().isEmpty()) {
	        result2 = offDao.insertGroupOneImg(sqlSession, groupUpload);
	    }

	    int result3 = offDao.insertEntryListSelf(sqlSession, ogo);

	    return result1 * result2 * result3;
	}

	public int selectListCount() {
		return offDao.selectListCount(sqlSession);
	}

	public ArrayList<OfflineGroupOnce> selectList(PageInfo pi) {
		return offDao.selectList(sqlSession, pi);
	}

	public int increaseCount(int no) {
		return offDao.increaseCount(sqlSession, no);
	}

	public OfflineGroupOnce selectGroupOne(int no) {
		return offDao.selectGroupOne(sqlSession, no);
	}

	public int insertGroupOne(OfflineGroupOnce ogo, List<MultipartFile> upfiles, HttpSession session) {
		// TODO Auto-generated method stub
		return 0;
	}

}
