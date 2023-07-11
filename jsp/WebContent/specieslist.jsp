<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*" %> 

 <%@ page import = "java.util.ArrayList" %> 

 <%@ page import = "com.csm.dao.species_Manager"%> 

<%@ page import="com.csm.entity.species" %>


 <%@ page import = "com.csm1.DBmanager" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
DBmanager dbMgr = new DBmanager(); 
dbMgr.getConnection(); 


species_Manager aMgr = new species_Manager();
ArrayList <species> speciesArray =  aMgr.fetchAll();
%>

<table>
    <tr>
        <th>Species ID</th>
        <th>Species Type</th>
        <th>Species Group</th>
        <th>Conservation Status</th>
    </tr>

    <%
    for (species s : speciesArray) {
    %>
    <tr>
        <td><%= s.getSpecies_id()%></td>
        <td><%= s.getSpecies_type()%></td>
        <td><%= s.getSpecies_group()%></td>
        <td><%= s.getConservation_status()%></td>
    </tr>

    <%} %>
</table>

</body>
</html>