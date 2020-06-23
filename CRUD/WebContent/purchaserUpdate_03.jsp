<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


	<%
		request.setCharacterEncoding("utf-8");
		String userid = (String)session.getAttribute("USERID");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		session.setAttribute("NAME", name);
		session.setAttribute("TEL", tel);
		session.setAttribute("ADDRESS", address);


		
		//Database 연결
		String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
  	  	String id_mysql = "root";
    	String pw_mysql = "qwer1234";
		
    	
    	PreparedStatement ps = null;
		
		try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	    	Statement stmt_mysql = conn_mysql.createStatement();
	    	
	    	String A = "update purchaserinfo set name = ?, tel = ?, address = ? where userid = ?";
	    	
	    	ps = conn_mysql.prepareStatement(A);
	    	ps.setString(1, name);
	    	ps.setString(2, tel);
	    	ps.setString(3, address);
	    	ps.setString(4, userid);
	    	
	    	ps.executeUpdate();
	    	
	    	
	    	conn_mysql.close();
	    	
	    	
	    	
	    }catch (Exception e) {
	    	e.printStackTrace();
	    }
		
		response.sendRedirect("purchaserUpdate_04_2.jsp");
		
		%>
		
		
		
		
		
		
		