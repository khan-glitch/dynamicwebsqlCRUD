package com.csm.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm1.DBmanager;
import com.csm.entity.enclosures;

public class enclosures_Manager {
	public int insert(enclosures c) throws ClassNotFoundException, SQLException{
		 
		int result = -1;
		
		// CRUD - create, read, 
	
		DBmanager dbMgr=new DBmanager();  
 	 	Connection conn=dbMgr.getConnection();  
		
 	 	String sql = "INSERT INTO `gowild`.`enclosures` (`enclosures_type`, `enclosures_locate`) "  
	             +"VALUES (?,?)"; 
		
 	 	PreparedStatement pstmt=conn.prepareStatement(sql);	
 	 	
 	 	 pstmt.setString(1, c.getEnclosures_type());
 	 	 pstmt.setString(2, c.getEnclosures_locate());
	       
	       
 	 	result = pstmt.executeUpdate();
 	 	
		return result;  
	
	
	
	}
	public ArrayList<enclosures> fetchAll() throws ClassNotFoundException, SQLException {
	    ArrayList<enclosures> Enclosurearray = new ArrayList<enclosures>(); // collection of enclosures

	    // get connection
	    DBmanager dbMgr = new DBmanager();
	    Connection conn = dbMgr.getConnection();

	    // query
	    String sql = "SELECT * FROM enclosures";
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    ResultSet rs = pstmt.executeQuery();

	    while (rs.next()) {
	        enclosures e = new enclosures(
	                rs.getInt("enclosures_id"),
	                rs.getString("enclosures_type"),
	                rs.getString("enclosures_locate")
	        );

	        Enclosurearray.add(e); // add entity into collection to arraylist
	    }
	    return Enclosurearray;
	}

}
