<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %> 
<%@ page import="java.sql.*" %>     
<%@ page import="com.csm1.DBmanager" %> 
<%@ page import="com.csm.dao.diets_Manager" %> 
<%@ page import="com.csm.entity.diets" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String dietsID = request.getParameter("id");
if (dietsID == null || dietsID.isEmpty()) {
    out.println("Diets ID not provided");
} else {
    diets_Manager dao = new diets_Manager(); 
    int rowsAffected; 

    try { 
        rowsAffected = dao.delete(Integer.parseInt(dietsID)); 
        out.println("No of rows affected - " + rowsAffected); 
    } catch (ClassNotFoundException ex) { 
        out.println(ex.getMessage());
    } catch (SQLException e) { 
        out.println(e.getMessage()); 
    } 
}
%>

</body>
</html>
