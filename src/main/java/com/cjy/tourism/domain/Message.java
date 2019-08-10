package com.cjy.tourism.domain;

import java.util.Date;

public class Message {
	
	//字段
	private Integer id;
	private Integer uid;
	private String message;
	private Date inputTime = new Date();
	private Boolean sex;
	private String txtName;
	private String txtTell;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	public Date getInputTime() {
		return inputTime;
	}
	public void setInputTime(Date inputTime) {
		this.inputTime = inputTime;
	}
	public Boolean getSex() {
		return sex;
	}
	public void setSex(Boolean sex) {
		this.sex = sex;
	}
	public String getTxtName() {
		return txtName;
	}
	public void setTxtName(String txtName) {
		this.txtName = txtName;
	}
	public String getTxtTell() {
		return txtTell;
	}
	public void setTxtTell(String txtTell) {
		this.txtTell = txtTell;
	}
	
	@Override
	public String toString() {
		return "Message [id=" + id + ", uid=" + uid + ", message=" + message + ", inputTime=" + inputTime + ", sex="
				+ sex + ", txtName=" + txtName + ", txtTell=" + txtTell + "]";
	}
	
		
}
