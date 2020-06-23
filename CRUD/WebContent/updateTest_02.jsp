<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 수정</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String Userid = request.getParameter("userid");
		session.setAttribute("OLD", Userid);
		String strUserid = null;
		
		//Database 연결
		String url_mysql = "jdbc:mysql://localhost:3306/jsp?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
  	  	String id_mysql = "root";
    	String pw_mysql = "qwer1234";
		
		
		String WhereDefault = "select userid from wtest where userid = '" + Userid + "'";
		
		 try {
		    	Class.forName("com.mysql.cj.jdbc.Driver");
		    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		    	Statement stmt_mysql = conn_mysql.createStatement();
		    	
		    	ResultSet rs = stmt_mysql.executeQuery(WhereDefault);
		    	
		    	while(rs.next()) {
		    		strUserid = rs.getString(1);
		    		
		    	}
		    	
		    	conn_mysql.close();  //웹에서는 어차피 연결 끊기기 때문에 큰 의미 없다. 
		    	
		    }catch (Exception e) {
		    	e.printStackTrace();
		    }
	
	%>
	
	<form action="updateTest_03.jsp" method="get">
		<table>
			<tr>
				<td align="right">사용자ID</td>
				<td><input type="text" name="userid" size="10" value="<%=strUserid %>"></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="수정"></td>
			</tr>
		</table>
	
	
	
	</form>
	
	
	

</body>
</html>