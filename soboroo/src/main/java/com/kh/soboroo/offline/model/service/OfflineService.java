package com.kh.soboroo.offline.model.service;

import com.kh.soboroo.common.model.vo.Upload;
import com.kh.soboroo.offline.model.vo.OfflineGroupOnce;

public interface OfflineService {
	
	int insertGroupOne(OfflineGroupOnce ogo, Upload u);

}
