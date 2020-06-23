<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<script language="JavaScript">
	function myFunction() {
		  document.getElementById("myDropdown").classList.toggle("show");
		}
		 
		window.onclick = function(event) {
		  if (!event.target.matches('.dropbtn')) {
		    var dropdowns = document.getElementsByClassName("dropdown-content");
		    var i;
		    for (i = 0; i < dropdowns.length; i++) {
		      var openDropdown = dropdowns[i];
		      if (openDropdown.classList.contains('show')) {
		        openDropdown.classList.remove('show');
		      }
		    }
		  }
		}
	</script>

	<style>
		.dropbtn {
		  font-size: 16px;
		  cursor: pointer;
		}
		 
		.dropdown {
		  position: relative;
		}
		 
		.dropdown-content {
		  display: none;
		  position: absolute;
		  min-width: 120px;
		  overflow: auto;
		  box-shadow: 0px 8px 8px 0px rgba(0,0,0,0.2);
		  background-color: white;
		}
		 
		.dropdown-content a {
		  color: black;
		  text-decoration: none;
		  font-family : sans-serif;
		  display: block;
		}
		 
		.dropdown a:hover {background-color: #ddd;}
		 
		.show {display: block;}
	</style>

<meta charset="UTF-8">
<title>빌릴꼬냥? 상품 세부정보당</title>
</head>
<body>

<h3>제목 : ${detail.rentTitle}</h3>
		<div class="dropdown">
		  <h5><button onclick="myFunction()" class="dropbtn">${detail.cNickname_rent}</button> ${detail.rentRegion}  </h5> 
		  <div id="myDropdown" class="dropdown-content">
		    <a href="">사용자 정보</a>
		    <a href="">쪽지 보내기</a>
		  </div>
		</div>
<br>


${detail.pImage1} <br>
${detail.pImage2} <br>
${detail.pImage3} <br>
${detail.pImage4} <br>
${detail.pImage5} <br>

<h3>${detail.pName }</h3>
<h4>${detail.pPrice } 원 <br> ${detail.pHashtag }, ${detail.rentTradeMethod}</h4>
<h5>${detail.rentStartPeriod} ~ ${detail.rentEndPeriod}</h5>
<textarea rows="10" cols="50" name="bContent">${detail.rentContent}</textarea>


</body>
</html>

