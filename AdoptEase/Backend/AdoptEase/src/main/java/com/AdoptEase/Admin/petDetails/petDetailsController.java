package com.AdoptEase.Admin.petDetails;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import com.AdoptEase.care.CareJdbc;

@WebServlet("/Admin/pet/petDetails")
public class petDetailsController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CareJdbc pet = new CareJdbc();	
		ArrayList<ArrayList<String>> store = null;
		store = pet.Details();
		if(store != null) {
			RequestDispatcher rd = request.getRequestDispatcher("pet.jsp");
			request.setAttribute("details", store);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("pet.jsp");
			rd.forward(request, response);
		}
	}

}
