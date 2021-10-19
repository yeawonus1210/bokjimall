package com.greedy.t;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcTemplate {
	
	public static Connection getConnection() {
		
		Connection con = null;
		
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "BBS";
		String password = "BBS";
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,id,password);
			System.out.println("접속성공은한거냐??");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
		
	

}
