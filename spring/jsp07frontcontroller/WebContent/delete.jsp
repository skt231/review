<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
delete메뉴<br>
<a href="insert.do">insert</a>
<a href="/jsp07frontcontroller/select.do">select</a>
<a href="http://localhost:8081/jsp07frontcontroller/delete.do">delete</a>
<a href="http://localhost:8081
<%=request.getContextPath()%>/update.do">update</a>
<a href="view.do">view</a>
</body>
</html>