<%@page import="org.iclass.dto.BookUser"%>
<%@page import="org.iclass.dto.Community"%>
<%@page import="org.iclass.dao.CommunityDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
BookUser user = (BookUser) session.getAttribute("user");
if (user == null) /* 로그인이 안된 상태 */
	throw new IllegalAccessException();
/* IllegalAccessException 은 일반적으로 임의의 Exception 발생시킬 때 많이 씁니다.*/

int idx = 0;
int pageNo = 0;
if (request.getParameter("idx") != null) {
	idx = Integer.parseInt(request.getParameter("idx"));
}

if (request.getParameter("page") != null) {
	pageNo = Integer.parseInt(request.getParameter("page"));
}

CommunityDao dao = CommunityDao.getInstance();
Community vo = dao.selectByIdx(idx);

if(!user.getId().equals(vo.getWriter()))	/* 로그인한 사용자와 글쓴이가 다를 때 */
	throw new IllegalAccessException();


//1)
request.setAttribute("vo", vo);
//2)
request.setAttribute("page", pageNo);
pageContext.forward("updateView.jsp");
%>