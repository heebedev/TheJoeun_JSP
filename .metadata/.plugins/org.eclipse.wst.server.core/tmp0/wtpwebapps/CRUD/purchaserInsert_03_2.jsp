<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="purchaser" class="com.jsplec.base.purchaser" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
    <table>
		<tr>
			<td align="right">사용자 ID</td>
			<td> : <jsp:getProperty name="purchaser" property="userid"/></td>
		</tr>
		<tr>
			<td align="right">성명</td>
			<td> : <jsp:getProperty name="purchaser" property="name"/></td>
		</tr>
		<tr>
			<td align="right">전화번호</td>
			<td> : <jsp:getProperty name="purchaser" property="tel"/></td>
		</tr>
		<tr>
			<td align="right">주소</td>
			<td> : <jsp:getProperty name="purchaser" property="address"/></td>
		</tr>
	
	</table>
	
	<br>
	상기의 정보로 입력되었습니다. 감사합니다.

</body>
</html>