package com.mashen.admin.service;

import java.util.List;

import com.mashen.admin.domain.Advertisement;

public interface AdService {
	
	public List<Advertisement> adselect(String name);
		
	public int adadd(Advertisement addtest);
	
	public Advertisement adremove(Advertisement adrm);
}
