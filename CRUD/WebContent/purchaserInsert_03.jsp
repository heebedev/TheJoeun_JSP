<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 결과</title>
</head>
<body>

	<table>
		<tr>
			<td align="right">사용자 ID</td>
			<td> : ${USERID}</td>
		</tr>
		<tr>
			<td align="right">성명</td>
			<td> : ${NAME}</td>
		</tr>
		<tr>
			<td align="right">전화번호</td>
			<td> : ${TEL}</td>
		</tr>
		<tr>
			<td align="right">주소</td>
			<td> : ${ADDRESS}</td>
		</tr>
	
	</table>
	
	<br>
	상기의 정보로 입력되었습니다. 감사합니다.


</body>
</html>