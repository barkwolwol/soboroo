package com.kh.soboroo.admin.model.vo;



import java.sql.Date;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class AdminMember {
	
//	private String memNo;
//	private String memToken;
//	private String memId;
//	private Date memBirth;
//	private String memPhone;
//	private String memName;
//	private int memStatus;
//	private String memNickname;
//	private String memIntroduce;
//	private int memRprCount;
//	private String memImg;
//	private Date memEnrollDate;
//	private Date memUpdateDate;
//	
//	private String board_title; // 게시글 제목
//    private String board_content; // 신고기반자료 게시글 내용
//    private String reply_content; // 신고기반자료 댓글 내용
//    private Date create_date; // 게시글 작성일
//    private Date enoll_date;  // 댓글 작성일
    
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
