<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 삭제</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String userid = (String)session.getAttribute("USERID");
		
		
		//Database 연결
		String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
  	  	String id_mysql = "root";
    	String pw_mysql = "qwer1234";
		
    	
    	PreparedStatement ps = null;
		
		try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	    	Statement stmt_mysql = conn_mysql.createStatement();
	    	
	    	String A = "delete from purchaserinfo where userid = ?";
	    	
	    	ps = conn_mysql.prepareStatement(A);
	    	ps.setString(1, userid);
	    
	    	
	    	ps.executeUpdate();
	    	
	    	
	    	conn_mysql.close();
	    	
	    	
	    	
	    }catch (Exception e) {
	    	e.printStackTrace();
	    }
		%>
		
		<script type="text/javascript">


		var id = '<%=userid%>';
		

		alert("사용자ID : " + id + "의 정보가 삭제되었습니다.");
		location.href="purchaserSelect_01.jsp";
		
		</script>
		
		
		

</body>
</html>