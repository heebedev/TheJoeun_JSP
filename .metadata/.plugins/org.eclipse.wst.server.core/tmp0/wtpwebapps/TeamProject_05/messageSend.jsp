<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지보내기</title>
	<style>
	.item1 { height: 500px; width: 500px; align: center; font-family: sans-serif;}
	
	
	</style>
</head>
<body>	
	
	<div class="item1">
		<form action="messageWin.bill" method="post" align = "center">
			<div width="500px" align="left">받는 사람 : <input type="text" class="nick_receive" name="nickname" style="width:500px;"></div>
			<div width="500px" style="vertical-align: center"> 내용 <textarea rows="10" cols="50" name="message"></textarea> </div>
			<div width="500px"><input type="submit" value="보내기"> </div>
		</form>
	</div>

</body>
</html>
