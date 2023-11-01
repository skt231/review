<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>
	<h1>게시글 작성</h1>
	<form action="write" method="post">
		<label>제목: <input type="text" name="title"></label><br> <label>작성자:<input
			type="text" name="username"></label><br> <label>내용: <textarea
				name="content" rows="10" cols="50"></textarea></label><br> <input
			type="submit" value="작성하기">
	</form>
</body>
</html>
