package com.mashen.admin.domain;

import java.util.Date;

public class Toutiao {
	private Integer id;
	private String account;
	private String password;
	private String name;
	private String headportrait;
	private String email;
	private Date creationtime;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHeadportrait() {
		return headportrait;
	}
	public void setHeadportrait(String 
			headportrait) {
		this.headportrait = headportrait;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getCreationtime() {
		return creationtime;
	}
	public void setCreationtime(Date creationtime) {
		this.creationtime = creationtime;
	}
	@Override
	public String toString() {
		return "Toutiao [id=" + id + ", account=" + account + ", password=" + password + ", name=" + name
				+ ", headportrait=" + headportrait + ", email=" + email + ", creationtime=" + creationtime + "]";
	}
	
}
