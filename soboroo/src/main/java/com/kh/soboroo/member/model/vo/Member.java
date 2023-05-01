package com.kh.soboroo.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

public class Member {
	 private int memNo;
	 private String memToken;
	 private String memId;
	 private Date memDate;
	 private String memPhone;
	 private String memName;
	 private int memStatus;
	 private String memNickname;
	 private String memIntroduce;
	 private int memRprCum;
	 private String memImg;
	 
	 public Member() {}

	public Member(int memNo, String memToken, String memId, Date memDate, String memPhone, String memName,
			int memStatus, String memNickname, String memIntroduce, int memRprCum, String memImg) {
		super();
		this.memNo = memNo;
		this.memToken = memToken;
		this.memId = memId;
		this.memDate = memDate;
		this.memPhone = memPhone;
		this.memName = memName;
		this.memStatus = memStatus;
		this.memNickname = memNickname;
		this.memIntroduce = memIntroduce;
		this.memRprCum = memRprCum;
		this.memImg = memImg;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemToken() {
		return memToken;
	}

	public void setMemToken(String memToken) {
		this.memToken = memToken;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public Date getMemDate() {
		return memDate;
	}

	public void setMemDate(Date memDate) {
		this.memDate = memDate;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public int getMemStatus() {
		return memStatus;
	}

	public void setMemStatus(int memStatus) {
		this.memStatus = memStatus;
	}

	public String getMemNickname() {
		return memNickname;
	}

	public void setMemNickname(String memNickname) {
		this.memNickname = memNickname;
	}

	public String getMemIntroduce() {
		return memIntroduce;
	}

	public void setMemIntroduce(String memIntroduce) {
		this.memIntroduce = memIntroduce;
	}

	public int getMemRprCum() {
		return memRprCum;
	}

	public void setMemRprCum(int memRprCum) {
		this.memRprCum = memRprCum;
	}

	public String getMemImg() {
		return memImg;
	}

	public void setMemImg(String memImg) {
		this.memImg = memImg;
	}

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memToken=" + memToken + ", memId=" + memId + ", memDate=" + memDate
				+ ", memPhone=" + memPhone + ", memName=" + memName + ", memStatus=" + memStatus + ", memNickname="
				+ memNickname + ", memIntroduce=" + memIntroduce + ", memRprCum=" + memRprCum + ", memImg=" + memImg
				+ "]";
	}
	 
	 
}
