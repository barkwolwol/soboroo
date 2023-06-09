package com.kh.soboroo.member.model.vo;

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
public class Member {
	
	 private int memNo;
	 private String kakaoId;
	 private String memEmail;
	 private String memGender;
	 private String memBirth;
	 private String memPhone;
	 private String memName;
	 private int memStatus;
	 private String memNickname;
	 private String memIntroduce;
	 private int memRprCount;
	 private String memImg;
	 private String memAdultNY;
	 private Date memEnrollDate;
	 private Date memUpdateDate;
	 
	 
}
