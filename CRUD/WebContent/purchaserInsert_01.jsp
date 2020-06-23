<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매자 정보 입력</title>
</head>
<body>

	<h2>아래의 항목을 입력 후 확인 버튼을 누르세요!</h2>
	<br><br>
	<form action="purchaserInsert_02_2.jsp" method="get">
	<table>
		<tr>
			<td align="right">사용자 ID</td>
			<td> : <input type="text" name="userid" size="30"></td>
		</tr>
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
			<td colspan="2" align="center"> <input type="submit" value="입력"></td>
		</tr>
	
	</table>
	</form>



</body>
</html>