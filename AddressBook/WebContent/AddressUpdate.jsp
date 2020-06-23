<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


	<%
		request.setCharacterEncoding("utf-8");
		int seq = (int)session.getAttribute("SEQ");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String relation = request.getParameter("relation");
		boolean result = false;
		
		
		if (name.equals("") || tel.equals("") || address.equals("") || email.equals("") || relation.equals("")) {
			%>
					<script type="text/javascript">

			    	alert("수정에 실패했습니다. 입력값을 다시 확인해주세요.")
			    	history.go(-1);

					</script> 
			<%		
				} else {
		
		
		
		
		//Database 연결
		String url_mysql = "jdbc:mysql://localhost:3306/addressBook?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
  	  	String id_mysql = "root";
    	String pw_mysql = "qwer1234";
		
    	
    	PreparedStatement ps = null;
		
		try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	    	Statement stmt_mysql = conn_mysql.createStatement();
	    	
	    	String A = "update customerBook set name = ?, tel = ?, address = ?, email = ?, relation = ? where seq = ?";
	    	
	    	ps = conn_mysql.prepareStatement(A);
	    	ps.setString(1, name);
	    	ps.setString(2, tel);
	    	ps.setString(3, address);
	    	ps.setString(4, email);
	    	ps.setString(5, relation);
	    	ps.setInt(6, seq);
	    	
	    	ps.executeUpdate();
	    	
	    	
	    	conn_mysql.close();
	    	result = true;
	    	
	    	
	    }catch (Exception e) {
	    	e.printStackTrace();
	    	session.setAttribute("RESULT", "fail");
	    	
	    }
		
		%>
		
<%
 	if (result) { %>
 		<script type="text/javascript">


 		var name = '<%=name %>';
 		var tel = '<%=tel %>';
 		var address = '<%=address %>';
 		var email = '<%=email %>';
 		var relation = '<%=relation %>';

 		alert(name + "님의 정보가 아래와 같이 수정되었습니다." + "\n\n전화번호 : " + tel + "\n주소 : " + address + "\n전자우편 : " + email + "\n관계 : " + relation)
 		location.href="AddressBook_01.jsp";

 		</script> <%
 	} else {
 		
 		%>
 		<script type="text/javascript">

	    	alert("수정에 실패하였습니다. 내용을 다시 확인해주세요.")

</script> 
 	<% }} %>
 
		