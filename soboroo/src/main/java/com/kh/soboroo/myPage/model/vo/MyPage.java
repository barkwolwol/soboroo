package com.kh.soboroo.myPage.model.vo;

import java.sql.Date;

import com.kh.soboroo.offliine.model.vo.OfflineChallengeDday;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


public class MyPage {
    private OfflineChallengeDday offlineChallengeDday;
    
    public MyPage() {
    	this.offlineChallengeDday = fetchOfflineChallengeDdayFromTable();
    }
}