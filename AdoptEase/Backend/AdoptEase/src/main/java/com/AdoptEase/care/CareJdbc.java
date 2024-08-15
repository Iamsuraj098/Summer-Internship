package com.AdoptEase.care;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.AdoptEase.Model.Contectivity;
import com.AdoptEase.User.FavourDao;

import jakarta.servlet.ServletException;

public class CareJdbc {
    public int insert(CareDao pet) throws ClassNotFoundException, SQLException {
        String query = "INSERT INTO pet(age, breed, status, price, img, email, avialable, weight, color, activity, gender) "
                     + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        
        Connection con = Contectivity.getConnection();

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, pet.getAge());
            ps.setString(2, pet.getBreed());
            ps.setString(3, "unsold"); 
            ps.setInt(4, pet.getPrice());
            ps.setString(5, pet.getImage());
            ps.setString(6, "null");
            ps.setString(7, pet.getAvial());
            ps.setInt(8, pet.getWeight());
            ps.setString(9, pet.getColor());
            ps.setString(10, pet.getActiv());
            ps.setString(11, pet.getGender());

            int rs = ps.executeUpdate(); // Removed query argument
            if (rs > 0) {
                return 1; // Successful insertion
            }
        } catch(SQLException e) {
            e.printStackTrace();
        } finally {
            if (con != null) {
                con.close();
            }
        }

        return 0; // Insertion failed
    }
    
    public ArrayList<ArrayList<String>> Details() throws ServletException, IOException {
		String query = "Select * from pet";
		try {
			Connection con = Contectivity.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			ArrayList<ArrayList<String>> store = new ArrayList<>();
			int k=0;
			while(rs.next()) {
				ArrayList<String> temp = new ArrayList<>();
				temp.add(String.valueOf(rs.getInt("p_id")));
				temp.add(rs.getString("breed"));
				temp.add(String.valueOf(rs.getInt("age")));
				temp.add(rs.getString("color"));
				temp.add(rs.getString("status"));
				temp.add(rs.getString("avialable"));
				temp.add(rs.getString("img"));
				temp.add(String.valueOf(rs.getInt("price")));
				temp.add(String.valueOf(rs.getInt("weight")));
				temp.add(rs.getString("activity"));
				temp.add(rs.getString("email"));
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
