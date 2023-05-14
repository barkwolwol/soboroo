package com.kh.soboroo.offline.model.vo;

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
	
	private int no;
	private String title;
	private String id;
	private String name;
	private String email;
	private String phone;
	private String simple;
	private String enrollDate;
	private String modifyDate;
	private String startDate;
	private String endDate;
	private String startEnter;
	private String endEnter;
	private String achieveNY;
	private String cotent;
	private String address;
	private String addressDetail;
	private String displayNY;
	private String eventPassword;
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
