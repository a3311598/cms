package com.mashen.admin.dao;

import java.util.List;

import com.mashen.admin.domain.News;


public interface NewsDao {
	public News add(News passage);
	public News delete(Integer id);
	public News update(News passage);
	public List<News> search(News news);
	public List<News> search_24hotnews(News news);
}
