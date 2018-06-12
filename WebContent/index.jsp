<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<th colspan=2>GIT MEMBER</th>
</tr>
<tr>
<td><input type=button id=input>Input</td>
<td><input type="button" id=output>output></td>
</tr>
</table>

<script>

document.getElementById("input").onclick = function() {
	location.href = "input.jsp";
}

</script>

</body>
</html>