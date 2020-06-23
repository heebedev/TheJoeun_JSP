<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 내용</title>
</head>
<body>
	<h1>게시판 내용</h1>
	<form action="update.do" method="post">
		<table border="0">

		<tr>
			<td>번호</td>
			<td><input type="text" name="bId" size="10" readonly="readonly" value="${content_view.bId}"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="bName" size="50" value="${content_view.bName}"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" name="bTitle" size="50" value="${content_view.bTitle}"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="10" cols="50" name="bContent">${content_view.bContent}</textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="수정"> &nbsp;&nbsp;&nbsp; <a href = "list.do">목록 보기</a>  &nbsp;&nbsp;&nbsp; <a href = "delete.do?bId=${content_view.bId}">삭제</a></td>
		</tr>
			
		</table>
	</form>

</body>
</html>