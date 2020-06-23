<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 입력</title>
</head>
<body>

	<h2 align="center">주소록 등록</h2>
	<h4 align="center">아래 항목 입력 후 등록을 눌러주세요!</h4>
	<hr>
	<form action="AddressInsert_02.jsp" method="post" align="center">
	<table align="center">
		<tr>
			<td align="right">성명</td>
			<td> : <input type="text" name="name" size="30"></td>
		</tr>
		<tr>
			<td align="right">전화번호</td>
			<td> : <input type="text" name="tel" size="30"></td>
		</tr>
		<tr>
			<td align="right">주소</td>
			<td> : <input type="text" name="address" size="30"></td>
		</tr>
		<tr>
			<td align="right">전자우편</td>
			<td> : <input type="text" name="email" size="30"></td>
		</tr>
		<tr>
			<td align="right">관계</td>
			<td> : <input type="text" name="relation" size="30"></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center"> <input type="submit" value="등록"></td>
		</tr>
	
	</table>
	</form>
	<form action = "AddressBook_01.jsp" method="post" align="center">
		<input type="submit" value="뒤로가기">
	</form>


</body>
</html>