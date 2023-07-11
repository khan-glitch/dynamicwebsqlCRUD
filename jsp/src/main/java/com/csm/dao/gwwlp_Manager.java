package com.csm.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;  

import java.sql.ResultSet;  

import java.sql.SQLException;  

import java.util.ArrayList;  

import com.csm.entity.keepers;
import com.csm1.DBmanager;
  

public class gwwlp_Manager {
	
	//insert method
	public int insert (keepers c) throws ClassNotFoundException, SQLException{ 
		
	
	
		int result = -1;
		//1.get conneciton
		DBmanager dbMgr = new DBmanager();
		Connection conn =dbMgr.getConnection();
		
		//2.Prepare statement
		String sql = "INSERT INTO `gowild`.`keepers` (`keepers_name`, `date_of_birth`, `keepers_rank`) "  
	             +"VALUES (?,?,?)"; 


		
		PreparedStatement pstmt=conn.prepareStatement(sql);	
		
		 pstmt.setString(1, c.getKeepers_name());
	        pstmt.setDate(2, new java.sql.Date(c.getDate_of_birth().getTime()));
	        pstmt.setString(3, c.getKeepers_rank());
		
		//execute statement
		result = pstmt.executeUpdate();
		
		return result;
		

	}

	
	//select
	public ArrayList<keepers> fectAll() throws ClassNotFoundException, SQLException{
		
		
		ArrayList<keepers> kepers = new ArrayList<keepers>();
		
		
		//connection
		DBmanager dbMgr = new DBmanager();
		Connection conn = dbMgr.getConnection();
		
		String sql = "SELECT * FROM keepers"; 
		PreparedStatement pstmt = conn.prepareStatement(sql);  	 	 

		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {  keepers c = new keepers(rs.getInt("keepers_id"), rs.getString("keepers_name"), rs.getDate("date_of_birth"), rs.getString("keepers_rank"));
			kepers.add(c);
		}
		
		
		
		return kepers; 
		
		

	}

//update method
	//update method
	public int update (keepers c) throws ClassNotFoundException, SQLException {
	    int result = -1;
	    
	    //get connection
	    DBmanager dbMgr = new DBmanager();
	    Connection conn = dbMgr.getConnection();
	    
	    //prepare statement
	    String sql = "UPDATE keepers SET" 
	            + " keepers_name = ?, " 
	            + " keepers_rank = ?, " 
	            + " date_of_birth = ? " 
	            + " WHERE keepers_id = ?";
	    
	    PreparedStatement pstmt=conn.prepareStatement(sql); 
	    
	    pstmt.setString(1, c.getKeepers_name());
	    pstmt.setString(2, c.getKeepers_rank() );
	    pstmt.setDate(3, new java.sql.Date(c.getDate_of_birth().getTime()));
	    pstmt.setInt(4, c.getKeepers_id());
	    
	    result = pstmt.executeUpdate();
	    return result;
	}

		//delete
	public int delete(int keepers_id) throws ClassNotFoundException, SQLException {
	    int rowsDeleted = -1;
	    
	    //get connection 
	    DBmanager dbMgr = new DBmanager(); 
	    Connection conn = dbMgr.getConnection();
	    
	    //prepare
	    String sql = "DELETE FROM keepers WHERE keepers_id = ?";
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    
	    pstmt.setInt(1, keepers_id);
	    
	    rowsDeleted = pstmt.executeUpdate(); 
	    return rowsDeleted;
	}
	
	
	public keepers getById(int id) throws SQLException, ClassNotFoundException { 

	    String sql ; 

	    // 1. get Connection 
	    DBmanager dbMgr = new DBmanager(); 
	    Connection conn = dbMgr.getConnection(); 

	    // 2. prepare the statement  
	    sql = "SELECT * FROM keepers WHERE keepers_id = ?"; 
	    PreparedStatement pstmt = conn.prepareStatement(sql); 

	    // First parameter is the keeper id of the keeper entity 
	    pstmt.setInt(1, id); 

	    ResultSet rs = pstmt.executeQuery(); 

	    keepers keeper = null; 

	    while(rs.next()) { 
	        keeper = new keepers(
	            rs.getInt("keepers_id"),
	            rs.getString("keepers_rank"),
	            rs.getDate("date_of_birth"),
	            rs.getString("keepers_name")
	        ); 
	    } 

	    return keeper; 
	  
	}

		
	}






