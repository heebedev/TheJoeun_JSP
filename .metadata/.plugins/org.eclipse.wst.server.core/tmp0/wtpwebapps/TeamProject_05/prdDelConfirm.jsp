<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script>
		function clickFunc() {
			window.opener.location.href = "home.bill";
			window.close();
		}
	</script>
<title>게시물 삭제</title>
</head>
<body align="center">
	<h3>제품 정보가 삭제되었습니다.</h3>
	<button onclick="clickFunc();">확인</button>
</body>
</html>