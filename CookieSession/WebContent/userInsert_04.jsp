<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 결과</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

	%>
	
	<h2>회원 가입 결과 </h2>
	<h3>가입 되었습니다.</h3>
	<br>
	<h2>가입 내용 </h2>
	<br>
	
	아이디 : <%=session.getAttribute("ID")%> <br>
	패스워드 : <%= session.getAttribute("PASSWORD") %> <br>
	성명 : <%= session.getAttribute("NAME") %>
	
	
	<% session.invalidate(); %>

		

</body>
</html>