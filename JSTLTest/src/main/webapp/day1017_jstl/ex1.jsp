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
<h2>JSTL 연산자 연습</h2>
<!-- 변수선언 -->
<c:set value="7" var="su1"/>
<c:set var="su2" value="5"/>
<b>두변수값 출력(su1:${su1},su2:${su2})</b>
<table class="table table-bordered" style="width: 400px;">
	<tr>
		<th width="250">\${su1+su2 }</th>
		<td>
			${su1+su2 }
		</td>
	</tr>
		<tr>
		<th width="250">\${su1-su2 }</th>
		<td>
			${su1-su2 }
		</td>
	</tr>
		<tr>
		<th width="250">\${su1*su2 }</th>
		<td>
			${su1*su2 }
		</td>
	</tr>
		<tr>
		<th width="250">\${su1/su2 }</th>
		<td>
			${su1/su2 }
		</td>
	</tr>
	<tr>
		<th width="250">\${su1 div su2 }</th>
		<td>
			${su1 div su2 }
		</td>
	</tr>
	<tr>
		<th width="250">\${su1%su2 }</th>
		<td>
			${su1%su2 }
		</td>
	</tr>
	<tr>
		<th width="250">\${su1 mod su2 }</th>
		<td>
			${su1 mod su2 }
		</td>
	</tr>
	<tr>
		<th>su1 1증가</th>
		<td>
		 증가전 su1:<c:out value="${su1}"/><br>
		 <c:set var="su1" value="${su1+1 }"/>
		 증가후 su1:${su1}
		</td>
	</tr>
</table>
</body>
</html>