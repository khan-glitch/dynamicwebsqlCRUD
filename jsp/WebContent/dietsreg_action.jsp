<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.csm1.DBmanager" %>
<%@ page import="com.csm.entity.diets" %>
<%@ page import="com.csm.dao.diets_Manager" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Diet Registration Form Action</title>
</head>
<body>

<%
    // Get form data
    int no_of_feeds = Integer.parseInt(request.getParameter("no_of_feeds"));
    String diets_type = request.getParameter("diets_type");
    
    //get connection
    DBmanager dbMgr = new DBmanager(); 
	dbMgr.getConnection(); 
    
    // Create diets object  
    diets d = new diets(no_of_feeds, diets_type);
    
    
    
    // Insert into database
    diets_Manager dm = new diets_Manager();
   
    int rowAffected = -1;
    rowAffected = dm.insert(d);
    
    
    if (rowAffected == 1) {
        out.println("Record successfully inserted");
    } else {
        out.println("Failed to insert record");
    }
%>

</body>
</html>
