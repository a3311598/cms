package com.mashen.connectionfactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connectionfactory {
	private static String url="jdbc:mysql://127.0.0.1:3306/test";
	private static String user="root";
	private static String password="123456";
	static{
		//加载驱动类
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public static Connection getconnection() throws SQLException{
		return DriverManager.getConnection(url,user,password);
	}
	public static void main(String[] args) throws SQLException {
		Connection conn=connectionfactory.getconnection();
		System.out.println(conn);
	}
}
