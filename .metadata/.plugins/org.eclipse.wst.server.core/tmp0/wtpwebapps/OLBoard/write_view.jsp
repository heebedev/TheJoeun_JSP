<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
  table {
    font-family: sans-serif;
  }
  
</style>
<meta charset="UTF-8">
<title>게시판 입력</title>
</head>
<body>
	<h2 style="font-family:sans-serif;" align="center">게시판 입력</h2>
	<form action="write.olb" method="post">
		<table border="0" align="center">
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" size="50"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" size="50"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="입력"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><a href = "main.olb">목록 보기</a></td>
		</tr>
		
			
		</table>
	</form>

</body>
</html>