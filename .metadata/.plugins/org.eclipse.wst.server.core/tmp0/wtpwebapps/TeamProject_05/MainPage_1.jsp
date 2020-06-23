<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>빌릴꼬냥?</title>
	<style type="text/css">
		body{			
			margin-left:100px;
			margin-right:100px;
			max-width:1000px;
			padding: auto;
			
		}
		ul {
			background-color: white;
			list-style-type: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
		}
		li { float: left; }
		li a {
			display: block;
			background-color: white;
			color: #000000;
			padding: 8px;
			text-decoration: none;
			text-align: center;
			font-weight: bold;
		}
		li a:hover:not(.current) {
			background-color: silver;
			color: purple;
			text-decoration:underline;
		}
		li a.home{
			background-color: black;
			color: white;
		}
		div.search{		
		}
		div.logo{
		}
		div.posts{
		}
		div.posts-items{
		}
		div.posts-items-title{
		}
		input[type="text"] {
			width: 40%;
			padding: 10px 20px; 
			margin:5px 0;			
			border: solid 2px black;
			border-radius: 8px; 
		}
	div.banner {position: relative; width: 100%; height: 210px; top: 50px;  margin:0 auto; padding:0; overflow: hidden;}
	div.banner ul {position: absolute; margin: 0px; padding:0; list-style: none; }
	div.banner ul li {float: left; width: 1000px; height: 210px; margin:0; padding:0;}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script language="JavaScript">
	$(document).ready(function() {
		var $banner = $(".banner").find("ul");

		var $bannerWidth = $banner.children().outerWidth();
		var $bannerHeight = $banner.children().outerHeight();
		var $length = $banner.children().length;
		var rollingId;

		rollingId = setInterval(function() { rollingStart(); }, 5000);
    
		function rollingStart() {
			$banner.css("width", $bannerWidth * $length + "px");
			$banner.css("height", $bannerHeight + "px");
			$banner.animate({left: - $bannerWidth + "px"}, 1500, function() {
				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
				$(this).find("li:first").remove();
				$(this).css("left", 0);
				setInterval() >= {
				}, 5000;
			});
		}
	}); 
</script>
</head>

	<body>
		<form action="search.bill"> 
		<ul>
				<li><a class="home" href="refresh.bill">홈</a></li>
			<ul style="float:right; list-style-type:none;">
				<li><a href="login.bill">로그인</a></li>
				<li><a href="signin.bill">회원가입</a></li>
			</ul>
		</ul>
		<h1 style= "text-align: center;">빌릴꼬냥</h1>
		<center>
		<input type="text" placeholder ="상품명, 제품명, 지역명 입력" name="search">
		<input type="submit" value="검색" style="width: 50px; height:40px; border-radius: 8px; color: white; background-color: black;"> 
		</center> 
		</form>
			<div class="banner">
				<ul>
					<li><img src="https://media.bunjang.co.kr/images/nocrop/471722706.jpg" width="100%" height="210px"></li>
					<li><img src="https://media.bunjang.co.kr/images/nocrop/465890574.jpg" width="100%" height="210px"></li>
					<li><img src="https://media.bunjang.co.kr/images/nocrop/415809298.jpg" width="100%" height="210px"></li>
					<li><img src="https://media.bunjang.co.kr/images/nocrop/472834031.jpg" width="100%" height="210px"></li>
				</ul>
			</div>
	</body>
</html>