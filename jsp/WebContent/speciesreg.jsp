<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Species Registration Form</title>
</head>
<body>

<h1>Species Registration Form</h1>

<form action="speciesreg_action.jsp"> 

Species Type : <input type="text" name="species_type" required><br><br> 
Species Group : <input type="text" name="species_group" required><br><br> 
Conservation Status : <input type ="text" name="conservation_status" required>

<button type="Submit">Save</button> &nbsp 

<button type="refresh">Clear</button> 

</form> 

</body>
</html>