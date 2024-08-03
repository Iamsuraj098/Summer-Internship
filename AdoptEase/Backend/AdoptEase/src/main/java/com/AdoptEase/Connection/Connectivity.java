package com.AdoptEase.Connection;

import java.sql.*;

/**
 * Servlet implementation class Connectivity
 */
public class Connectivity{
	public Connectivity() {}

	private static String url = "jdbc:mysql://localhost:3306/AdoptEase";
	private static String username = "root";
	private static String password = "";
	
	public ResultSet Database(String query){
		Connection conn = null;
		Statement smt = null;
		ResultSet rst = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
			smt = conn.createStatement();
			rst = smt.executeQuery(query);
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return rst;
	}

}
