package com.mashen.admin.dao;

import java.util.List;

import com.mashen.admin.domain.Toutiao;

public interface ToutiaoDao {
	public int add(Toutiao toutiao );
	public int delete(Integer id);
	public Toutiao update(int id);
	public List<Toutiao> search(String name);
	public Toutiao get(Integer id);
	public Toutiao getByAccount(String account);
}
