<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>declatation01</title>
</head>
<body>
	<%! int data = 50; %>
	
	<%
		out.println("Value of the variable is : " + data);
	%>
</body>
</html>