<%@page import="sample.dto.Member"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<link rel="stylesheet" href="Layout.css">
<link rel="stylesheet" href="MemberUpdate.css">
</head>
<body>
	<!-- 정보 수정 화면은 현재값을 먼저 보여주고 수정할 수 있게 합니다. custno 즉 PK 값으로
		db에서 select 한 결과를 화면에 표시하는 코드가 필요합니다. -->
	<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 그리고 value에서 출력하기 -->
	<%  
	  	String custno = request.getParameter("custno");
		MemberDao dao = MemberDao.getMemberDao();
		Member dto = null;
		if(custno != null)/* 수정할 데이터를 가져오기.(참고 : custno가 테이블 pk 값) */
			dto = dao.selectOne(Integer.parseInt(custno));
	 %>
	<header>
	<h2>홈쇼핑 회원관리 ver1.0</h2>
	</header>
	<nav>
		<ul>
			<li><a href="MemberInsert.html">회원등록</a></li>
			<li><a href="MemberList.jsp">회원목록조회/수정</a></li>
			<li><a href="MemberSales.html">회원매출조회</a></li>
			<li><a href="index.html">홈으로</a></li>
		</ul>
	</nav>
	<section>
		<h3>홈쇼핑 회원 수정</h3>
		<form action="">
		<table>
			<tr>
				<td><label for="custNo">회원번호</label></td>
				<td><input type="number" id="lblNo"  value="<%= custno %>" name="customNo" disabled="disabled">
				</td>
			</tr>

			<tr>
				<td><label for="custName">회원성명</label></td>
				<td><input type="text" id="custName" name="name" value="<%= dto.getCustname() %>">
				</td>
			</tr>

			<tr>
				<td><label for="custPhone">회원전화</label></td>
				<td><input type="text" id="custPhone" name="phone" value="<%= dto.getPhone() %>"></td>
			</tr>

			<tr>
				<td><label for="custAdd">회원주소</label></td>
				<td><input type="text" id="custAdd" name="add" value="<%= dto.getAddress() %>"></td>
			</tr>
			<tr>
				<td><label for="custDate">가입일자</label></td>
				<td><input type="text" id="custDate" name="date" value="<%= dto.getJoindate() %>"></td>
			</tr>
			<tr>
				<td><label for="custGrade">고객등급[A:VIP B:일반 C:직원]</label></td>
				<td><input type="text" id="custGrade" name="grade" value="<%= dto.getGrade() %>"></td>
			</tr>
			<tr>
				<td><label for="custCity">도시코드</label></td>
				<td><input type="number" id="custCity" name="city" value="<%= dto.getCity() %>"></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<button type="button" onclick="alert('회원번호 수정이 완료되었습니다!')">수정</button>
					<button type="button" onclick="location.href='MemberList.jsp'">조회</button>
					
		
					<!-- onclick은 자바 스크립트 코드를 작성 -->
				</td>
			</tr>
		</table>
		</form>
	</section>
	<footer>
	<h4>HRDKOREA Copyright@2016 All rights reserved. Human Resources Development Service of Korea.</h4>
	</footer>





</body>
</html>