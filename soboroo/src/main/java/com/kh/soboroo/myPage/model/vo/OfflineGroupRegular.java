package com.kh.soboroo.myPage.model.vo;


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
	public int offGroupRegNo;
	public String offGroupRegTitle;
	public String offGroupRegId;
	public Date enrollDate;
	 public Date modifyDate;
	 public Date offGroupRegDate;
	 public String offGroupRegContent;
	 public String hashTag;
	 public String delNy;
	 public String repNy;
	 public String url;
	 public int max;
	 public int category;
	 public int memNo;
	 public int tableNo;
}
