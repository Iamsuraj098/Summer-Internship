package Practice;

import java.sql.*;
import java.util.Scanner;

public class insertData {
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

			Scanner sc = new Scanner(System.in);
			System.out.print("Enter the id: ");
			int id = sc.nextInt();
			System.out.print("Enter the name: ");
			String name = sc.next();
			System.out.print("Enter the age: ");
			int age = sc.nextInt();

//			String query = "insert into customer(cust_id, name, age) values (id, 'name', age )";
			String query = "insert into customer(cust_id, name, age) values ("
					+ id+ ",'" + name + "', " + age + ")";
			
			System.out.println(query);
			int row = stmt.executeUpdate(query);

			if (row > 0) {
				System.out.println("Success Fully data inserted");
			} else {
				System.out.println("Not inserted");
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
