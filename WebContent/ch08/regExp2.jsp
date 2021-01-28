<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function checkForm() {
	var form = document.frm;

	var str = form.name.value;
	var regExp = /^[a-z|A-Z|ㄱ-ㅎ|가-힣]/;
	
	if (!regExp.test(str)) {
		alert("이름은 숫자로 시작할 수 없습니다.");
		return;
	}

	str = form.age.value;
	regExp = /^[0-9]/;

	if (!regExp.test(str)) {
		alert("나이는 숫자만 입력할 수 있습니다.");
		return;
	}

	str = form.phone.value;
	/* [숫자]반복-[숫자]반복-[숫자]반복 */
	/* 051-1234-5678 */
	regExp = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/;
	if (!regExp.test(str)) {
		alert("전화번호는 숫자만 형식에 맞춰 입력해주세요.\nxxx-xxxx-xxxx ");
		return;
	}
}
</script>
</head>
<body>
	<form name="frm">
		<label for="name">이름 : </label>
		<input type="text" id="name" name="name"><br>
		<label for="age">나이 : </label>
		<input type="text" id="age" name="age"><br>
		<label for="phone">전화번호 : </label>
		<input type="text" id="phone" name="phone" ><br>
		<button type="button" onclick="checkForm()">전송</button>
	</form>
</body>
</html>