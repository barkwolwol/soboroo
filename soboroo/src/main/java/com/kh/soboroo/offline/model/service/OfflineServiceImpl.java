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

	public int insertOfflineGroupOne(OfflineGroupOnce ogo, GroupUpload gu) {
	    int result1 = offDao.insertOfflineGroupOne(sqlSession, ogo);
	    int result2 = 1;
	    
	    if (!gu.getUploads().isEmpty()) {
	        for (GroupUpload groupUpload : gu.getUploads()) {
	            if (groupUpload.getOriginName() != null && !groupUpload.getOriginName().isEmpty()) {
	                result2 *= offDao.insertGroupOneImg(sqlSession, groupUpload);
	            }
	        }
	    }
	    
	    int result3 = offDao.insertEntryListSelf(sqlSession, ogo);
	    
	    return result1 * result2 * result3;
	}

	public int selectListCount() {
		return offDao.selectListCount(sqlSession);
	}

	public ArrayList<OfflineGroupOnce> selectList(PageInfo pi, int tableNo) {
		return offDao.selectList(sqlSession, pi, tableNo);
	}

	public int increaseCount(int no) {
		return offDao.increaseCount(sqlSession, no);
	}

	public OfflineGroupOnce selectDetail(int no) {
		return offDao.selectDetail(sqlSession, no);
	}

	public List<GroupUpload> selectAttachmentList(int no) {
		return offDao.selectAttachmentList(sqlSession, no);
	}

//	public int insertOfflineGroupReg(OfflineGroupOnce ogo, GroupUpload gu) {
//	    int result1 = offDao.insertOfflineGroupReg(sqlSession, ogo);
//	    int result2 = 1;
//	    
//	    if (!gu.getUploads().isEmpty()) {
//	        for (GroupUpload groupUpload : gu.getUploads()) {
//	            if (groupUpload.getOriginName() != null && !groupUpload.getOriginName().isEmpty()) {
//	                result2 *= offDao.insertGroupOneImg(sqlSession, groupUpload);
//	            }
//	        }
//	    }
//	    
//	    int result3 = offDao.insertEntryListSelf(sqlSession, ogo);
//	    
//	    return result1 * result2 * result3;
//	}
//
//	public int insertOfflineChallengeDday(OfflineGroupOnce ogo, GroupUpload gu) {
//	    int result1 = offDao.insertOfflineChallengeDday(sqlSession, ogo);
//	    int result2 = 1;
//	    
//	    if (!gu.getUploads().isEmpty()) {
//	        for (GroupUpload groupUpload : gu.getUploads()) {
//	            if (groupUpload.getOriginName() != null && !groupUpload.getOriginName().isEmpty()) {
//	                result2 *= offDao.insertGroupOneImg(sqlSession, groupUpload);
//	            }
//	        }
//	    }
//	    
//	    int result3 = offDao.insertEntryListSelf(sqlSession, ogo);
//	    
//	    return result1 * result2 * result3;
//	}
//
//	public int insertOfflineChallengeReg(OfflineGroupOnce ogo, GroupUpload gu) {
//	    int result1 = offDao.insertOfflineChallengeReg(sqlSession, ogo);
//	    int result2 = 1;
//	    
//	    if (!gu.getUploads().isEmpty()) {
//	        for (GroupUpload groupUpload : gu.getUploads()) {
//	            if (groupUpload.getOriginName() != null && !groupUpload.getOriginName().isEmpty()) {
//	                result2 *= offDao.insertGroupOneImg(sqlSession, groupUpload);
//	            }
//	        }
//	    }
//	    
//	    int result3 = offDao.insertEntryListSelf(sqlSession, ogo);
//	    
//	    return result1 * result2 * result3;
//	}

}
