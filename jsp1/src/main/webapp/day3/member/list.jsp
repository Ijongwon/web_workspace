<%@page import="sample.dto.Member"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp - 요청 처리 기능</title>
</head>
<body>
<%  
	MemberDao dao = MemberDao.getMemberDao();
	List<Member> list = dao.selectAll();	
	
	//list 를 저장하는 애트리뷰트 메소드 실행
	request.setAttribute("list", list);
	//요청을 listView.jsp(화면출력)로 전달하기
	//->list를 list.jsp와 listView.jsp가 공유하게 됩니다.
	pageContext.forward("listView.jsp");
	//pageContext.forward("16jstlSample.jsp");
%>
</body>
</html>