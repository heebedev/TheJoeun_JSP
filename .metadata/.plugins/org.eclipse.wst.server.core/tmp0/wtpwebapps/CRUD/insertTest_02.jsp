<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    
   		String str_userid = request.getParameter("userid");
    	
    
    //DB연결
   	String url_mysql = "jdbc:mysql://localhost:3306/jsp?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
    String id_mysql = "root";
    String pw_mysql = "qwer1234";
    
    
    PreparedStatement ps = null;
    
    try {
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
    	Statement stmt_mysql = conn_mysql.createStatement();
    	
    	String A = "insert into wtest(userid) values (?)";
    	
    	ps = conn_mysql.prepareStatement(A);
    	ps.setString(1, str_userid);
    	ps.executeUpdate();
    	
    }catch (Exception e) {
    	e.printStackTrace();
    }
   
    response.sendRedirect("insertTest_03.jsp");
   
    %>