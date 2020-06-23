<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 삭제</title>
</head>
<body>


<script type="text/javascript">


	var id = '<%=(String)session.getAttribute("USERID") %>';
	
	alert("사용자ID : " + id + "\n\n상기의 정보가 삭제되었습니다.")

</script>
	
	
</body>
</html>