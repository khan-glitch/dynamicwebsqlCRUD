package com.csm.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm1.DBmanager;
import com.csm.entity.animals;

public class animals_Manager {
	
	//insert method
public int insert(animals c) throws ClassNotFoundException, SQLException{
		
		int result = -1;
		
		DBmanager dbMgr=new DBmanager();  
 	 	Connection conn=dbMgr.getConnection();  
 	 	
 	 	String sql = "INSERT INTO `gowild`.`animals` (`animals_name`, `animals_gender`, `arrived_year`, `diets_id`, `keepers_id`, `species_id`, `enclosures_id`) "  
 	 	         + "VALUES (?, ?, ?, ?, ?, ?, ?)";

		
 	 	PreparedStatement pstmt=conn.prepareStatement(sql);	
 	 	
	     pstmt.setString(1, c.getAnimals_name());
	     pstmt.setString(2, c.getAnimals_gender());
	     pstmt.setInt(3, c.getArrived_year());
	     pstmt.setInt(4, c.getDiets_id());
	     pstmt.setInt(5, c.getKeepers_id());
	     pstmt.setInt(6, c.getSpecies_id());
	     pstmt.setInt(7, c.getEnclosures_id());
	     
	    

	     result = pstmt.executeUpdate();
		return result;  
	
	
	
	}
//select method
public ArrayList<animals> fetchAll() throws ClassNotFoundException, SQLException {

    ArrayList<animals> Animalarray = new ArrayList<animals>(); // collection of animals

    // get connection
    DBmanager dbMgr = new DBmanager();
    Connection conn = dbMgr.getConnection();

    // query
    String sql = "SELECT * FROM animals";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    ResultSet rs = pstmt.executeQuery();

    while (rs.next()) {
        animals a = new animals(
                rs.getInt("animals_id"),
                rs.getString("animals_name"),
                rs.getString("animals_gender"),
                rs.getInt("arrived_year"),
                rs.getInt("diets_id"),
                rs.getInt("keepers_id"),
                rs.getInt("species_id"),
                rs.getInt("enclosures_id")
        );

        Animalarray.add(a); // add entity into collection to arraylist
    }
    return Animalarray;


	
	
	
	
	
	

	
}






}
