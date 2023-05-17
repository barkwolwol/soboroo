package com.kh.soboroo.online.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.online.model.dao.OnlineDao;

@Service
public class OnlineServiceImpl implements OnlineService {
	
	@Autowired
	private OnlineDao onDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
}
