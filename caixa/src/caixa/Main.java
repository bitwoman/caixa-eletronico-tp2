package caixa;
import java.sql.*;  

public class Main {

	public static void main(String[] args) {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/caixa","root","123");  

			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select * from test");  
			while(rs.next()) {  
				System.out.println(rs.getInt(1));  
			}
			con.close(); 

		}catch(Exception e){
			System.out.println(e);
		}  
		
	}

}
