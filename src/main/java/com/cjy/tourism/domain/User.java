package com.cjy.tourism.domain;
//用户类
public class User {
	
	//字段
	private Integer id;
	private String username;
	private String password;
	private String tellphone;
	private String nickname;
	
	//get/set
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public String getTellphone() {
		return tellphone;
	}
	public void setTellphone(String tellphone) {
		this.tellphone = tellphone;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	//覆写
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", tellphone=" + tellphone
				+ ", nickname=" + nickname + "]";
	}
	
	
	
}
