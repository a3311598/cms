package com.mashen.admin.service;

import com.mashen.admin.dao.AdminDao;
import com.mashen.admin.dao.AdminDaoImp;
import com.mashen.admin.domain.Toutiao;

public class AdminServiceImp implements AdminService {
	private AdminDao dao= new AdminDaoImp();
	@Override
	public int delete(Integer id) {
		return dao.delete(id);
	}

	@Override
	public Toutiao get(Toutiao toutiao) {
		return dao.get(toutiao);
	}

}
