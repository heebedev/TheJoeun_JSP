<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		
		<%
		request.setCharacterEncoding("utf-8");
		String age = request.getParameter("age");
		
		if (Integer.parseInt(age) >= 20) {
		    response.sendRedirect("ResponseAge4_03.jsp?age=" + age);
		
		 } else {
			response.sendRedirect("ResponseAge4_04.jsp?age=" + age);
		}
		%>