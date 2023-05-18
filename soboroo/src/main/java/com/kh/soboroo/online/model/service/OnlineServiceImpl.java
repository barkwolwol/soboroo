package com.kh.soboroo.online.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.soboroo.common.model.vo.GroupUpload;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.online.model.dao.OnlineDao;
import com.kh.soboroo.online.model.vo.OnlineGroupOnce;

@Service
public class OnlineServiceImpl {
	
	@Autowired
	private OnlineDao onDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertOfflineGroupOne(OnlineGroupOnce ong, GroupUpload gu) {
	    int result1 = onDao.insertOnlineGroupOne(sqlSession, ong);
	    int result2 = 1;
	    
	    if (!gu.getUploads().isEmpty()) {
	        for (GroupUpload groupUpload : gu.getUploads()) {
	            if (groupUpload.getOriginName() != null && !groupUpload.getOriginName().isEmpty()) {
	                result2 *= onDao.insertGroupOneImg(sqlSession, groupUpload);
	            }
	        }
	    }
	    
	    int result3 = onDao.insertEntryListSelf(sqlSession, ong);
	    
	    return result1 * result2 * result3;
	}

	public int selectListCount() {
		return onDao.selectListCount(sqlSession);
	}

	public ArrayList<OnlineGroupOnce> selectListOn(PageInfo pi, int tableNo) {
		return onDao.selectListOn(sqlSession, pi, tableNo);
	}

	public int increaseCount(int no) {
		return onDao.increaseCount(sqlSession, no);
	}

//	public OnlineGroupOnce selectDetail(int no) {
//		return onDao.selectDetail(sqlSession, no);
//	}

	public List<GroupUpload> selectAttachmentList(int no) {
		return onDao.selectAttachmentList(sqlSession, no);
	}


}
