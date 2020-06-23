<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="EL_02.jsp" method="post">
		아이디 : <input type="text" name="id"> <br><br>
		다음 중 회원님이 키우고 있는 애완동물을 선택 하십시요. <br><br>
		개<input type="checkbox" name="animal" value="개">
		고양이<input type="checkbox" name="animal" value="고양이">
		거북이<input type="checkbox" name="animal" value="거북이"><br><br>
		<input type="reset" value="취소">
		<input type="submit" value="확인">
	</form>
</body>
</html>