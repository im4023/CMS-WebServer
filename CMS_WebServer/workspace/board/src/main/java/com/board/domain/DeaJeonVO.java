package com.board.domain;

import java.util.Date;

public class DeaJeonVO {
	private int idx;
	private String title;
	private String writer;
	private String content;
	private Date regDate;
	private String busNum;
	private String busName;
	private String org_file;
	private String sto_file;
	private int zero;
	
	public int getZero() {
		return zero;
	}
	public void setZero(int zero) {
		this.zero = zero;
	}
	
	public String getorg_file() {
		return org_file;
	}
	public void setorg_file(String org_file){
		this.org_file = org_file;
	}	
	public String getsto_file() {
		return sto_file;
	}
	public void setsto_file(String sto_file){
		this.sto_file = sto_file;
	}
	public String getbusName() {
		return busName;
	}
	public void setbusName(String busName) {
		this.busName = busName;
	}
	public String getbusNum() {
		return busNum;
	}
	public void setbusNum(String busNum) {
		this.busNum = busNum;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	
}
