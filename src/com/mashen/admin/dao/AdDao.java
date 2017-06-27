package com.mashen.admin.dao;

import java.util.List;

import com.mashen.admin.domain.Advertisement;


public interface AdDao {	
	
	public List<Advertisement> list(String name);

	public int add(Advertisement adadd);

	public  Advertisement remove(Advertisement adrm);
}
