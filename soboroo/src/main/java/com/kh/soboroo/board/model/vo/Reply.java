package com.kh.soboroo.board.model.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
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
	private String memNo;
	private int tableNo;
	private int groupBoardNo;
	private String memNickname;
	private String recoment;
}
