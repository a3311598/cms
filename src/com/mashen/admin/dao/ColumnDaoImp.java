package com.mashen.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.dbcp.dbcp2.ConnectionFactory;

import com.mashen.admin.domain.Column;
import com.mashen.connectionfactory.connectionfactory;


public class ColumnDaoImp implements ColumnDao {

	@Override
	public Column add(Column column) {
		Connection conn=null;
		int count=0;
		try {
			conn = connectionfactory.getconnection();
			PreparedStatement ps = conn.prepareStatement("insert into news_type(columnname) value(?)");
			ps.setString(1, column.getColumnname());
		
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
	public Column delete(Integer id) {
		int  count=0;
		Connection conn=null;
		
		 try {
			conn = connectionfactory.getconnection();	
			PreparedStatement  statement = conn.prepareStatement("delete from news_type where id=?");
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
	public Column update(Column column) {
		int count = 0;
		Connection conn = null;
		try {
			 conn = connectionfactory.getconnection();
			 PreparedStatement statement = conn.prepareStatement("update news_type set columnname=?  where id=?" );
			 statement.setString(1,column.getColumnname());
			 statement.setInt(2,column.getId());
			 count = statement.executeUpdate(); 
			 System.out.println(count);
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
	public List<Column> search(int id) {
		return null;
	}

	@Override
	public List<Column> search(String columnname) {
		Connection conn = null;
		PreparedStatement ps = null;
		List<Column> colList = null;
		try{
			conn = connectionfactory.getconnection();
			 colList = new ArrayList<Column>();
			if(columnname!=null&&!"".equals(columnname)){
				 ps = conn.prepareStatement("select * from news_type where columnname like ?");
				 ps.setString(1, columnname+"%");
			}else{
				 ps = conn.prepareStatement("select * from news_type");
			}
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				Column column = new Column();
				column.setId(rs.getInt("id"));
				column.setColumnname(rs.getString("columnname"));
				column.setCreationtime(rs.getTimestamp("creationtime"));
				colList.add(column);
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
		return colList;
	}

	}

	


