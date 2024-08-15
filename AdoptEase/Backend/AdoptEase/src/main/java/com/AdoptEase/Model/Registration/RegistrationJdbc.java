package com.AdoptEase.Model.Registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.AdoptEase.Model.Contectivity;

/** 
 * Servlet implementation class RegistrationJdbc
 */
public class RegistrationJdbc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public boolean add(RegistrationDao client) throws SQLException, ClassNotFoundException {
		String query;
		if (client.getRole().equals("User")) {
			query = "insert into User(name, email, address, password) values (?, ?, ?, ?);";
		} else {
			query = "insert into Admin(name, email, address, password) values (?, ?, ?, ?);";
		}

		Connection con = Contectivity.getConnection();

		try{
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, client.getName());
			ps.setString(2, client.getEmail());
			ps.setString(3, client.getAddress());
			ps.setString(4, client.getPassword()); 
//			System.out.println(query);
			try {
				int rs = ps.executeUpdate();
				if (0 < rs) {
					return true;
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		} finally {
			if (con != null) {
				con.close();
			}
		}

		return false;
	}
	
	public ArrayList<String> AdminData(String email) throws ServletException, IOException {
		String query = "Select * from admin where email = ?";
		try {
			Connection con = Contectivity.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			ArrayList<String> temp = new ArrayList<>();
			while(rs.next()) {
				temp.add(rs.getString("email"));
				temp.add(rs.getString("name"));
				temp.add(rs.getString("address"));
			}
			return temp;
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public ArrayList<String> UserData(String email) throws ServletException, IOException {
		String query = "Select * from user where email = ?";
		try {
			Connection con = Contectivity.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			ArrayList<String> temp = new ArrayList<>();
			while(rs.next()) {
				temp.add(rs.getString("email"));
				temp.add(rs.getString("name"));
				temp.add(rs.getString("address"));
			}
			return temp;
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
