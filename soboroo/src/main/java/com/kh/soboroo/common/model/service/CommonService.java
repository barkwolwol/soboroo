package com.kh.soboroo.common.model.service;

import java.util.HashMap;

public interface CommonService {

	// 1. 업로드 테이블 등록
	int insertUpload(HashMap<String, String> map);
	
	// 2. currval 구하기
	int selectUploadNo();
}
