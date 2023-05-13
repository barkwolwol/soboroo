package com.kh.soboroo.offliine.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor		// 기본생성자
@AllArgsConstructor		// 전체 매개변수 생성자
@Setter					// setter 메소드
@Getter					// getter 메소드
@ToString				// toString 메소드
public class OfflineChallengeDday {
	
	private int offChlDdayNo;
	private String offChlDdayTitle;
	private String offChlDdayId;
	private String offChlDdayEmail;
	private String offChlDdaySimple;
	private String enrollDate;
	private String modifyDate;
	private String offChlDdayStartDate;
	private String offChlDdayEndDate;
	private String offChlDdayStartEnter;
	private String offChlDdayEndEnter;
	private String offChlDdayCotent;
	private String address;
	private String addressDetail;
	private String displayNY;
	private String password;
	private String hashTag;
	private String DelNY;
	private String RepNY;
	private String url;
	private String max;
	private String maxAccess;
	private String adultAccess;
	private String category;
	private int memNo;
	private int tableNo;
	private String attendPassword;

}
