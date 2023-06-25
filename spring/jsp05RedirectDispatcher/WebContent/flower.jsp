<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="flowerServlet" methos="get">
		1<input type="checkbox" name=flowers value="f01">2<input
			type="checkbox" name=flowers value="f02"> 3<input
			type="checkbox" name=flowers value="f03"> 4<input
			type="checkbox" name=flowers value="f04"> 5<input
			type="checkbox" name=flowers value="f05"> <input
			type="submit" value="출력">
	</form>

	<%
		String[] flowers = (String[]) request.getAttribute("flowers");
		if (flowers != null) {
			for (int i = 0; i < flowers.length; i++) {
	%>
	<%=flowers[i]%><br>
	<img src="img/<%=flowers[i]%>" width="200px">
	<br>
	<%
		}
		} else {
			out.println("선택된 꽃이 없습니다.");
		}
	%>

</body>
</html>