package com.AdoptEase.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Servlet implementation class Jdbc
 */
public class Contectivity {

	private static String url = "jdbc:mysql://localhost:3306/adoptease";
	private static String username = "root";
	private static String password = "122436";

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return conn;
	}
}
