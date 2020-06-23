<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


		<%
		request.setCharacterEncoding("utf-8");
		String seq = (String)request.getParameter("seq");
		boolean result = false;
		
		
		//Database 연결
		String url_mysql = "jdbc:mysql://localhost:3306/addressBook?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
  	  	String id_mysql = "root";
    	String pw_mysql = "qwer1234";
		
    	
    	PreparedStatement ps = null;
		
		try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	    	Statement stmt_mysql = conn_mysql.createStatement();
	    	
	    	String A = "delete from customerBook where seq = ?";
	    	
	    	ps = conn_mysql.prepareStatement(A);
	    	ps.setString(1, seq);
	    
	    	
	    	ps.executeUpdate();
	    	
	    	
	    	conn_mysql.close();
	    	result = true;
	    	
	    	
	    	
	    }catch (Exception e) {
	    	e.printStackTrace();
	    }
		%>
		
			<%
 	if (result) { %>
 		<script type="text/javascript">


 		alert("사용자 정보가 삭제되었습니다.")
 		location.href="AddressBook_01.jsp";

 		</script> <%
 	} else {
 		
 		%>
 		<script type="text/javascript">

	    	alert("삭제에 실패하였습니다. 다시 확인해주세요.")

		</script> 
 	<% } %>
		
		