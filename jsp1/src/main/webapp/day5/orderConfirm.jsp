<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>주문 확인</h3>
	<hr>
	<jsp:useBean id="order" class="sample.dto.OrderDto" scope="request"/>
	<jsp:setProperty property="*" name="order" />
	<ul>
		<li>고객 이메일 : <jsp:getProperty property="email" name="order" /></li>
		<li>상품코드 : <jsp:getProperty property="pcode" name="order" /></li>
		<li>주문수량 : <jsp:getProperty property="quantity" name="order" /></li>
	</ul>
	<hr>
	<button onclick="location.href='orderForm.jsp'">추가 주문</button>
	<%
	OrderDao dao = OrderDao.getOrderDao();
	if (dao.insert(order) == 1) {
	%>
	<script type="text/javascript">
		alert('주문완료 되었습니다.')
	</script>
	<%
	}
	%>
</body>

</html>
	<!-- (4) useBean의 id가 order이기 때문에 입니다.-->
	<!-- (5) location.href='orderForm.jsp' 클릭을 하였을때 초기화면으로 돌아가야 하기 때문입니다 -->