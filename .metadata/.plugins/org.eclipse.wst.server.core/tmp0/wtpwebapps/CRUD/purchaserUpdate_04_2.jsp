<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 수정</title>
</head>
<body>


<script type="text/javascript">


	var id = '<%=(String)session.getAttribute("USERID") %>';
	var name = '<%=(String)session.getAttribute("NAME") %>';
	var tel = '<%=(String)session.getAttribute("TEL") %>';
	var address = '<%=(String)session.getAttribute("ADDRESS") %>';

	alert("사용자ID : " + id + "\n성명 : " + name + "\n전화번호 : " + tel + "\n주소 : " + address + "\n\n상기와 같이 수정되었습니다.")

</script>
	
	
</body>
</html>