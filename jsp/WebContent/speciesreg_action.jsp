<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.csm1.DBmanager" %>
<%@ page import="com.csm.entity.species" %>
<%@ page import="com.csm.dao.species_Manager" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Species Registration Form Action</title>
</head>
<body>

<%
    // Get form data
    String species_type = request.getParameter("species_type");
    String species_group = request.getParameter("species_group");
    String conservation_status = request.getParameter("conservation_status");
    
    //get connection
    DBmanager dbMgr = new DBmanager(); 
	dbMgr.getConnection(); 
    
    // Create diets object  
    species s = new species (species_type, species_group, conservation_status);
    
    // Insert into database
    species_Manager sm = new species_Manager();
   
    int rowAffected = -1;
    rowAffected = sm.insert(s);
    
    
    if (rowAffected == 1) {
        out.println("Record successfully inserted");
    } else {
        out.println("Failed to insert record");
    }
%>

</body>
</html>
