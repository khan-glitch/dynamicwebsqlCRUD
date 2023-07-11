<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.sql.Date" %>

<%@ page import="com.csm1.DBmanager" %>
<%@ page import="com.csm.dao.gwwlp_Manager" %>
<%@ page import="com.csm.entity.keepers" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Keepers</title>
</head>
<body>
	<%
		String keepersIdParam = request.getParameter("id");
		if (keepersIdParam == null) {
		out.println("Keepers ID not found.");
	} else {
		int keepersId = Integer.parseInt(keepersIdParam);
		
		gwwlp_Manager keepersManager = new gwwlp_Manager();
		
		try {
			keepers keepers = keepersManager.getById(keepersId);
			out.print(keepers);
%>
			<form method="POST" action="update_keepersaction.jsp">
				<input type="hidden" name="keepers_id" value="<%=keepers.getKeepers_id()%>" />
				<label for="keepers_name">Keepers Name</label>
				<input type="text" name="keepers_name" id="keepers_name" value="<%=keepers.getKeepers_name()%>" required/>
				<label>Please enter date of birth (YYYY-MM-DD): <input type="text" name="date_of_birth" value="<%=keepers.getDate_of_birth()%>" required/></label>
					<label for="keepers_rank">Keepers Rank</label>
				<input type="text" name="keepers_rank" id="keepers_rank" value="<%=keepers.getKeepers_rank()%>" />
				<input type="submit" value="Save Changes" />
			</form>
<%
		} catch (Exception e) {
			out.println("Error occurred while fetching the keepers.");
		}
	}
%>
</body>
</html>
