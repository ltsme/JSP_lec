<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function CheckForm() {
		
		var idCheck = /^[a-z0-9]+$/
		if(!idCheck.test(form.id.value)){  /* 아이디 유효화 체크 */
			alert("아이디는 소문자로 입력해 주세요!");
			form.id.select();
			return false;
		}
		
		var pwCheck = /^[0-9]+$/;
		if(!pwCheck.test(form.passwd.value)){ /* 비밀번호 유효화 체크 */
			alert("비밀 번호는 숫자로 입력해 주세요!");
			form.passwd.select();
			return false;
		}

		const korean = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;   /* 한글 체크  korean.test(string)   */
		if(!korean.test(document.loginForm.name.value)){
			alert("이름은 한글만으로 입력해 주세요!");
			form.name.select();
			return false;
		}

	}

</script>

<body>
	<form name="loginForm" action="Validation05_Process.jsp">
	<h2>회원 가입</h2><br>
	<p>아이디 : <input type="text" name="id"></p>
	<p>비밀번호 : <input type="password" name="passwd"></p>
	<p>이름 : <input type="text" name="name"></p>
	<p>연락처 : <input type="text" name="phone"></p>
	<p>이메일 : <input type="text" name="email"></p>
	<p><input type="button" value="가입하기" onclick="CheckForm()">
	
	</form>
</body>
</html>