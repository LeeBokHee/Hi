<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="input.do" method="get">
		<table border=1 align="center" style="text-align: center">
			<tr>
				<td colspan=2>Input Your Info</td>
			</tr>
			<tr>
				<td>Id :</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
			<td colspan=2>
			<button id=inputbtn>input!</button>
			</td></tr>
		</table>
	</form>
	
	
	<c:choose>
		<c:when test="${result>0}">
			<script>
				alert("success"!")
			</script>
		</c:when>
		<c:otherwise>
			<script>
				alert("failed"!")
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>