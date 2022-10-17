<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 한글엔코딩 -->
<fmt:requestEncoding value="utf-8"/>
<form action="ex4.jsp" method="post" style="width: 200px;">
	<h2>이름을 입력하세요</h2>
	<input type="text" name="name" class="form-control">
	
	<h4>가고싶은 나라를 입력해주세요</h4>
	<input type="text" name="nara" class="form-control">
	<br>
	<button type="submit" class="btn btn-info">결과확인</button>
</form>

	<!-- 이름을 입력시에만 결과를 나오도록한다  -->
	<c:if test="${!empty param.name }">
		<h3>이름: ${param.name }</h3>
		<h3>나라: ${param.nara }</h3>
		
		<c:choose>
			<c:when test="${param.nara=='캐나다' }">
				<h3 style="color: green;">캐나다 항공비는 200만원입니다</h3>
			</c:when>
			<c:when test="${param.nara=='하와이' }">
				<h3 style="color: green;">하와이 항공비는 180만원입니다</h3>
			</c:when>
			<c:when test="${param.nara=='중국' }">
				<h3 style="color: green;">중국 항공비는 30만원입니다</h3>
			</c:when>
			<c:when test="${param.nara=='몰디브' }">
				<h3 style="color: green;">몰디브 항공비는 80만원입니다</h3>
			</c:when>
		<c:otherwise>
			<h3 style="color: red;">${param.nara }으로 가는 비행기는 결항입니다</h3>
		</c:otherwise>		
		</c:choose>
		
	</c:if>

</body>
</html>