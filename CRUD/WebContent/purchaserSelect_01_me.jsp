<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 불러오기</title>
</head>
<body>
	<h1>고객 명단 리스트</h1>

	<%
		request.setCharacterEncoding("utf-8");
	
		//Database 연결
		String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
  	  	String id_mysql = "root";
    	String pw_mysql = "qwer1234";
		int cnt = 0;
		
		String WhereDefault = "select * from purchaserinfo";
		
		 try {
		    	Class.forName("com.mysql.cj.jdbc.Driver");
		    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		    	Statement stmt_mysql = conn_mysql.createStatement();
		    	
		    	ResultSet rs = stmt_mysql.executeQuery(WhereDefault);
		    	
	%>
		<table border="1">
			<tr>
				<th>User ID</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>입력일자</th>
			</tr>
		
	<% 
		    	while(rs.next()) {
	%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getDate(5) %></td>
			</tr>
	<%	    		
		    	cnt++;
		    	}
		    	
		    	conn_mysql.close();  //웹에서는 어차피 연결 끊기기 때문에 큰 의미 없다. 
		    	
		    }catch (Exception e) {
		    	e.printStackTrace();
		    }
	
	%>
		</table>
		
		<br><br>
		
		총 인원은 <%=cnt %>명 입니다.
	
	
	
</body>
</html>