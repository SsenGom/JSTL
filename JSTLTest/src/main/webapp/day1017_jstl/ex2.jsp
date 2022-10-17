<%@page import="java.util.Date"%>
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
<!-- 변수선언 -->
<c:set value="백준호" var="name"/>
<c:set value="22" var="age"/>
<c:set value="<%=new Date() %>" var="today"/>

<!-- 출력 -->
<h2>이름: <c:out value="${name}"/></h2><br>
<h2>나이: ${age}</h2><br> <!-- c:out 생략가능 -->
<h2>날짜: ${today}</h2><br>
<!-- pattern 사용한 fmt날짜형식 -->
<pre>
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd HH:mm"/>
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd a hh:mm"/>
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd HH:mm EEE"/>
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd HH:mm EEEE"/>
</pre>

<c:set var="money" value="478900"/>
<c:set var="num1" value="123.45678"/>

<!-- 숫자출력하기 -->
<pre>
	${money }
	${num1 }
	
	<!-- type="number" : 3자리마다 컴마 -->
	<fmt:formatNumber value="${money }" type="number"/>
	
	<!-- type="currency" : 화폐단위와 3자리마다 컴마 --> 
	<fmt:formatNumber value="${money }" type="currency"/> 
	
	<!-- pattern -->
	<fmt:formatNumber value="${num1 }" pattern="0.00"/>
	<fmt:formatNumber value="1.2" pattern="0.00"/> <!-- 0값까지 만들어서 출력 -->
	<fmt:formatNumber value="1.2" pattern="0.##"/> <!-- 0값 제외 출력 -->
</pre>
</body>
</html>