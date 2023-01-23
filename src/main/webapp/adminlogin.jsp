<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Voting Systeme</title>
<link rel="stylesheet" type="text/css" href="stylecss.css?v=9">

</head>
<body>
<%@include file="navbar.jsp" %>
<div class="formcontain">
<form action="AdminLogin" method="post">
	<h3>Please fill the required details</h3>
	
	<label for="aName" style="margin-left:150px;"><b>Name</b></label>
	<br>
	
	<input name="aName" id="aName" type="text" placeholder="Enter your Name">
	<br>
	<br>
	<label for="password" style="margin-left:150px;"><b>Password</b></label>
	<br>
	
	<input name="password" id="password" type="password" placeholder="Enter your Password">
	<br>
	<br>
	<button type="submit">Login</button>
	<br>
</form>
</div>

</body>
</html>