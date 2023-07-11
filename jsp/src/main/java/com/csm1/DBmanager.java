package com.csm1;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;


public class DBmanager {
	public Connection getConnection() throws ClassNotFoundException,SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gowild","root","xxxxxxxx"); 
		
		


		 

		return con; 
	}
}
