<%@page import="java.util.List"%>
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
	<h3>고객 주문 현황</h3>
	<hr>
	<ul>
		<%
		OrderDao dao = OrderDao.getOrderDao();
		List<String> list = dao.selectOrderByEmail();
		for (String email : list) {
		%>
		<li><a href="orderDetail.jsp?email=<%=email%>"><%=email %> </a></li>
		<%
		}
		%>
	</ul>
</body>
</html>
		<!-- 6) dao로 받은 list 값들을 String email 이라는 변수에 반복문을 사용하여 저장하고 있기 때문에 email 입니다 -->