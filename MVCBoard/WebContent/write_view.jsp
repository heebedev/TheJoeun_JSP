<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 입력</title>
</head>
<body>
	<h1>게시판 입력</h1>
	<form action="write.do" method="post">
		<table border="0">
		<tr>
			<td>이름</td>
			<td><input type="text" name="bName" size="50"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" name="bTitle" size="50"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="10" cols="50" name="bContent"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="입력"> &nbsp;&nbsp;&nbsp; <a href = "list.do">목록 보기</a></td>
		</tr>
		
			
		</table>
	</form>

</body>
</html>