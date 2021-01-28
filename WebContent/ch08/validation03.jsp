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

	if (form.id.value.length < 4 || form.id.value.length > 13) {
		alert("아이디는 4 ~ 12자 이내로 입력 가능합니다.");
		form.id.select();
		return;
	}

	if (form.pw.value.length < 4) {
		alert("비밀번호는 4자 이상으로 입력해야 합니다.");
		form.pw.select();
		return;
	}

	form.submit();
}
</script>
</head>
<body>
	<form name="loginForm" action="validation03_process.jsp" method="post">
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="pw">비밀번호 : </label>
		<input type="password" id="pw" name="pw"><br>
		<button type="button" id="btn_submit" onclick="checkLogin();">전송</button>
	</form>
</body>
</html>