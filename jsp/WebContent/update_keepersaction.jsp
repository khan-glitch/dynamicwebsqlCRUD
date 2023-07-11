<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>    
<%@ page import="com.csm1.DBmanager" %>
<%@ page import="com.csm.dao.gwwlp_Manager" %>
<%@ page import="com.csm.entity.keepers" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Keepers</title>
</head>
<body>
<%
String keepersId = request.getParameter("keepers_id");
String keepersName = request.getParameter("keepers_name");
String dateOfBirthStr = request.getParameter("date_of_birth");
String keepersRank = request.getParameter("keepers_rank");

SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
Date dateOfBirth = null;
try {
    dateOfBirth = dateFormat.parse(dateOfBirthStr);
} catch (ParseException e) {
    e.printStackTrace();
}

gwwlp_Manager dao = new gwwlp_Manager();
keepers keepers = new keepers(Integer.parseInt(keepersId), keepersName, new java.sql.Date(dateOfBirth.getTime()), keepersRank);
int rowsAffected;

try {
    rowsAffected = dao.update(keepers);
    out.println("No of rows affected - " + rowsAffected);
} catch (ClassNotFoundException ex){
    out.println(ex.getMessage());
} catch (SQLException e){
    out.println(e.getMessage());
}
%>
</body>
</html>
