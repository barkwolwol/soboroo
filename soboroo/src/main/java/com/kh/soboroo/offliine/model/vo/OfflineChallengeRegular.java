package com.kh.soboroo.offliine.model.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class OfflineChallengeRegular {
	 private int offChallengeRegNo;
	 private String offChallengeRegTitle;
	 private String offChallengeRegId;
	 private Date enrollDate;
	 private Date modifyDate;
	 private Date offChallengeRegDate;
	 private String offChallengeRegContent;
	 private String hashTag;
	 private String delNy;
	 private String repNy;
	 private String url;
	 private int max;
	 private int category;
	 private int memNo;
	 private int tableNo;
}
