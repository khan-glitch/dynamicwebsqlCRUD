<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>     
<%@ page import="com.csm1.DBmanager" %>
<%@ page import="com.csm.dao.gwwlp_Manager" %>
<%@ page import="com.csm.entity.keepers" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Course</title>
</head>
<body>
<%
    String keepersId = request.getParameter("id");

    if (keepersId == null || keepersId.isEmpty()) {
        out.println("Keepers ID not provided");
    } else {
        gwwlp_Manager dao = new gwwlp_Manager();
        int rowsAffected;
    
        try {
            rowsAffected = dao.delete(Integer.parseInt(keepersId));
            out.println("No of rows affected - " + rowsAffected);
        } catch (NumberFormatException ex) {
            out.println("Invalid Keepers ID format");
        } catch (ClassNotFoundException ex) {
            out.println(ex.getMessage());
        } catch (SQLException ex) {
            out.println(ex.getMessage());
        }
    }
%>
</body>
</html>
