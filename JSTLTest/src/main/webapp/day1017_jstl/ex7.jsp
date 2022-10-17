<%@page import="day1017.StudentDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
<%
List<StudentDto> list=new ArrayList<>();

list.add(new StudentDto("백준호","의정부",99));
list.add(new StudentDto("백순대","송우리",80));
list.add(new StudentDto("김철수","가능동",77));
list.add(new StudentDto("이만희","녹양동",89));
list.add(new StudentDto("송태섭","금오동",65));

request.setAttribute("list", list);
%>

<table class="table table-bordered" style="width: 400px;">
	<tr>
		<th>번호</th><th>인덱스</th><th>이름</th><th>주소</th><th>점수</th>
	</tr>
	<c:set var="sum" value="0"/>
		<c:forEach items="${list }" var="s" varStatus="i"> <!-- varStatus :상태변수 -->
			<tr>
				<td>${i.count }</td>
				<td>${i.index }</td>
				<td>${s.name }</td>
				<td>${s.addr }</td>
				<td>${s.score }</td>
				<!-- 점수합계구하기 -->
				<c:set value="${sum+s.score}" var="sum"/>
			</tr>
		</c:forEach>
		
		<tr>
			<td colspan="5">
				<h3>점수의 총합계는 ${sum }</h3>
			</td>
		</tr>
</table>
</body>
</html>