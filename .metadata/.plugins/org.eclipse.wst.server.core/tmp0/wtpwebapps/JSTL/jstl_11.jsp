
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시각</title>
</head>
<body>
	<c:set var = "date" value="<%= new Date() %>"></c:set>
	[오늘 날짜] <fmt:formatDate value="${date}"/>
	[현재 시각] <fmt:formatDate value="${date}" type="time"/> <br>
	
	[Short] <fmt:formatDate value="${date}" type="both"
					dateStyle="short" timeStyle="short" /> <br>
	[Medium] <fmt:formatDate value="${date}" type="both"
					dateStyle="medium" timeStyle="medium" /> <br>
	[Long] <fmt:formatDate value="${date}" type="both"
					dateStyle="long" timeStyle="long" /> <br>	
	[Full] <fmt:formatDate value="${date}" type="both"
					dateStyle="full" timeStyle="full" /> <br>							
</body>
</html>