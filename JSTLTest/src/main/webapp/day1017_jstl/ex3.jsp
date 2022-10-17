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
	<c:set var="su1" value="7"/>
	<c:set var="su2" value="5"/>
	
	숫자1:${su1 }<br>
	숫자2:${su2 }<br>
	<c:out value="${su1 }"/><br>

<!-- c:if는 else가 없고 if문을 한번 더 사용	 -->
	<c:if test="${su1>su2 }">
		<h2>숫자1이 더 큽니다</h2>
	</c:if>
    <c:if test="${su1<su2 }">
		<h2>숫자2가 더 큽니다</h2>
	</c:if>


<!-- 문자비교 -->
	<c:set value="프랑스" var="nara"/>
	
	<c:if test="${nara== '프랑스' }">
		<h2>프랑스를 출력합니다</h2>
	</c:if>
	
	<c:if test="${nara!= '프랑스' }">
		<h2>프랑스가 아닙니다</h2>
	</c:if>
	
	
	<h2>fmt태그</h2>
	<c:set var="money" value="12345670"/>
	<c:set var="num" value="0.1234567"/>
	
	<!-- currency,number,percent -->
<!-- 	100퍼센트로 출력, 소수점 이하 2자리 -->

	<fmt:formatNumber value="${num }" type="percent" maxFractionDigits="2"/><br>
	<fmt:formatNumber value="${money }" type="currency"/><br>
	<fmt:formatNumber value="${money }" type="number"/><br>
	
 </body>
</html>