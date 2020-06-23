<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성인확인s</title>
</head>
<body>

	<% 
		String age = request.getParameter("age");
		String adult = request.getParameter("adult");
		String possible = request.getParameter("possible");
	%>
	
	
	<h1><%=adult %></h1><br>
	당신의 나이는 <%=age %>살 이므로 주류 구매가 <%=possible %>합니다. <br><br>
	
	
	<a href = "ResponseAge3_01.jsp">처음으로 이동</a>
	

</body>
</html>