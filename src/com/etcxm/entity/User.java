package com.etcxm.entity;

import java.io.Serializable;

public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Long user_id;
	private String user_name;
	private String user_password;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(Long user_id, String user_name, String user_password) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_password = user_password;
	}
	public Long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_name=" + user_name
				+ ", user_password=" + user_password + "]";
	}
	public Object getEmail() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
