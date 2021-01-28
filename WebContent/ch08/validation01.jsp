<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function checkForm() {
		alert("아이디 : " + document.loginForm.id.value + "\n비밀번호 : " + document.loginForm.pw.value);
	}
</script>
</head>
<body>
	<form name="loginForm">
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="pw">비밀번호 : </label>
		<input type="password" id="pw" name="pw"><br>
		<br>
		<button type="submit" onclick="checkForm()">전송</button>
	</form>
</body>
</html>