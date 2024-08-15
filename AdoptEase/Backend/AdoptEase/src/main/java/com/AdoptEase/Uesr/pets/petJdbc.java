package com.AdoptEase.Uesr.pets;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.AdoptEase.Model.Contectivity;
import com.AdoptEase.User.FavourDao;

import jakarta.servlet.ServletException;
public class petJdbc {
	
	protected ArrayList<String> Userdata(petDao data) throws ServletException, IOException {
		String query = "Select * from User where email = ?";
		try {
			Connection con = Contectivity.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, data.getEmail());
//			System.out.print( data.getEmail() +" " +query);
			ResultSet rs = ps.executeQuery();
			ArrayList<String> temp = new ArrayList<>();
			while(rs.next()) {
				temp.add(rs.getString("name"));
//				System.out.println("kk" + rs.getString("name"));
				temp.add(rs.getString("address"));
				temp.add(rs.getString("email"));
			}
			System.out.print(temp);
			return temp;
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	protected ArrayList<String> Petdata(petDao data) throws ServletException, IOException {
		String query = "Select * from pet where p_id = ?";
		try {
			Connection con = Contectivity.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, data.getP_id());
			ResultSet rs = ps.executeQuery();
			ArrayList<String> temp = new ArrayList<>();
			while(rs.next()) {
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
			}
			return temp;
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
