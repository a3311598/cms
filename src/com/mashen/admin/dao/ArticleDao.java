package com.mashen.admin.dao;

import com.mashen.admin.domain.Article;

public interface ArticleDao {
	public int add(Article article);
	public int delete(Integer id);
	public int update(Article article);
}
