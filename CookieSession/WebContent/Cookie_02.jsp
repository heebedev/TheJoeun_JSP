<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 데이터 읽기</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
	%>
	이름 :  <%=getCookieValue(cookies, "NAME") %> <br>
	성별 :  <%=getCookieValue(cookies, "GENDER") %> <br>
	나이 :  <%=getCookieValue(cookies, "AGE") %> <br>
	

</body>
</html>

<%!

		private String getCookieValue(Cookie[] cookies, String name) {
			if(cookies == null) return null;
			for(Cookie cookie: cookies) { // 쿠키즈 데이터가 있을때까지 돈다
				if(cookie.getName().equals(name)) {
					return cookie.getValue();
				}
			}
			return null;
		}




%>