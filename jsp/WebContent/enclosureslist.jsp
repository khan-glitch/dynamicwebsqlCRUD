<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import = "java.util.*" %> 

 <%@ page import = "java.sql.*" %> 

 <%@ page import = "java.util.ArrayList" %> 

 <%@ page import = "com.csm.dao.enclosures_Manager"%> 

 <%@ page import = "com.csm.entity.enclosures" %> 

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


enclosures_Manager aMgr = new enclosures_Manager();
ArrayList <enclosures> Enclosurearray =  aMgr.fetchAll();
%>
<table>
<tr>
<th>Enclosures ID </th>
<th>Enclosures Type </th>
<th>Enclosrues Locate </th>
</tr>

<tr>
<%
for (enclosures enclosure : Enclosurearray) {

%>
<tr>
<td><%= enclosure.getEnclosures_id()%></td>
<td><%= enclosure.getEnclosures_type()%></td>
<td><%= enclosure.getEnclosures_locate()%></td>

</tr>

<%} %>

</body>
</html>