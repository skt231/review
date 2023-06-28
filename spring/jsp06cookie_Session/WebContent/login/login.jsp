<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	if (
<%=request.getParameter("isSuccess")%>
	== false) {
		alert('USER NAME 혹은 PASSWORD가 잘못 입력되었습니다.');
	} else if (
<%=request.getParameter("isLogout")%>
	== true) {
		alert('로그아웃되었습니다. 로그인페이지로 이동합니다.');
	} else if (
<%=request.getParameter("isLogin")%>
	== false) {
		alert('로그인해야 이용할 수 있는 페이지입니다. 로그인페이지로 이동합니다.');
	}
</script>
<title>인사관리프로그램</title>
</head>
<body>
	<form action="/loginServlet" method="get">
		<label for="id">아이디 : </label><input type="text" name="id" id="id"><br>
		<!--label은 id를 따름-->
		<label for="pw">비밀번호 : </label> <input type="text" name="pw" id="pw"><br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>