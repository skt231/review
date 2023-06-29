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
		request.setCharacterEncoding("utf=8");
	if(request.getAttribute("name")==null){
		out.println("<h1>없는 ID입니다.</h1>");
	}else{
		%>
	name : <%=request.getAttribute("name") %><br>
	변경 전 value : <%=request.getAttribute("value") %><br>
	변경 후 value : <%=request.getAttribute("updateValue") %><br>
	<% 
	}
	%>
	<a href="/jsp08CookieToFrontcontroller/main.html">메인으로 이동</a>


</body>
</html>