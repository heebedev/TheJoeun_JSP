<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>덧셈결과</title>
</head>
<body>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	
	%>

	<form action = "#">
		<%=num1 %> + <%=num2 %> = <%=(num1 + num2) %> <br>
		첫 번째 수 : <input type="text" name="num1" value="<%=num1 %>" readonly="readonly"> <br>
		두 번째 수 : <input type="text" name="num2" value="<%=num2 %>" readonly="readonly"> <br>
	<input type="submit" value="곱셈">
	
	</form>

</body>
</html>