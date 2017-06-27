package com.mashen.admin.service;

import java.util.List;

import com.mashen.admin.domain.News;


public interface NewsService {
		public News addNews(News passage);
		public News deleteNews(Integer id);
		public News updateNews(News passage);
		public List<News> search(News news);
		public List<News> search_24hotnews(News news);
}
