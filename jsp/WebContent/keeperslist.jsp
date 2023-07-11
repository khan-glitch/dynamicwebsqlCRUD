<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.csm1.DBmanager" %>  
<%@ page import = "com.csm.entity.keepers" %>
<%@ page import = "com.csm.dao.gwwlp_Manager" %>
<%@ page import = "java.util.ArrayList"   %>
     
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

gwwlp_Manager kMgr = new gwwlp_Manager();
ArrayList<keepers> Keepers = kMgr.fectAll();
%>


<table>
<tr>
	<th>Keepers ID</th>
	<th>Keepers Name</th>
	<th>Keepers Rank</th>
	<th>Keepers Date of Birth</th>
	<th>Edit Keepers</th>
	<th>Delete keepers</th>
	
</tr>

<%
for (keepers keeper : Keepers) { 
%>
<tr>
	<td><%= keeper.getKeepers_id() %></td>
	<td><%= keeper.getKeepers_name() %></td>
	<td><%= keeper.getKeepers_rank() %></td>
	<td><%= keeper.getDate_of_birth() %></td>
	<td><a href="keepers_edit.jsp?id=<%=keeper.getKeepers_id()%>">Edit</a></td> 
    <td><a href="keepers_delete.jsp?id=<%=keeper.getKeepers_id()%>">Delete</a></td> 

</tr>
<% } %>

</table>




</body>
</html>
