<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성격 테스트 결과</title>
</head>
<body>

	<%
		Cookie[] cookies = request.getCookies();
		
	
	
	%>
	당신은 <%=getCookieValue(cookies, "FOOD")%>와(과) <%= getCookieValue(cookies, "ANIMAL") %>을(를) 좋아하는 성격입니다. <br><br>

</body>
</html>


 <%!
 	private String getCookieValue(Cookie[] cookies, String name) {
	 if(cookies == null) return null;
	 for(Cookie cookie: cookies) {
		 if(cookie.getName().equals(name)) {
			 return URLDecoder.decode(cookie.getValue());
		 }
	 }
	 return null;
 	}
 
 %>