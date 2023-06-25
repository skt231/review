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
		String id = (String) request.getAttribute("id");
	%>
	<%
		String password = (String) request.getAttribute("password");
	%>
	id는 	<%=id%> 이고 비밀번호는 <%=password%>입니다.
</body>
</html>