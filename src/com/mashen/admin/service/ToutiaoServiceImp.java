package com.mashen.admin.service;


import java.util.List;

import com.mashen.admin.dao.ToutiaoDao;
import com.mashen.admin.dao.ToutiaoDaoImp;
import com.mashen.admin.domain.Toutiao;

public class ToutiaoServiceImp implements ToutiaoService {
	private ToutiaoDao dao=new ToutiaoDaoImp();
	@Override
	public int register(Toutiao toutiao) {
		return dao.add(toutiao);
	}

	@Override
	public Toutiao checkLogin(String account, String pwd) {
		Toutiao toutiao=dao.getByAccount(account);
		if (toutiao!=null) {
			if (toutiao.getPassword().equals(pwd)) {
				return toutiao;
			}
		}
		return null;
	}

	@Override
	public Toutiao update(int id) {
		return dao.update(id);
	}

	@Override
	public List<Toutiao> listByname(String name) {
		return dao.search(name);
	}



}
