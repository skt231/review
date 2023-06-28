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
		Cookie cookies[] = request.getCookies();
		String id = "";
		for (int i = 0; i < cookies.length; i++) {
			String str = cookies[i].getName();
			if (str.equals("id")) {
				id = cookies[i].getValue();
			}
		}
		if (id.equals("")) {
			response.sendRedirect("login/login.jsp?isLogin=false");
		} else {
			out.println("로그인에 성공했습니다.<br>" + id + "님 환영합니다.");
		}
	%>
	<form action="/logoutServlet" method="get">
		<button type="submit">로그아웃</button>
	</form>
</body>
</html>