<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	쿠키 생성됨
	<%
	Cookie cookie = new Cookie("cookieN", "cookieV");
	cookie.setMaxAge(60 * 60);
	response.addCookie(cookie);
%>
	<a href="02cookieget.jsp">cookie get</a>
</body>
</html>