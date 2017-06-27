package com.mashen.admin.service;

import java.util.List;

import com.mashen.admin.domain.Column;


public interface ColumnService {
	public Column addColumn(Column column);
	public Column deleteColumn(Integer id);
	public Column updateColumn(Column column);
	public List<Column> searchColumn(int id);
	public List<Column> search(String columnname);
}
