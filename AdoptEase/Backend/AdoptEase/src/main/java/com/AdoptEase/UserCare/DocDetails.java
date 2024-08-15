package com.AdoptEase.UserCare;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/UserDashBoard/Care/DocDetails")
public class DocDetails extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cAreJdbc update = new cAreJdbc();
		ArrayList<ArrayList<String>> store = update.DocDetails();
		RequestDispatcher rd = request.getRequestDispatcher("care.jsp");
		request.setAttribute("details", store);
		rd.forward(request, response);
	}

}
