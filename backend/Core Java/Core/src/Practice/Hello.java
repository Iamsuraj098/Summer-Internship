package Practice;
import java.sql.*;
public class Hello {
	public static void main(String[] args) {
//		System.out.println("Hello World");
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
			String query = "Select * from customer";
			Statement smt = conn.createStatement();
			ResultSet result = smt.executeQuery(query);
			System.out.println("ID      Name         Age");
			System.out.println("...     ....         ..."); 
			while(result.next()) {
				System.out.println(result.getInt("cust_id")+"    " + result.getString("name") + "      " + result.getInt("age"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
	}
}



