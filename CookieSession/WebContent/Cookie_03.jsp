<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 데이터 수정</title>
</head>
<body>
	<%
		response.addCookie(new Cookie("AGE", "15"));
		
	
	%>
	AGE Cookie에 새로운 값이 저장되었습니다. 


</body>
</html>