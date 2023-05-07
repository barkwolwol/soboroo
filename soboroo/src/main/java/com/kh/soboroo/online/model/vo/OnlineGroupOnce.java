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
public class OnlineGroupOnce {
	 private int onGroupOnceNo;
	 private String onGroupOnceTitle;
	 private String onGroupOnceId;
	 private Date enrollDate;
	 private Date modifyDate;
	 private Date onGroupOnceDate;
	 private String onGroupOnceContent;
	 private String hashTag;
	 private String delNy;
	 private String repNy;
	 private String url;
	 private int max;
	 private int category;
	 private int memNo;
	 private int tableNo;
}
