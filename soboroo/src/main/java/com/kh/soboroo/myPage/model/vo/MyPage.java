package com.kh.soboroo.myPage.model.vo;


import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class MyPage {
	private int count;
	private String delNy;
	private int memNo;
	private int no;
	private String title;
	private Date startDate;
	private Date endDate;
	private Date enrollDate;
	private int tableNo;
	private String thumbnail;
	private String simple;

}	
	
