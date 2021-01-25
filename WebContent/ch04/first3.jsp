<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이 파일은 first3.jsp입니다.</h3>
	<jsp:include page="second3.jsp">
	<jsp:param name="data" value="<%= new java.util.Date() %>"/>
	</jsp:include>
	<p>Java Server Page</p>
</body>
</html>