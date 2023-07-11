	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	    pageEncoding="ISO-8859-1"%>
	    <%@ page import = "java.sql.*" %> 
	
	 <%@ page import = "java.util.ArrayList" %> 
	
	 <%@ page import = "com.csm.dao.diets_Manager"%> 
	
	<%@ page import="com.csm.entity.diets" %>
	
	
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
	
	
	diets_Manager aMgr = new diets_Manager();
	ArrayList <diets> dietsArray =  aMgr.fetchAll();
	%>
	<table>
	<tr>
	<th>Diets ID </th>
	<th>No of Feeds </th>
	<th>Diets Type </th>
	</tr>
	
	<tr>
	<%
	for (diets diet : dietsArray) {
	
	%>
	<tr>
	<td><%= diet.getDiets_id()%></td>
	<td><%= diet.getNo_of_feeds()%></td>
	<td><%= diet.getDiets_type()%></td>
	<tr>
	  <td><a href="diets_edit.jsp?id=<%=diet.getDiets_id()%>">Edit</a></td> 
	  <td><a href="diets_delete.jsp?id=<%=diet.getDiets_id()%>">Delete</a></td>
	</tr>
	
	
	
	
	<%} %>
	</table>
	
	</body>
	</html>