package com.kh.soboroo.admin.model.vo;

import java.sql.Date;
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
public class AdminOfflineGroupOnce {
	
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
	private String content;
	private String address;
	private String addressDetail;
	private String displayNY;
	private String eventPassword;
	private String hashTag;
	private String delNY;
	private String repNY;
	private String url;
	private String max;
	private String maxAccess;
	private String adultAccess;
	private String category;
	private int memNo;
	private int tableNo;
	private String attendPassword;
	private int count;
	private String status;
	private String categoryTitle;
	private String filePath;
	private String fileLevel;
	private String memImg;
	private String memNickname;
	
}
