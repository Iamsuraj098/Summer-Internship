package com.AdoptEase.UserCare;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.AdoptEase.Model.Contectivity;

import jakarta.servlet.ServletException;

public class cAreJdbc {

    // Corrected method to update care details
    int updateCare(cAreDao data) throws ClassNotFoundException, SQLException {
        String query = "UPDATE doctor SET user = ?, meeting = ?, address = ?, status = ? WHERE doc_id = ?";

        Connection con = Contectivity.getConnection();

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, data.getUser());
            ps.setString(2, data.getTiming());
            ps.setString(3, data.getAddress());
            ps.setString(4, "pending");
            ps.setInt(5, data.getDoc_id()); // Assuming doc_id is 1 for the sake of example

            int rs = ps.executeUpdate(); // Execute update without passing the query string
            if (rs > 0) {
                return 1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (con != null) {
                con.close();
            }
        }

        return 0;
    }
    
    // Method to retrieve doctor details
    public ArrayList<ArrayList<String>> DocDetails() throws ServletException, IOException {
        String query = "SELECT * FROM doctor";
        ArrayList<ArrayList<String>> store = new ArrayList<>();
        
        try (Connection con = Contectivity.getConnection();
             PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            
            while (rs.next()) {
                ArrayList<String> temp = new ArrayList<>();
                temp.add(rs.getString("name"));
                temp.add(rs.getString("quali"));
                temp.add(String.valueOf(rs.getInt("fees")));
                temp.add(rs.getString("user"));
                temp.add(rs.getString("meeting"));
                temp.add(rs.getString("address"));
                temp.add(rs.getString("status"));
                temp.add(rs.getString("doc_id"));
                store.add(temp);
            }
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        
        return store;
    }
}
