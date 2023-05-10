package com.kh.soboroo.entryList.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class EntryList {
	 private int groupNo;
	 private String entryId;
	 private String groupTitle;
	 private String waitNy;
	 private Date entryDate;
	 private int memNo;
	 private int tableNo;
}
