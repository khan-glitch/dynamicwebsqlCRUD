<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.util.*" %> 

 <%@ page import = "java.sql.*" %> 

 <%@ page import = "java.util.ArrayList" %> 

 <%@ page import = "com.csm.dao.animals_Manager"%> 

 <%@ page import = "com.csm.entity.animals" %> 

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


animals_Manager aMgr = new animals_Manager();
ArrayList <animals> Animalarray=  aMgr.fetchAll();
%>
<table>
<tr>
<th>Animals ID </th>
<th>Animals Name </th>
<th>Animals Gender </th>
<th>Arrived Year </th>
<th>Diets ID </th>
<th>Keepers ID </th>
<th>Species ID</th>
<th>Enclosures ID</th>
</tr>

<tr>
<%
for (animals animal : Animalarray) {

%>
<tr>
<td><%= animal.getAnimals_id()%></td>
<td><%= animal.getAnimals_gender()%></td>
<td><%= animal.getAnimals_name()%></td>
<td><%= animal.getArrived_year()%></td>
<td><%= animal.getDiets_id()%></td>
<td><%= animal.getKeepers_id()%></td>
<td><%= animal.getSpecies_id()%></td>
<td><%= animal.getEnclosures_id()%></td>

</tr>

<%} %>

</table>
</body>
</html>