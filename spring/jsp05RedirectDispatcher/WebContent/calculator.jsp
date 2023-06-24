<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="calClass" method="get">
		숫자1: <input type="number" name="num1"><br> + : <input
			type="radio" name="operator" value="+"><br> - : <input
			type="radio" name="operator" value="-"><br> * : <input
			type="radio" name="operator" value="*"><br> / : <input
			type="radio" name="operator" value="/"><br> 숫자2: <input
			type="number" name="num2"><br> <input type="submit"
			value="계산">
	</form>

	<%
		int result = (int) request.getAttribute("result");
	%>
	<%
		if (result != 0) {
	%>
	결과:
	<%=result%>
	<%
		}
	%>
</body>
</html>