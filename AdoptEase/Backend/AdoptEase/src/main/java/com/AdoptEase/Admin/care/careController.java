package com.AdoptEase.Admin.care;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/Admin/care/care")
public class careController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		careDao data = new careDao();
		data.setName(request.getParameter("name"));
		data.setQuali(request.getParameter("quali"));
		data.setFees(Integer.parseInt(request.getParameter("fees")));
		
		careJdbc doc = new careJdbc();
		int res = 0;
		ArrayList<ArrayList<String>> store = null;
		try {
			res = doc.insert(data);
			store = doc.Details();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(0 < res) {
			RequestDispatcher rd = request.getRequestDispatcher("care.jsp");
			request.setAttribute("details", store);
			request.setAttribute("msg", "SuccessFully Added");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("care.jsp");
			request.setAttribute("msg", "Not Add");
			request.setAttribute("details", null);
			rd.forward(request, response);
		}
		
	}

}
