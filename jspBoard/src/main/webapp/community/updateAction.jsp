<%@page import="com.google.common.collect.ImmutableBiMap.Builder"%>
<%@page import="org.iclass.dao.CommunityDao"%>
<%@page import="org.iclass.dto.Community"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request.setCharacterEncoding("UTF-8"); filter가 실행함
	long idx = Long.parseLong(request.getParameter("idx"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String ip = request.getRemoteAddr();	//클라이언트 ip 가져오기
	String pageNo = request.getParameter("page");
	
	CommunityDao dao = CommunityDao.getInstance();
	Community vo = Community.builder().idx(idx).title(title).content(content).ip(ip).build();
	int result = dao.update(vo);
	if(result==1) {
		request.setAttribute("message", "글 수정이 완료되었습니다.");
		request.setAttribute("url", "read.jsp?idx="+idx);
		pageContext.forward("alert.jsp");
	}
%>	
