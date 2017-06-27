package com.mashen.admin.domain;

import java.sql.Timestamp;

public class News {
	private Integer id;
	private int categoryid;
	private int headlineid;
	private int viewcount;
	private String  headline;
	private String content;
	private Timestamp creationtime;
	private String headname;
	private String thumb;
	private String headimg;
	@Override
	public String toString() {
		return "News [id=" + id + ", categoryid=" + categoryid + ", headlineid=" + headlineid + ", viewcount=" + viewcount
				+ ", headline=" + headline + ", content=" + content + ", creationtime=" + creationtime + ", headname="
				+ headname + ", thumb=" + thumb + ", headimg=" + headimg + "]";
	}
		public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public int getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}
	public int getHeadlineid() {
		return headlineid;
	}
	public void setHeadlineid(int headlineid) {
		this.headlineid = headlineid;
	}
	public int getViewcount() {
		return viewcount;
	}
	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}
	public String getHeadline() {
		return headline;
	}
	public void setHeadline(String headline) {
		this.headline = headline;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getCreationtime() {
		return creationtime;
	}
	public void setCreationtime(Timestamp creationtime) {
		this.creationtime = creationtime;
	}
	public String getHeadname() {
		return headname;
	}
	public void setHeadname(String headname) {
		this.headname = headname;
	}
	public String getThumb() {
		return thumb;
	}
	public void setThumb(String thumb) {
		this.thumb = thumb;
	}
	public String getHeadimg() {
		return headimg;
	}
	public void setHeadimg(String headimg) {
		this.headimg = headimg;
	}
		
}
