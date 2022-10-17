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
List<String> list=new ArrayList<>();
list.add("red");
list.add("blue");
list.add("yellow");
list.add("green");
list.add("gray");
list.add("black");

request.setAttribute("list", list);
request.setAttribute("total", list.size());

//세션에 id도 저장
session.setAttribute("id", "angel");
%>

<h3>1~10까지 출력</h3>

<c:forEach var="a" begin="1" end="10">
	${a }&nbsp;
</c:forEach>

<h3>0~30인데 3씩증가</h3>

<c:forEach var="b" begin="1" end="30" step="3">
	${b }&nbsp;
</c:forEach>

<hr>
<h3>list에는 총 ${total}개의 생상이 들어있습니다</h3>
<!-- ${total}앞에 requestScope가 생략됨, 자바처럼 request에 저장된 데이터는 getAttribuete로 얻지않아도 바로출력가능
하지만 세션에 저장된 데이터는 sessionScope 변수명으로 출력해야한다 -->
<h3>list에는 총 ${requestScope.total }개의 생상이 들어있ㅆ브니다.</h3>

<h3>세션아이디 출력</h3>
<h3>현재 로그인한 아이디는 ${sessionScope.id }입니다</h3>

<h3>list 전체를 테이블로 출력하기</h3>
<table class="table table-bordered" style="width: 300px;">
	<tr>
		<th>번호</th><th>인덱스</th><th>색상</th>
	</tr>
	
	<c:forEach items="${list }" var="s" varStatus="i"> <!-- varStatus :상태변수 -->
		<tr>
			<td>${i.count }</td> <!-- 무조건 1번부터 출력 -->
			<td>${i.index }</td> <!-- 실제 list의 인덱스값 출력 0 1 2 3 4 5 -->
			<td>
				<b style="color: ${s}">${s }</b>
			</td>			
		</tr>
	</c:forEach>
</table>

<h3>list 인덱스를 2~4로 출력</h3>
<table class="table table-bordered" style="width: 300px;">
	<tr>
		<th>번호</th><th>인덱스</th><th>색상</th>
	</tr>
	
	<c:forEach items="${list }" var="s" begin="2" end="4" varStatus="i"> <!-- varStatus :상태변수 -->
		<tr>
			<td>${i.count }</td> <!-- 무조건 1번부터 출력 -->
			<td>${i.index }</td> <!-- 실제 list의 인덱스값 출력 0 1 2 3 4 5 -->
			<td>
				<b style="color: ${s}">${s }</b>
			</td>			
		</tr>
	</c:forEach>
	
	<c:set var="msg" value="장미,후리지아,다알리아,국화,백합"/>
	${msg }<br>
	
	<h3>msg값을 컴마로 분리해서 출력</h3>
	<c:forTokens items="${msg }" delims="," var="s" varStatus="i">
		<h3>${i.count }:${s }</h3>
	</c:forTokens>
</table>
</body>
</html>