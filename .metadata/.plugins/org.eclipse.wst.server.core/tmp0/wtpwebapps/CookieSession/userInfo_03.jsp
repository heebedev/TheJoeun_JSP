<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입_추가정보</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String str_address = request.getParameter("address");
		String str_telno = request.getParameter("telno");
		String str_email = request.getParameter("email");
		
		response.addCookie(new Cookie("ADDRESS", URLEncoder.encode(str_address, "utf-8")));
		response.addCookie(new Cookie("TELNO", URLEncoder.encode(str_telno, "utf-8")));
		response.addCookie(new Cookie("EMAIL", URLEncoder.encode(str_email, "utf-8")));


	%>
	
	<h2>추가정보를 입력하세요.</h2><br><br>
	<form action="userInfo_04.jsp" method="get">
		생년월일 : <input type="text" name="year" size="4"> 년
				<input type="text" name="month" size="4"> 월
				<input type="text" name="day" size="4"> 일 <br>
		결혼여부 : <input type="radio" name="marriage" value="미혼" checked="checked">미혼
				 <input type="radio" name="marriage" value="기혼">기혼 <br>
		직업 : <select name="work">
					<option value="회사원">회사원</option>
					<option value="개발자">연구개발</option>
					<option value="선생님">선생님</option>
					<option value="기타">기타</option>		
				</select>	<br>
		<input type="submit" value="확인">
	
	</form>

</body>
</html>