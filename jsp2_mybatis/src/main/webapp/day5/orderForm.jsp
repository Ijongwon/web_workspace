<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderForm.jsp</title>
</head>
<body>
	<h3>주문 입력</h3>
	<hr>
	<form action="orderConfirm2.jsp" method="post"> 
		<input type="text" name="email" placeholder="고객이 메일을 입력하세요.">
		<input type="text" name="pcode" placeholder="상품코드 입력하세요."> 
		<input type="number" name="quantity" placeholder="수량을 입력하세요.">
		<button type="submit">주문</button> 
	</form>
</body>
</html>
<!-- 1번 : post : 특정페이지로 파라미터 전송하는 방식 -->
<!-- 2번 : submit : form 태그 안에서 기본값이 submit -->
<!-- 3번 : email,pcode,quantity 를 입력값으로 받아 orderConfirm에 전송해줍니다.-->