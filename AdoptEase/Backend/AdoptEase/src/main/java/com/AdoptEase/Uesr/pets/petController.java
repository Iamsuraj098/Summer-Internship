package com.AdoptEase.Uesr.pets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 * Servlet implementation class petController
 */
@WebServlet("/UserDashBoard/Adopt/petForm")
public class petController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String p_id = request.getParameter("selected");
		
		petDao data = new petDao();
		
		data.setEmail((String)session.getAttribute("User"));
		data.setP_id(p_id);
		
		petJdbc info = new petJdbc();
		ArrayList<String> userdata = info.Userdata(data);
//		System.out.println(userdata);
		ArrayList<String> petdata = info.Petdata(data);
		RequestDispatcher rd = request.getRequestDispatcher("form/form.jsp");
		request.setAttribute("userdata", userdata);
		request.setAttribute("petdata", petdata);
		if(userdata != null && petdata != null) {
			rd.forward(request, response);
		}else {
			out.print("Server is down");
		}
		
	}
}
