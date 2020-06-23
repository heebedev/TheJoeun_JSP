<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 동의</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String str_id = request.getParameter("id");
		String str_password = request.getParameter("password");
		String str_name = request.getParameter("name");
		
		session.setAttribute("ID", str_id);
		session.setAttribute("PASSWORD", str_password);
		session.setAttribute("NAME", str_name);
		
	%>

	<h1>약관</h1>
	---------------------------------------<br>
	<h4>1. 회원 정보는 웹사이트의 운영을 위해서만 사용 됩니다.</h4>
	<h4>2. 웹사이트의 정상 운영을 방해하는 회원은 탈퇴 처리 합니다.</h4>
	---------------------------------------<br>
	위의 약관에 동의하십니까?
	<form action="userInsert_03.jsp" method="post">
		<input type="radio" name="agree" value="동의" checked="checked">동의 함
		 <input type="radio" name="agree" value="비동의">동의 하지 않음 <br>			
		 <input type="submit" value="확인">
	</form>
	
	
	
	
</body>
</html>