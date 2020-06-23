<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write File</title>
</head>
<body>
	<h1>파일로 저장하기</h1><br>
	<form action="writeFile_02.jsp" method="post">
		이름 : <input type="text" name = "name"> <br>
		제목 : <input type="text" name = "title"> <br>
		내용 : <br>
			  <textarea rows="5" COLS="30" name="content"></textarea> <br>
			  <input type="submit" value="저장">
	
	</form>

</body>
</html>