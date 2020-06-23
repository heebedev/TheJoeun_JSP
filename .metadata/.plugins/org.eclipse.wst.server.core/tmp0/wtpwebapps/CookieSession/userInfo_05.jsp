<%@page import="java.net.URLDecoder"%>
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
		Cookie[] cookies = request.getCookies();
	%>
	
	<h1>가입 내용</h1>
	성명 : <%=getCookieValue(cookies, "NAME")%> <br>
	아이디 : <%=getCookieValue(cookies, "ID")%> <br>
	패스워드 : <%=getCookieValue(cookies, "PASSWORD")%> <br>
	주소 : <%=getCookieValue(cookies, "ADDRESS")%> <br>
	전화번호 : <%=getCookieValue(cookies, "TELNO")%> <br>
	이메일 : <%=getCookieValue(cookies, "EMAIL")%> <br>
	생년월일 : <%=getCookieValue(cookies, "YEAR")%>년 <%=getCookieValue(cookies, "MONTH")%>월 <%=getCookieValue(cookies, "DAY")%>일 <br>
	결혼 : <%=getCookieValue(cookies, "MARRIAGE")%> <br>
	직업 : <%=getCookieValue(cookies, "WORK")%> <br>
	
	--------------------------------------------------------- <br>
	
	상기의 조건으로 가입되었습니다. 감사합니다.
	

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