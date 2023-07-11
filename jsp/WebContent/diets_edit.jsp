<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 

<%@ page import="java.util.*" %> 

<%@ page import="java.sql.*" %>     

<%@ page import="com.csm1.DBmanager" %> 

<%@ page import="com.csm.dao.diets_Manager" %> 

<%@ page import="com.csm.entity.diets" %> 

<!DOCTYPE html> 

<html> 

<head> 

<meta charset="ISO-8859-1"> 

<title>Edit diets</title> 

</head> 

<body> 

<form method="POST" action="update_dietsaction.jsp"> 
            <% 
                String sId = request.getParameter("id"); 

                if (sId == null){ 

                    out.println("diets ID is not found"); 

                } else { 

                    int diets_id = Integer.parseInt(sId); 

                    diets_Manager dao = new diets_Manager(); 

                    try { 

                        diets d = dao.getById(diets_id); 

                        out.print(d); 

            %> 
                    <input type="hidden" name="diets_id" value="<%=d.getDiets_id()%>" /> 

                    <label for="no_of_feeds">Number of feeds</label> 

                    <input type="text" name="no_of_feeds" id="no_of_feeds" value="<%=d.getNo_of_feeds()%>" required/> 

                    <label for="diets_type">Type of diets</label> 

                    <input type="text" name="diets_type" id="diets_type" value="<%=d.getDiets_type()%>" /> 

                    <input type="submit" value="Update" /> 

            <% 

                    }catch (ClassNotFoundException ex){ 

                      out.println( ex.getMessage()); 

                    }catch (SQLException e){ 

                      out.println(e.getMessage()); 

                    } 

                } 

            %> 

</body> 

</html> 
