package com.board.domain;

public class MemberVO {
	
	private String adminId;
	private String adminPass;
	private String adminName;
	private String codeNum;

	public String getAdminId() {
		return adminId;
	}
	
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	
	public String getAdminPass() {
		return adminPass;
	}
	
	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}
	
	public String getAdminName() {
		return adminName;
	}
	
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	
	public String getCodeNum() {
		return codeNum;
	}
	public void setCodeNum(String codeNum) {
		this.codeNum = codeNum;
	}
}	