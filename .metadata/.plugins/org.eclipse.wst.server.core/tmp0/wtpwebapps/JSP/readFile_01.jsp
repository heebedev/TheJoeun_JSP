<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read File</title>
</head>
<body>
	<%
		BufferedReader reader = null;
		try {
			String filePath = application.getRealPath("/test.txt");
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


</body>
</html>