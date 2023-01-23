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
<%@include file="navbar.jsp" %>
<div class="formcontain">
<form action="Contact" method="post">
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
	<label for="comment" style="margin-left:100px;"><b>Comments :</b></label>
	<br>
	<textarea name="comment" id="comment"  rows="5" cols="50"> 
	</textarea>
	<br>
	<br>
	<button type="submit">Submit</button>
	<br>
	
</form>
</div>


</body>
</html>