<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.csm1.DBmanager" %>
<%@ page import="com.csm.entity.enclosures" %>
<%@ page import="com.csm.dao.enclosures_Manager" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enclosures Registration Form Action</title>
</head>
<body>

<%
    // Get form data
    String enclosures_type = request.getParameter("enclosures_type");
    String enclosures_locate = request.getParameter("enclosures_locate");
    
    //get connection
    DBmanager dbMgr = new DBmanager(); 
	dbMgr.getConnection(); 
    
    // Create diets object  
    enclosures e = new enclosures (enclosures_type, enclosures_locate);
    
    // Insert into database
    enclosures_Manager em = new enclosures_Manager();
   
    int rowAffected = -1;
    rowAffected = em.insert(e);
    
    
    if (rowAffected == 1) {
        out.println("Record successfully inserted");
    } else {
        out.println("Failed to insert record");
    }
%>

</body>
</html>
