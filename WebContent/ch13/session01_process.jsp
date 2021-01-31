<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin") && user_pw.equals("1234")) {
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
			session.setMaxInactiveInterval(20);
			out.println("세션 설정이 성공했습니다<br>");
			out.println(user_id + "님 환영합니다");
		}
		else {
			out.println("세션 설정이 실패했습니다");
		}
	%>
	
	<br>
	<a href="./session01.jsp">처음으로</a><br>
	<a href="./session02.jsp">session02로 이동</a>
</body>
</html>