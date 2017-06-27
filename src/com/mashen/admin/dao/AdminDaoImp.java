package com.mashen.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mashen.admin.domain.Toutiao;
import com.mashen.connectionfactory.connectionfactory;

public class AdminDaoImp implements AdminDao {

	@Override
	public int delete(Integer id) {
		Connection conn=null;
		int cou=0;
		try {
			conn = connectionfactory.getconnection();
			PreparedStatement statement=conn.prepareStatement("delete from toutiao where id=?");
			statement.setInt(1, id);
			int count=statement.executeUpdate();
			cou=count;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cou;
	}

	@Override
	public Toutiao get(Toutiao toutiao) {
		// TODO Auto-generated method stub
		return null;
	}

}
