<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function delete_check(url){
		var answer;
		answer = confirm("데이터를 삭제하시겠습니까?");
		//확인을 선택한 경우 자바스크립트를 호출할 때 같이 넘어온 url이라는 변수에 들어있는 주소로 페이지 이동
		if(answer == true){
			location = url;
		} else {
			return;
		}
	}
</script>
<style>
  table {
    border-top: 1px solid #444444;
    border-collapse: collapse;
    font-family: sans-serif;
  }
  th, td {
    border-bottom: 1px solid #444444;
    text-align: center;
  }
  th {
    background-color: #B9B8B9;
  }
</style>
<meta charset="UTF-8">
<title>ONE LINE 게시판</title>
</head>
<body>
	<h2 style="font-family:sans-serif;" align="center">ONE LINE 게시판</h2>
	
	<table align="center">
		<tr>
			<th align="center" width="50">번호</th>
			<th align="center" width="80">이름</th>
			<th align="center" width="400">제목</th>
			<th align="center" width="200">날짜</th>
			<th align="center" width="50">삭제</th>
		</tr>
		
		<c:forEach items="${main}" var="dto">
			<tr>
				<td align="center">${dto.seq}</td>
				<td align="center">${dto.name}</td>
				<td>${dto.title}</td>
				<td align="center">${dto.date}</td>
				<td align="center"><a href = "javascript:delete_check('delete.olb?seq=${dto.seq}')">X</a></td>
			</tr>
		</c:forEach>
			<tr>
			<td colspan="5"><a href = "write_view.olb" align="center">글작성</a></tr>
			</tr>
	</table>
	
</body>
</html>
