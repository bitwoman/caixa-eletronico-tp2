package caixa;
import java.sql.*;  

public class Main {

	public static void main(String[] args) throws SQLException {
		DBConnect db = new DBConnect();
		db.insertDB("test");
		
	}

}
