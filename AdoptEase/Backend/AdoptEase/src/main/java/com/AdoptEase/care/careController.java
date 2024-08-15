package com.AdoptEase.care;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Servlet implementation class careController
 */
@WebServlet("/Admin/pet/addPet")
public class careController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		CareDao care = new CareDao();
		care.setAge(Integer.parseInt(request.getParameter("age")));
		care.setBreed(request.getParameter("breed"));
		care.setAvial(request.getParameter("avial"));
		care.setPrice(Integer.parseInt(request.getParameter("price")));
		care.setWeight(Integer.parseInt(request.getParameter("weight")));
		care.setColor(request.getParameter("color"));
		care.setGender(request.getParameter("gender"));
		care.setImage(request.getParameter("img"));
		care.setActiv(request.getParameter("active"));
		System.out.println(request.getParameter("avial") +" " + request.getParameter("gender") + " " + request.getParameter("active"));
		CareJdbc pet = new CareJdbc();	
		int res = 0;
		ArrayList<ArrayList<String>> store = null;
		try {
			res = pet.insert(care);
			store = pet.Details();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(0 < res) {
			RequestDispatcher rd = request.getRequestDispatcher("pet.jsp");
			request.setAttribute("details", store);
			request.setAttribute("msg", "SuccessFully Added");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("pet.jsp");
			request.setAttribute("msg", "Not Add");
			rd.forward(request, response);
		}
	}

}
