package com.AdoptEase.Model;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.AdoptEase.Model.*;
import com.AdoptEase.Uesr.pets.petDao;
/**
 * Servlet implementation class Jdbc
 */
public class Jdbc extends HttpServlet {

	public boolean verify(LoginDao client) throws ClassNotFoundException, SQLException {
		String query;
		if(client.getRole().equals("User")) {
			query = "SELECT email, password FROM User WHERE email = ? AND password = ?;";
		}else {
			query = "SELECT email, password FROM Admin WHERE email = ? AND password = ?;";
		}
		
		Connection con = Contectivity.getConnection();

		try (PreparedStatement ps = con.prepareStatement(query)) {
			ps.setString(1, client.getEmail());
			ps.setString(2, client.getPassword());

			try (ResultSet rs = ps.executeQuery()) {
				if (rs.next()) {
					return true;
				}
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
