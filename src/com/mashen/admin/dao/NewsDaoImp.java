package com.mashen.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.mashen.admin.domain.News;
import com.mashen.connectionfactory.connectionfactory;
import com.sun.jndi.url.corbaname.corbanameURLContextFactory;
import com.sun.org.apache.regexp.internal.recompile;


public class NewsDaoImp implements NewsDao {

	@Override
	public News add(News passage) {
		Connection conn=null;
		int count=0;
		try {
			conn = connectionfactory.getconnection();
			PreparedStatement ps = conn.prepareStatement("insert into article(categoryid,headlineid,viewcount,headline,content,headname,thumb,headimg) values(?,?,?,?,?,?,?,?)");
			ps.setInt(1,passage.getCategoryid());
			ps.setInt(2, passage.getHeadlineid());
			ps.setInt(3, passage.getViewcount());
			ps.setString(4, passage.getHeadline());
			ps.setString(5, passage.getContent());
			ps.setString(6, passage.getHeadname());
			ps.setString(7, passage.getThumb());
			ps.setString(8, passage.getHeadimg());
			count = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public News delete(Integer id) {
		int  count=0;
		Connection conn=null;
		
		 try {
			conn = connectionfactory.getconnection();	
			PreparedStatement  statement = conn.prepareStatement("delete from article where id=?");
			statement.setInt(1, id);
			
			 count = statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}

	@Override
	public News update(News passage) {
		int count = 0;
		Connection conn = null;
		try {
			 conn = connectionfactory.getconnection(); 
			 PreparedStatement statement = conn.prepareStatement("update article set headline=?,content=?,headname=?  where id=?" );
			 statement.setString(1,passage.getHeadline());
			 statement.setString(2,passage.getContent());
			 statement.setString(3,passage.getHeadname());
			 statement.setInt(4,passage.getId());
			 count = statement.executeUpdate(); 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			}

		return null;
	}



	@Override
	public List<News> search(News news) {
		Connection conn = null;
		PreparedStatement ps = null;
		List<News> newList = null;
		try{
			conn = connectionfactory.getconnection();
			if(news.getCategoryid()!=0){
				ps=conn.prepareStatement("select * from article where categoryid=?");
				ps.setInt(1, news.getCategoryid());
			}else if (news.getId()!=null) {
				ps=conn.prepareStatement("select * from article where id=?");
				ps.setInt(1, news.getId());
			}else if(news.getHeadname()!=null){
				ps=conn.prepareStatement("select * from article where headname=?");
				ps.setString(1, news.getHeadname());
			}else {
				ps=conn.prepareStatement("select * from article");
			}
			 newList = new ArrayList<News>();
			 ResultSet rs = ps.executeQuery();
			 while(rs.next()){
				 News passage = new News();
				 passage.setId(rs.getInt("id"));
				 passage.setViewcount(rs.getInt("viewcount"));
				 passage.setHeadline(rs.getString("headline"));
				 passage.setContent(rs.getString("content"));
				 passage.setCreationtime(rs.getTimestamp("creationtime"));
				 passage.setThumb(rs.getString("thumb"));
				 passage.setHeadimg(rs.getString("headimg"));
				 newList.add(passage);
			/*if(headline!=null&&!"".equals(headline)){
				 ps = conn.prepareStatement("select * from article where headline like ?");
				 ps.setString(1, "%"+headline+"%");
			}else{
				 ps = conn.prepareStatement("select * from article");
			}*/
			}
			System.out.println(newList);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return newList;
	}

	@Override
	public List<News> search_24hotnews(News news) {
		Connection conn = null;
		PreparedStatement ps = null;
		List<News> newList = null;
		try{
			conn = connectionfactory.getconnection();
			ps=conn.prepareStatement("select * from article ORDER BY viewcount DESC limit 1,4");
			 newList = new ArrayList<News>();
			 ResultSet rs = ps.executeQuery();
			 while(rs.next()){
				 News passage = new News();
				 passage.setId(rs.getInt("id"));
				 passage.setViewcount(rs.getInt("viewcount"));
				 passage.setHeadline(rs.getString("headline"));
				 passage.setContent(rs.getString("content"));
				 passage.setCreationtime(rs.getTimestamp("creationtime"));
				 passage.setThumb(rs.getString("thumb"));
				 passage.setHeadimg(rs.getString("headimg"));
				 newList.add(passage);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return newList;
	}
}
