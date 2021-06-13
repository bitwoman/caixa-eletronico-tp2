package caixa;


import java.sql.*;
import java.util.HashMap;
import java.util.Map;

import com.mysql.jdbc.Connection;  

public class DBConnect {


	public Connection connect() {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/caixa","root","123");  
			
			return con;
		}catch(Exception e){
			System.out.println("Error: "+ e);
			return null;

		}
	}
	
	
	public void insertDB(String table) throws SQLException {	
		//ResultSet result=this.connect()state.executeQuery("insert into "+ table + " values (id)" + 1 + ";");
		
		String value = "insert into " + table +" (id) values(88);";
		System.out.printf(value);
		var insert = this.connect().prepareStatement(value);
		insert.executeUpdate();
		     
	}
	public void close() {
		con.close();
	}
}
