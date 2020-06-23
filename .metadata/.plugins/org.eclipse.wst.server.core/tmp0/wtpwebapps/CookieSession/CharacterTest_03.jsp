<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String str_animal = request.getParameter("animal");
		
		response.addCookie(new Cookie("ANIMAL", URLEncoder.encode(str_animal, "utf-8")));
		response.sendRedirect("CharacterTest_04.jsp");

	%>
	
</body>
</html>