package com.AdoptEase.UserCare;

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
import java.util.ArrayList;

import com.AdoptEase.Admin.care.careDao;
@WebServlet("/UserDashBoard/Care/UserCare")
public class cAreController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		cAreDao data = new cAreDao();
		HttpSession session = request.getSession();
		
		data.setAddress(request.getParameter("address"));
		data.setTiming(request.getParameter("timing"));
		data.setUser((String)session.getAttribute("User"));
		data.setDoc_id(Integer.parseInt(request.getParameter("docId")));
		System.out.println(data.getUser());
		cAreJdbc update = new cAreJdbc();
		int res = 0;
		try {
			res = update.updateCare(data);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("care.jsp");
		if(0 < res) {
			request.setAttribute("msg", "Meeting Booked");
			rd.forward(request, response);
		}else {
			request.setAttribute("msg", "Not Add");
			rd.forward(request, response);
		}
		
	}
}
