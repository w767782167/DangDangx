package com.etcxm.entity;

import java.io.Serializable;

public class Comment implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Long comment_id;
	private Long user_id;
	private String comment_context;
	private String comment_time;
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Comment(Long comment_id, Long user_id, String comment_context,
			String comment_time) {
		super();
		this.comment_id = comment_id;
		this.user_id = user_id;
		this.comment_context = comment_context;
		this.comment_time = comment_time;
	}
	public Long getComment_id() {
		return comment_id;
	}
	public void setComment_id(Long comment_id) {
		this.comment_id = comment_id;
	}
	public Long getUser_id() {
		return user_id;
	}
	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}
	public String getComment_context() {
		return comment_context;
	}
	public void setComment_context(String comment_context) {
		this.comment_context = comment_context;
	}
	public String getComment_time() {
		return comment_time;
	}
	public void setComment_time(String comment_time) {
		this.comment_time = comment_time;
	}
	@Override
	public String toString() {
		return "Comment [comment_id=" + comment_id + ", user_id=" + user_id
				+ ", comment_context=" + comment_context + ", comment_time="
				+ comment_time + "]";
	}
	

}
