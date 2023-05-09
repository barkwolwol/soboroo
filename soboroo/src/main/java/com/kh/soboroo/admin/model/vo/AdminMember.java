package com.kh.soboroo.admin.model.vo;



import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class AdminMember {
	
	private String memNo;
	private String memToken;
	private String memId;
	private Date memBirth;
	private String memPhone;
	private String memName;
	private int memStatus;
	private String memNickname;
	private String memIntroduce;
	private int memRprCount;
	private String memImg;
	private Date memEnrollDate;
	private Date memUpdateDate;

}
