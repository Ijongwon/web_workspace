<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
<link rel="stylesheet" href="Layout.css">
<link rel="stylesheet" href="MemberInsert.css">
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
		<h3>홈쇼핑 회원 등록</h3>
		<form action="RegisterSave2.jsp" method="post">
		<table>
			<tr>
				<td><label for="custNo">회원번호(자동발생)</label></td>
				<td><input type="number" id="lblNo" value="" name="custno"></td>
			</tr>

			<tr>
				<td><label for="custName">회원성명</label></td>
				<td><input type="text" id="custName" name="name">
				</td>
			</tr>

			<tr>
				<td><label for="custPhone">회원전화</label></td>
				<td><input type="text" id="custPhone" name="phone"></td>
			</tr>

			<tr>
				<td><label for="custAdd">회원주소</label></td>
				<td><input type="text" id="custAdd" name="add"></td>
			</tr>
			
			
			<tr>
				<td><label for="custDate">가입일자</label></td>
				<td><input type="date" id="custDate" name="start" disabled="disabled">
				<span>개인정보보호 종료일자</span>
				<input type="date" id="custEnd" name ="end" disabled="disabled"></td>
			</tr>
			
			
			<tr>
				<td><label for="custGrade">고객등급[A:VIP B:일반 C:직원]</label></td>
				<td><input type="text" id="custGrade" name="grade"></td>
			</tr>
			<tr>
				<td><label for="custCity">도시코드</label></td>
				<td><input type="number" id="custCity" name="city"></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<button onclick="alert('등록되었습니다.')" >등록</button>
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
<script type="text/javascript">

	const addDate = document.forms[0].start
	const endDate = document.forms[0].end
	
	let today = new Date()
	addDate.value = dateFormat(today,'-')

	let temp = new Date(addDate.value)
	temp.setYear(temp.getFullYear()+1)		
	endDate.value = dateFormat(temp,'-')
	
	function dateFormat(vdate,symbol){
		const year = vdate.getFullYear()
		const month = (vdate.getMonth()+1).toString().padStart(2,'0')
		const date = vdate.getDate().toString().padStart(2,'0')
		let result = [year,month,date].join(symbol)
		return result
	}
	
	
</script>

</body>
</html>