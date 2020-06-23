package snippet;

public class Snippet {
	 <%
	    
	   		String str_userid = request.getParameter("userid");
	    	String str_name = request.getParameter("name");
	    	String str_tel = request.getParameter("tel");
	    	String str_address = request.getParameter("address");
	    	
	    
	    //DB연결
	   	String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	    String id_mysql = "root";
	    String pw_mysql = "qwer1234";
	    
	    
	    PreparedStatement ps = null;
	    
	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	    	Statement stmt_mysql = conn_mysql.createStatement();
	    	
	    	String A = "insert into purchaserinfo(userid, name, tel, address, insertdate) values (?, ?, ?, ?, now())";
	    	
	    	ps = conn_mysql.prepareStatement(A);
	    	ps.setString(1, str_userid);
	    	ps.setString(2, str_name);
	    	ps.setString(3, str_tel);
	    	ps.setString(4, str_address);
	    	ps.executeUpdate();
	    	
	    }catch (Exception e) {
	    	e.printStackTrace();
	    }
	   
	    response.sendRedirect("purchaserInsert_03.jsp");
	   
	    %>
}

