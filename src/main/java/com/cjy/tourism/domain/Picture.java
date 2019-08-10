package com.cjy.tourism.domain;

public class Picture {
	
	//字段
	private Integer id;
	private String picpath;
	private String spotName;
	private String spotIntro;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPicpath() {
		return picpath;
	}
	public void setPicpath(String picpath) {
		this.picpath = picpath;
	}
	public String getSpotName() {
		return spotName;
	}
	public void setSpotName(String spotName) {
		this.spotName = spotName;
	}
	public String getSpotIntro() {
		return spotIntro;
	}
	public void setSpotIntro(String spotIntro) {
		this.spotIntro = spotIntro;
	}
	
	
	@Override
	public String toString() {
		return "Picture [id=" + id + ", picpath=" + picpath + ", spotName=" + spotName + ", spotIntro=" + spotIntro
				+ "]";
	}
	
}
