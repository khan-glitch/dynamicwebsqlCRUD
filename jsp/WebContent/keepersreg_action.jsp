<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ page import = "com.csm1.DBmanager" %>  
    <%@ page import = "com.csm.entity.keepers" %>
    <%@ page import = "com.csm.dao.gwwlp_Manager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String kn = request.getParameter("keepers_name");//text box name 
String kdobStr = request.getParameter("date_of_birth");
String kr = request.getParameter("keepers_rank");  


java.sql.Date kdob = java.sql.Date.valueOf(kdobStr);

DBmanager dbMgr = new DBmanager(); 

dbMgr.getConnection(); 

keepers k = new keepers(kn, kdob, kr);



gwwlp_Manager kMgr = new gwwlp_Manager(); 


int rowAffected = -1;
rowAffected = kMgr.insert(k);

if (rowAffected == 1){
	
	out.println("Record successfully inserted");
}
%>

</body>
</html>