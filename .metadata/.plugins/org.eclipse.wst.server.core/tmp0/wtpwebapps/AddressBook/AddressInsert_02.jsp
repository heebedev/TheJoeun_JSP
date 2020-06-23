<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="com.jsplec.base.member" scope="session" />


	<%
		request.setCharacterEncoding("utf-8");
		String str_name = request.getParameter("name");
		String str_tel = request.getParameter("tel");
		String str_address = request.getParameter("address");
		String str_email = request.getParameter("email");
		String str_relation = request.getParameter("relation");
		boolean result = false;
	
		
		
		
		if (str_name.equals("") || str_tel.equals("") || str_address.equals("") || str_email.equals("") || str_relation.equals("")) {
	%>
			<script type="text/javascript">

	    	alert("등록에 실패했습니다. 입력값을 다시 확인해주세요.")
	    	history.go(-1);

			</script> 
	<%		
		} else {
	
		
		
	%> 



     <%
    
    	
    	
    //DB연결
   	String url_mysql = "jdbc:mysql://localhost:3306/addressBook?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
    String id_mysql = "root";
    String pw_mysql = "qwer1234";
    
    
    PreparedStatement ps = null;
    
    try {
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
    	Statement stmt_mysql = conn_mysql.createStatement();
    	
    	String A = "insert into customerBook(name, tel, address, email, relation) values (?, ?, ?, ?, ?)";
    	
    	ps = conn_mysql.prepareStatement(A);
    	ps.setString(1, str_name);
    	ps.setString(2, str_tel);
    	ps.setString(3, str_address);
    	ps.setString(4, str_email);
    	ps.setString(5, str_relation);
    	ps.executeUpdate();
    	result = true;
    	
    }catch (Exception e) {
    	e.printStackTrace();
    }
  
    
    %>
    
  <%
 	if (result) { %>
 		<script type="text/javascript">


 		var name = '<%=str_name %>';
 		var tel = '<%=str_tel %>';
 		var address = '<%=str_address %>';
 		var email = '<%=str_email %>';
 		var relation = '<%=str_relation %>';

 		alert(name + "님의 정보가 아래와 같이 등록되었습니다." + "\n\n전화번호 : " + tel + "\n주소 : " + address + "\n전자우편 : " + email + "\n관계 : " + relation)
 		location.href="AddressBook_01.jsp";

 		</script> <%
 	} else {
 		
 		%>
 		<script type="text/javascript">

	    	alert("입력에 실패하였습니다. 내용을 다시 확인해주세요.")

	</script> 
 	<% }} %>
    
    