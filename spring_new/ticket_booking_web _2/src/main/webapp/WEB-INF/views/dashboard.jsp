<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>
</head>
<body>
	<h2>Dashboard</h2>
<%-- 	<c:if test="${not empty user}">
		<p>Welcome, ${user.username}!</p>
		<a href="/app/user/logout">Logout</a>
	</c:if> --%>
<c:choose>
        <c:when test="${empty user}">
            <span><a href="/app/user/login">로그인</a></span> &nbsp; <span><a href="/app/user/linkRegister">등록</a></span>
        </c:when>
        <c:otherwise>
            <span>Welcome, ${username}!</span> &nbsp; <span><a href="/app/user/logout">로그아웃</a></span>
        </c:otherwise>
    </c:choose>
	<c:if test="${msg eq 'failure'}">
		<p>Login failed. Please check your username and password.</p>
	</c:if>
</body>
</html>