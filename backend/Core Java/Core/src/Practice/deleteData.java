package Practice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class deleteData {
	static private String url = "jdbc:mysql://localhost:3306/student";
	static private String user = "root";
	static private String password = "";

	public static void main(String[] args) {
		Connection conn = null;
		Statement stmt = null;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement() ;
//			conn.setAutoCommit(false);
			Scanner sc = new Scanner(System.in);
			System.out.println("Update query: ");
			System.out.print("Enter the old id: ");
			int id = sc.nextInt();

//			String query = "insert into customer(cust_id, name, age) values (id, 'name', age )";
			String query = "delete from customer where cust_id = " + id + ";";
			
			System.out.println(query);
			int row = stmt.executeUpdate(query);

			if (row > 0) {
				System.out.println("Success Fully deleted");
			} else {
				System.out.println("Not Deleted");
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
