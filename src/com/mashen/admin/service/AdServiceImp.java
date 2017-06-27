package com.mashen.admin.service;


import java.util.List;

import com.mashen.admin.dao.AdDao;
import com.mashen.admin.dao.AdDaoImp;
import com.mashen.admin.domain.Advertisement;


public class AdServiceImp implements AdService{
	AdDao dao = new AdDaoImp();

	@Override
	public List<Advertisement> adselect(String name) {
		return dao.list(name) ;
	}

	@Override
	public int adadd(Advertisement addtest) {
		return dao.add(addtest);
	}

	@Override
	public Advertisement adremove(Advertisement adrm) {
		return dao.remove(adrm);
	}
}
