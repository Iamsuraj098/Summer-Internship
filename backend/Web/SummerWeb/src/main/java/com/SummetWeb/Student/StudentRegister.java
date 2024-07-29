package com.SummetWeb.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/Registration/register")
public class StudentRegister extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(ClassNotFoundException e){
			out.println(e.getMessage());
			out.println(e.getStackTrace());
		}
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost/student", "root", "");

			int id = Integer.parseInt(request.getParameter("sid"));
			String name = request.getParameter("name");
			String city = request.getParameter("city");

			String query = "insert into details(Student_Id, Name, city) values( " + id + ", '" + name + "', '" + city
					+ "' )";
			out.println(query);
			stmt = conn.createStatement();
			int row = stmt.executeUpdate(query);
			RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
			if(row> 0) {
				request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "fail");
			}
			rd.forward(request, response);
		} catch (Exception e) {
			out.print(e.getMessage());
		}
	}
}
