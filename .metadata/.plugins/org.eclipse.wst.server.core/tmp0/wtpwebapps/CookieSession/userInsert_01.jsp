<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<h2> 개인 정보를 입력하세요. </h2>
	<form action="userInsert_02.jsp" method="post">
		아이디 : <input type="text" name="id"> <br>
		패스워드 : <input type="password" name="password"> <br>
		이름 : <input type="text" name="name"> <br><br>
		<input type="submit" value="확인">
		
		
	</form>


</body>
</html>