<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
</head>
<body>
	<h2>Login</h2>
	<form action="/app/user/login" method="post">
		<label for="username">Username:</label> <input type="text"
			id="username" name="username" required><br> <label
			for="password">Password:</label> <input type="password" id="password"
			name="password" required><br> <input type="submit"
			value="Login">
	</form>
	<c:if test="${msg eq 'failure'}">
		<p>Login failed. Please check your username and password.</p>
	</c:if>
</body>
</html>