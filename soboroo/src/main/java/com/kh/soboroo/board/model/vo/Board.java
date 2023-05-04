package com.kh.soboroo.board.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class Board {

	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private String createDate;
	private String modifyDate;
	private int count;
	private String repNy;
	private String delNy;
	private String category;
	private String memNo;
	private int tableNo;
}
