<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 북카페</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/community.css?v=3">
</head>
<body>
	<main id="write">
		<h3>북챗 :: 커뮤니티</h3>
		<p>오늘 무슨 책을 읽으셨나요?</p>
		<hr style="color: white;">
		<form name="frm1" method="post" action="writeAction.jsp" onsubmit="return isValid()">
			<table>
				<tr>
					<th>제목</th>
					<td>
						<input type="text" name="title" size="50">
							</td>
				</tr>
					 
					 <tr><th>내용</th>
					 <td>
					 	<textarea rows="30" cols="80" name="content"></textarea>
					 	</td>
					 	</tr>
					 	<tr>
					 	<td colspan="2" align="center">
					 	<button type="submit">저장</button>
					 	<button type="reset">다시쓰기</button>
					 	<button type="button" onclick="location.href='list.jsp'">목록</button>
					 	<!-- 현재페이지 번호 전달 - 순서 5) -->
			</table>
		</form>
	</main>
<script type="text/javascript">
//태그의 required 속성을 사용해서 필수 입력을 체크할 수 있지만 필수 입력 외의 다른 유효성 검사.
//예를 들면, 최소 길이 또는 정규식 패턴 등의 유효성 검사를 위해 함수를 사용합니다.
	function isValid(){
		let result = true		//유효성 검사 결과 저장
		const content = document.forms[0].content		//input 요소
		const title = document.forms[0].title		//input 요소
		
		if(title.value == '') {
			alert('글 제목 작성은 필수 입니다.')
			result = false
			title.focus()
		}
		
		if(content.value == '') {
			alert('글 내용 작성은 필수 입니다.')
			result = false
			content.focus()
		}
		
		return result;
	}
	//유효성 검사를 위해서 저장 버튼 타입을 submit 으로 두는 방법입니다.
	//form 태그에 onsubmit="return isValid()"		=> isValid() 를 실행한 리턴이 true 일때만 submit 합니다.
</script>		
		
</body>
</html>