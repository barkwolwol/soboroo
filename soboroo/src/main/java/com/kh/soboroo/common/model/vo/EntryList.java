package com.kh.soboroo.common.model.vo;

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
public class EntryList {
	
	private int no;
	private String title;
	private String entryId;
	private String waitNY;
	private Date startDate;
	private Date endDate;
	private int memNo;
	private int tableNo;
	
}
