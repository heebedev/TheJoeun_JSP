<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
</head>
<body>

	<h1 align="center">주소록 명단 리스트</h1>
	<dr>
	<form action="AddressSearch.jsp" method="post" align="center">
		검색 선택<select name="selection">
			<option value="name">이름</option>
			<option value="tel">전화번호</option>
			<option value="address">주소</option>
			<option value="email">전자우편</option>
			<option value="relation">관계</option>
		</select>&nbsp;
		<input type="text" name="selecText" >
		<input type="submit" value="검색">
	</form>
	
	<dr>
	<hr>
	<dr>
	
	<%
		request.setCharacterEncoding("utf-8");
		String selection = (String)request.getParameter("selection");
		String selectext = (String)request.getParameter("selecText");
		
	
		//Database 연결
		String url_mysql = "jdbc:mysql://localhost:3306/addressBook?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
  	  	String id_mysql = "root";
    	String pw_mysql = "qwer1234";
		int cnt = 0;
		
		
		String WhereDefault = "select * from customerBook where " + selection + " like '%" + selectext +"%' order by name";
		
		 try {
		    	Class.forName("com.mysql.cj.jdbc.Driver");
		    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		    	Statement stmt_mysql = conn_mysql.createStatement();
		    	
		    	ResultSet rs = stmt_mysql.executeQuery(WhereDefault);
		    	
	%>
		<table border="1" align="center">
			<tr>
				<th width="20">Seq</th>
				<th width="70">이름</th>
				<th width="120">전화번호</th>
				<th width="200">주소</th>
				<th width="150">전자우편</th>
				<th width="200">관계</th>
			</tr>
		
	<% 
			while (rs.next()) {
	%>
			<tr>
				<td align="center"><a href="AddressBook_02.jsp?seq=<%=rs.getInt(1)%>"><%=rs.getInt(1) %></a></td>
				<td align="center"><%=rs.getString(2) %></td>
				<td align="center"><%=rs.getString(3) %></td>
				<td align="center"><%=rs.getString(4) %></td>
				<td align="center"><%=rs.getString(5) %></td>
				<td align="center"><%=rs.getString(6) %></td>
			</tr>
	<%	    		
		    		cnt ++; }
		    	
		    	conn_mysql.close();  //웹에서는 어차피 연결 끊기기 때문에 큰 의미 없다. 허
		    	
		    }catch (Exception e) {
		    	e.printStackTrace();
		    }
	
	%>
		</table>
		<h4 align="center">
		<dr><dr>
	
		<a href="AddressBook_01.jsp">처음으로</a>
		</h4>
		<hr>
		<br>
		
		<h3 align="center">총 인원은 <%=cnt %>명 입니다.</h3>
	
	
	

		

</body>
</html>