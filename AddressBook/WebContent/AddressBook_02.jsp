<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function delete_Click() {
		if (confirm("정말 삭제하시겠습니까??") == true){    //확인
			location.href="AddressDelete.jsp";
		 }else{   //취소
		     return false;
		 }
	}
</script>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		int seq = Integer.parseInt(request.getParameter("seq"));
		session.setAttribute("SEQ", seq);
		String strName = null;
		String strTel = null;
		String strAddress = null;
		String strEmail = null;
		String strRelation = null;
		
		//Database 연결
		String url_mysql = "jdbc:mysql://localhost:3306/addressBook?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
		  	String id_mysql = "root";
		String pw_mysql = "qwer1234";
		
		
		String WhereDefault = "select name, tel, address, email, relation from customerBook where seq = " + Integer.toString(seq);
		
		 try {
		    	Class.forName("com.mysql.cj.jdbc.Driver");
		    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		    	Statement stmt_mysql = conn_mysql.createStatement();
		    	
		    	ResultSet rs = stmt_mysql.executeQuery(WhereDefault);
		    	
		    	while(rs.next()) {
		    		strName = rs.getString(1);
		    		strTel = rs.getString(2);
		    		strAddress = rs.getString(3);
		    		strEmail = rs.getString(4);
		    		strRelation = rs.getString(5);
		    		
		    	}
		    	
		    	conn_mysql.close();  //웹에서는 어차피 연결 끊기기 때문에 큰 의미 없다. 
		    	
		    }catch (Exception e) {
		    	e.printStackTrace();
		    }
	
	%>
	
	
	<h2 align="center"><%=strName %>님의 정보</h2>
	<br><br>
	<form action = "AddressUpdate.jsp" method="post" align="center">
	<table style="border-collapse:collapse; border:2px gray solid;" align="center">
			<tr>
				<td style="border:1px gray solid;" width="100">이름</td>
				<td style="border:1px gray solid;" width="300" align="left"><input type="text" name="name" value="<%=strName %>"></td>
			</tr>
			<tr>
				<td style="border:1px gray solid;" width="100">전화번호</td>
				<td style="border:1px gray solid;" width="300" align="left"><input type="text" name="tel" value="<%=strTel %>"></td>
			</tr>
			<tr>
				<td style="border:1px gray solid;" width="100">주소</td>
				<td style="border:1px gray solid;" width="300" align="left"><input type="text" name="address" value="<%=strAddress %>"></td>
			</tr>
			<tr>
				<td style="border:1px gray solid;" width="100">전자우편</td>
				<td style="border:1px gray solid;" width="300" align="left"><input type="text" name="email" value="<%=strEmail %>"></td>
			</tr>
			<tr>
				<td style="border:1px gray solid;" width="100">관계</td>
				<td style="border:1px gray solid;" width="300" align="left"><input type="text" name="relation" value="<%=strRelation %>"></td>
			</tr>
	</table>
	
	<h3 align="center">수정이 완료되면 확인을 눌러주세요!</h3>
	<br>
	
	<br><input type="submit" value="확인" align="center">
	</form>
	<form action="AddressBook_01.jsp" method="post" align="center">
	<input type="submit" value="뒤로가기">
	</form> <br><br>
	<input type="button" value="삭제" align="center" onclick="delete_Click();">

	

</body>
</html>