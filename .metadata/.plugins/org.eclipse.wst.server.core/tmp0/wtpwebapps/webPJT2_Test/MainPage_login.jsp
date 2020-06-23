<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name = "viewport" content = "user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0,
width=device-width" />
<script src = "//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<a id="kakao-login-btn" href="javascript:loginGetInfo()"></a>
<a href="http://developers.kakao.com/logout"></a>
<script type='text/javascript'>
	 
	//카카오 로그인 버튼을 생성합니다. 
	function loginGetInfo() {
		  Kakao.API.request({
		           url: '/v2/user/me',
		           success: function(res) {
		              	alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
		
		                alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
		               	console.log(res);
							  
						var id = res.id;
						var email = res.kakao_account.email;
						var name = res.properties.nickname;
						var html = '<BR>' + email  + '<BR>' + name;
							  
						$('body').append(html);
		                 alert(res.id);//<—— 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
		
		                     /*console.log(res.kaccount_email);//<—— 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
		
		                     console.log(res.properties['nickname']);//<—— 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
		
		                 // res.properties.nickname으로도 접근 가능 ) 
		
		                     console.log(authObj.access_token);//<——
		 
		 
		                    
		          
		           var kakaonickname = res.properties.nickname;    //카카오톡 닉네임을 변수에 저장 (닉네임 값을 다른페이지로 넘겨 출력하기 위해서)
		                     
		        
		          window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/member/home?kakaonickname="+kakaonickname);
		          //로그인 결과 페이지로 닉네임 값을 넘겨서 출력시킨다., */
		              
		                 console.log(html);
						var token = authObj.access_token;
		               },
		               fail: function(error) {
		                 alert(JSON.stringify(error));
		       			}
		});
	}
	
</script>
</body>
</html>