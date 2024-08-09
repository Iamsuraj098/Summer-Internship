package com.AdoptEase.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.AdoptEase.Model.Contectivity;
import com.AdoptEase.User.FavourDao;
/**
 * Servlet implementation class FavourController
 */
public class Favourjdbc extends HttpServlet {
	protected ArrayList<ArrayList<String>> data(FavourDao fav) throws ServletException, IOException {
		String query = "Select * from pet where gender = ? and breed = ? and activity = ?";
		try {
			Connection con = Contectivity.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, fav.getGender());
//			System.out.print(fav.getGender() + " " + fav.getBreed() + " " + fav.getActivity());
			ps.setString(2, fav.getBreed());
			ps.setString(3, fav.getActivity());
			ResultSet rs = ps.executeQuery();
			ArrayList<ArrayList<String>> store = new ArrayList<>();
			int k=0;
			while(rs.next()) {
				ArrayList<String> temp = new ArrayList<>();
				temp.add(String.valueOf(rs.getInt("p_id")));
				temp.add(String.valueOf(rs.getInt("age")));
				temp.add(rs.getString("breed"));
				temp.add(rs.getString("status"));
				temp.add(String.valueOf(rs.getInt("price")));
				temp.add(rs.getString("img"));
				temp.add(rs.getString("avialable"));
				temp.add(String.valueOf(rs.getInt("weight")));
				temp.add(rs.getString("color"));
				temp.add(rs.getString("activity"));
				store.add(k, temp);
				k++;
			}
			return store;
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}

}
