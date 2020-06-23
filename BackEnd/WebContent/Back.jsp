<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Tag</title>
</head>
<body>
	<form action="#" method="post" style="font-family: nanum gothic;">
		이름 : <input type="text" name="userName" /> <br/>
		아이디 : <input type="text" name="userId" /> <br/>
		비밀번호 : <input type="password" name="userPassword" /> <br/>
		연락처 : <input type="text" name="phone1" size="5" /> - 
			    <input type="text" name="phone2" size="5" /> - 
				<input type="text" name="phone3" size="5" />		<br/>
		사진 : <input type="file" name="picture" /> <br/>
		성별 : <input type="radio" name="gender" value="man" checked="checked" /> 남
			  <input type="radio" name="gender" value="woman" /> 여 <br/>
		언어 : <input type="checkbox" name="lang" value="Kor" checked="checked" /> 한국어
			  <input type="checkbox" name="lang" value="Eng" /> 영어
			  <input type="checkbox" name="lang" value="Chn" /> 중국어
			  <input type="checkbox" name="lang" value="Jpn" /> 일어	<br/>
		자기소개 : <textarea rows="5" cols="20">간단하게 입력하세요!</textarea> <br/>
		국적 : <select>
					<option>Korea</option>
					<option>USA</option>
					<option>Japan</option>
					<option>China</option>
			  </select> <br/>
		좋아하는 음식 : <select multiple="multiple">
						<option>김치</option>
						<option>불고기</option>
						<option>파전</option>
						<option>비빔밥</option>
						<option>냉면</option>
						<option>순대</option>
					</select> <br/>
		<input type="submit" name="okBtn" value="OK" /> <br/>

	</form>
</body>
</html>