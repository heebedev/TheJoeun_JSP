<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입_연락처</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String str_id = request.getParameter("id");
		String str_password = request.getParameter("password");
		String str_name = request.getParameter("name");
		
		response.addCookie(new Cookie("ID", str_id));
		response.addCookie(new Cookie("PASSWORD", str_password));
		response.addCookie(new Cookie("NAME", URLEncoder.encode(str_name, "utf-8")));
	%>
	
	
	<h2>연락처를 입력하세요.</h2><br><br>
	<form action="userInfo_03.jsp" method="get">
		주소 : <input type="text" name="address"> <br>
		전화번호 : <input type="text" name="telno"> <br>
		이메일 : <input type="text" name="email"> <br><br>
		<input type="submit" value="확인">
	
	</form>

</body>
</html>