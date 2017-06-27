package com.mashen.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mashen.admin.domain.Article;
import com.mashen.connectionfactory.connectionfactory;

public class ArticleDaoImp implements ArticleDao {
	@Override
	public int add(Article article) {
		Connection conn=null;
		int acc=0;
		try {
			conn=connectionfactory.getconnection();
			PreparedStatement statement=conn.prepareStatement("insert into article(categoryid,headlineid,viewcount,headline,content,headname,thumb,headimg) values(?,?,?,?,?,?,?,?)");
			statement.setInt(1,article.getCategoryid());
			statement.setInt(2, article.getHeadlineid());
			statement.setInt(3, article.getViewcount());
			statement.setString(4, article.getHeadline());
			statement.setString(5, article.getContent());
			statement.setString(6, article.getHeadname());
			statement.setString(7, article.getThumb());
			System.out.println(article.getThumb());
			statement.setString(8, article.getHeadimg());
			int account=statement.executeUpdate();
			acc=account;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if (conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return acc;
	}

	@Override
	public int delete(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Article article) {
		// TODO Auto-generated method stub
		return 0;
	}

}
