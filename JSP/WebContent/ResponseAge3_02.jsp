<%@page import="java.net.URLEncoder"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		
		<%
		request.setCharacterEncoding("utf-8");
		String sage = request.getParameter("age");
		int age = Integer.parseInt(sage);
		String adult;
		String possible;
		String adultNext="";
		String possibleNext="";
		
		
		if(age >= 20) {
			try {
				adultNext = URLEncoder.encode("성인", "utf-8");
				possibleNext = URLEncoder.encode("가능", "utf-8");
			}catch(Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				adultNext = URLEncoder.encode("미성년자", "utf-8");
				possibleNext = URLEncoder.encode("불가능", "utf-8");
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
		if (age >= 20) {
			adult = "%EC%84%B1%EC%9D%B8";
			possible ="%EA%B0%80%EB%8A%A5";
		
		 } else {
			adult ="%EB%AF%B8%EC%84%B1%EB%85%84%EC%9E%90";
			possible ="%EB%B6%88%EA%B0%80%EB%8A%A5";
		}
		    response.sendRedirect("ResponseAge3_03.jsp?age=" + age + "&adult=" + adultNext +"&possible=" + possibleNext);
		%>



