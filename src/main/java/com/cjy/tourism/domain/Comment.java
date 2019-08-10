package com.cjy.tourism.domain;

import java.util.Date;

/*
 * 品论类
 * */
public class Comment {
	
	//字段
	private Integer id;
	private Integer uid;
	private String comment;
	private Date commentTime;
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
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Date getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
	
	//fuxie
	@Override
	public String toString() {
		return "Comment [id=" + id + ", uid=" + uid + ", comment=" + comment + ", commentTime=" + commentTime + "]";
	}
	
	
}
