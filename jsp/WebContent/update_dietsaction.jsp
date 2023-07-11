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

<title>Update Course</title> 

</head> 

<body> 

<% 

String diets_id = request.getParameter("diets_id");
String no_of_feeds = request.getParameter("no_of_feeds");
String diets_type = request.getParameter("diets_type");

diets_Manager dao = new diets_Manager();
diets cm = new diets(Integer.parseInt(diets_id), Integer.parseInt(no_of_feeds), diets_type);




            int rowsAffected; 
            try { 

                rowsAffected = dao.update(cm); 

                out.println("No of rows affected - " + rowsAffected); 

             }catch (ClassNotFoundException ex){ 

                  out.println( ex.getMessage()); 

              }catch (SQLException e){ 

                  out.println(e.getMessage()); 

              } 
%> 
</body> 

</html> 