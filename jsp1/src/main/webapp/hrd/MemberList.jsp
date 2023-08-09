<%@page
	import="org.eclipse.jdt.internal.compiler.ast.FakedTrackingVariable.IteratorForReporting"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.MemberDao"%>
<%@page import="sample.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록(외부평가)</title>
<link rel="stylesheet" href="MemberList.css">
<link rel="stylesheet" href="Layout.css">
</head>
<body>
	<header>
		<h2>홈쇼핑 회원관리 ver1.0</h2>
	</header>
	<nav>
		<ul>
			<li><a href="MemberRegister.jsp">회원등록</a></li>
			<li><a href="MemberList.jsp">회원목록조회/수정</a></li>
			<li><a href="MemberSales.html">회원매출조회</a></li>
			<li><a href="index.html">홈으로</a></li>
		</ul>
	</nav>
	<section>
		<h3>회원목록조회/수정</h3>
		<table>
			<%
			MemberDao dao = MemberDao.getMemberDao();
			List<Member> list = dao.selectAll();
			%>
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>가입일자</th>
				<th>고객등급</th>
				<th>거주지역</th>
			</tr>
			<%
			//list를 태그에 출력하는 반복문은 향상 for문 사용합시다.
			for (Member dto : list) {
			%>
			<tr>
				<td><a href="MemberUpdate.jsp?custno=<%=dto.getCustno()%>"><%=dto.getCustno()%></a></td>
				<td><%=dto.getCustname()%></td>
				<td><%=dto.getPhone()%></td>
				<td><%=dto.getAddress()%></td>
				<td><%=dto.getJoindate()%></td>
				<!-- 스크립트릿,표현식 등 자바코드 주석기호는 아래와 같습니다. -->
				<%-- <td><%=dt.getGrade()%></td> --%>
				<!-- 스크립트릿 자바코드 위치는 body 안에 어디에나 가능합니다. -->
				<td>
				<!-- out : jsp 객체. html 문서에 출력기능을 갖고 텍스트와 태그를 출력합니다. 
						   따로 선언하지 않고 사용하는 내장(embeded) 객체입니다.
				-->
					<% 
						if(dto.getGrade().equals("VIP"))
							out.println("<span style = 'color: red;'>VIP</span>");
						else
							out.println(dto.getGrade());
					%>
				</td>
				<td><%=dto.getCity()%></td>
			</tr>
			<%
			}
			%>


		</table>
	</section>
	<footer>
		<h4>HRDKOREA Copyright &copy;2022 All rights reserved.Human
			Resources Development Service Of Korea.</h4>
	</footer>
</body>
</html>