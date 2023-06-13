<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String re_star = request.getParameter("re_star");
	String char1 = request.getParameter(re_star);
	%>
	<%
		for (int i = 0; i <= 5; i++) {
			for (int j = 0; j <= i; j++) {
	%>
	<%=re_star%>
	<%
		
	%>
	<%
		}
	%>
	<br>
	<%
		}
	%>
</body>
</html>