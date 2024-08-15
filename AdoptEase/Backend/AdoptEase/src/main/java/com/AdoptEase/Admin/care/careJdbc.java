package com.AdoptEase.Admin.care;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.AdoptEase.Model.Contectivity;
import jakarta.servlet.ServletException;

public class careJdbc {
    public int insert(careDao doc) throws ClassNotFoundException, SQLException {
        String query = "INSERT INTO doctor(name, quali, fees, user, meeting, address, status) "
                     + "VALUES (?, ?, ?, ?, ?, ?, ?);";
        
        Connection con = Contectivity.getConnection();

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, doc.getName());
            ps.setString(2, doc.getQuali());
            ps.setInt(3, doc.getFees()); 
            ps.setString(4, "null");
            ps.setString(5, "null");
            ps.setString(6, "null");
            ps.setString(7, "null");

            int rs = ps.executeUpdate();
            if (rs > 0) {
                return 1;
            }
        } catch(SQLException e) {
            e.printStackTrace();
        } finally {
            if (con != null) {
                con.close();
            }
        }
        return 0;
    }
    
    protected ArrayList<ArrayList<String>> Details() throws ServletException, IOException {
        String query = "SELECT * FROM doctor";
        try {
            Connection con = Contectivity.getConnection();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            ArrayList<ArrayList<String>> store = new ArrayList<>();
            int k = 0;
            while(rs.next()) {
                ArrayList<String> temp = new ArrayList<>();
                temp.add(rs.getString("name"));
                temp.add(rs.getString("quali"));
                temp.add(String.valueOf(rs.getInt("fees")));
                temp.add(rs.getString("user"));
                temp.add(rs.getString("meeting"));
                temp.add(rs.getString("address"));
                temp.add(rs.getString("status"));
                store.add(k++, temp); 
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
