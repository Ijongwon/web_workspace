<%@page import="sample.dao.MemberDao"%>
<%@page import="sample.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	
	//메소드 방식이 post 일 때는 인코딩이 꼭 필요합니다.
	request.setCharacterEncoding("UTF-8");
	Member dto = null;
	//MemberDao dao = dao.getMemberDao();
	
	//dto = dao.update(member);
	
	String name = request.getParameter("phone");
	
	
	
	//dto.setCustname(custname)
	
	
	
	
	
	
	
	%>

</body>
</html>