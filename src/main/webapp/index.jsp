<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Online Voting System </title>
<link rel="stylesheet" type="text/css" href="stylecss.css?v=9">
</head>
<body>
<%@include file="navbar.jsp" %>

<div class="formcontain">
<form action="VoterLogin" method="post">
	<h3>Enter your Voter card number</h3>
	<br>
	<label for="voternumber" style="margin-left:150px;"><b>Voter ID</b></label>
	<br>
	<br>
	<input name="voternumber" id="voternumber" type="text" placeholder="Enter your Voter ID">
	<br>
	<br>
	<button type="submit">Login</button>
	<br>
		<br>
	<a href="adminlogin.jsp"> ADMIN</a>
</form>
</div>

</body>
</html>