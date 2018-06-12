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
	<table border=1>
		<c:choose>
			<c:when test="${list.size() == 0}">
				<tr>
					<th>No Info</th>
				</tr>
			</c:when>
			<c:otherwise>
				<c:foreach var="mem" items="${list}">
					<tr>
						<td>${mem.id}</td>
						<td>${mem.name}</td>
					</tr>
				</c:foreach>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>