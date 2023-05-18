package com.kh.soboroo.alert.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Alert {
	 private int idNo;
	 private int groupNo;
	 private int tableNo;
	 private String alertContent;
	 private int memNo;
	 private Date alertDate;
	 private int alertType;
	 private String alertReadNy;
}
