<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보 입력 결과</title>
</head>
<body>

	<%
		String name, id, pw, protocol, major;
		String[] hobbies;
		
		
		request.setCharacterEncoding("utf-8");
		
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		major = request.getParameter("major");
		hobbies = request.getParameterValues("hobby");
		protocol = request.getParameter("protocol");
	
	%>
	
	이름 : <%=name %> <br>
	아이디 : <%=id %> <br>
	패스워드 : <%=pw %> <br>
 	취미 : <%=Arrays.toString(hobbies) %> <br>
	전공 : <%=major %> <br>
	Protocol : <%=protocol %>
	
	

</body>
</html>