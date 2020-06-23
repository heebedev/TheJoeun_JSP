<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 데이터 저장하기</title>
</head>
<body>

	<%
		response.addCookie(new Cookie("NAME", "kenny"));
		response.addCookie(new Cookie("GENDER", "male"));
		response.addCookie(new Cookie("AGE", "50"));
		// 내피씨에 쿠키가 3개 들어가있다.
	%>
	쿠키 데이터가 저장되었습니다. <br>
	

</body>
</html>