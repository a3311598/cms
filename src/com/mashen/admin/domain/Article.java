package com.mashen.admin.domain;

import java.util.Date;

public class Article {
	private Integer id;
	private Integer categoryid;//分类
	private Integer headlineid;
	private Integer viewcount;//浏览次数
	private String headline;//标题
	private String content;//内容
	private Date creationtime;//创建时间
	private String headname;//头条号名称
	private String thumb;//标题图片
	private String headimg;//头条号名称
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(Integer categoryid) {
		this.categoryid = categoryid;
	}
	public Integer getHeadlineid() {
		return headlineid;
	}
	public void setHeadlineid(Integer headlineid) {
		this.headlineid = headlineid;
	}
	public Integer getViewcount() {
		return viewcount;
	}
	public void setViewcount(Integer viewcount) {
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
	public Date getCreationtime() {
		return creationtime;
	}
	public void setCreationtime(Date creationtime) {
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
	@Override
	public String toString() {
		return "Article [id=" + id + ", categoryid=" + categoryid + ", headlineid=" + headlineid + ", viewcount="
				+ viewcount + ", headline=" + headline + ", content=" + content + ", creationtime=" + creationtime
				+ ", headname=" + headname + ", thumb=" + thumb + ", headimg=" + headimg + "]";
	}
	
}
