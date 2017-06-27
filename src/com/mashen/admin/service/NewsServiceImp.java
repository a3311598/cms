package com.mashen.admin.service;

import java.util.List;

import com.mashen.admin.dao.NewsDao;
import com.mashen.admin.dao.NewsDaoImp;
import com.mashen.admin.domain.News;

public class NewsServiceImp implements NewsService {
	NewsDao dao = new NewsDaoImp();
	@Override
	public News addNews(News passage) {
		System.out.println("***" + passage);
		System.out.println("---------------------------------------");
		return dao.add(passage);
	}

	@Override
	public News deleteNews(Integer id) {
		return dao.delete(id);
	}

	@Override
	public News updateNews(News passage) {
		return dao.update(passage);
	}

	@Override
	public List<News> search(News news) {
		return dao.search(news);
	}

	@Override
	public List<News> search_24hotnews(News news) {
		return dao.search_24hotnews(news);
	}


}
