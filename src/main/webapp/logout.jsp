<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Voting System</title>
</head>
<body>
<%
	HttpSession session1= request.getSession();
	session1.removeAttribute("aName");
	response.sendRedirect("index.jsp");
%>
</body>
</html>