package com.csm.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.entity.species;
import com.csm1.DBmanager;


public class species_Manager{
	public int insert (species c) throws ClassNotFoundException, SQLException{ 
	
		int result = -1;
		//1.get conneciton
		DBmanager dbMgr = new DBmanager();
		Connection conn =dbMgr.getConnection();
		
		//2.Prepare statement
				String sql = "INSERT INTO `gowild`.`species` (`species_type`, `species_group`, `conservation_status`) "  
			             +"VALUES (?,?,?)";
				
				PreparedStatement pstmt=conn.prepareStatement(sql);	
				
				 pstmt.setString(1, c.getSpecies_type());
				 pstmt.setString(2, c.getSpecies_group());
				 pstmt.setString(3, c.getConservation_status());
			       
					//execute statement
					result = pstmt.executeUpdate();
				
				
				return result; 
		
		
	}
	public ArrayList<species> fetchAll() throws ClassNotFoundException, SQLException {
	    ArrayList<species> speciesArray = new ArrayList<species>(); // collection of species

	    // get connection
	    DBmanager dbMgr = new DBmanager();
	    Connection conn = dbMgr.getConnection();

	    // query
	    String sql = "SELECT * FROM species";
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    ResultSet rs = pstmt.executeQuery();

	    while (rs.next()) {
	        species s = new species(
	                rs.getInt("species_id"),
	                rs.getString("species_type"),
	                rs.getString("species_group"),
	                rs.getString("conservation_status")
	        );

	        speciesArray.add(s); // add entity into collection to arraylist
	    }
	    return speciesArray;
	}

}