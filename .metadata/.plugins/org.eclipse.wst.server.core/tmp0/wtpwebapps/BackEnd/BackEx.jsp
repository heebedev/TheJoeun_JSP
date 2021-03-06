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
		<table align="center">
			<tr>
				<td>이름 : </td>
				<td><input type="text" name="userName" /></td>
			</tr>
			<tr>
				<td>아이디 : </td>
				<td><input type="text" name="userId" /></td>
			</tr>
			<tr>
				<td>비밀번호 : </td>
				<td><input type="password" name="userPassword" /></td>
			</tr>
			<tr>
				<td>연락처 :</td>
				<td><input type="text" name="phone1" size="5" /> - 
					    <input type="text" name="phone2" size="5" /> - 
						<input type="text" name="phone3" size="5" /></td>
			</tr>
			<tr>
				<td>사진 :</td>
				<td><input type="file" name="picture" value="파일 선택" /></td>
			</tr>
			<tr>
				<td>성별 : </td>
				<td><input type="radio" name="gender" value="man" checked="checked" /> 남
					  <input type="radio" name="gender" value="woman" /> 여 </td>
			</tr>
			
			<tr>
				<td>언어 : </td>
				<td><input type="checkbox" name="lang" value="Kor" checked="checked" /> 한국어
					  <input type="checkbox" name="lang" value="Eng" /> 영어
					  <input type="checkbox" name="lang" value="Chn" /> 중국어
					  <input type="checkbox" name="lang" value="Jpn" /> 일어	</td>
			</tr>
			
			<tr>
				<td>자기소개 : </td>
				<td><textarea rows="5" cols="20">간단하게 입력하세요.</textarea></td>
			</tr>
			
			<tr>
				<td>국적 : </td>
				<td><select>
						<option>Korea</option>
						<option>USA</option>
						<option>Japan</option>
						<option>China</option>
					 </select> </td>
			</tr>
			
			<tr>
				<td>좋아하는 음식 : </td>
				<td><select multiple="multiple">
								<option>김치</option>
								<option>불고기</option>
								<option>파전</option>
								<option>비빔밥</option>
								<option>냉면</option>
								<option>순대</option>
					</select> </td>
			</tr>
			
			<tr>
				<td colspan="2" align="center"><input type="submit" name="okBtn" value="OK" /></td>
			</tr>
			
			</table>
	</form>	
</body>
</html>