package com.mashen.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mashen.admin.domain.Toutiao;
import com.mashen.connectionfactory.connectionfactory;

public class ToutiaoDaoImp implements ToutiaoDao {

	@Override
	public int add(Toutiao toutiao) {
		Connection conn=null;
		int acc=0;
	try {
		conn= connectionfactory.getconnection();
		PreparedStatement statement=conn.prepareStatement("insert into toutiao(account,password,name,headportrait,email) values(?,?,?,?,?)");
		statement.setString(1, toutiao.getAccount());
		statement.setString(2, toutiao.getPassword());
		statement.setString(3, toutiao.getName());
		statement.setString(4, toutiao.getHeadportrait());
		statement.setString(5, toutiao.getEmail());
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
	public Toutiao update(int id) {
		Connection connection=null;
		int account=0;
		try {
			connection=connectionfactory.getconnection();
			PreparedStatement statement=connection.prepareStatement("update toutiao set name=? headportrait=? email=? where id=?");
			statement.setString(1, "name");
			statement.setString(2, "headportrait");
			statement.setString(3, "email");
			statement.setInt(4, id);
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public Toutiao get(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Toutiao getByAccount(String account) {
		Connection conn=null;
		try {
			conn=connectionfactory.getconnection();
			PreparedStatement  statement=conn.prepareStatement("select id,account,password,name from toutiao where account=?");
			statement.setString(1, account);
			ResultSet rs=statement.executeQuery();
			if (rs.next()) {
				Toutiao toutiao=new Toutiao();
				toutiao.setId(rs.getInt("id"));
				toutiao.setAccount(rs.getString("account"));
				toutiao.setPassword(rs.getString("password"));
				toutiao.setName(rs.getString("name"));
				return toutiao;
			}
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
		return null;
	}

	@Override
	public List<Toutiao> search(String name) {
		Connection conn = null;
		PreparedStatement ps = null;
		ArrayList<Toutiao> userList = null;
		try {
			conn = connectionfactory.getconnection();
			Toutiao user = new Toutiao();
			userList = new ArrayList<Toutiao>();
			if(name!=null)
			{
				ps = conn.prepareStatement("select * from Toutiao where name like ?");
				ps.setString(1, "%"+name+"%");
			}else{
				ps = conn.prepareStatement("select * from Toutiao");
			}
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				user.setId(rs.getInt("id"));
				user.setAccount(rs.getString("account"));
				user.setCreationtime(rs.getTimestamp("creationtime"));
				user.setEmail(rs.getString("email"));
				user.setHeadportrait(rs.getString("headportrait"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				userList.add(user);
			}
			return userList;
			
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
		return null;
	}

}
