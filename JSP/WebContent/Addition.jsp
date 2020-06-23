<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition</title>
</head>
<body>

	<%     
		int a = 30;
		int b = 20;
		int addition = a+b;	

	%>
	
	<%= a%> + <%= b%> = <%= addition%> <br/>
	덧셈 계산 끝! <br/>
	<br/>
	<br/>
	<br/>

	<% 
		
		int substraction = a-b;
		int multiple = a*b;
		int division = a/b;
		int remain = a%b;
	%>
	
	<p style="font-family: nanum gothic">
	<%= a%> + <%= b%> = <%= addition%> <br/>
	<%= a%> - <%= b%> = <%= substraction%> <br/>
	<%= a%> * <%= b%> = <%= multiple%> <br/>
	<%= a%> / <%= b%> = <%= division%> <br/>
	<%= a%> % <%= b%> = <%= remain%> <br/>
	</p>
	
	
	<%
		int sum = 0;
		for (int i = 0; i <= 100; i++) {
			sum += i;
		}
	
		out.print("1 + 2 + 3 + ..... + 99 + 100 = " + sum);
	%>


	<%
		int sum1 = 0;
	
		for (int i = 0; i <= 100; i++) {
			sum1 += i;
		}
		out.print("1부터 100까지의 합 = " + sum1 + "<br/>");
		
		for (int i = 101; i <= 200; i++) {
			sum1 += i;
		}
		out.print("1부터 200까지의 합 = " + sum1);
	%>


</body>
















</html>