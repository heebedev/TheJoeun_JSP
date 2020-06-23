<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 결과</title>
</head>
<body>

		<table>
			<tr>
				<td align="right">사용자ID</td>
				<td><%=session.getAttribute("USERID") %></td>
			</tr>
			<tr>
				<td align="right">성명</td>
				<td><%=session.getAttribute("NAME") %></td>
			</tr>
			<tr>
				<td align="right">전화번호</td>
				<td><%=session.getAttribute("TEL") %></td>
			</tr>
			<tr>
				<td align="right">주소</td>
				<td><%=session.getAttribute("ADDRESS") %></td>
			</tr>
			
			
		</table>
		
		<h3>상기의 정보로 수정되었습니다. 감사합니다.</h3>



</body>
</html>