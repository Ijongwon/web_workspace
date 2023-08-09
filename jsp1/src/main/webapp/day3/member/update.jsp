<%@page import="sample.dto.Member"%>
<%@page import="sample.dao.MemberDao"%>
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
	String temp = request.getParameter("custno");
	MemberDao dao = MemberDao.getMemberDao();
	Member dto = null;
	if(temp!=null)
		dto = dao.selectOne(Integer.parseInt(temp));
		
	
	//jsp:useBean scope= "request" 와 동일한 메소드 입니다.
	request.setAttribute("member", dto);
	
	//jsp:forward page="updateView.jsp" 와 동일한 메소드 입니다.
	pageContext.forward("updateView.jsp");
%>

</body>
</html>