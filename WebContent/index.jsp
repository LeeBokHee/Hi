<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border=1>
<tr>
<th colspan=2>GIT MEMBER2</th>
</tr>
<tr>
<td><input type=button id=input value=input></td>
<td><input type="button" id=output value=output></td>
</tr>
</table>

<script>

document.getElementById("input").onclick = function() {
	location.href = "input.jsp";
}

document.getElementById("output").onclick = function() {
	location.href = "output.do";
}

</script>

</body>
</html>