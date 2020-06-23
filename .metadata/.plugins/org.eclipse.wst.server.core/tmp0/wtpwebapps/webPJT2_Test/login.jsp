<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name = "viewport" content = "user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0,
width=device-width" />
<title>빌릴꼬냥? 그럼 로그인해랑</title>
<script src='https://code.jquery.com/jquery-3.1.1.min.js'></script>
<script src = "//developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body align="center">

	<div class="id">
	<h3 size="100">아이디</h3>
	</div>
	
	<div class="password">
	<h3 size="100">비밀번호</h3>
	</div>
	
	<div id="loginBtn">
	<h3 size="100">로그인하기</h3>
	</div>
	
	<div id="signin">
	<input type="submit" name="signin" value="가입"><br><br><br>
	<a id="kakao-login-btn"></a>
<a href="http://developers.kakao.com/logout"></a>
<script type='text/javascript'>
	Kakao.init('e3540743b0ce3fee601d9c43b8d8bab6'); //아까 카카오개발자홈페이지에서 발급받은 자바스크립트 키를 입력함
	
	//카카오 로그인 버튼을 생성합니다. 
	Kakao.Auth.createLoginButton({ 
			
	    container: '#kakao-login-btn', 
	    success: function(authObj) { 
	           Kakao.API.request({
	               url: '/v2/user/me',
	              	success: function(res) {           		
						  var id = res.id;
						  var email = res.kakao_account.email;
						  var name = res.properties.nickname;
						  var birth = res.kakao_account.birthday
						  var token = authObj.access_token;
						  var html = '<BR>' + id+ '<BR>' + email  + '<BR>' + name + '<BR>' + birth + '<BR>' + token;
						  var image = res.properties.profile_image;
	              		} 
	                 })
	
	               },
	               fail: function(error) {
	                 alert(JSON.stringify(error));
	               }
	             });
</script>
    </div>
</body>
</html>



