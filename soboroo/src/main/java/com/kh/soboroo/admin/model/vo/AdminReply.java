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
public class AdminReply {
	

	private String replyNo;
	private String replyContent;
	private Date enrollDate;
	private Date modifyDate;
	private String delNy;
	private String repNy;
	private String recommentNy;
	private int reperNo;
	private int groupBoardNo;
	private int memNo;
	private int tableNo;
	
	
}
