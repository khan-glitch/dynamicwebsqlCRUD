<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.csm1.DBmanager" %>
<%@ page import="com.csm.entity.animals" %>
<%@ page import="com.csm.dao.animals_Manager" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Animals Registration Form Action</title>
</head>
<body>

<%
    // Get form data
String aname = request.getParameter("animals_name");
String agender = request.getParameter("animals_gender");
int arrivedy = Integer.parseInt(request.getParameter("arrived_year"));
int dID = Integer.parseInt(request.getParameter("diets_id"));
int kID = Integer.parseInt(request.getParameter("keepers_id"));
int sID = Integer.parseInt(request.getParameter("species_id"));
int eID = Integer.parseInt(request.getParameter("enclosures_id"));

//get connection
DBmanager dbMgr = new DBmanager();
try {
    dbMgr.getConnection();
} catch (SQLException e) {
    e.printStackTrace();
}

// Create animals object
animals a = new animals(aname, arrivedy, agender, dID, kID, sID, eID);

    // Insert into database
    animals_Manager am = new animals_Manager();
   
    int rowAffected = -1;
    rowAffected = am.insert(a);
    
    
    if (rowAffected == 1) {
        out.println("Record successfully inserted");
    } else {
        out.println("Failed to insert record");
    }
%>

</body>
</html>
