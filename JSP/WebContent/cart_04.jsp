<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택 저장 내용</title>
</head>
<body>


	<%
		BufferedReader reader = null;
		try {
			String filePath = application.getRealPath("/productSelec.txt");
			reader = new BufferedReader(new FileReader(filePath));
			while (true) {
				String str = reader.readLine();
				if(str == null) break;
				out.println(str + "<br>");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				reader.close();
			} catch(Exception e) {
				
			}
		}
	
	%>
		<button type="button" onclick="location.href='cart_01.jsp' ">처음으로</button>

</body>
</html>