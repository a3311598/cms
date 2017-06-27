package com.mashen.admin.dao;

import com.mashen.admin.domain.Toutiao;

public interface AdminDao {
	public int delete(Integer id);
	public Toutiao get(Toutiao toutiao );
}
