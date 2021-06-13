package caixa;


import java.sql.*;  

public class DBConnect {
	public void connect() {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/caixa","root","123");  

			
			Statement state=con.createStatement();  
			//test
			ResultSet result=state.executeQuery("select * from test");
			
			while(result.next()) {  
				System.out.println(result.getInt(1));  
			}
			con.close(); 

		}catch(Exception e){
			System.out.println("Error: "+ e);
		}  
	}
}
