package com.kh.soboroo.admin.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class Admin {
	
	
	// 공지사항 관리
	private int ntcNo;
	private String ntcWriter;
	private String ntcTitle;
	private String ntcContent;
	private String ntcCreateDate;
	private String ntcUpdateDate;
	private int ntcCount;
	private String ntcDelNy;
	
	
	

}
