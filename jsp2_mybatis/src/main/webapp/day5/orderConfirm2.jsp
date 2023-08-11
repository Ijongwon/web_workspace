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
	<jsp:useBean id="order" class="sample.dto.OrderDto" scope="request"/>
	<jsp:setProperty property="*" name="order" />
	<%
	OrderDao dao = OrderDao.getOrderDao();
	if (dao.insert(order) == 1) {
	%>
	<jsp:forward page="orderResult.jsp" /> 
	<%
	}
	%>
</body>
</html>
	<!-- 9) : scope="request" 요청받은 dto를 끝까지 사용하기 위해서 사용함.-->
	<!-- 10. orderConfirm2가 받은 request를 orderResult.jsp 에게 전달하는것 -->