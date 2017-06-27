package com.mashen.admin.domain;

import java.util.Date;

public class Admin {
	private Integer id;
	private String name;
	private String account;
	private String password;
	private Date creationtime;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getCreationtime() {
		return creationtime;
	}
	public void setCreationtime(Date creationtime) {
		this.creationtime = creationtime;
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + ", account=" + account + ", password=" + password
				+ ", creationtime=" + creationtime + "]";
	}
	
}
