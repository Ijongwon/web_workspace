<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2request.jsp</title>
</head>
<body>

<ul>
	<li>요청 URL : <%= request.getRequestURL() %></li>
	<li>요청 URI : <%= request.getRequestURI() %></li>
	<li>컨텍스트(context) : <%= request.getContextPath() %></li>
	<li> 클라이언트 ip : <%= request.getRemoteAddr() %></li>
	<li> 클라이언트 host : <%= request.getRemoteHost() %></li>
	<li> 클라이언트 포트 : <%= request.getRemotePort() %></li>
	<!-- 기준이 서버이므로 remote 멀리 떨어진 것이 클라이언트. local이 서버 -->
	<li> 서버 ip : <%= request.getLocalAddr() %></li>
	<li> 서버 host : <%= request.getLocalName() %></li>
	<li> 서버 포트  : <%= request.getLocalPort() %></li>
</ul>
<hr>
<h4>브라우저 주소가  http://localhost:8081/jsp1/day1/2request.jsp</h4>
<ul>
	<!-- localhost는 네트워크에 연결될수 없는 내 컴퓨터 ip 주소 -->
	<li>요청 URL : http://localhost:8081/jsp1/day1/2request.jsp</li>
	<!-- 동일한 서버와 포트 위치안에서 자원을 식별하는 부분 -->
	<li>요청 URI : /jsp1/day1/2request.jsp</li>
	<!-- 프로젝트 이름이 컨텍스트로 기본값 설정된 상태. context : 맥락, 문맥-->
	<li>컨텍스트(context) : /jsp1</li>
	<!-- 아래의 ip는 ipv6 -->
	<!-- <li> 클라이언트 ip : 0:0:0:0:0:0:0:1</li> -->
	<li> 클라이언트 ip : 127.0.0.1</li>
	<li> 클라이언트 host : 127.0.0.1</li>
	<li> 클라이언트 포트 : 56367</li>
	<li> 서버 ip : 127.0.0.1</li>
	<li> 서버 도메인 네임 : 127.0.0.1</li>
	<li> 서버 포트 : 8081</li>
	<!-- 이클립스에서 ipv4 로 표시되게 설정을 바꿉시다. 
		Run - Run Configurations
		톰캣의 arguments 항목에 -Djava.net.preferIPv4Stack=true 추가하기-->
</ul>
<h4>브라우저 주소가 http://192.168.0.216:8081/jsp1/day1/2request.jsp</h4>
<h5>클라이언트 ip는 192.168.0.145</h5>
<!-- 클라이언트 ip는 192.168.0.145 -->
<ul>
	<!-- 192.168.0.216 는 사설 ip. i 강의장 네트워크에만 연결되는 ip -->
	<li>요청 URL : http://192.168.0.216:8081/jsp1/day1/2request.jsp</li>
	<li>요청 URI : /jsp1/day1/2request.jsp</li>
	<li>컨텍스트(context) : /jsp1</li>
	<!-- 아래의 ip는 ipv6 -->
	<!-- <li> 클라이언트 ip : 0:0:0:0:0:0:0:1</li> -->
	<li> 클라이언트 ip : 192.168.0.145</li>
	<li> 클라이언트 host : 192.168.0.145</li>
	<li> 클라이언트 포트 : 56367 - 실행할때마다 변경.</li>
	<li> 서버 ip : 192.168.0.216</li>
	<li> 서버 도메인 네임 : 192.168.0.216</li>
	<li> 서버 포트 : 8081</li>
	<!-- 이클립스에서 ipv4 로 표시되게 설정을 바꿉시다. 
		Run - Run Configurations
		톰캣의 arguments 항목에 -Djava.net.preferIPv4Stack=true 추가하기-->

</ul>
</body>
</html>