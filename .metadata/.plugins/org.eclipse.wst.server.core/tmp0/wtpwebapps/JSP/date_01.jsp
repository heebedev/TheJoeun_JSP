<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜와 시각</title>
</head>
<body>
	<%
		GregorianCalendar now = new GregorianCalendar();
		String date = String.format("%TF", now); //TF : yyyy-mm-dd
		String time = String.format("%TT", now); //TT : hh:mm:ss
		
	%>
	
	오늘의 날짜 : <%=date %> <br>
	현재의 시간 : <%=time %> <br>
	--------------------- <br>
	<%=String.format("%TY 년 %Tm 월 %Td 일", now, now, now) %> <br>
	<%=String.format("%TH 시 %TM 분 %TS 초", now, now, now) %> <br>




</body>







</html>