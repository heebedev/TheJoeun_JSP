<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단(2단)</title>
</head>
<body>
	<% 
		int i = 0;
		while(true) {
			i++;
			out.println("2 X " + i + " = " + (2 * i));
	%>
		<br/>
		------------- <br/>
	
	<%
		
 				if (i >= 9) {
 					break;	
 				}
 			}
	
	%>

	<br/>
	<br/>

	<%
	
	for (int j = 1; j <= 9; j++) {
		out.println("2 X " + j + " = " + (2 * j) + "<br/>");
		if (j < 9) {
			out.println("---------------" + "<br/>");
		}
	}
	
	%>





</body>
</html>