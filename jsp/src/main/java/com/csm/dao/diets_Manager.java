package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm1.DBmanager;
import com.csm.entity.diets;

public class diets_Manager {
    
   
	public int insert(diets c) throws ClassNotFoundException, SQLException{
		
		int result = -1;
		
		DBmanager dbMgr=new DBmanager();  
 	 	Connection conn=dbMgr.getConnection();  
 	 	
 	 	String sql = "INSERT INTO `gowild`.`diets` (`no_of_feeds`, `diets_type`) "  
	             +"VALUES (?,?)"; 
		
 	 	PreparedStatement pstmt=conn.prepareStatement(sql);	
 	 	
 	 	 pstmt.setInt(1, c.getNo_of_feeds());
	     pstmt.setString(2, c.getDiets_type());
		
	     result = pstmt.executeUpdate();
		return result;  
	
	
	
	}
	public ArrayList<diets> fetchAll() throws ClassNotFoundException, SQLException {

	    ArrayList<diets> dietsArray = new ArrayList<diets>(); // collection of diets

	    // get connection
	    DBmanager dbMgr = new DBmanager();
	    Connection conn = dbMgr.getConnection();

	    // query
	    String sql = "SELECT * FROM diets";
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    ResultSet rs = pstmt.executeQuery();

	    while (rs.next()) {
	        diets d = new diets(
	                rs.getInt("diets_id"),
	                rs.getInt("no_of_feeds"),
	                rs.getString("diets_type")
	        );

	        dietsArray.add(d); // add entity into collection to arraylist
	    }
	    return dietsArray;
	}
	
	public int update(diets c) throws ClassNotFoundException, SQLException {
		
		int result=-1; 
		//1. get connection 
		DBmanager dbMgr=new DBmanager(); 

		Connection conn=dbMgr.getConnection(); 
		
		//2.prepare statement 
		String sql = "UPDATE diets SET" 
				+ " no_of_feeds = ?, " 
				+ " diets_type = ? " 
				+ " WHERE diets_id = ?";
		
		PreparedStatement pstmt=conn.prepareStatement(sql); 
		
		// first and second paramters inserted 1. course name and course text 
		pstmt.setInt(1, c.getNo_of_feeds());
		pstmt.setString(2, c.getDiets_type()); 
		pstmt.setInt(3, c.getDiets_id()); 
		
		//3.execute statement 
		result = pstmt.executeUpdate(); 

		return result;
	
	}
	
	
	//delete
	public int delete (int diets_id) throws ClassNotFoundException, SQLException {
		 int rowsDeleted = -1; 
		    String sql; 
		  
		    
		    //1. get Connection 
		    DBmanager dbMgr = new DBmanager(); 
		    Connection conn = dbMgr.getConnection(); 
		    
		    //2. prepare the statement
		    sql = "DELETE FROM diets WHERE diets_id =?" ; 
		    PreparedStatement pstmt = conn.prepareStatement(sql);
		    
		    //First parameter is the course id of the course entity 
		    pstmt.setInt(1, diets_id); 
		    rowsDeleted = pstmt.executeUpdate();
		return rowsDeleted;
		
	}
	public diets getById (int diets_id) throws ClassNotFoundException, SQLException {
		
		//1. get Connection 
		DBmanager dbMgr = new DBmanager(); 
		Connection conn = dbMgr.getConnection(); 
		
		//2. prepare the statement  
	    String sql = "SELECT * FROM diets WHERE diets_id = ?" ; 
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    
	  //First parameter is the course id of the course entity 
	    pstmt.setInt(1,diets_id); 
	    ResultSet rs = pstmt.executeQuery();
		
	    diets diet = null; 
	    while(rs.next()) { 
	    	diet = new diets(rs.getInt("diets_id"), rs.getInt("no_of_feeds"), rs.getString("diets_type"));

	    } 
	    			return  diet;
		
	    }
		
	}
	
	
