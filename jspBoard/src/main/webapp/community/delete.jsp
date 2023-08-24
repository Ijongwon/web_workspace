<%@page import="org.iclass.dao.CommunityCommentsDao"%>
<%@page import="org.iclass.dao.CommunityDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	long idx = Long.parseLong(request.getParameter("idx"));
	String pageNo = request.getParameter("page");
	CommunityDao dao = CommunityDao.getInstance();
	
	if(dao.delete(idx)==1) {
		request.setAttribute("message", "글번호 :" + idx + "삭제가 완료되었습니다.");
		request.setAttribute("url", "list.jsp?page="+pageNo);
		pageContext.forward("alert.jsp");
		
	}

%>