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
public class OnlineGroupRegular {
	 private int onGroupRegNo;
	 private String onGroupRegTitle;
	 private String onGroupRegId;
	 private Date enrollDate;
	 private Date modifyDate;
	 private Date onGroupRegDate;
	 private String onGroupRegContent;
	 private String hashTag;
	 private String delNy;
	 private String repNy;
	 private String url;
	 private int max;
	 private int category;
	 private int memNo;
	 private int tableNo;
}
