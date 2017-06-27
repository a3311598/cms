package com.mashen.admin.dao;

import java.util.List;

import com.mashen.admin.domain.Column;


public interface ColumnDao {
	public Column add(Column column);
	public Column delete(Integer id);
	public Column update(Column column);
	public List<Column> search(int id);
	public List<Column> search(String columnname);
}
