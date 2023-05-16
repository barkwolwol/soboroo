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
public class Upload {

	private int uploadNo;
	private String originName;
	private String changeName;
	private int groupBoardNo;
	private Date uploadDate;
	private int fileLevel;
	private String filePath;
	private int tableNo;
	
	private List<Upload> uploads;
}
