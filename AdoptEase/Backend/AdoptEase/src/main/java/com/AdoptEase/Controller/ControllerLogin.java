package com.AdoptEase.Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.AdoptEase.Model.*;

/**
 * Servlet implementation class ControllerLogin
 */
@WebServlet("/Login/login")
public class ControllerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		LoginDao client = new LoginDao();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		client.setEmail(email);
		client.setPassword(password);
		client.setRole(role);

		Jdbc check = new Jdbc(); 
		
		try {
			boolean result = check.verify(client);
			if(result) {
				HttpSession session = request.getSession(); 
				session.setAttribute("User", email);
				if(role.equals("User")) {
			        response.sendRedirect("http://localhost:8081/AdoptEase/UserDashBoard/UserDash.jsp");
				}else {
			        response.sendRedirect("http://localhost:8081/AdoptEase/Admin/Admin.jsp");
				} 
			}else {
				RequestDispatcher rd = request.getRequestDispatcher("/Registration/Registration.jsp");
				request.setAttribute("msg", "not");
				rd.forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
