package com.AdoptEase.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.AdoptEase.Model.Contectivity;

@WebServlet("/UserDashBoard/Adopt/favour")
public class Favour extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String x1 = request.getParameter("like");
		String x2 = request.getParameter("looking");
		String x3 = request.getParameter("have");
		String x4 = request.getParameter("owner");
		String x5 = request.getParameter("currently");
		String x6 = request.getParameter("gender");
//		System.out.print("xya"+x6);
		String x7 = request.getParameter("weight");
		String x8 = request.getParameter("activity");
		String x9 = request.getParameter("sick");
		String x10 = request.getParameter("breed");
		
		FavourDao dao = new FavourDao();
		dao.setLike(x1);
		dao.setLooking(x2);
		dao.setHave(x3);
		dao.setOwner(x4);
		dao.setCurrently(x5);
		dao.setGender(x6);
		dao.setWeight(x7);
		dao.setActivity(x8);
		dao.setSick(x9);
		dao.setBreed(x10);
		
		Favourjdbc fav = new Favourjdbc();
		ArrayList<ArrayList<String>> store = fav.data(dao);
//		System.out.print(store);
		if(store == null) {
			RequestDispatcher rd = request.getRequestDispatcher("Adopt/Adopt.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("Pets/pets.jsp");
			request.setAttribute("data", store);
			rd.forward(request, response);
		}
	}

}
