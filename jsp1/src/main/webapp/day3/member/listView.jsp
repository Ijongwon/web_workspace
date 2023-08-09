<%@page import="org.apache.taglibs.standard.tlv.compat.JstlELXmlTLV"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 외부라이브러리로 지원되는 태그를 사용하기 위한 import -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listView.jsp-화면 출력 페이지</title>
</head>
<body>
${list }
<!-- request.getAttribute("list") 실행 + List<Member> 타입변환 + 출력 --> 
<!-- 출력을 반복해서 테이블 tr태그에 넣기 : jstl . 애트리뷰트(자바빈)은 자바 for문으로는 못함. -->
</body>
</html>