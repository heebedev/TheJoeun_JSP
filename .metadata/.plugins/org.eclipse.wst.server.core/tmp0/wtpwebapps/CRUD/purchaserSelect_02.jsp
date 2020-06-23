<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객명단 수정 및 삭제</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("userid");
		session.setAttribute("USERID", userid);
		String strUserid = null;
		String strName = null;
		String strTel = null;
		String strAddress = null;
		
		//Database 연결
		String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
  	  	String id_mysql = "root";
    	String pw_mysql = "qwer1234";
		
		
		String WhereDefault = "select userid, name, tel, address from purchaserinfo where userid = '" + userid + "'";
		
		 try {
		    	Class.forName("com.mysql.cj.jdbc.Driver");
		    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		    	Statement stmt_mysql = conn_mysql.createStatement();
		    	
		    	ResultSet rs = stmt_mysql.executeQuery(WhereDefault);
		    	
		    	while(rs.next()) {
		    		strUserid = rs.getString(1);
		    		strName = rs.getString(2);
		    		strTel = rs.getString(3);
		    		strAddress = rs.getString(4);
		    		
		    	}
		    	
		    	conn_mysql.close();  //웹에서는 어차피 연결 끊기기 때문에 큰 의미 없다. 
		    	
		    }catch (Exception e) {
		    	e.printStackTrace();
		    }
	
	%>
	
	<h2>고객명단 수정 및 삭제</h2>
	
	<form action="purchaserSelect_03.jsp" method="get">
	
		<table>
			<tr>
				<td align="right">사용자ID</td>
				<td><input type="text" name="userid" size="10" value="<%=strUserid %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td align="right">성명</td>
				<td><input type="text" name="name" size="10" value="<%=strName %>"></td>
			</tr>
			<tr>
				<td align="right">전화번호</td>
				<td><input type="text" name="tel" size="10" value="<%=strTel %>"></td>
			</tr>
			<tr>
				<td align="right">주소</td>
				<td><input type="text" name="address" size="10" value="<%=strAddress %>"></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;</td>
			</tr>
			
		</table>
	
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="수정">
			
	
	</form>
		
	<form action="purchaserSelect_04.jsp" method="get">
		
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="삭제">
			
	</form>



</body>
</html>



