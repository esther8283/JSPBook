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

		if (form.id.value == "") {
			alert("아이디를 입력해 주세요");
			form.id.focus();
			return false;
		}
		else if (form.pw.value == "") {
			alert("비밀번호를 입력해 주세요");
			form.pw.focus();
			return false;
		}
		else {
			form.submit();
		}
	}

	/* window.addEventListener("DOMContentLoaded", function() {
		var btn = document.getElementById("btn_submit");
		btn.addEventListener("click", function() {
			checkLogin();
		});
	}); */
</script>
</head>
<body>
	<form name="loginForm" action="validation02_process.jsp" method="post">
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="pw">비밀번호 : </label>
		<input type="password" id="pw" name="pw"><br>
		<button type="button" id="btn_submit" onclick="checkLogin();">전송</button>
	</form>
</body>
</html>