package com.AdoptEase.Login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.AdoptEase.Connection.Connectivity;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connectivity con = new Connectivity();
		String query = "Select* from Admin";
		ResultSet rst = con.Database(query);
		try {
			while(rst.next()) {
				System.out.println(rst.getString(0)+" ");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
