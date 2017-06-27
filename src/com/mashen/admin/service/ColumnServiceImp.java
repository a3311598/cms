package com.mashen.admin.service;

import java.util.List;

import com.mashen.admin.dao.ColumnDao;
import com.mashen.admin.dao.ColumnDaoImp;
import com.mashen.admin.domain.Column;


public class ColumnServiceImp implements ColumnService {
	ColumnDao dao = new ColumnDaoImp();
	@Override
	public Column addColumn(Column column) {
		return dao.add(column);
	}

	@Override
	public Column deleteColumn(Integer id) {
		return dao.delete(id);
	}

	@Override
	public Column updateColumn(Column column) {
		return dao.update(column);
	}

	@Override
	public List<Column> searchColumn(int id) {
		return dao.search(id);
	}


	@Override
	public List<Column> search(String columnname) {
		return dao.search(columnname);
	}


}
