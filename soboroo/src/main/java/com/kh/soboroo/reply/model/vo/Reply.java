package com.kh.soboroo.reply.model.vo;

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
public class Reply {
	 private int replyNo;
	 private String replyContent;
	 private String enrollDate;
	 private Date modifyDate;
	 private String delNy;
	 private String repNy;
	 private String recommentNy;
	 private int reperNo;
	 private int groupBoardNo;
	 private int memNo;
	 private int tableNo;
	 private String memNickname;
}
