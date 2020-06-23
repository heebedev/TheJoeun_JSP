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
		String str_year = request.getParameter("year");
		String str_month = request.getParameter("month");
		String str_day = request.getParameter("day");
		String str_marriage = request.getParameter("marriage");
		String str_work = request.getParameter("work");
		
		response.addCookie(new Cookie("YEAR", str_year));
		response.addCookie(new Cookie("MONTH", str_month));
		response.addCookie(new Cookie("DAY", str_day));
		response.addCookie(new Cookie("MARRIAGE", URLEncoder.encode(str_marriage, "utf-8")));
		response.addCookie(new Cookie("WORK", URLEncoder.encode(str_work, "utf-8")));
		
		
		response.sendRedirect("userInfo_05.jsp");

	%>

</body>
</html>

