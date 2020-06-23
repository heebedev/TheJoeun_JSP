<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<%
	
		//한글이 있을때는 utf-8 지정 필요하지만, 아닐때는 필요 없다.
		
		String site = request.getParameter("sitename");
		
		switch(site) {
		case "naver" :
			response.sendRedirect("http://www.naver.com");
			break;
		case "daum" :
			response.sendRedirect("http://www.daum.net");
			break;
		case "google" :
			response.sendRedirect("http://www.google.com");
			break;
		default :
			response.sendRedirect("http://localhost:8080/JSP/response_01.jsp");
			break;
		}
	
	%>



</body>
</html>