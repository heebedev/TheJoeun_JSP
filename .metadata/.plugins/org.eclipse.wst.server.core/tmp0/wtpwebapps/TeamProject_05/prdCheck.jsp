<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
		function clickFunc() {
			window.close();
		}

		/* 미입력 알럿 */
		function check() {
		  if(revProduct.productImage.value == "") {
		    alert("사진을 등록해 주세요.");
		    revProduct.productImage.focus();
		    return false;
		  }
		  else if(revProduct.title.value == "") {
		    alert("상품이름을 입력해 주세요.");
		    revProduct.title.focus();
		    return false;
		  } 
		  else if(revProduct.price.value == "") {
			    alert("가격을 입력해 주세요.");
			    revProduct.price.focus();
			    return false;
		  } 
		  else if(revProduct.date1.value == "") {
			    alert("대여 시작일을 입력해 주세요.");
			    revProduct.date1.focus();
			    return false;
		  } 
		  else if(revProduct.date2.value == "") {
			    alert("대여 종료일을 입력해 주세요.");
			    revProduct.date2focus();
			    return false;
		} 
		  else if(revProduct.hash.value == "") {
			    alert("상품을 홍보할 해시태그를 입력해 주세요.");
			    revProduct.hash.focus();
			    return false;
		} 
		  else if(revProduct.info.value == "") {
			    alert("상품을 소개를 입력해 주세요.");
			    revProduct.info.focus();
			    return false;
		} 
		 
		  else return true;
		}

</script>
<style>
	.prdCheck {
		border-radius: 8px;
		border: solid 2px Black;
		width: 200 px;
		height: 720 px;
	}
</style>
<meta charset="UTF-8">
<title>댓글 수정</title>
</head>
<body>
	<div class="container">
		<div class="prdCheck" align="center" >
			<form action="prdRev.bill" method="post" align="center"  name="revProduct" onsubmit="return check()">
				<div>
					<div>
						<div style="text-align: right;">사진 :</div>
						<div><input type="file" name="productImage"></div>
					</div>
					<div>
						<div style="text-align: right;">title :</div>
						<div><input type="text" name="title" id="title" size="58" value="${pdDetail.title }"></div>
					</div>
					<div>
						<div style="text-align: right;">price : </div>
						<div><input type="text" name="price" id="price" value="${pdDetail.price }"> / 원</div>
					</div>
					<div>
						<div style="text-align: right;">대여시작 :</div>
						<div> <input type="date" name="date1" id="date1" value="${pdDetail.date1 }"></div>
					</div>
					<div>
						<div style="text-align: right;">대여종료 :</div>
						<div><input type="date" name="date2" id="date2" value="${pdDetail.date2 }"></div>
					</div>
					<div>
						<div style="text-align: right;">해시태그 :</div>
						<div> <textarea rows="2" cols="50" name="hash" id="hash" >${pdDetail.hash }</textarea></div>
					</div>
					
					<div>
						<div style="text-align: right;">상품소개 :</div>
						<div> <textarea rows="10" cols="50" name="info" id="info" >${pdDetail.info }</textarea></div>
					</div>
					<div>
						<div><input type="hidden" name="prdseq" value="${pdDetail.prdseq }"></div>
					</div>
					<div><input type="submit" value="수정"></div>
				</div>
			</form>
		</div>
			<div align="center" style="margin-top : 20px;"><button onclick="clickFunc();">닫기</button></div> 
	</div>
</body>
</html>


