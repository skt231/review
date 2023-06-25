<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	if (
<%=request.getParameter("isSuccess")%>
	== false) {
		alert('아이디나 비밀번호가 틀립니다.');
	}
	if(<%=request.getParameter("isLogin")%>==false){
		alert('로그인을 해야 사용하실수 있습니다.');
	}
</script>
</head>
<body>
	<form action="loginServlet" method="get">
		ID : <input type="text" name="id" > PassWord : <input
			type="text" name="password" > <input
			type="submit" value="login">
	</form>

</body>
</html>