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
public class OnlineGroupRegular {
	public int onGroupRegNo;
	public String onGroupRegTitle;
	public String onGroupRegId;
	public Date enrollDate;
	public Date modifyDate;
	public Date onGroupRegDate;
	public String onGroupRegContent;
	public String hashTag;
	public String delNy;
	public String repNy;
	 public String url;
	 public int max;
	 public String category;
	 public int memNo;
	 public int tableNo;
}
