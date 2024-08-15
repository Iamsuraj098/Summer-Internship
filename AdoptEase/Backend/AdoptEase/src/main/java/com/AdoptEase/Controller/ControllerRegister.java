package com.AdoptEase.Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import com.AdoptEase.Model.Registration.RegistrationDao;
import com.AdoptEase.Model.Registration.RegistrationJdbc;

/**
 * Servlet implementation class ControllerRegister
 */

@WebServlet("/Registration/register")
public class ControllerRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String role = request.getParameter("role");

		RegistrationDao client = new RegistrationDao();
		client.setName(name);
		client.setEmail(email);
		client.setAddress(address);
		client.setPassword(password);
		client.setRole(role);

		RegistrationJdbc register = new RegistrationJdbc();
		HttpSession session = request.getSession(); 
		try { 
			boolean result = register.add(client);
			if (result) {
				if (role.equals("User")) {
					ArrayList<String> details = register.AdminData(email); 
					session.setAttribute("User", email);
					session.setAttribute("details", details);
			        response.sendRedirect("http://localhost:8081/AdoptEase/UserDashBoard/UserDash.jsp");
				} else {
					ArrayList<String> details = register.AdminData(email); 
					session.setAttribute("User", email);
					session.setAttribute("details", details);
			        response.sendRedirect("http://localhost:8081/AdoptEase/Admin/Admin.jsp");
				}
			} else { 
				RequestDispatcher rd = request.getRequestDispatcher("/Registration/Registration.jsp");
				rd.forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
