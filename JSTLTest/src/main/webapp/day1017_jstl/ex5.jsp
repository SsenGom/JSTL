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
<fmt:requestEncoding value="utf-8"/>
	<form action="" method="post" >
		<table class="table table-bordered" style="width: 300px;">
			<tr>
				<th bgcolor="orange" width="100">이름</th>
					<td>
						<input type="text" name="name" class="form-control"
						style="width: 120px;">
					</td>
			</tr>
		
			<tr>
				<th bgcolor="orange" width="100">나이</th>
					<td>
						<input type="text" name="nai" class="form-control"
						style="width: 120px;">
					</td>
			</tr>
			
			<tr>
				<th bgcolor="orange" width="100">급여</th>
					<td>
						<input type="text" name="pay" class="form-control"
						style="width: 120px;">
					</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-danger">결과확인</button>
				</td>
			</tr>
		</table>
	</form>
	
		<c:if test="${!empty param.name }">
				<h3>이름: ${param.name }</h3>
				<h3>나이: 
				<c:if test="${param.nai <20}">
				${param.nai } (미성년)
				</c:if>
				
				<c:if test="${param.nai >=20}">
				${param.nai } (성인)
				</c:if>
				
				</h3></body>
				<h3>급여: 
				<fmt:formatNumber value="${param.pay }" type="currency"/>
				</h3></body>
		</c:if>
	
	</html>