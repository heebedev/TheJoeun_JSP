<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%
		request.setCharacterEncoding("utf-8");
		String NewUserid = request.getParameter("userid");
		session.setAttribute("NEW", NewUserid);
		String OldUserid = (String)session.getAttribute("OLD");

		
		//Database 연결
		String url_mysql = "jdbc:mysql://localhost:3306/jsp?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
  	  	String id_mysql = "root";
    	String pw_mysql = "qwer1234";
		
    	
    	PreparedStatement ps = null;
		
		try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	    	Statement stmt_mysql = conn_mysql.createStatement();
	    	
	    	String A = "update wtest set userid = ? where userid = ?";
	    	
	    	ps = conn_mysql.prepareStatement(A);
	    	ps.setString(1, NewUserid);
	    	ps.setString(2, OldUserid);
	    	ps.executeUpdate();
	    	
	    	
	    	conn_mysql.close();
	    	
	    }catch (Exception e) {
	    	e.printStackTrace();
	    }
		
		response.sendRedirect("updateTest_04.jsp");
		
		%>
		
		
		
		