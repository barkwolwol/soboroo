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
public class OfflineGroupRegular {
	 private int offGroupRegNo;
	 private String offGroupRegTitle;
	 private String offGroupRegId;
	 private Date enrollDate;
	 private Date modifyDate;
	 private Date offGroupRegDate;
	 private String offGroupRegContent;
	 private String hashTag;
	 private String delNy;
	 private String repNy;
	 private String url;
	 private int max;
	 private int category;
	 private int memNo;
	 private int tableNo;
}
