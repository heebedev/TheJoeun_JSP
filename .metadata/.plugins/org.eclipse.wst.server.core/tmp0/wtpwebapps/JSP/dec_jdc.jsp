<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부를 이용한 덧셈</title>
</head>
<body>
	2 + 1 = <%=decadd(2,1) %> <br/>
	3 + 1 = <%=decadd(3,1) %> <br/>
	4 + 1 = <%=decadd(4,1) %> <br/>
	5 + 1 = <%=decadd(5,1) %> <br/>
	
	2 ^ 1 = <%=power(2,1) %> <br/>
	2 ^ 2 = <%=power(2,2) %> <br/>
	2 ^ 3 = <%=power(2,3) %> <br/>
	2 ^ 4 = <%=power(2,4) %> <br/>
	2 ^ 5 = <%=power(2,5) %> <br/>

	
</body>
</html>


<%!

	private int decadd(int a, int b) {
		int result = a + b;
		return result;
	}

	private int power(int a, int b) {
		int result = 1;
		for (int i = 1; i <=b; i++){
			result *= a;
		}
		return result;
	}

%>