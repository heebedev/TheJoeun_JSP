<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 확인</title>
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
	
	<h3>삭제할 고객정보를 확인하세요!</h3>
	
	<form action="Delete_03.jsp" method="get">
	
		<table>
			<tr>
				<td align="right">사용자ID</td>
				<td><input type="text" name="userid" size="10" value="<%=strUserid %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td align="right">성명</td>
				<td><input type="text" name="name" size="10" value="<%=strName %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td align="right">전화번호</td>
				<td><input type="text" name="tel" size="10" value="<%=strTel %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td align="right">주소</td>
				<td><input type="text" name="address" size="10" value="<%=strAddress %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="확인"></td>
			</tr>
		</table>
	
	</form>
</body>
</html>