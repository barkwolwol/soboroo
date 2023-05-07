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
public class OfflineGroupOnce {
	 private int offGroupOnceNo;
	 private String offGroupOnceTitle;
	 private String offGroupOnceId;
	 private Date enrollDate;
	 private Date modifyDate;
	 private Date offGroupOnceDate;
	 private String offGroupOnceContent;
	 private String hashTag;
	 private String delNy;
	 private String repNy;
	 private String url;
	 private int max;
	 private int category;
	 private int memNo;
	 private int tableNo;
}
