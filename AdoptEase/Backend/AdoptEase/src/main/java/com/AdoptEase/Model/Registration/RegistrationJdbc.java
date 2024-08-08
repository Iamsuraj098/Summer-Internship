package com.AdoptEase.Model.Registration;

import jakarta.servlet.http.HttpServlet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
			System.out.println(query);
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

}
