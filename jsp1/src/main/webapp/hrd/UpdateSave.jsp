<%@page import="sample.dto.Member"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="userInfo" class="sample.dto.Member" scope="session" /> --%>
<%-- <jsp:setProperty property="custName" name="userInfo"/>
이름:<jsp:getProperty property="custName" name="userInfo"/> --%>

<%
//파라미터 가져오기
request.setCharacterEncoding("UTF-8");

String temp = request.getParameter("custNo");

String name = request.getParameter("name");

String phone = request.getParameter("phone");

String addr = request.getParameter("add");

String grade = request.getParameter("grade");

String cityCode = request.getParameter("city");


//파라미터 값으로 dto 객체 생성
int custno = 0;
if (temp !=null)
	custno = Integer.parseInt(temp);
MemberDao dao = MemberDao.getMemberDao();
Member dto = new Member(custno,name,phone,addr,null,grade,cityCode);
dao.update(dto); //db 테이블에 반영된 것 확인하세요.
%>
<script type="text/javascript">
location.href=('MemberList.jsp')
</script>