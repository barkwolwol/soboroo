package com.kh.soboroo.common.model.vo;

import java.sql.Date;
import java.util.List;

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
public class GroupUpload {
	private int groupUploadNo;
	private Date groupUploadDate;
	private String originName1;
	private String originName2;
	private String originName3;
	private String originName4;
	private String originName5;
	private String filePath1;
	private String filePath2;
	private String filePath3;
	private String filePath4;
	private String filePath5;
	private int fileLevel;
	private int groupBoardNo;
	private int tableNo;
	
	private List<GroupUpload> uploads;
	
}
