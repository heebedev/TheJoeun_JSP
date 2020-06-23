<%@ page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%
		GregorianCalendar now = new GregorianCalendar();
		
	%>

	<%=String.format("현재일은 %TY 년 %Tm 월 %Td 일 입니다.", now, now, now) %> <br>
	<%=String.format("현재 시각은 %TH 시 %TM 분 %TS 초 입니다.", now, now, now) %> <br>

