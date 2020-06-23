<%@page import="java.net.URLEncoder"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


		<%
		request.setCharacterEncoding("utf-8");
		String agree = request.getParameter("agree");
		
		
		if(agree.equals("동의")) {
			try {
				 response.sendRedirect("userInsert_04.jsp");
			}catch(Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				response.sendRedirect("userInsert_01.jsp");
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		%>

