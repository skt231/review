<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- //쿠키관리 프로그램
//프로젝트명 : jsp10
// main페이지에서 관리된는 웹어플리케이션으로 만들어 보자.
// create read update delete 페이지로 이동하여
// 해당 작업을 할 수 있도록 구현한다.
// 최종결과는 request객체에 담아서 .jsp로 출력하자.
// 원하는 쿠키를 생성, 삭제, 검색, 수정 가능하여야 한다.
// 모든 사용자 요청 주소는 서블릿으로 오도록 구현한다. -->
	Cookie 생성 프로그램
	<br>
	<form action="CreateServlet">
		name : <input type="text" name="name"><br> value : <input
			type="text" name="value"><br> <input type="submit"
			value="쿠키생성">
	</form>
	<hr>
	<h1>쿠키 조회</h1>
	<form action="ReadServlet">
		<input type="submit" value="쿠키조회">
	</form>
	<hr>
	<h1>쿠키 업데이트</h1>
	<form action="UpdaetServlet"></form>
	<hr>
	<h1>쿠키 삭제</h1>
	<form action="DeleteServlet">
		삭제할 쿠키 이름 : <input type="text" name="delName"><br> <input
			type="submit" value="삭제하기">
	</form>
	<br>
</body>
</html>