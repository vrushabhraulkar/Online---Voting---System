<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Voting System</title>
<link rel="stylesheet" type="text/css" href="stylecss.css?v=9">

</head>
<body>
<%@include file="adminnavbar.jsp" %>

<div class="formcontain">
<form action="RegisterVoter" method="post">
	<h3>Please enter your details</h3>
	
	<label for="uName" style="margin-left:100px;"><b>Name :</b></label>
	<br>
	<input name="uName" id="uName" type="text" placeholder="Enter your name">
	<br>
	<br>
	<label for="pNumber" style="margin-left:100px;"><b>Phone number :</b></label>
	<br>
	<input name="pNumber" id="pNumber" type="number" placeholder="Enter your number">
	<br>
	<br>
	<label for="email" style="margin-left:100px;"><b>Email :</b></label>
	<br>
	<input name="email" id="email" type="email" placeholder="Enter your Email">
	<br>
	<br>
	<label for="voterNumber" style="margin-left:100px;"><b>Voter Card Number :</b></label>
	<br>
	<input name="voterNumber" id="voterNumber" type="number" placeholder="Enter your Voter Card Number">
	<br>
	<br>
	<label for="address" style="margin-left:100px;"><b>Address :</b></label>
	<br>
	<input name="address" id="address" type="text" placeholder="Enter your address">
	<br>
	<br>
	<label for="dob" style="margin-left:100px;"><b>Date of Birth :</b></label>
	<br>
	<input name="dob" id="dob" type="date" placeholder="Enter your DOB">
	<br>
	<br>
	<button type="submit">Register</button>
	<br>
	
</form>
</div>
</body>
</html>