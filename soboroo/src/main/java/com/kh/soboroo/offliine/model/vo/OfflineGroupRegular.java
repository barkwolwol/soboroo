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
public class OfflineGroupRegular {

	private int offGroupRegNo;
	private String offGroupRegTitle;
	private String offGroupRegeId;
	private String offGroupRegeEmail;
	private String offGroupRegeSimple;
	private String enrollDate;
	private String modifyDate;
	private String offGroupRegStartDate;
	private String offGroupRegEndDate;
	private String offGroupRegStartEnter;
	private String offGroupRegEndEnter;
	private String offGroupRegCotent;
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
