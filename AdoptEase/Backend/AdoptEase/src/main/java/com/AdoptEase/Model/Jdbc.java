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
import com.AdoptEase.Model.*;
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
}
