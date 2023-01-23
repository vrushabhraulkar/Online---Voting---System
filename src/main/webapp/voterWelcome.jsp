<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Online Voting System</title>
<link rel="stylesheet" type="text/css" href="stylecss.css?v=10">

</head>
<body>
<%@include file="navbar.jsp" %>
<div class="formcontain">
<form action="Vote" method="post">
	<label for="voternumber" style="margin-left:140px;"><b>Voter ID</b></label>
	<br>
	
	<input name="voternumber" id="voternumber" type="text" placeholder="Enter your Voter ID">
	<br>
	<br> 
	
	<label for="partie"style="margin-left:140px;">Choose a Party:</label>
	<br>
<select name="partie" id="partie">
  <option value="aap">Aam Aadmi Party </option>
  <option value="bjp">BJP</option>
  <option value="bsp">BSP</option>
  <option value="congress">Congress</option>
    <option value="cpi">CPI</option>
  
</select>
<br>
	<br> 
	<button type="submit">Submit</button>
	<br>
		<br>

</form>
</div>
</body>
</html>