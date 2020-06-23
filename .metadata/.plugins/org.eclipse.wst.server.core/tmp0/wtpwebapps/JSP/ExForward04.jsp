<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곱셈결과</title>
</head>
<body>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	
	%>

	<form action = "http://192.168.0.79:8080/JSP/ExForward03.jsp">
		<%=num1 %> * <%=num2 %> = <%=(num1 * num2) %> <br>
		첫 번째 수 : <input type="text" name="num1" value="<%=num1 %>" readonly="readonly"> <br>
		두 번째 수 : <input type="text" name="num2" value="<%=num2 %>" readonly="readonly"> <br>
	<input type="submit" value="나눗셈">
	
	</form>

</body>
</html>