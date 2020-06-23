<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성격 테스트</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String str_food = request.getParameter("food");
		
		response.addCookie(new Cookie("FOOD", URLEncoder.encode(str_food, "utf-8")));

	%>
	
	<h2>좋아하는 동물은?</h2><br><br>
	<form action="CharacterTest_03.jsp" method="get">
		<input type="text" name="animal"> <br><br>
		<input type="submit" value="확인">
	
	
	</form>
	

</body>
</html>