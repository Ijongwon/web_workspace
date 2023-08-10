<%@page import="org.apache.taglibs.standard.tlv.compat.JstlELXmlTLV"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="../../css/MemberList.css">
<link rel="stylesheet" href="../../css/Layout.css">
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
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>가입일자</th>
				<th>고객등급</th>
				<th>거주지역</th>
			</tr>
			<!-- list 애트리뷰트는 컬렉션이므로 하나씩 가져와서 vo 에 저장 -->
			<c:forEach var="dto" items="${list }">
				<tr>
					<td><c:out value = "${dto.custno }"/></td>
					<td><c:out value = "${dto.custname }"/></td>
					<td><c:out value = "${dto.phone }"/></td>
					<td><c:out value = "${dto.address }"/></td>
					<td><c:out value = "${dto.joindate }"/></td>
					<td><c:out value = "${dto.grade }"/></td>
					<td><c:out value = "${dto.city }"/></td>
				</tr>
			</c:forEach>	
		</table>
	</section>
	<footer>
		<h4>HRDKOREA Copyright &copy;2022 All rights reserved.Human
			Resources Development Service Of Korea.</h4>
	</footer>
</body>
</html>