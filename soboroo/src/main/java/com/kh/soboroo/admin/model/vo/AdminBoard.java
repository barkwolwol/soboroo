package com.kh.soboroo.admin.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.AllArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class AdminBoard {
	

	// 게시판 관리
	private String boardNo;
	private String boardTitle;
	private String boardContent;
	private String createDate;
	private String modifyDate;
	private int count;
	private String repNy;
	private String delNy;
	private int category;
	private int memNo;
	private int tableNo;
	private String categoryTitle;
	private String memNickname;
	private String memId;

}
