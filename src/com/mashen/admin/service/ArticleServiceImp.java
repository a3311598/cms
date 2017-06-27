package com.mashen.admin.service;

import com.mashen.admin.dao.ArticleDao;
import com.mashen.admin.dao.ArticleDaoImp;
import com.mashen.admin.domain.Article;

public class ArticleServiceImp implements ArticleService{
	private ArticleDao dao= new ArticleDaoImp();
	@Override
	public int write(Article article) {
		return dao.add(article);
	}

}
