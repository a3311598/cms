package com.mashen.admin.service;

import java.util.List;

import com.mashen.admin.domain.Toutiao;

public interface ToutiaoService {
	public int register(Toutiao toutiao);
	public Toutiao checkLogin(String account,String pwd);
	public Toutiao update(int id);
	public List<Toutiao> listByname(String name);
}
