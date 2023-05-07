package com.kh.soboroo.online.model.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class OnlineChallengeDday {
	 private int onChallengeDNo;
	 private String onChallengeDTitle;
	 private String onChallengeDId;
	 private Date enrollDate;
	 private Date modifyDate;
	 private Date onChallengeDDate;
	 private String onChallengeDContent;
	 private String hashTag;
	 private String delNy;
	 private String repNy;
	 private String url;
	 private int max;
	 private int category;
	 private int memNo;
	 private int tableNo;
}
