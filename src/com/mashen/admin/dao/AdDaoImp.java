package com.mashen.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import com.mashen.admin.domain.Advertisement;
import com.mashen.connectionfactory.connectionfactory;


public class AdDaoImp implements AdDao {

	@Override
	public List<Advertisement> list(String name) {
		Connection conn=null;
		List<Advertisement> adlist=new ArrayList<>();
		try{
			conn=connectionfactory.getconnection();
			PreparedStatement ps=null;
			if (name!=null&&!"".equals(name)){
				ps=conn.prepareStatement("select * from advertisement where advertisings like ?");
				ps.setString(1,"%"+name+"%");
			}
			else{ps=conn.prepareStatement("select * from advertisement ");}
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				Advertisement advertisementlist = new Advertisement();
				advertisementlist.setId(rs.getInt("id"));
				advertisementlist.setAdvertisings(rs.getString("advertisings"));
				advertisementlist.setAdLinks(rs.getString("adLinks"));
				advertisementlist.setCreationtime(rs.getTimestamp("creationtime"));
				
				adlist.add(advertisementlist);
			}
		}catch(SQLException e){e.printStackTrace();}
		finally{
			if(conn!=null){
				try {conn.close();} 
				catch (SQLException e) {e.printStackTrace();}
			}
		}
		return adlist;
	}
	@Override
	public int add(Advertisement adadd) {
		Connection conn=null;
		int count=0;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//
		try {
			 conn = connectionfactory.getconnection();
			PreparedStatement add = conn.prepareStatement("insert into advertisement (advertisings,adLinks,creationtime) values(?,?,?)");
			add.setString(1,adadd.getAdvertisings());
			add.setString(2,adadd.getAdLinks());
			add.setString(3,df.format(new Date()));
			count = add.executeUpdate();
//			System.out.println("影响行数:" + count);
//			System.out.println(adadd);
		} 
		catch (SQLException e) {e.printStackTrace();} 
			finally {	if (conn != null) {
				try {conn.close();} 
				catch (SQLException e) {e.printStackTrace();}
			}
		}
		return count;
	}
	
	public Advertisement remove(Advertisement adrm) {
		Connection conn = null;
		int count=0;
			try {
				conn = connectionfactory.getconnection();
				PreparedStatement Rm = conn.prepareStatement("delete from advertisement where advertisings=?");
				Rm.setString(1,adrm.getAdvertisings());
				count=Rm.executeUpdate();
//				Rm.executeQuery();
			}
		catch (SQLException e) {e.printStackTrace();}
			finally {	
				if (conn != null) {
					try {conn.close();} 
					catch (SQLException e) {e.printStackTrace();}
				}
			}
			return null;
		}
}
