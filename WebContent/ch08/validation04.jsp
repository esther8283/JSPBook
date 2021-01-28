<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function checkLogin() {
	var form = document.loginForm;

	for (i = 0; i < form.id.value.length; i++) {
		var ch = form.id.value.charAt(i);

		if ((ch < 'a' || ch > 'z') &&
			(ch > 'A' || ch < 'Z') &&
			(ch > '0' || ch < '9')) {
			alert("아이디는 영문 소문자만 입력이 가능합니다.");
			form.id.select();
			return;
		}

		if (form.pw.value == "" || isNaN(form.pw.value)) {
			alert("비밀번호는 숫자만 입력 가능합니다.");
			form.pw.select();
			return;
		}

		form.submit();
	}
}
</script>
</head>
<body>
	<form name="loginForm" action="validation04_process.jsp" method="post">
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="pw">비밀번호 : </label>
		<input type="password" id="pw" name="pw"><br>
		<button type="button" id="btn_submit" onclick="checkLogin();">전송</button>
	</form>
</body>
</html>