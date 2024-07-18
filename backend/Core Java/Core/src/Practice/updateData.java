package Practice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class updateData {
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
			int old_id = sc.nextInt();
			System.out.print("Enter the new id: ");
			int new_id = sc.nextInt();
//			System.out.print("Enter the name: ");
//			String name = sc.next();
//			System.out.print("Enter the age: ");
//			int age = sc.nextInt();

//			String query = "insert into customer(cust_id, name, age) values (id, 'name', age )";
			String query = "update customer set cust_id = " + new_id+ " where cust_id = " + old_id + ";";
			
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
