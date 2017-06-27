package com.mashen.admin.domain;

import java.sql.Timestamp;

public class Column {
	private Integer id;
	private String columnname;
	private Timestamp creationtime;
	@Override
	public String toString() {
		return "Column [id=" + id + ", columnname=" + columnname + ", creationtime=" + creationtime + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getColumnname() {
		return columnname;
	}
	public void setColumnname(String columnname) {
		this.columnname = columnname;
	}
	public Timestamp getCreationtime() {
		return creationtime;
	}
	public void setCreationtime(Timestamp creationtime) {
		this.creationtime = creationtime;
	}
	
}
